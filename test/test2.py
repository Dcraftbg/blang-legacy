test = [1,2,3,4,5]
index = 0
while index < len(test):
    i = test[index]
    if i > 1 and i < 4:
        print(i)
        del test[index]
        index -= 1
    index += 1
print(test)
        
