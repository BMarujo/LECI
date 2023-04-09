def fibonacci(n):
    res = []
    if n < 0:
        return res
    elif n == 0:
        res.append(0)
        return res
    elif n == 1:
        res.append(0)
        res.append(1)
        return res
    else:
        res.append(0)
        res.append(1)
        for i in range(2, n+1):
            res.append(res[i-1] + res[i-2])
        return res
    
def main():
    n = int(input("Enter the index of the Fibonacci number: "))
    print(fibonacci(n))

if __name__ == "__main__":
    main()
