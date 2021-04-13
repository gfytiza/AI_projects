commongenre4(Movie1,Movie2):-
    genre(Movie1,Same1),genre(Movie2,Same1),
    genre(Movie1,Same2),genre(Movie2,Same2),Same1@<Same2,
    genre(Movie1,Same3),genre(Movie2,Same3),Same2@<Same3,
    genre(Movie1,Same4),genre(Movie2,Same4),Same3@<Same4,
    dif(Same1,Same2),dif(Same1,Same3),dif(Same1,Same4),
    dif(Same2,Same3),dif(Same2,Same4),dif(Same3,Same4),
    dif(Movie1,Movie2).

commongenre3(Movie1,Movie2):-
    genre(Movie1,Same1),genre(Movie2,Same1),
    genre(Movie1,Same2),genre(Movie2,Same2),Same1@<Same2,
    genre(Movie1,Same3),genre(Movie2,Same3),Same@<Same3,
    dif(Same1,Same2),dif(Same1,Same3),dif(Same2,Same3),
    dif(Movie1,Movie2).

commongenre2(Movie1,Movie2):-
    genre(Movie1,Same1),genre(Movie2,Same1),
    genre(Movie1,Same2),genre(Movie2,Same2),Same1@<Same2,
    dif(Same1,Same2),dif(Movie1,Movie2).

commongenre1(Movie1,Movie2):-
    genre(Movie1,Same1),genre(Movie2,Same1),
    dif(Movie1,Movie2).




samedirector(Movie1,Movie2):-
	hasDirector(Movie1,Dir),hasDirector(Movie2,Dir),
     dif(Movie1,Movie2).
  


common_plot3(Movie1,Movie2):-
    hasPlotKeyword(Movie1,Same1),hasPlotKeyword(Movie2,Same1),
    hasPlotKeyword(Movie1,Same2),hasPlotKeyword(Movie2,Same2),
    Same1@<Same2,
    hasPlotKeyword(Movie1,Same3),hasPlotKeyword(Movie2,Same3), 
    Same2@<Same3,
    dif(Movie1,Movie2),
    dif(Same1,Same2),dif(Same1,Same3),dif(Same2,Same3).

common_plot2(Movie1,Movie2):-
    hasPlotKeyword(Movie1,Same1),hasPlotKeyword(Movie2,Same1),
    hasPlotKeyword(Movie1,Same2),hasPlotKeyword(Movie2,Same2),
    dif(Movie1,Movie2),Same1@<Same2,dif(Same1,Same2).

common_plot1(Movie1,Movie2):-
    hasPlotKeyword(Movie1,Same1),hasPlotKeyword(Movie2,Same1),
    dif(Movie1,Movie2).
    


movie_cast(Movie,Act1,Act2,Act3):-
    cast(Movie,Act1),cast(Movie,Act2),cast(Movie,Act3),
    Act1@<Act2,Act2@<Act3,dif(Act1,Act2),dif(Act1,Act3),
    dif(Act2,Act3).

movie_cast(Movie,Act1,Act2):-
    cast(Movie,Act1),cast(Movie,Act2),Act1@<Act2,dif(Act1,Act2).


cast(Movie,Act):-    
    firstActor(Movie,Act).

cast(Movie,Act):-    
    secondActor(Movie,Act).

cast(Movie,Act):-    
    thirdActor(Movie,Act).


same_actors3(Movie1,Movie2):-
    movie_cast(Movie1,A1,A2,A3),movie_cast(Movie2,A1,A2,A3),
    dif(Movie1,Movie2).

same_actors2(Movie1,Movie2):-
    movie_cast(Movie1,A1,A2),movie_cast(Movie2,A1,A2),
    dif(Movie1,Movie2).

same_actors(Movie1,Movie2):-
    cast(Movie1,A1),cast(Movie2,A1),dif(Movie1,Movie2).



same_language(Movie1,Movie2):-
    spokenLanguage(Movie1,Lan),spokenLanguage(Movie2,Lan),
    dif(Movie1,Movie2).




same_country(Movie1,Movie2):-
    country(Movie1,C),country(Movie2,C),dif(Movie1,Movie2).



same_year(Movie1,Movie2):-
    year(Movie1,Y),country(Movie2,Y),dif(Movie1,Movie2).



same_duration_type(Movie1, Movie2):-
	durationType(Movie1,T),   	durationType(Movie1,T),dif(Movie1,Movie2).

