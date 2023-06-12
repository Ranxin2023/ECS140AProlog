/* All novels published during the year 1953 or 1996*/
year_1953_1996_novels(Book) :-
    novel(Book, 1953); novel(Book, 1996).

/* List of all novels published during the period 1800 to 1900*/
period_1800_1900_novels(Book) :-
    novel(Book, Year), Year>1800, Year<1900. 


/* Characters who are fans of LOTR */
lotr_fans(Fan) :-
    fan(Fan, List), 
    member(the_lord_of_the_rings, List).


/* Authors of the novels owned by Chandler */
author_names(Author) :-
    author(Author, List), 
    author_helper(chandler, List).
novel_fan(Fan, Novel):-
    fan(Fan, List), 
    member(Novel, List).
author_helper(Fan,[Novel|T]):-novel_fan(Fan, Novel); author_helper(Fan, T).

/* Characters who are fans of Brandon Sanderson's novels */
fans_names(Fan) :-
    fan(Fan, List),
    fan_helper(brandon_sanderson, List).

author_novel(Author, Novel):-
    author(Author, List),
    member(Novel, List).

fan_helper(Author,[Novel|T]):-author_novel(Author, Novel); fan_helper(Author, T).

/* Novels common between either of Phoebe, Ross, and Monica */
mutual_novels_helper(Book, Fan1, Fan2):-
    fan(Fan1, List1),
    fan(Fan2, List2),
    member(Book,List1),
    member(Book, List2).
mutual_novels(Book) :-
    mutual_novels_helper(Book, phoebe, ross);
    mutual_novels_helper(Book, phoebe, monica);
    mutual_novels_helper(Book, ross, monica).

