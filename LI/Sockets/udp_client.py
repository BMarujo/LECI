from socket import *

udp_s = socket(AF_INET, SOCK_DGRAM)
udp_s.bind(("0.0.0.0", 0))
x = "teste"
while x != "":
    x = input ()
    udp_s.sendto(x.encode("utf-8"), ("127.0.0.1",1234))

udp_s.close()