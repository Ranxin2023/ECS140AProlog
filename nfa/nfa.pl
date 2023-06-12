reachable(StartState, FinalState, Input) :-
reachable_helper(StartState, FinalState, Input).
    
reachable_helper(Start, Final, []):-
	Start=:=Final.

reachable_helper(Start, Final, [H|T]):-
    transition(Start, H ,Next_state),
    reachable_helper2(Start, Final, Next_state, T).
	
reachable_helper2(Start, Final, [], Input):-
	false.

reachable_helper2(Start, Final, [H|_], Input):-
	reachable_helper(H, Final, Input).
	
reachable_helper2(Start, Final, [_|[H|_]], Input):-
	reachable_helper(H, Final, Input).