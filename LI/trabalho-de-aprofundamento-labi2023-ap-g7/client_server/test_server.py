import pytest
from subprocess import Popen
from subprocess import PIPE


def server_test(argv=""):
    proc = Popen(f"python3 server.py {argv}", stdout=PIPE, shell=True)
    for line in iter(proc.stdout.readline, b''):
        #primeira linha do output do servidor
        return line.decode("utf-8").rstrip()


def test_server():
    assert server_test() == "error, number of arguments is not correct"
    assert server_test("1234 12567") == "error, number of arguments is not correct"
    assert server_test("Henrique") == "error, invalid port number, must be numeric"
    assert server_test("12") == "error, port number must be in the range 1024 to 65535"