import json
import cherrypy
from utils import *
import sqlite3 as sql

class Catalog(object):
    @cherrypy.expose
    def show_products_info(self):
        db=sql.connect("database.db")
        info=db.execute("SELECT quantity,name,price,ImgPath,Id FROM Products;").fetchall()
        quantity=[]
        name=[]
        price=[]
        path=[]
        id=[]
        for x in range(len(info)):
            quantity1=info[x][0]
            name1=info[x][1]
            price1=info[x][2]
            path1=info[x][3]
            id1=info[x][4]
            quantity.append(quantity1)
            name.append(name1)
            price.append(price1)
            path.append(path1)
            id.append(id1)
        dic={"quantity":quantity,"name":name,"price":price,"size":len(quantity),"path":path,"id":id}
        db.close()
        cherrypy.response.headers["Content-Type"] = "application/json"
        return json.dumps(dic).encode("utf8")

    @cherrypy.expose
    def search2(self, word):
        db=sql.connect("database.db")
        info=db.execute("SELECT quantity,name,price,ImgPath,Id FROM Products WHERE name LIKE '%" + word + "%';").fetchall()
        quantity=[]
        name=[]
        price=[]
        path=[]
        id=[]
        for x in range(len(info)):
            quantity1=info[x][0]
            name1=info[x][1]
            price1=info[x][2]
            path1=info[x][3]
            id1=info[x][4]
            quantity.append(quantity1)
            name.append(name1)
            price.append(price1)
            path.append(path1)
            id.append(id1)
        dic2={"quantity":quantity,"name":name,"price":price,"size":len(quantity),"path":path,"id":id}
        db.close()
        cherrypy.response.headers["Content-Type"] = "application/json"
        return json.dumps(dic2).encode("utf8")

    @cherrypy.expose
    def buy(self, idimag):
        token = cherrypy.request.cookie.get('token').value
        #print("-----------------------------TOKEN: {}-------------------------".format(token))
        db = sql.connect('database.db')
        db.execute("UPDATE Products SET quantity = quantity - 1 WHERE Id = ?", (idimag,))
        userId = db.execute("SELECT Id FROM users WHERE token = ?", (token,)).fetchone()[0]
        products = db.execute("SELECT * FROM userProducts where userID = ?;",(userId,)).fetchall()
        
        exists = False      # Check if the product is already in the userProducts table
        for product in products:
            if int(userId) == product[1] and int(idimag) == product[2]:
                exists = True
                break

        #print("--------------------------EXISTS: {}----------------------------".format(exists))
        if not exists:
            #print("--------------------------INSERTING----------------------------")
            db.execute("INSERT INTO UserProducts (UserID, ProductId, Quantity) VALUES (?,?,?)", (userId, idimag, 1))
        else:
            #print("--------------------------UPDATING----------------------------")
            db.execute("UPDATE UserProducts SET Quantity = Quantity + 1 WHERE ProductId = ?", (idimag,))
        db.commit()
        a=db.execute("SELECT quantity FROM Products WHERE Id = ?", (idimag,)).fetchone()
        db.close()
        cherrypy.response.headers["Content-Type"] = "application/json"
        return json.dumps({"refresh":a}).encode("utf8")
