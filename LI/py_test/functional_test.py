from subprocess import Popen
from subprocess import PIPE
proc = Popen("ls", stdout=PIPE, shell=True)
proc2 = Popen("ls", stdout=PIPE, shell=True)

return_code = proc.wait()
return_code2 = proc2.wait()

output = proc.stdout.read().decode("utf-8")

print(output)

for line in iter(proc2.stdout.readline, b""):
    print(line.decode("utf-8"), end="")