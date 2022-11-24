# arr = bytearray(0)
# arr.append(0)
# arr.append(0)
# arr.append(0)
# arr.append(0)
# temp = 420
# arr.extend(temp.to_bytes(4,"little"))
# print(arr)
# print(int.from_bytes(arr[4:],"little"))
# a = 5
# b = 4
# c = 2
# d = [a,b,c]
# print(d)
# del d[0]
# print(d)
# with open("test") as f:
#     f.flush()
# with open("hi.txt","rb") as f:
#     c = f.read(1)
#     print(int.from_bytes(c,"little"))
#     print(chr(int.from_bytes(c,"little")))

#print((temp.bit_length()+7)/8)
#print(arr+arr2)
#print(arr[0:3])

# def lex_isKey(f,key):
#     #c = f.read(1).decode("utf-8")
#     c = ""
#     count = 0
    
#     for char in key:
#         c = f.read(1).decode("utf-8")
#         print(c)
#         print(char)
#         if char != c:
#             f.seek(-count,1)
#             return False
        
#         count += 1
#     return True
# with open("test.txt","rb") as f:
#     if lex_isKey(f,"test"):
#         print("hi")
# with open("test.txt","w") as f:
#     f.write("Hello")
#     f.seek(0,0)
#     f.write("D")
# for i in range(12):
#     if i == 5:
#         print("hi")
#         continue
#         #next(iter(range(i+1,12)))
#     print(i)
class vptr:
    start: int
    size: int
def getVarByName(cVars,name: str):
    for index,i in enumerate(cVars):
        #print(f"In var: at {index}: {i}")
        if i["name"] == name:
            i["varListAt"] = index
            return i
    assert False, f"Variable name: {name} not found in scope!"
def getValueByName_b(cScope,cVars,name: str):
    t = getVarByName(cVars,name)
    #print(name)
    return cScope[t["ptr"].start : t["ptr"].start+t["ptr"].size]
