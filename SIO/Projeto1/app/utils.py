import os
import shutil
import sqlite3 as sql
from PIL import Image, ImageFont, ImageDraw

def signin(nome, password):
    db = sql.connect("database.db")
    user = db.execute("SELECT * FROM Users WHERE user = '" + nome + "';").fetchall()
    if len(user) != 0:
        db.close()
        return False

    cursor = db.cursor()
    cursor.execute("INSERT INTO Users(user,password) VALUES('" + nome + "', '" + password + "');")
    db.commit()
    db.close()
    return True

def login(nome, password):
    db = sql.connect("database.db")
    user = db.execute("SELECT * FROM Users WHERE user = '" + nome + "' AND password = '" + password + "';").fetchall()
    if len(user) == 0:
        db.close()
        return False

    db.close()
    return True

def setToken(nome, token):
    db = sql.connect("database.db")
    cursor = db.cursor()
    cursor.execute("UPDATE Users SET token = '" + token + "' WHERE user = '" + nome + "';")
    db.commit()
    db.close()

def validToken(token):
    db = sql.connect("database.db")
    user = db.execute("SELECT * FROM Users WHERE token = '" + token + "';").fetchall()
    if len(user) == 0:
        db.close()
        return False
    db.close()
    return True

def deleteToken(token):
    if validToken(token):
        db = sql.connect("database.db")
        cursor = db.cursor()
        cursor.execute("UPDATE Users SET token = '' WHERE token = '" + token + "';")
        db.commit()
        db.close()
        return True
    else:
        return False

def getCollections(token):
    result = []
    db = sql.connect("database.db")
    userCollectionsIds = db.execute("SELECT idCollection FROM Users WHERE token = '" + token + "';").fetchall()
    if len(userCollectionsIds) == 0:
        db.close()
        return result
    else:
        for collection_id_tuple in userCollectionsIds:
            if collection_id_tuple[0] != None:
                col_ids = collection_id_tuple[0].split(";")
                for col_id in col_ids:
                    info = db.execute("SELECT * FROM Collection WHERE id = '" + col_id + "';").fetchall()
                    if len(info) != 0:
                        result.append([info[0][0], info[0][1]])
    db.close()
    return result

def getImages(token):
    result = []
    if not validToken(token):
        print("invalid token")
        return result
    db = sql.connect("database.db")
    paths = db.execute("SELECT path FROM ServerImgs").fetchall()
    if len(paths) == 0:
        db.close()
        return result
    else:
        for path in paths:
            result.append(path[0])          
    db.close()
    return result

def getUserProducts(token, update=0):        # o update vai ser o id do produto que foi adicionado
    result = []
    if not validToken(token):
        print("invalid token")
        return result

    db = sql.connect("database.db")
    userId = db.execute("SELECT Id FROM Users WHERE token = '" + token + "';").fetchall()[0][0]
    print("-----------userId: {}--------------".format(userId))
    products = db.execute("SELECT Products.* FROM Products JOIN UserProducts ON Products.Id = UserProducts.ProductId WHERE UserProducts.UserId = {};".format(userId)).fetchall()
    print("----------------------------------------")
    print(products)
    print("----------------------------------------")
    if update != 0:
        old_quantity = db.execute("SELECT Quantity FROM UserProducts WHERE ProductId = {};".format(update)).fetchall()[0][0]
        db.execute("UPDATE UserProducts SET Quantity = {} WHERE UserId = {};".format(old_quantity+1,userId))
        db.commit()
    else:
        if len(products) == 0:
            db.close()
            return result
        else:
            for product in products:    # product = [id, path, comment,quantity, name, price]
                id = product[0]
                path = product[1]
                quantity = db.execute("SELECT Quantity FROM UserProducts WHERE ProductId = {} AND userID={};".format(id,userId)).fetchall()[0][0]
                productQuantity = db.execute("SELECT quantity FROM Products WHERE Id = {};".format(id)).fetchall()[0][0]
                print("productQuantity: {}".format(productQuantity))
                print("quantity: {}".format(quantity))
                product_name = product[-2]
                price = product[-1]
                result.append([product_name, path, quantity, price,id,productQuantity])          
    db.close()
    return result

def removeUserProduct(token,productId):
    print("------------------------removeUserProduct-----------------------")
    if not validToken(token):
        print("invalid token ON removeUserProduct")
        return 
        
    if productId == None:
        print("productId is None")
        return 
    #print("productId: {}".format(productId))
    db = sql.connect("database.db")
    userId = db.execute("SELECT Id FROM Users WHERE token = '" + token + "';").fetchall()[0][0]
    #print("userId: {}".format(userId))
    quantity = db.execute("SELECT Quantity FROM UserProducts WHERE ProductId = {} AND USERID = {};".format(productId,userId)).fetchall()[0][0]
    #print("quantity: {}".format(quantity))
    db.execute("UPDATE Products SET quantity = quantity + {} WHERE Id = {};".format(quantity,productId))
    executed = "DELETE FROM UserProducts WHERE UserId = {} AND ProductId = {};".format(userId,productId)
    print(executed)
    db.execute(executed)
    db.commit()    

    db.close()

