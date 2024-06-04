# BD: Guião 9


## ​9.1
 
### *a)*

```
CREATE PROC procedure_remove_emplyee @ssn INT 
AS
BEGIN
    DELETE FROM  [dependent] WHERE Essn=@ssn;
    DELETE FROM  works_on WHERE Essn=@ssn;
    UPDATE  department SET Mgr_ssn=NULL WHERE Mgr_ssn=@ssn;
    UPDATE  employee SET Super_ssn=NULL WHERE Super_ssn=@ssn;
    DELETE FROM  employee WHERE Ssn=@ssn;
END;
```

### *b)* 

```
GO
CREATE PROCEDURE department_managers 
    @mgr_ssn INT OUTPUT, 
    @worked_years INT OUTPUT
AS
BEGIN
    SELECT 
        Empl.*
    FROM 
        Company.Employee Empl
    INNER JOIN 
        Company.Department Dep
    ON 
        Empl.Ssn = Dep.Mgr_ssn;

    SELECT 
        @mgr_ssn = Dep.Mgr_ssn, 
        @worked_years = DATEDIFF(YEAR, Dep.Mgr_start_date, GETDATE())
    FROM 
        Company.Department Dep
    WHERE 
        Dep.Mgr_start_date = (SELECT MIN(Dep.Mgr_start_date) FROM Company.Department Dep);
END;
GO

DECLARE @ssn INT;
DECLARE @years INT;

EXEC dept_managers @ssn OUTPUT, @years OUTPUT;

-- Print the output values
PRINT @ssn;
PRINT @years;
```

### *c)* 

```
CREATE TRIGGER manager_restriction ON department
INSTEAD OF INSERT, UPDATE
AS
    BEGIN
	DECLARE @Mgr_ssn INT;
	SELECT @Mgr_ssn=Mgr_ssn FROM inserted;

	IF @Mgr_ssn IN (SELECT Mgr_ssn FROM department)
		PRINT 'ERROR! Manager already managing one department. It may not manage another';
	ELSE
		BEGIN
		INSERT INTO department SELECT * FROM inserted;
		PRINT 'OK!'
		END
    END
```

### *d)* 

```
GO
CREATE TRIGGER salary_decr
ON Company.Employee 
AFTER INSERT, UPDATE
AS
BEGIN
    DECLARE @ssn_empl AS INT;
    DECLARE @sal_empl AS INT;
    DECLARE @dno AS INT;
    DECLARE @mgr_sal AS INT;

    SELECT 
        @ssn_empl = I.Ssn, 
        @sal_empl = I.Salary, 
        @dno = I.Dno 
    FROM 
        inserted I;

    SELECT 
        @mgr_sal = Empl.Salary 
    FROM 
        Company.Department Dep
    INNER JOIN 
        Company.Employee Empl
    ON 
        Dep.Mgr_Ssn = Empl.Ssn
    WHERE 
        Dep.Dnumber = @dno;

    IF @sal_empl > @mgr_sal
    BEGIN
        UPDATE 
            Company.Employee 
        SET 
            Salary = @mgr_salary - 1
        WHERE 
            Ssn = @ssn_empl;
    END
END;
GO

-- Select all records from Company.Employee to verify the results
SELECT * FROM Company.Employee;
```

### *e)* 

```
CREATE FUNCTION udf_ssnFullInfo (@emp_ssn INT) 
RETURNS @table TABLE ([name] VARCHAR(45), [location] VARCHAR(20))
AS
BEGIN
    INSERT INTO @table
    SELECT Project.Pname, Project.Plocation 
    FROM Project 
    INNER JOIN Works_on ON Works_on.Pno = Project.Pnumber 
    WHERE Works_on.Essn = @emp_ssn;

    RETURN;
END
```

### *f)* 

```
GO
CREATE FUNCTION Company.dept_better_paid_employee (@dno INT) 
RETURNS @table TABLE (
    [ssn] INT, 
    [fname] VARCHAR(20), 
    [lname] VARCHAR(20)
)
AS
BEGIN 
    INSERT @table
    SELECT 
        Empl.Ssn, 
        Empl.Fname, 
        Empl.Lname
    FROM 
        Company.Employee Empl
    INNER JOIN 
        (SELECT Dep.Dno, AVG(Empl.Salary) AS avg_salary 
         FROM Company.Department Dep
         INNER JOIN Company.Employee Empl ON D.Dnumber = Empl.Dno
         GROUP BY Dep.Dno) AS dep_avg_salary
    ON 
        dep_avg_salary.Dno = Empl.Dno 
        AND Empl.Salary > dep_avg_salary.avg_salary 
        AND Empl.Dno = @dno;
    RETURN;
END;
GO

SELECT 
    Dep.Dno, 
    AVG(Empl.Salary) AS avg_salary 
FROM 
    Company.Department Dep
INNER JOIN 
    Company.Employee Empl 
ON 
    Dep.Dnumber = Empl.Dno
GROUP BY 
    Dep.Dno;
```

