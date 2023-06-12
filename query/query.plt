:- initialization main.

main :-
    consult(["facts.pl", "query.pl"]),
    (show_coverage(run_tests) ; true),
    halt.

:- begin_tests(query).

test(year_1953_1996_novels, set(X == [
        a_song_of_ice_and_fire_series,
        childhoods_end,
        fahrenheit451,
        neverwhere,
        the_caves_of_steel
        ])) :-
    year_1953_1996_novels(X).

test(period_1800_1900_novels, set(X == [
        frankenstein,
        little_women,
        the_20000_leagues_under_the_sea,
        the_journey_to_the_center_of_the_earth,
        the_time_machine,
        the_war_of_the_worlds
        ])) :-
    period_1800_1900_novels(X).

test(lotr_fans, set(X == [
        amy,
        gunther,
        monica,
        ursula,
        zelner
        ])) :-
    lotr_fans(X).

test(author_names, set(X == [
        arthur_clarke,
        george_rr_martin,
        isaac_asimov,
        robert_heinlein,
        william_gibson
        ])) :-
    author_names(X).

test(fans_names, set(X == [
        amy,
        heckles,
        leonard,
        monica,
        nora,
        tag
        ])) :-
    fans_names(X).

test(mutual_novels, set(X == [
        something_wicked_this_way_comes,
        the_princess_bride,
        the_time_machine,
        the_wheel_of_time_series
        ])) :-
    mutual_novels(X).

:- end_tests(query).
