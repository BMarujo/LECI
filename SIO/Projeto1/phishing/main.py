import os.path
import cherrypy

# the absolute path to this file’s base directory
baseDir = os.path.dirname(os.path.abspath(__file__))

# dictionary with this application’s static directories configuration
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
        pass

    @cherrypy.expose
    def index(self):
        return open("html/index.html")

    @cherrypy.expose
    def default(self, *url_parts, **params):
        raise cherrypy.HTTPRedirect("/", status=301)

cherrypy.config.update({'server.socket_port': 10016})
cherrypy.quickstart(Root(), "/", config)
