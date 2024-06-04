# BD: Guião 8


## ​8.1. Complete a seguinte tabela.
Complete the following table.

| #    | Query                                                                                                      | Rows  | Cost  | Pag. Reads | Time (ms) | Index used | Index Op.            | Discussion |
| :--- | :--------------------------------------------------------------------------------------------------------- | :---- | :---- | :--------- | :-------- | :--------- | :------------------- | :--------- |
| 1    | SELECT * from Production.WorkOrder                                                                         | 72591 | 0.473 | 531        | 1171      | PK         | Clustered Index Scan |            |
| 2    | SELECT * from Production.WorkOrder where WorkOrderID=1234                                                  |   1    |   0.003    |       14     |   16        |     PK       |  Clustered index seek                    |            |
| 3.1  | SELECT * FROM Production.WorkOrder WHERE WorkOrderID between 10000 and 10010                               |    11   |    0.003   |       14     |  70         |    PK        |     Clustered index seek                 |            |
| 3.2  | SELECT * FROM Production.WorkOrder WHERE WorkOrderID between 1 and 72591                                   |  72591      |   0.473     |    542        | 1165          |  PK          |     Clustered index seek                 |            |
| 4    | SELECT * FROM Production.WorkOrder WHERE StartDate = '2007-06-25'                                          |   55    |   0.473    |     542       |     147      |  PK          |      Clustered index seek                |            |
| 5    | SELECT * FROM Production.WorkOrder WHERE ProductID = 757                                                   |   9    |   0.003    |     34       |    103       |  ProductID          |  Index seek (non clestered)/Clustered key lookup                    |            |
| 6.1  | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 757                              |  9     |   0.003    |     16       |  74         | ProductID     |    Index seek (non clestered)                 |            |
| 6.2  | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945                              |   1105    |   0.473    |    20        |   93        |      ProductID      |    Clustered Index Scan                  |            |
| 6.3  | SELECT WorkOrderID FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04'            |  1     | 0.003      |    40        |   70        |      ProductID      |    Clustered Index Scan                  |            |
| 7    | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04' |   1    |   0.006    |     169       |    70       |   ProductID and StartDate         |    Clustered Index Scan           |            |
| 8    | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04' |   1    |  0.006     |     171       |   77        |      ProductID      |    Clustered Index Scan        |            |

## ​8.2.

### a)

```
CREATE UNIQUE CLUSTERED INDEX rid_index ON mytemp(rid)
```

### b)

```
Time (ms): 990327
Fragmentation Percentage: 99.41%  
Page Index Occupation: 69.61 %
```

### c)

```
FillFactor: 65 Time (ms): 193260
FillFactor: 80 Time (ms): 198526
FillFactor: 90 Time (ms): 211239
```

### d)

```
FillFactor: 65 Time (ms): 189523
FillFactor: 80 Time (ms): 194032
FillFactor: 90 Time (ms): 209327
```

### e)

```
A presença de mais índices diminui o desempenho das operações de inserção, especialmente em tabelas com muitos registros.
```

## ​8.3.

```
i- CREATE UNIQUE CLUSTERED INDEX idx_ssn ON EMPLOYEE(Ssn);
ii- CREATE NONCLUSTERED INDEX idx_f_name ON EMPLOYEE(Fname, Lname);
iii- CREATE NONCLUSTERED INDEX idx_dno ON EMPLOYEE(Dno);
CREATE UNIQUE CLUSTERED INDEX idx_dnumber ON DEPARTMENT(Dnumber);
iv- CREATE UNIQUE CLUSTERED INDEX idx_essn_pno ON WORKS_ON(Essn, Pno);
CREATE NONCLUSTERED INDEX idx_pnum ON PROJECT(Pnumber);
v- CREATE UNIQUE CLUSTERED INDEX idx_essn_dname ON DEPENDENT(Essn, Dependent_name);
vi- CREATE CLUSTERED INDEX idx_pnum_dno ON PROJECT(Pnumber, Dnum)
```