### *g)* 

```
CREATE FUNCTION employeeDeptHighAverage(@departId INT)
RETURNS @table TABLE (
    pname VARCHAR(20), 
    pnumber INT, 
    plocation VARCHAR(20), 
    dnum INT, 
    budget FLOAT, 
    totalbudget FLOAT
)
AS
BEGIN
    DECLARE @pname VARCHAR(20), @pnumber INT, @plocation VARCHAR(20), @dnum INT, @budget FLOAT, @totalbudget FLOAT;
    DECLARE @projCursor CURSOR;

    SET @totalbudget = 0;

    SET @projCursor = CURSOR FOR
        SELECT 
            Pname, 
            Pnumber, 
            Plocation, 
            Dnum, 
            SUM((Salary/40)*Hours) AS Budget  
        FROM 
            (Project JOIN Works_on ON Pnumber=Pno) 
        JOIN 
            Employee ON Essn=Ssn 
        WHERE 
            Dnum=@departId
        GROUP BY 
            Pnumber, Pname, Plocation, Dnum;

    OPEN @projCursor;

    FETCH NEXT FROM @projCursor INTO @pname, @pnumber, @plocation, @dnum, @budget;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @totalbudget += @budget;
        INSERT INTO @table VALUES (@pname, @pnumber, @plocation, @dnum, @budget, @totalbudget);
        FETCH NEXT FROM @projCursor INTO @pname, @pnumber, @plocation, @dnum, @budget;
    END

    CLOSE @projCursor;
    DEALLOCATE @projCursor;

    RETURN;
END
```

### *h)* 

```
GO
CREATE TRIGGER Company.Department 
ON Company.Department
AFTER DELETE
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
                   WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Department_Deleted')
    BEGIN
        SELECT * INTO Department_Deleted FROM Company.Department WHERE 1=0;
    END

    INSERT INTO Department_Deleted
    SELECT * FROM deleted;
END;
GO

GO
CREATE TRIGGER Company.Department 
ON Company.Department
INSTEAD OF DELETE
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
                   WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Department_Deleted')
    BEGIN
        SELECT * INTO Department_Deleted FROM Company.Department WHERE 1=0;
    END

    INSERT INTO Department_Deleted
    SELECT * FROM deleted;

    DELETE FROM Company.Department 
    WHERE Dnumber IN (SELECT Dnumber FROM deleted);
END;
GO

Vantagem:
AFTER - A operação é bastante intuitica uma vez que se elimina dados antes de se inserir novos, garantindo também que só é feita a inserção após a remoção ser concluída.
INSTEAD OF - Permite um maior controlo sobre a operação de remoção de registos, pois permite fazer verificações antes da remoção acontecer.

Desvantagem:
AFTER - Caso seja necessário fazer certas verificações antes da remoção acontecer, o trigger 'AFTER DELETE' não é capaz se suportar.
INSTEAD OF - Acrescenta uma maior complexidade e mais difícil de manter, visto que requer lógica adicional.
```

### *i)* 

```
Stored Procedures:

As stored procedures são pré-compiladas e armazenadas no banco de dados, o que pode resultar em execuções mais rápidas em comparação com consultas SQL ad hoc..
Uma stored procedure pode chamar outra stored procedure.
Permite devolver multiplos valores (através de parametros de saída).
Podem incluir tratamento de exceções para lidar com erros durante a execução.
Podem executar transações que envolvem várias instruções SQL.

User Defined Functions:

São pré-compilados e armazenados na cache do servidor.
Deterministicas e só devolvem um valor.
As UDFs podem ser usadas como fonte de dados em consultas SQL e podem aceitar parâmetros, funcionando como uma espécie de "função de tabela".

Exemplo de uso:

Os SPs encapsulam logica que pode ser chamada como uma rotina. Devem ser usados quando varias operaçoes precisam de ser executadas numa unica transação.

As UDFs são usadas para realizar cálculos específicos que não podem ser feitos com uma única instrução SQL.
```