def removeAllUserProducts(token):
    if not validToken(token):
        print("invalid token ON removeUserProduct")
        return 

    db = sql.connect("database.db")
    userId = db.execute("SELECT Id FROM Users WHERE token = '" + token + "';").fetchall()[0][0]
    db.execute("DELETE FROM UserProducts WHERE UserId = {};".format(userId))
    # print to see if it was deleted
    print("DELETE FROM UserProducts WHERE UserId = {};".format(userId))
    for product in db.execute("SELECT * FROM UserProducts WHERE UserId = {};".format(userId)).fetchall():
        print("it was not deleted")
        print(product)
    db.commit()    
    db.close()

# FUNÇÃO FEITA PARA A PÁGINA DO CARRINHO ONDE SE ESTÁ A AUMENTAR OU DIMINUIR A QUANTIDADE DO PRODUTO
def updateUserQuantity(token,productId,newQuantity):     # addToQuantity should be equal to 1 or -1
    print("------------------------newQuantity-----------------------")
    if not validToken(token):
        print("invalid token ON removeUserProduct")
        return 

    if productId == None:
        print("productId is None")
        return

    #print("productId: {}".format(productId))
    db = sql.connect("database.db")
    userId = db.execute("SELECT Id FROM Users WHERE token = '" + token + "';").fetchall()[0][0]
    #print("userId: {}".format(userId))
    print("newQuantity: {}".format(newQuantity))
    oldQuantity = db.execute("SELECT Quantity FROM UserProducts WHERE ProductId = ?;", (productId,)).fetchone()[0]
    print("oldQuantity: {}".format(oldQuantity))
    quantityToAdd = oldQuantity - int(newQuantity) 
    print("quantityToAdd: {}".format(quantityToAdd))
    #print("quantity: {}".format(quantity))
    oldProductQuantity = db.execute("SELECT quantity FROM Products WHERE Id = ?;", (productId,)).fetchone()[0]
    newProductQuantity = oldProductQuantity + quantityToAdd
    if newProductQuantity >= 0:
        db.execute("UPDATE Products SET quantity = {} WHERE Id = {};".format(newProductQuantity,productId))    
        db.execute("UPDATE UserProducts SET Quantity = {} WHERE UserId = {} AND ProductId = {};".format(newQuantity,userId,productId))
        db.commit()
        db.close()
        return "Quantidade Atualizada"
    else:
        db.close()
        return "Quantidade Inválida"

def collectionExists(nomeCollection):
    db = sql.connect("database.db")
    collectionResult = db.execute("SELECT * FROM Collection WHERE name = '" + nomeCollection + "';").fetchall()
    db.close()
    return len(collectionResult) != 0

def createCollection(token, nomeCollection):
    if not collectionExists(nomeCollection):
        db = sql.connect("database.db")
        cursor = db.cursor()
        cursor.execute("INSERT INTO Collection(name) VALUES('" + nomeCollection + "');")
        addCollection(token, cursor.execute("SELECT id FROM Collection WHERE name = '" + nomeCollection + "';").fetchall()[0][0], cursor)
        db.commit()
        db.close()

def addCollection(token, idCollection, cursor):
    collectionId = cursor.execute("SELECT idCollection FROM Users WHERE token = '" + token + "';").fetchall()
    # check if the return value is not an empty list
    if len(collectionId) != 0:
        if collectionId[0][0] != None:
            collectionId = collectionId[0][0] + ";" + str(idCollection)
            cursor.execute("UPDATE Users SET idCollection = '" + collectionId + "' WHERE token = '" + token + "';")
        else:
            cursor.execute("UPDATE Users SET idCollection = '" + str(getNextCollectionId()) + "' WHERE token = '" + token + "';")
    else:
        cursor.execute("UPDATE Users SET idCollection = '" + str(getNextCollectionId()) + "' WHERE token = '" + token + "';")

