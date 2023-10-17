import pytest
from subprocess import Popen
from subprocess import PIPE


def client_test(argv=""):
    proc = Popen(f"python3 client.py {argv}", stdout=PIPE, shell=True)
    for line in iter(proc.stdout.readline, b''):
        #primeira linha do output do servidor
        return line.decode("utf-8").rstrip()



def test_client():
    assert client_test() == "error, number of arguments is not correct"
    assert client_test("diogo bla") == "error, invalid port number, must be numeric"
    assert client_test("Henrique") == "error, number of arguments is not correct"
    assert client_test("Henrique 1234 2.2.2.2") == "error, address must be a valid IPv4 address or localhost, or maybe if you are using localhost, the port is not the same as the server, or maybe the server is not running"
    assert client_test("Henrique 1234 127.0.0.2") =="error, address must be a valid IPv4 address or localhost, or maybe if you are using localhost, the port is not the same as the server, or maybe the server is not running"
    assert client_test("Henrique 1234 sdfsdf") == "error, third argument is not a IPv4 address"
    assert client_test("joão 12 hbhbhb") == "error, third argument is not a IPv4 address"
    assert client_test("joão 1023 asdsda") == "error, third argument is not a IPv4 address"
    assert client_test("Henrique 1234 127.0.0.1") == "error, address must be a valid IPv4 address or localhost, or maybe if you are using localhost, the port is not the same as the server, or maybe the server is not running"
    assert client_test("diogo 1234") == "error, the port is not the same as the server, or the server is not running"
    assert client_test("diogo 2222222") == "error, port number must be in the range 1024 to 65535"
    assert client_test("diogo 0") == "error, port number must be in the range 1024 to 65535"

