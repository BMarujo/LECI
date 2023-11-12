import json
import cherrypy
from utils import *
import sqlite3 as sql

class Profile(object):
    @cherrypy.expose
    def default(self, *url_parts, **params):
        return open("html/profile.html")

    @cherrypy.expose
    def show_avatar(self,token,userId):
        if token == None:
            print("----------IM HEREEE BUT THE TOKEN IS INVALID------")
            raise cherrypy.HTTPRedirect("/collections", status=301)
        db=sql.connect("database.db")
        print("----------SHOW AVATAR------")
        avatar = db.execute("SELECT avatar FROM Users WHERE id ='{}';".format(userId)).fetchall()
        # avatar = [(None,)]
        print("avatar_before: ",avatar[0][0])
        if avatar[0][0] == None or avatar[0][0] == "":
            username = db.execute("SELECT user FROM Users WHERE id ='{}';".format(userId)).fetchall()
            username = username[0][0]   # username = [(username,)]
            print("username in avatar: ",username)
            
            defaultAvatarPath = "./img/html/logoDeti.png"
            newAvatarPath = './img/avatars/' + username + '.png'

            with open(defaultAvatarPath, 'rb') as source_file, open(newAvatarPath, 'wb') as dest_file:
                while True:
                    data = source_file.read(8192)
                    if not data:
                        break
                    dest_file.write(data)
            db.execute("UPDATE USERS SET avatar = '{}' WHERE token = '{}';".format('../img/avatars/'+username+'.png',token))
            db.commit()
            #print(sorted(files,key=None,reverse=True))

            return json.dumps("../img/html/logoDeti.png")
        print("avatar: ",avatar[0][0])
        db.close()
        return json.dumps(avatar[0][0])

    @cherrypy.expose
    def change_avatar(self,token,newAvatar,userId):    # FALTA FAZER COM QUE O SERVIDOR RECEBA A IMAGEM
        if token == None:
            raise cherrypy.HTTPRedirect("/collections", status=301)
        if newAvatar == "":
            return json.dumps("no Image")
        print("---------CHANGING AVATAR-------------")

        db=sql.connect("database.db")
        db.execute("UPDATE USERS SET avatar = '{}' WHERE id = '{}';".format(newAvatar,userId))    
        db.commit()
        print("newAvatar: ",db.execute("SELECT avatar FROM Users WHERE id ='{}';".format(userId)).fetchall())
        db.close()
        return json.dumps("changed avatar")

    @cherrypy.expose
    def upload_avatar(self, newAvatar,userId):
        # Here 'avatar' is the uploaded file
        # Save the uploaded file to a location on your server
        print("---------UPLOADING AVATAR-------------")
        db=sql.connect("database.db")
        token = cherrypy.request.cookie.get('token').value

        userId = db.execute("SELECT id FROM Users WHERE token ='{}';".format(token)).fetchall()
        username = db.execute("SELECT user FROM Users WHERE id ='{}';".format(userId[0][0])).fetchall()

        print("username: ",username)
        if newAvatar == "":
            return json.dumps("no Image")
        with open('./img/avatars/'+username[0][0]+'.png', 'wb') as f:
            while True:
                data = newAvatar.file.read(8192)
                if not data:
                    break
                f.write(data)
        result = {'success': 'uploaded avatar','newAvatarPath': '../img/avatars/'+username[0][0]+'.png'}
        return json.dumps(result)

    @cherrypy.expose
    def show_username(self,token,userId):
        if token == None:
            print("----------IM HEREEE BUT THE TOKEN IS INVALID------")
            raise cherrypy.HTTPRedirect("/collections", status=301)
        db=sql.connect("database.db")
        print("----------IM HEREEE BITCHES------")
        print(token)
        username=db.execute("SELECT name FROM Users WHERE id ='{}';".format(userId)).fetchall()
        # username = [(None,)]
        print("username_before: ",username)
        if username[0][0] == None:
            username = db.execute("SELECT user FROM Users WHERE id ='{}';".format(userId)).fetchall()
        print("username: ",username[0][0])
        db.close()
        return json.dumps(username[0][0])

    @cherrypy.expose
    def change_username(self,token,newUsername,userId):
        print("---------CHANGING USERNAME-------------")

        if token == None:
            raise cherrypy.HTTPRedirect("/collections", status=301)
        if newUsername == "":
            return json.dumps("empty username")
        
        print("---------CHANGING USERNAME-------------")
        print("newUsername: ",newUsername)
        db=sql.connect("database.db")
        db.execute("UPDATE Users SET name = '{}' WHERE id = '{}';".format(newUsername,userId))
        db.commit()
        db.close()
        return json.dumps("changed username")

    @cherrypy.expose
    def change_password(self,token,newPassword,userId):
        if token == None:
            raise cherrypy.HTTPRedirect("/collections", status=301)
        if newPassword == "":
            return json.dumps("empty password")
        print("---------CHANGING PASSWORD-------------")

        db=sql.connect("database.db")
        db.execute("UPDATE USERS SET password = '{}' WHERE id = '{}';".format(newPassword,userId))
        db.commit()
        print("newpassword: ",db.execute("SELECT password FROM Users WHERE id ='{}';".format(userId)).fetchall())
        db.close()
        return json.dumps("changed password")
