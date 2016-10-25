predicates
        /*repeat*/
        action(integer,string)
        test(string)
        
goal
        makewindow(1,7,7,"interaction window",0,2,11,43),
        repeat,
        shiftwindow(1),
        clearwindow,
        write("0. Enter 0 to end\n"),
        write("1. Enter 1 to create a window and input string\n"),
        write("2. Enter 2 to remove the window and text\n"),
        write("3. Enter 3 to write to existing window\n"),
        write("choice? "),
        readint(Int),nl,
        action(Int,Text),
        Int = 0,!,
        test(Text).
        
clauses
        /*action(0,"EXIT"):-!,
                exit.*/
                
        action(1,Str):-
                existwindow(2),
                write("you have a windowalready exists. \n "),
                write("do you wish to clear it. (y,n)"),
                readchar(Ans),!,
                Ans='y',
                nl,
                shiftwindow(2),
                clearwindow,
                write("Enter your string\n"),
                readln(Str).
