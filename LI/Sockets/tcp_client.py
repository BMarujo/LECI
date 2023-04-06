from socket import *
tcp_s = socket(AF_INET, SOCK_STREAM)
tcp_s.bind(("0.0.0.0",0))
tcp_s.connect(("127.0.0.1", 1234))
message="a"
while(message!=""):
    message=input("Message: ")
    tcp_s.send(message.encode("utf-8"))
data = tcp_s.recv(4096)
print(data.decode("utf-8"))
tcp_s.close()