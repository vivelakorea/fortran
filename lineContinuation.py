from collections import deque

maximum_length = 80

filename = input("file name : ")
f = open(filename)
lines = list(map(lambda x: x[:-2] if x.endswith('\n') else x, f.readlines()))
f.close()

f = open(filename, 'w')
deq = deque(lines)
while deq:
    line = deq.popleft()
    f.write(line[:maximum_length])
    f.write('\n')
    if line[maximum_length:]:
        next_line = "     &     " + line[maximum_length:]
        deq.appendleft(next_line)
f.close()