def addImage(pathImg, collectionName):
    db = sql.connect("database.db")
    cursor = db.cursor()
    cursor.execute("INSERT INTO Img(path) VALUES('" + pathImg + "');")
    idImg = cursor.execute("SELECT IdImg FROM Img WHERE path = '" + pathImg + "';").fetchall()
    collectionImgsIds = cursor.execute("SELECT IdImg FROM Collection WHERE name = '" + collectionName + "';").fetchall()

    # check if the return values are not empty lists
    if len(collectionImgsIds) != 0 and len(idImg) != 0:
        if collectionImgsIds[0][0] != None:
            collectionImgsIds = collectionImgsIds[0][0] + ";" + str(idImg[0][0])
            cursor.execute("UPDATE Collection SET IdImg = '" + collectionImgsIds + "' WHERE name = '" + collectionName + "';")
        else:
            cursor.execute("UPDATE Collection SET IdImg = '" + str(getNextImageId()) + "' WHERE name = '" + collectionName + "';")
    else:
        cursor.execute("UPDATE Collection SET IdImg = '" + str(getNextImageId()) + "' WHERE name = '" + collectionName + "';")

    db.commit()
    db.close()

def getNextCollectionId():
    db = sql.connect("database.db")
    lastId = len(db.execute("SELECT id FROM Collection").fetchall())
    db.close()
    return lastId + 1

def getNextImageId():
    db = sql.connect("database.db")
    lastId = len(db.execute("SELECT IdImg FROM Img").fetchall())
    db.close()
    return lastId + 1

def collectionBelongsToUser(collectionId, token, db=None):
    if db == None:
        db = sql.connect("database.db")
    user_collection_ids = db.execute("SELECT idCollection FROM Users WHERE token = '" + token + "';").fetchall()
    if db == None:
            db.close()
    if len(user_collection_ids) == 0:
        return False
    elif user_collection_ids[0][0] == None:
        return False
    elif str(collectionId) in user_collection_ids[0][0]:
        return True
    else:
        return False

def getCollectionImgs(collectionId, token):
    result = []
    if not collectionBelongsToUser(collectionId, token):
        result.append("REDIRECT")
        return result

    db = sql.connect("database.db")
    collectionImgsIds = db.execute("SELECT IdImg FROM Collection WHERE id = '" + collectionId + "';").fetchall()
    if len(collectionImgsIds) == 0:
        db.close()
        return result
    else:
        for collection_img_id_tuple in collectionImgsIds:
            if collection_img_id_tuple[0] != None:
                imgs_ids = collection_img_id_tuple[0].split(";")
                for img_id in imgs_ids:
                    img_path = db.execute("SELECT path FROM Img WHERE IdImg = '" + img_id + "';").fetchall()
                    if len(img_path) != 0:
                        result.append([img_id, img_path[0][0]])
    db.close()
    return result

def userHasCollections(username, db):
    return db.execute("SELECT idCollection FROM Users WHERE user = '" + username + "';").fetchall()[0][0] != None

"""def getImageInfo(token, imageId):
    result = []
    db = sql.connect("database.db")
    imgsIds = db.execute("SELECT id,IdImg FROM Collection;").fetchall()
    for img_id in imgsIds:
        if imageId in img_id[1]:
            if collectionBelongsToUser(img_id[0], token, db):
                info = db.execute("SELECT path,comment FROM Img WHERE IdImg = '" + imageId + "';").fetchall()
                result.append(info[0][0])
                result.append(str(info[0][1]))
                result.append(db.execute("SELECT user FROM Users WHERE token = '" + token + "';").fetchall()[0][0])
                result.append([ user[0] for user in db.execute("SELECT user FROM Users;").fetchall() if userHasCollections(user[0], db) if user[0] != getUsernameFromToken(token, db) ]) # get all usernames
                db.close()
                return result
            else:
                db.close()
                return result
    db.close()
    return result

def getServerImageInfo():
    result = []
    db = sql.connect("database.db")
    img_info = db.execute("SELECT * FROM ServerImgs;").fetchall()
    if len(img_info) != 0:
        for img in img_info:
            result.append([img[0], img[1]])
    db.close()
    return result"""

def getUsernameFromToken(token, db=None):
    if db == None:
        db = sql.connect("database.db")
    user_name = db.execute("SELECT user FROM Users WHERE token = '" + token + "';").fetchall()
    if db == None:
        db.close()
    return user_name[0][0]

def getUserIdFromToken(token, db=None):
    if db == None:
        db = sql.connect("database.db")
    user_name = db.execute("SELECT Id FROM Users WHERE token = '" + token + "';").fetchall()
    if db == None:
        db.close()
    return user_name[0][0]

