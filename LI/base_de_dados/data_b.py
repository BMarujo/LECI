import sqlite3 as sql
import sys
def main(argv):
    db = sql.connect(argv[1]) # estabelecer ligação à BD 
    # realizar operações sobre a BD
    result = db.execute("SELECT firstname FROM contacts")
    x=0


    #rows = result.fetchall()
    #for row in rows:
    #    print(row)


    #while True:
    #    row = result.fetchone()
    #    if not row:
    #        break
    #    print(row)

    for row in result:
        x+=1
        print(row[0])

    print("número de contactos = %d" % (x))


    domain = input("Domínio de email? ")
    result = db.execute("SELECT email FROM contacts WHERE email LIKE ?", (domain,) )


    print("Contactos com email em %s: " % (domain))

    for row in result:
        print(row[0])

    db.close() # terminar ligação
    
main(sys.argv)