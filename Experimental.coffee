Experimental

#First Iteration -> 1 compute
[
    {'word': '5', 'index': 3, 'line': 0},
    {'word': '+', 'index': 4, 'line': 0},
    {'word': '3', 'index': 5, 'line': 0},
    {'word': '+', 'index': 6, 'line': 0},
    {'word': '(', 'index': 7, 'line': 0, 'end': 11},
    {'word': '10', 'index': 8, 'line': 0},
    {'word': '*', 'index': 9, 'line': 0},
    {'word': '4', 'index': 10, 'line': 0},
    {'word': ')', 'index': 11, 'line': 0, 'start': 7}
]
#Second Iteration -> 1 compute
[
 {'word': '3', 'index': 5, 'line': 0},
 {'word': '+', 'index': 6, 'line': 0},
 {'word': '(', 'index': 7, 'line': 0, 'end': 11},
 {'word': '10', 'index': 8, 'line': 0},
 {'word': '*', 'index': 9, 'line': 0},
 {'word': '4', 'index': 10, 'line': 0},
 {'word': ')', 'index': 11, 'line': 0, 'start': 7}
]
#Third Iteration -> 1.1 compute
[
 {'word': '10', 'index': 8, 'line': 0},
 {'word': '*', 'index': 9, 'line': 0},
 {'word': '4', 'index': 10, 'line': 0},
 {'word': ')', 'index': 11, 'line': 0, 'start': 7}
]
#Forth Iteration -> 1.1.1 compute
[
    {'word': '4', 'index': 10, 'line': 0},
    {'word': ')', 'index': 11, 'line': 0, 'start': 7}
]
#Fifth Iteration -> ? 1.1.1 compute 
[
    {'word': '4', 'index': 10, 'line': 0},
    {'word': ')', 'index': 11, 'line': 0, 'start': 7}
]
#Sixth Iteration -> ? 1.1.1 compute
[
    {'word': '4', 'index': 10, 'line': 0},
    {'word': ')', 'index': 11, 'line': 0, 'start': 7}
]
#Seventh Iteration -> 1.2 compute
[
    {'word': '(', 'index': 7, 'line': 0, 'end': 11},
    {'word': '10', 'index': 8, 'line': 0},
    {'word': '*', 'index': 9, 'line': 0},
    {'word': '4', 'index': 10, 'line': 0},
    {'word': ')', 'index': 11, 'line': 0, 'start': 7}
]






[
 {'word': 'int', 'index': 0, 'line': 0},
 {'word': 'a', 'index': 1, 'line': 0},
 {'word': '=', 'index': 2, 'line': 0}, {'word': '5', 'index': 3, 'line': 0},
 {'word': '5', 'index': 0, 'line': 1}, {'word': 'int', 'index': 1, 'line': 1},
 {'word': 'b', 'index': 2, 'line': 1},
 {'word': '=', 'index': 3, 'line': 1},
 {'word': '5', 'index': 4, 'line': 1},
 {'word': '5', 'index': 0, 'line': 2},
 {'word': 'a', 'index': 1, 'line': 2},
 {'word': '=', 'index': 2, 'line': 2},
 {'word': '5', 'index': 3, 'line': 2, 'end': 16},
 {'word': '+', 'index': 4, 'line': 2},
 {'word': '(', 'index': 5, 'line': 2, 'end': 0},
 {'word': 'b', 'index': 6, 'line': 2},
 {'word': '*', 'index': 7, 'line': 2},
 {'word': '20', 'index': 8, 'line': 2},
 {'word': ')', 'index': 9, 'line': 2, 'start': 12},
 {'word': 'printc', 'index': 0, 'line': 3},
 {'word': '10', 'index': 1, 'line': 3},
 {'word': '10', 'index': 0, 'line': 4},
 {'word': 'print', 'index': 1, 'line': 4},
 {'word': 'a', 'index': 2, 'line': 4},
 {'word': 'a', 'index': 0, 'line': 5},
 {'word': 'printc', 'index': 1, 'line': 5},
 {'word': '10', 'index': 2, 'line': 5},
 {'word': '10', 'index': 0, 'line': 6},
 {'word': 'print', 'index': 1, 'line': 6},
 {'word': '212121221', 'index': 2, 'line': 6}
 ]



[
 {'word': 'int', 'index': 0, 'line': 0}, #0
 {'word': 'a', 'index': 1, 'line': 0}, #1
 {'word': '=', 'index': 2, 'line': 0}, #2
 {'word': '0', 'index': 3, 'line': 0}, #3
 {'word': '0', 'index': 0, 'line': 1}, #4

 {'word': 'if', 'index': 1, 'line': 1}, #5
 {'word': '(', 'index': 2, 'line': 1, 'end': 8}, #6

 {'word': 'a', 'index': 3, 'line': 1}, #7

 {'word': ')', 'index': 4, 'line': 1, 'start': 6}, #8
 {'word': '{', 'index': 5, 'line': 1, 'end': 22}, #9
 {'word': 'printc', 'index': 6, 'line': 1},#10
 {'word': '98', 'index': 7, 'line': 1}, #11
 {'word': '98', 'index': 0, 'line': 2}, #12
 {'word': 'printc', 'index': 1, 'line': 2}, #13
 {'word': '114', 'index': 2, 'line': 2}, #14
 {'word': '114', 'index': 0, 'line': 3}, #15
 {'word': 'printc', 'index': 1, 'line': 3}, #16
 {'word': '117', 'index': 2, 'line': 3}, #17
 {'word': '117', 'index': 0, 'line': 4}, #18
 {'word': 'printc', 'index': 1, 'line': 4}, #19
 {'word': '104', 'index': 2, 'line': 4}, #20
 {'word': '104', 'index': 0, 'line': 5} #21
]



[
 {'word': 'int', 'index': 0, 'line': 0}, #0
 {'word': 'a', 'index': 1, 'line': 0}, #1
 {'word': '=', 'index': 2, 'line': 0}, #2
 {'word': '0', 'index': 3, 'line': 0}, #3
 {'word': '0', 'index': 0, 'line': 1}, #4
 {'word': 'if', 'index': 1, 'line': 1}, #5
 {'word': '(', 'index': 2, 'line': 1, 'end': 8}, #6
 {'word': 'a', 'index': 3, 'line': 1}, #7
 {'word': ')', 'index': 4, 'line': 1, 'start': 6}, #8
 {'word': '{', 'index': 5, 'line': 1, 'end': 22}, #9
 {'word': 'printc', 'index': 6, 'line': 1}, #10
 {'word': '98', 'index': 7, 'line': 1}, #11
 {'word': '98', 'index': 0, 'line': 2}, #12
 {'word': 'printc', 'index': 1, 'line': 2}, #13
 {'word': '114', 'index': 2, 'line': 2}, #14
 {'word': '114', 'index': 0, 'line': 3}, #15
 {'word': 'printc', 'index': 1, 'line': 3}, #16
 {'word': '117', 'index': 2, 'line': 3}, #17
 {'word': '117', 'index': 0, 'line': 4}, #18
 {'word': 'printc', 'index': 1, 'line': 4}, #19
 {'word': '104', 'index': 2, 'line': 4}, #20
 {'word': '104', 'index': 0, 'line': 5}, #21
 {'word': '}', 'index': 1, 'line': 5, 'start': 9}, #22
 {'word': 'print', 'index': 2, 'line': 5}, #23
 {'word': '1', 'index': 3, 'line': 5} #24
 ]