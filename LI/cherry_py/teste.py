import cherrypy
class HelloWorld(object):

    @cherrypy.expose
    def index(self):
        host = cherrypy.request.headers["Host"]
        return "You have successfully reached " + host  
    
    @cherrypy.expose
    def index2(self):
        return "Hello World!"
    
cherrypy.quickstart(HelloWorld())