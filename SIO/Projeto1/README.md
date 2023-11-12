# SIO

## Description

This web application represents a simple vulnerable web app in the form of a store.

## Authors
- Daniel Emídio **Nº 108986**
- Henrique Coelho **Nº 108342**
- Bernardo Marujo **Nº 107322**
- Carlos Ferreira **Nº 108822**
- Gabriel Costa **Nº 109050**

## Vulnerabilities

- **CWE-89** - Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection')
- **CWE-352** - Cross-Site Request Forgery (CSRF)
- **CWE-79** - Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting')
- **CWE-522** - Insufficiently Protected Credentials
- **CWE-311** - Missing Encryption of Sensitive Data
- **CWE-521** - Weak Password Requirements
- **CWE-1393** - Use of Default Password
- **CWE-620** - Unverified Password Change

## Execute

To run the vulnerable version of this web app run:

```shell
cd app/
python -m venv venv
source venv/bin/activate
pip install cherrypy
pip install pillow
python main.py
```

And the secure version:

```shell
cd app_sec/
python -m venv venv
source venv/bin/activate
pip install cherrypy
pip install pillow
python main.py
```

### CSRF

With the vulnerable version of this app running, run the following commands:

```shell
cd phishing/
python -m venv venv
source venv/bin/activate
pip install cherrypy
python main.py
```
