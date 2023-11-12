import json
import os.path
import cherrypy
from utils import *
import random
import string
from catalog import *
from orderHistory import *
from profile import *
import sqlite3 as sql

# The absolute path to this file’s base directory
baseDir = os.path.dirname(os.path.abspath(__file__))

# Dictionary with this application’s static directories configuration
config = {
    "/": { "tools.staticdir.root": baseDir},
    "/html": { "tools.staticdir.on": True,
               "tools.staticdir.dir": "html" },
    "/js": { "tools.staticdir.on": True,
             "tools.staticdir.dir": "js" },
    "/css": { "tools.staticdir.on": True,
              "tools.staticdir.dir": "css" },
    "/img": { "tools.staticdir.on": True,
              "tools.staticdir.dir": "img" },
    '/favicon.ico': {
              "tools.staticfile.on": True,
              "tools.staticfile.filename": os.getcwd() + "/img/html/icon.ico"
    }
}

class Root(object):
    def __init__(self):
        self.users = Users()
        self.products = Products()
        self.collections = Collections()
        self.catalog = Catalog()
        self.orderHistory = OrderHistory()
        self.profile = Profile()

    @cherrypy.expose
    def index(self):
        return open("html/login.html")

    @cherrypy.expose
    def register(self):
        return open("html/register.html")
    
    @cherrypy.expose
    def about(self):
        return open("html/about.html")
    
    @cherrypy.expose
    def cart(self):
        return open("html/cart.html")
    
    @cherrypy.expose
    def checkout(self):
        return open("html/checkout.html")
    
    @cherrypy.expose
    def profile(self,id=None):
        if id == None:
            raise cherrypy.HTTPRedirect("/", status=301)
        return open("html/profile.html")

    @cherrypy.expose
    def orderHistory(self):
        return open("html/order_history.html")

    @cherrypy.expose
    def default(self, *url_parts, **params):
        # redirect the user to the collections page
        raise cherrypy.HTTPRedirect("/", status=301)

class Collections(object):
    @cherrypy.expose
    def index(self):
        return open("html/collections.html")

    @cherrypy.expose
    def productDetails(self, id=None):
        if id == None:
            raise cherrypy.HTTPRedirect("/collections", status=301)
        return open("html/product_details.html")

    @cherrypy.expose
    def default(self, *url_parts, **params):
        # redirect the user to the collections page
        raise cherrypy.HTTPRedirect("/collections", status=301)

class Users(object):
    @cherrypy.expose
    def auth(self, username=None, password=None):
        result = {"authentication": "INVALID", "token": ""}
        if login(username, password):
            result["authentication"] = "OK"
            result["token"] = ''.join(random.choice(string.ascii_uppercase + string.digits + string.ascii_lowercase) for _ in range(10))
            setToken(username, result["token"])
            return json.dumps(result)
        else:
            return json.dumps(result)

    @cherrypy.expose
    def register(self, username=None, password=None):
        result = {"username": "", "password": "", "token": ""}
        # password = ''.join(random.choice(string.ascii_uppercase + string.digits + string.ascii_lowercase) for _ in range(10))

        if signin(username, password):
            result["token"] = ''.join(random.choice(string.ascii_uppercase + string.digits + string.ascii_lowercase) for _ in range(10))
            result["username"] = username
            result["password"] = password
            setToken(username, result["token"])
            return json.dumps(result)
        else:
            return json.dumps(result)

    @cherrypy.expose
    def valid(self, token=None):
        if validToken(token):
            return json.dumps({"tokenIsValid": "VALID"})
        else:
            return json.dumps({"tokenIsValid": "INVALID"})

    @cherrypy.expose
    def logOut(self, token=None):
        if (deleteToken(token)):
            return json.dumps({"deleted": "YES"})
        else:
            return json.dumps({"deleted": "NO"})
        

    @cherrypy.expose
    def userid(self,token=None):
        if token == None:
            raise cherrypy.HTTPRedirect("/collections", status=301)
        db=sql.connect("database.db")
        userId=db.execute("SELECT Id FROM Users WHERE token ='{}';".format(token)).fetchall()
        return json.dumps({"id":userId[0][0]})

    @cherrypy.expose
    def default(self, *url_parts, **params):
        # redirect the user to the collections page
        raise cherrypy.HTTPRedirect("/", status=301)

