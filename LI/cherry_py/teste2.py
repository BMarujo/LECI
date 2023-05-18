import cherrypy
import os



PATH = os.path.abspath(os.path.dirname(__file__))
conf = {
"/documento": {
"tools.staticfile.on": True,
"tools.staticfile.filename": os.path.join(PATH, "documento.html")
}
}



class Node(object):
    @cherrypy.expose
    def index(self):
        self.num=0
        print("balanço: ",self.num)
        return "Eu sou o índice do Node (Node.index) %d" % (self.num)
    @cherrypy.expose
    def page(self):
            return "Eu sou um método do Node (Node.page)"
class Root(object):

    def __init__(self):
        self.node = Node()
        self.actions = Actions()
        
                
    @cherrypy.expose
    def page(self2):
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

if __name__ == "__main__":
    cherrypy.quickstart(Root(), "/", config=conf)

