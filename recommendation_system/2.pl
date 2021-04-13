find_similar_movies_7(M1,M2):-
    commongenre3(M1,M2),
    common_plot3(M1,M2),
    same_language(M1,M2),
    samedirector(M1,M2),
    same_actors(M1,M2),
    same_duration_type(M1,M2),
    M1\=M2.


find_similar_movies_6(M1,M2):-
    commongenre3(M1,M2),
    common_plot3(M1,M2),
    same_language(M1,M2),
    samedirector(M1,M2),
    same_duration_type(M1,M2),
    not(find_similar_movies_7(M1,M2)),
    M1\=M2.


find_similar_movies_5(M1,M2):-
    commongenre2(M1,M2),
    common_plot3(M1,M2),
    same_language(M1,M2),
    same_actors(M1,M2),
    same_duration_type(M1,M2),
    not(find_similar_movies_6(M1,M2)),
    M1\=M2. 


find_similar_movies_4(M1,M2):-
    commongenre2(M1,M2),
    same_language(M1,M2),
    common_plot3(M1,M2),
    same_duration_type(M1,M2),
    not(find_similar_movies_5(M1,M2)),
    M1\=M2.



find_similar_movies_3(M1,M2):-
    commongenre1(M1,M2),
    common_plot2(M1,M2),
    same_language(M1,M2),
    same_actors(M1,M2),
    same_duration_type(M1,M2),
    not(find_similar_movies_4(M1,M2)),
    M1\=M2.

find_similar_movies_2(M1,M2):-
    same_actors(M1,M2),
    common_plot1(M1,M2),
    same_language(M1,M2),
    same_duration_type(M1,M2),
    not(find_similar_movies_3(M1,M2)),
    M1\=M2. 


find_similar_movies_1(M1,M2):-
    same_actors(M1,M2),
    same_language(M1,M2),
    same_duration_type(M1,M2),
    not(find_similar_movies_2(M1,M2)),
    M1\=M2. 



