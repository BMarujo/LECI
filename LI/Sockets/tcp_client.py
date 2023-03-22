from socket import *
tcp_s = socket(AF_INET, SOCK_STREAM)
tcp_s.bind(("0.0.0.0",0))
tcp_s.connect(("127.0.0.1", 1234))

tcp_s.send("labi".encode("utf-8"))
data = tcp_s.recv(4096)
print(data)
tcp_s.close()