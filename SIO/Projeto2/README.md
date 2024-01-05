# SIO

## Description

This web application represents a simple vulnerable web app in the form of a store.

## Authors
- Daniel Emídio **Nº 108986**
- Henrique Coelho **Nº 108342**
- Bernardo Marujo **Nº 107322**
- Carlos Ferreira **Nº 108822**
- Gabriel Costa **Nº 109050**

## Execute

To run the original version of the web app:
```shell
cd app_org/
python -m venv venv
source venv/bin/activate
pip install cherrypy
pip install pillow
python main.py
```

To run the secure application:

```shell
cd app_sec/
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python main.py
```