"""
def transferImage(token, image_id, username):
    db = sql.connect("database.db")
    cursor = db.cursor()

    collection_name = ""
    collection_img_ids = ""
    for col_name in cursor.execute("SELECT * FROM Collection;").fetchall():
        if len(col_name) != 0:
            if str(image_id) in col_name[2]:
                collection_name = col_name[1]
                collection_img_ids = col_name[2]

    collection_img_ids = collection_img_ids.split(";")
    collection_img_ids = [ img_id for img_id in collection_img_ids if str(image_id) != img_id ]

    new_imgs_ids = ""
    for i in collection_img_ids:
        new_imgs_ids += i + ";"
    new_imgs_ids = new_imgs_ids[:-1]

    cursor.execute("UPDATE Collection SET IdImg = '" + new_imgs_ids + "' WHERE name = '" + collection_name + "';")
    new_user_first_collection = cursor.execute("SELECT idCollection FROM Users WHERE user = '" + username + "';").fetchall()[0][0][0]
    new_user_collection_imgs_ids = cursor.execute("SELECT IdImg FROM Collection WHERE id = '" + str(new_user_first_collection) + "';").fetchall()
    if len(new_user_collection_imgs_ids) != 0:
        new_user_collection_imgs_ids = new_user_collection_imgs_ids[0][0].split(";")
        new_user_collection_imgs_ids.append(str(image_id))
        new_user_collection_imgs_ids = ";".join(new_user_collection_imgs_ids)
        if new_user_collection_imgs_ids != None:
            cursor.execute("UPDATE Collection SET IdImg = '" + new_user_collection_imgs_ids + "' WHERE id = '" + new_user_first_collection + "';")
    else:
        cursor.execute("UPDATE Collection SET IdImg = '" + str(image_id) + "' WHERE id = '" + new_user_first_collection + "';")

    db.commit()
    db.close()
    return "Done"
"""

def saveImage(token, img_path):
    # convert image to png
    image = Image.open(img_path)
    image.save(img_path)

    username = getUsernameFromToken(token)

    # draw the username (watermark)
    image = Image.open(img_path)
    font = ImageFont.truetype("fonts/Roboto-Italic.ttf", 20)
    draw = ImageDraw.Draw(image)
    position = (5, image.height - 25)
    draw.text(position, username, font=font, fill="white")

    # save the image with sthe watermark
    image.save(img_path)

def getCollectionNameFromId(collectionId, cursor):
    return cursor.execute("SELECT name FROM Collection WHERE id = '" + collectionId + "';").fetchall()[0][0]

def getCollectionIdFromName(collectionName):
    db = sql.connect("database.db")
    collection_id = db.execute("SELECT id FROM Collection WHERE name = '" + collectionName + "';").fetchall()[0][0]
    db.close()
    return collection_id

"""
def transferServerImage(token, imageId, collectionId):
    if collectionBelongsToUser(collectionId, token):
        db = sql.connect("database.db")
        cursor = db.cursor()

        # cursor.execute("INSERT INTO Users(user,password) VALUES(?, ?);", (nome, password))
        img_name = cursor.execute("SELECT path FROM ServerImgs WHERE IdImg = '" + imageId + "';").fetchall()[0][0][3:]

        shutil.copy(img_name, "img/collections/" + str(getNextImageId()) + ".png")
        img_name = "img/collections/" + str(getNextImageId()) + ".png"
        img_path = os.path.dirname(os.path.abspath(__file__)) + "/" + img_name
        cursor.execute("DELETE FROM ServerImgs WHERE IdImg = " + imageId + ";")

        saveImage(token, img_name)
        collection_name = getCollectionNameFromId(collectionId, cursor)
        db.commit()
        db.close()

        addImage(img_name, collection_name)
        return "YES"
    else:
        return "NO"
"""

"""def addProductComment(token, imageId, comment):
    # collections = getCollections(token)
    db = sql.connect("database.db")
    # imageBelongsToUser = False
    imageBelongsToUser = True

    if len(collections) == 0:
        return "NO"
    else:
        for col in collections:
            collection_imgs = db.execute("SELECT IdImg FROM Collection WHERE name = '" + col[1] + "';").fetchall()[0][0]
            if collection_imgs != None:
                if imageId in collection_imgs:
                    imageBelongsToUser = True

    if imageBelongsToUser:
        cursor = db.cursor()
        image_comments = cursor.execute("SELECT comments FROM Products WHERE Id = '" + imageId + "';").fetchall()
        if len(image_comments) != 0:
            image_comments = image_comments[0][0]
            if image_comments == None:
                cursor.execute("UPDATE Products SET comments = '" + comment + "' WHERE Id = '" + imageId + "';")
            else:
                cursor.execute("UPDATE Products SET comments = '" + image_comments + ";" + comment + "' WHERE Id = '" + imageId + "';")
        else:
            cursor.execute("UPDATE Products SET comments = '" + comment + "' WHERE Id = '" + imageId + "';")
    else:
        db.close()
        return "NO"

    db.commit()
    db.close()
    return "YES"
"""
