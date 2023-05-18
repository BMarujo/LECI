import os
import cherrypy

PATH = os.path.abspath(os.path.dirname(__file__))
conf = {
        "/documento": 
        {
            "tools.staticfile.on": True,
            "tools.staticfile.filename": os.path.join(PATH, "documento.html")
        },
        "/static": 
        {
            "tools.staticdir.on": True,
            "tools.staticdir.dir": os.path.join(PATH, "static")
        },
        "/css": 
        {
            "tools.staticdir.on": True,
            "tools.staticdir.dir": os.path.join(PATH, "css")
        },
        "/js": 
        {
            "tools.staticdir.on": True,
            "tools.staticdir.dir": os.path.join(PATH, "js")
        },
        "/images": 
        {
            "tools.staticdir.on": True,
            "tools.staticdir.dir": os.path.join(PATH, "images")
        }
    }


class Root(object):

    def __init__(self):
        self.actions = Actions()

    @cherrypy.expose
    def index(self):
        return "Eu sou o índice do Root (Root.index)"

    @cherrypy.expose
    def page(self):
        return "Eu sou um método do Root (Root.page)"

    @cherrypy.expose
    def form(self):
        cherrypy.response.headers["Content-Type"] = "text/html"
        return open("formulario.html")
    
class Actions(object):
    @cherrypy.expose
    def doLogin(self, username=None, password=None):
        if username == "admin" and password == "admin":
            return "Bem-vindo, administrador"
        return "Acesso Negado, verificar as credenciais do utilizador "
    


cherrypy.quickstart(Root(), "/", config=conf)
