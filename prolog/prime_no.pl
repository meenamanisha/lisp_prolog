divisible(X,Y) :- X mod Y =:= 0, !.

divisible(X,Y) :- 
    X > Y+1, 
    divisible(X, Y+1).

isPrime(2) :- true,!.
isPrime(X) :- X < 2,!,false.
isPrime(X) :- not(divisible(X, 2)).
