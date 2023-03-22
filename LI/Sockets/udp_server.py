from socket import *

udp_s = socket(AF_INET, SOCK_DGRAM)

udp_s.bind(("0.0.0.0", 1234))

x="a"
while x != "":
    data, addr = udp_s.recvfrom(4096)
    x = data.decode("utf-8")
    if(x==""):
        print("connection closed")
    else:
        print ("message = " ,  x)
udp_s.close()