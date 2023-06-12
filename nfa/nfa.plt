:- initialization main.

main :-
    consult(['transitions.pl', 'nfa.pl']),
    (show_coverage(run_tests) ; true),
    halt.
     
:- begin_tests(nfa).

test(nfa1, [nondet]) :- reachable(0, 2, [a]).
test(nfa2, [nondet]) :-  reachable(0, 2, [b]).
test(nfa3, [nondet]) :-  reachable(0, 1, [a, b, a]).
test(nfa4, [fail]) :- reachable(0, 1, [a, b, a, b]).
test(nfa5, [nondet]) :- reachable(0, 2, [a, b, a]).

test(nfa6, [nondet]) :- reachable(10, 13, [a,b]).
test(nfa7, [nondet]) :-  reachable(10, 13, [a,c]).
test(nfa8, [nondet]) :-  reachable(10, 11, [a]).
test(nfa9, [fail]) :- reachable(10, 13, [a,a]).
test(nfa10, [fail]) :- reachable(10, 13, [a]).
test(nfa11, [fail]) :- reachable(10, 11, [b]).

test(nfa1, [nondet]) :- reachable(20, 20, [a,b,b]).
test(nfa2, [nondet]) :-  reachable(20, 21, [a,a,b]).
test(nfa3, [nondet]) :-  reachable(20, 20, [a, a, a, a, a]).
test(nfa4, [fail]) :- reachable(20, 21, [a, a]).
test(nfa5, [fail]) :- reachable(20, 20, [a, b, a, a]).

:- end_tests(nfa).
