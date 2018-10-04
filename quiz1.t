procedure clearScreen
    var ch : string (1)
    put "Press enter to clear screen"
    getch (ch)
    cls
end clearScreen

var numbers : array 1 .. 5 of string
var input : array 1 .. 5 of int
var e : int
var sum : int
sum := 0
e := 1
loop
for i : 1..5
    put "Please enter an integer."
    get numbers (e)
    exit when e = 6
    if strintok (numbers (e)) then
	input (e) := strint (numbers (e))
	e := e + 1
	clearScreen
    else
	put numbers (e), " is not a valid integer."
	e:= e 
	clearScreen
	exit
    end if
end for
    exit when e = 6
end loop
cls

put "The list of numbers in the original order will be:"
for i : 1 .. 5
    put input (i)
end for
put "The list of numbers in the reverse order will be:"
for decreasing i : 5 .. 1
    put input (i)
end for
put "The sum of the numbers = ", input (1) + input (2) + input (3) + input (4) + input (5)
