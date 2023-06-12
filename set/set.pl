list_to_set([], []).
list_to_set([H | T], S) :-
	member(H, T),
	list_to_set(T, S).

list_to_set([H | T], [H | S]) :-
	not(member(H, T)),
	list_to_set(T, S).

isUnion(Set1,Set2,Union) :-
    append(Set1, Set2, TotalSet), 
    list_to_set(TotalSet, Union).

isIntersection(Set1,Set2,Intersection) :-
    intersection_helper(Set1, Set2, Intersection).

intersection_helper([], _, []).


intersection_helper([H1 | T1], List2, [H1|Intersection]) :-
	member(H1, List2),
	intersection_helper(T1, List2, Intersection).

intersection_helper([_ | T1], List2, Intersection) :-
	intersection_helper(T1, List2, Intersection).

isEqual(Set1,Set2) :-
    is_equal_helper(Set1, Set2),
	is_equal_helper(Set2, Set1).

is_equal_helper([], _).

is_equal_helper([H | T], Set):-
    member(H, Set), 
    is_equal_helper(T, Set). 