class Products(object):
    @cherrypy.expose
    def getImages(self, token=None):
        if token == None or not validToken(token):
            raise cherrypy.HTTPRedirect("/collections", status=301)
        return json.dumps({"data": getImages(token)})

    @cherrypy.expose
    def getUserProducts(self, token=None, update=0):
        if token == None or not validToken(token):
            raise cherrypy.HTTPRedirect("/collections", status=301)
        return json.dumps({"data": getUserProducts(token,update)})

    @cherrypy.expose
    def removeUserProduct(self, token=None,productId=None):
        if token == None:
            raise cherrypy.HTTPRedirect("/collections", status=301)
        return json.dumps({"data": removeUserProduct(token,productId)})
    
    
    @cherrypy.expose
    def getquantity(self, id):

        db=sql.connect("database.db")
        info=db.execute("SELECT quantity FROM Products WHERE Id = "+ id+";").fetchone()
        dic2={"quantity":info[0]}
        cherrypy.response.headers["Content-Type"] = "application/json"
        return json.dumps(dic2).encode("utf8")
        
        
    

    @cherrypy.expose
    def removeAllUserProducts(self, token=None):
        if token == None:
            raise cherrypy.HTTPRedirect("/collections", status=301)
        return json.dumps({"data": removeAllUserProducts(token)})

    @cherrypy.expose
    def updateUserQuantity(self, token=None, productId=None, quantity=None):
        if token == None:
            raise cherrypy.HTTPRedirect("/collections", status=301)
        cherrypy.response.headers["Content-Type"] = "application/json"
        return json.dumps({"data": updateUserQuantity(token,productId,quantity)}).encode("utf8")

    @cherrypy.expose
    def getCollections(self, token=None):
        if token == None or not validToken(token):
            raise cherrypy.HTTPRedirect("/collections", status=301)
        return json.dumps({"data": getCollections(token)})

    @cherrypy.expose
    def getProductData(self, product_id=None, token=None):
        if product_id == None or token == None or not validToken(token):
            raise cherrypy.HTTPRedirect("/collections", status=301)

        result = {}
        db = sql.connect("database.db")
        productData = db.execute("SELECT ImgPath,comments,description,quantity,name,price FROM Products WHERE Id=" + product_id + ";").fetchall()
        if len(productData) < 1:
            return json.dumps({"DONE": "NO"})

        result = {"DONE": "YES", "productData": []}
        result["productData"].append(productData[0][0]) # impPath
        result["productData"].append([ cmnt for cmnt in productData[0][1].split(";") ]) # comments
        result["productData"].append(productData[0][2]) # description
        result["productData"].append(productData[0][3]) # quantity
        result["productData"].append(productData[0][4]) # name
        result["productData"].append(productData[0][5]) # price
        db.close()

        return json.dumps(result)

    @cherrypy.expose
    def addComment(self, token=None, product_id=None, comment=None):
        if token == None or product_id == None or comment == None or not validToken(token):
            raise cherrypy.HTTPRedirect("/collections", status=301)

        db = sql.connect("database.db")
        cursor = db.cursor()
        product_comments = cursor.execute("SELECT comments FROM Products WHERE Id = '" + product_id + "';").fetchall()
        if len(product_comments) != 0:
            product_comments = product_comments[0][0]
            print(product_comments)
            if product_comments == "":
                cursor.execute("UPDATE Products SET comments = '" + comment + "' WHERE Id = '" + product_id + "';")
            else:
                cursor.execute("UPDATE Products SET comments = '" + product_comments + ";" + comment + "' WHERE Id = '" + product_id + "';")
        else:
            cursor.execute("UPDATE Products SET comments = '" + comment + "' WHERE Id = '" + product_id + "';")

        db.commit()
        db.close()
        return json.dumps({"DONE": "YES"})

    """@cherrypy.expose
    def getServerImageData(self):
        return json.dumps({"data": getServerImageInfo()})
    @cherrypy.expose
    def transferImage(self, token=None, image_id=None, username=None):
        if token == None or image_id == None or username == None:
            raise cherrypy.HTTPRedirect("/collections", status=301)
        return json.dumps({"data": transferImage(token, image_id, username)})
    @cherrypy.expose
    def transferServerImage(self, token=None, imageId=None, collectionId=None):
        if token == None or imageId == None or collectionId == None:
            raise cherrypy.HTTPRedirect("/collections", status=301)
        return json.dumps({"data": transferServerImage(token, imageId, collectionId)})
    @cherrypy.expose
    def default(self, *url_parts, **params):
        req = cherrypy.request
        if len(url_parts) > 0:
            if  len(url_parts) == 2 and url_parts[1] == "create":
                img_name = "img/collections/" + str(getNextImageId()) + ".png"
                img_path = baseDir + "/" + img_name
                if collectionExists(url_parts[0]):
                    if not collectionBelongsToUser(getCollectionIdFromName(url_parts[0]), req.body.params["token"]):
                        return json.dumps({"DONE": "A colecao nao pertence ao usuario corrente."})
                # create collection
                createCollection(req.body.params["token"], url_parts[0])
                # write the image to disk
                with open(img_path, 'wb') as out:
                    while True:
                        data = req.body.params["photo"].file.read(8192)
                        if not data:
                            break
                        out.write(data)
                # print("---------------------------------------------------------------")
                # print(req.body.params["token"])
                saveImage(req.body.params["token"], img_path)
                addImage(img_name, url_parts[0])
                return json.dumps({"DONE": "OK"})
            elif len(url_parts) == 1:
                if url_parts[0].isnumeric():
                    # redirect the user to the collections page
                    return json.dumps({"data": getCollectionImgs(url_parts[0], params["token"])})
                else:
                    raise cherrypy.HTTPRedirect("/collections", status=301)
        else:
            # redirect the user to the collections page
            raise cherrypy.HTTPRedirect("/collections", status=301)"""

    @cherrypy.expose
    def default(self, *url_parts, **params):
        raise cherrypy.HTTPRedirect("/", status=301)

cherrypy.config.update({'server.socket_port': 10015,})
cherrypy.quickstart(Root(), "/", config)