def compute(cVars,cStack,words,offset=0) -> int:
    oWordsResults = []
    oIndex = 0
    result = 0
    if type(words) == dict:
        if words["word"].isnumeric():
            return int(words["word"])
        else:
            return int.from_bytes(getValueByName_b(cStack,cVars,words["word"]),"little")
    else:
        index = 0
        while index < len(words):
            wordInfo = words[index]   
            if wordInfo["word"] == "(":
                assert wordInfo["end"]-offset > 0, f"Error: Bracket opened but never closed at {wordInfo['line']}"
                (result,s) = compute(cVars,cStack,words[index+1:wordInfo["end"]-offset])
                oWordsResults.append({
                    "word":str(result),
                })
                oIndex += 1 + s
            elif wordInfo["word"] == ")":
                pass
            # -------------------------------
            # boolean operations
            # -------------------------------
            elif wordInfo["word"] == "==":
                # a = oWordsResults.pop()["word"]
                # (b,s) = compute(cVars,cStack,words[index+1:])
                # if a.isnumeric():
                #     a = int(a)
                # else:
                #     a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                # if a == b:
                #     oWordsResults.append({"word":"1"})
                # else:
                #     oWordsResults.append({"word":"0"})
                # oIndex += 1 + s
                a = oWordsResults.pop()["word"]
                if words[index+1]["word"] == "(":
                    (b,s) = compute(cVars,cStack,words[index+1:words[index+1]["end"]-1])
                    s -= 2
                else:
                    if words[index+1]["word"].isnumeric():
                        b = int(words[index+1]["word"])
                    else:
                        b = int.from_bytes(getValueByName_b(cStack,cVars,words[index+1]["word"]),"little")
                    s = 0
                if a.isnumeric():
                    a = int(a)
                else:
                    a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                oWordsResults.append({"word":str(int(a==b))})
                index += 1 + s
            elif wordInfo["word"] == "<":
                # a = oWordsResults.pop()["word"]
                # (b,s) = compute(cVars,cStack,words[index+1:])
                # if a.isnumeric():
                #     a = int(a)
                # else:
                #     a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                # if a < b:
                #     oWordsResults.append({"word":"1"})
                # else:
                #     oWordsResults.append({"word":"0"})
                # oIndex += 1 + s
                a = oWordsResults.pop()["word"]
                if words[index+1]["word"] == "(":
                    (b,s) = compute(cVars,cStack,words[index+1:words[index+1]["end"]-1])
                    s -= 2
                else:
                    if words[index+1]["word"].isnumeric():
                        b = int(words[index+1]["word"])
                    else:
                        b = int.from_bytes(getValueByName_b(cStack,cVars,words[index+1]["word"]),"little")
                    s = 0
                if a.isnumeric():
                    a = int(a)
                else:
                    a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                oWordsResults.append({"word":str(int(a<b))})
                index += 1 + s
            elif wordInfo["word"] == ">":
                # a = oWordsResults.pop()["word"]
                # (b,s) = compute(cVars,cStack,words[index+1:])
                # if a.isnumeric():
                #     a = int(a)
                # else:
                #     a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                # if a > b:
                #     oWordsResults.append({"word":"1"})
                # else:
                #     oWordsResults.append({"word":"0"})
                # oIndex += 1 + s
                a = oWordsResults.pop()["word"]
                if words[index+1]["word"] == "(":
                    (b,s) = compute(cVars,cStack,words[index+1:words[index+1]["end"]-1])
                    s -= 2
                else:
                    if words[index+1]["word"].isnumeric():
                        b = int(words[index+1]["word"])
                    else:
                        b = int.from_bytes(getValueByName_b(cStack,cVars,words[index+1]["word"]),"little")
                    s = 0
                if a.isnumeric():
                    a = int(a)
                else:
                    a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                oWordsResults.append({"word":str(int(a>b))})
                index += 1 + s
            elif wordInfo["word"] == "<=":
                # a = oWordsResults.pop()["word"]
                # (b,s) = compute(cVars,cStack,words[index+1:])
                # if a.isnumeric():
                #     a = int(a)
                # else:
                #     a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                # if a <= b:
                #     oWordsResults.append({"word":"1"})
                # else:
                #     oWordsResults.append({"word":"0"})
                # oIndex += 1 + s
                a = oWordsResults.pop()["word"]
                if words[index+1]["word"] == "(":
                    (b,s) = compute(cVars,cStack,words[index+1:words[index+1]["end"]-1])
                    s -= 2
                else:
                    if words[index+1]["word"].isnumeric():
                        b = int(words[index+1]["word"])
                    else:
                        b = int.from_bytes(getValueByName_b(cStack,cVars,words[index+1]["word"]),"little")
                    s = 0
                if a.isnumeric():
                    a = int(a)
                else:
                    a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                oWordsResults.append({"word":str(int(a<=b))})
                index += 1 + s
            elif wordInfo["word"] == ">=":
                # a = oWordsResults.pop()["word"]
                # (b,s) = compute(cVars,cStack,words[index+1:])
                # if a.isnumeric():
                #     a = int(a)
                # else:
                #     a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                # if a >= b:
                #     oWordsResults.append({"word":"1"})
                # else:
                #     oWordsResults.append({"word":"0"})
                # oIndex += 1 + s
                a = oWordsResults.pop()["word"]
                if words[index+1]["word"] == "(":
                    (b,s) = compute(cVars,cStack,words[index+1:words[index+1]["end"]-1])
                    s -= 2
                else:
                    if words[index+1]["word"].isnumeric():
                        b = int(words[index+1]["word"])
                    else:
                        b = int.from_bytes(getValueByName_b(cStack,cVars,words[index+1]["word"]),"little")
                    s = 0
                if a.isnumeric():
                    a = int(a)
                else:
                    a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                oWordsResults.append({"word":str(int(a>=b))})
                index += 1 + s
            # ---------------------   
            # arithmetic operations
            # ---------------------
            elif wordInfo["word"] == "+":
                a = oWordsResults.pop()["word"]
                (b,s) = compute(cVars,cStack,words[index+1:])
                if a.isnumeric():
                    a = int(a)
                else:
                    a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                oWordsResults.append({"word":str(a+b)})
                index += 1 + s
            elif wordInfo["word"] == "-":
                a = oWordsResults.pop()["word"]
                (b,s) = compute(cVars,cStack,words[index+1:])
                if a.isnumeric():
                    a = int(a)
                else:
                    a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                oWordsResults.append({"word":str(a-b)})
                index += 1 + s
            elif wordInfo["word"] == "*":
                a = oWordsResults.pop()["word"]
                
                
                if words[index+1]["word"] == "(":
                    (b,s) = compute(cVars,cStack,words[index+1:words[index+1]["end"]-1])
                    s -= 2
                else:
                    if words[index+1]["word"].isnumeric():
                
                        b = int(words[index+1]["word"])
                
                    else:
                        b = int.from_bytes(getValueByName_b(cStack,cVars,words[index+1]["word"]),"little")
                    s = 0
                if a.isnumeric():
                    a = int(a)
                else:
                    a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                oWordsResults.append({"word":str(a*b)})
                index += 1 + s
            elif wordInfo["word"] == "/":
                a = oWordsResults.pop()["word"]
                if words[index+1]["word"] == "(":
                    (b,s) = compute(cVars,cStack,words[index+1:words[index+1]["end"]-1])
                    s -= 2
                else:
                    if words[index+1]["word"].isnumeric():
                        b = int(words[index+1]["word"])
                    else:
                        b = int.from_bytes(getValueByName_b(cStack,cVars,words[index+1]["word"]),"little")
                    s = 1
                if a.isnumeric():
                    a = int(a)
                else:
                    a = int.from_bytes(getValueByName_b(cStack,cVars,a))
                oWordsResults.append({"word":str(int(a/b))})
                index += 1 + s
            # ---------------------------------
            # |   for when we have a value    |
            # ---------------------------------
            else:
                if words[index]["word"].isnumeric():
                    oWordsResults.append({"word":words[index]["word"]})
                else:
                    oWordsResults.append({"word":str(int.from_bytes(getValueByName_b(cStack,cVars,words[index]["word"]),"little"))})
                #oWordsResults.append({"word":str(compute(cVars,cStack,words[index]))})
            index += 1
        # assert len(oWordsResults)>1, "Error: Computation stack has a value more than 1!"
        # assert len(oWordsResults)<1, "Error: Computation stack has a length of 0!"
        
        return (int(oWordsResults[0]["word"]),index)
def getLEnd(words: list,index:int):
    
    for i in range(index,len(words)):
        word = words[i]
        if word["line"] != words[index]["line"]:
            return i
    assert False, "OOPS: Something went wrong, maybe the line never ended!"
    
#print([21,321,43][0:1])    
# 5 + (4 + 10)
print(getLEnd([{"line":0},{"line":0},{"line":1}],0))
print("Result: "+str(compute([],[],[{"word":"3"},{"word":"+"},{"word":"5"},{"word":"*"},{"word":"(","end":8},{"word":"4"},{"word":"+"},{"word":"2"},{"word":")"},{"word":"+"},{"word":"3"},{"word":"+"},{"word":"3"}])[0])) #{"word":"5"},{"word":"+"},{"word":"(","end":6},{"word":"20"},{"word":"/"},{"word":"10"},{"word":")"}
print("Result: "+str(compute([],[],[{"word":"54"},{"word":"*"},{"word":"(","end":13},{"word":"5"},{"word":"+"},{"word":"4"},{"word":"*"},{"word":"6"},{"word":"*"},{"word":"2"},{"word":"+"},{"word":"2"},{"word":")"},{"word":">"},{"word":"2971"}])[0]))