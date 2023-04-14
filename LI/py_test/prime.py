import sys
def main(argv):
    y="True"
    num = int(argv[1])
    for x in range( 2, num//2 ):
        if num % x == 0:
            y="False"
    print(y)
main(sys.argv)