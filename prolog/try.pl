/**
compute([],0).
compute([H|T],L):-
    compute(T,L1),
    L is L1+1.
    
like(john, marry).
likes(mary,food).
likes(mary,tea).
likes(john,tea).
likes(john,mary).
bird(X) :- 
    animal(X), 
    has_feather(X).
animal:-spy.
has_feather(spy).
sister_of(X,Y):-
female(X),			    
parents(X, M, F),
parents(Y, M, F).

male(ram).
male(shyam).
female(sita).
female(gita).
parents(shyam, gita, ram).
parents(sita, gita, ram).

rem_dup([],[]).
rem_dup([H|T],L) :- member(H,T), !, rem_dup(T,L).
rem_dup([H|T],[H|L1]) :- rem_dup(T,L1).
fib(1,1):- !.
fib(0,1):- !.
fib(N,F):-
    N>1,
    N1 is N-1,
    N2 is N-2,
    fib(N1,F1),
    fib(N2,F2), 
    F is F1+F2.


fact(0,Y):- Y is 1,!.
fact(X,Y):-
    X>0,
    N1 is X-1,
    fact(N1,Y1),
    Y is X*Y1.
    
append([],L,L).
append([H|T],L,[H|TL]) :-
    append(T,L,TL).*/

:- op(500,xfx,'is_parent'). 

a is_parent b.    c is_parent g.     f is_parent l.     j is_parent q. 
a is_parent c.    c is_parent h.     f is_parent m.     j is_parent r. 
a is_parent d.    c is_parent i.     h is_parent n.     j is_parent s. 
b is_parent e.    d is_parent j.     i is_parent o.     m is_parent t. 
b is_parent f.    e is_parent k.     i is_parent p. 




















