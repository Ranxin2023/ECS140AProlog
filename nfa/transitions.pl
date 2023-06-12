/* expTransitions */
transition(0, a, [1,2]).
transition(0, b, [2]).
transition(1, a, []).
transition(1, b, [0]).
transition(2, a, []).
transition(2, b, []).

/* fooTransitions */
transition(10, a, [11,12]).
transition(10, b, []).
transition(10, c, []).
transition(11, a, []).
transition(11, b, [13]).
transition(11, c, []).
transition(12, a, []).
transition(12, b, []).
transition(12, c, [13]).

/* langTransitions */
transition(20, a, [20]).
transition(20, b, [21]).
transition(21, a, [21]).
transition(21, b, [20]).