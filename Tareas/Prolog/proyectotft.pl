% Llamamiento inicial
pachonc:-writeln('Hola, mi nombre es Pachonc, bienvenido al set 10 de tft, te ayudare con las dudas que tengas. Te recuerdo que todas las entradas deben ser en minusculas y con un "." al final'),
	readln(Input),
	pachonc(Input),!.


	% despedidas

	pachonc(Input):- Input == ['adios', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	pachonc(Input):- Input == ['Adios', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	pachonc(Input):- Input == ['Bye', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	pachonc(Input):- Input == ['bye', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	pachonc(Input):- Input == ['desactivate', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	pachonc(Input):- Input == ['Desactivate', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
    pachonc(Input):- Input == ['Cierrate', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
    pachonc(Input):- Input == ['cierrate', '.'],
	writeln('Adios, espero haberte ayudado.'), !.


	pachonc(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	pachonc(Input1), !.


	% saludos
	template([hola, soy, s(_), '.'], ['Hola', 0 ], [2]).
	template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
	template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).
    template([hola, yo, soy, s(_), '.'], ['Hola', 0, espero, estes, teniendo, un, buen, dia], [3]).
    template([hola, pachonc, yo, soy, s(_), '.'], ['Hola', 0, '¿',eres, un, estudiante, del, tec, '?'], [4]). 

	% templates interactivos base
	template([te, gustan, las, s(_), '.'], [flagLike], [3]).
	template([te, gustan, los, s(_), '.'], [flagLike], [3]).
	template([tu, sabes, s(_), '.'], [flagDo], [2]).
	template([eres, s(_), '.'], [flagIs], [1]).
	
	% TEMPLATES DE DENGUE
	% Info del dengue
	template([dengue, '.'],['El dengue es una enfermedad viral transmitida por mosquitos, principalmente por el mosquito Aedes aegypti. Este virus pertenece al genero Flavivirus y se manifiesta en diferentes formas, desde una fiebre leve hasta una enfermedad mas grave, conocida como dengue grave o dengue hemorragico. Los sintomas comunes incluyen fiebre, dolor de cabeza, dolor muscular y articular, erupcion cutanea y sintomas similares a los de la gripe.'],[]).
    template([hablame, del, dengue, '.'],['El dengue es una enfermedad viral transmitida por mosquitos, principalmente por el mosquito Aedes aegypti. Este virus pertenece al genero Flavivirus y se manifiesta en diferentes formas, desde una fiebre leve hasta una enfermedad mas grave, conocida como dengue grave o dengue hemorragico. Los sintomas comunes incluyen fiebre, dolor de cabeza, dolor muscular y articular, erupcion cutanea y sintomas similares a los de la gripe.'],[]).
    template([que, sabes, del, dengue, '.'],['El dengue es una enfermedad viral transmitida por mosquitos, principalmente por el mosquito Aedes aegypti. Este virus pertenece al genero Flavivirus y se manifiesta en diferentes formas, desde una fiebre leve hasta una enfermedad mas grave, conocida como dengue grave o dengue hemorragico. Los sintomas comunes incluyen fiebre, dolor de cabeza, dolor muscular y articular, erupcion cutanea y sintomas similares a los de la gripe.'],[]).
    template([que, es, el, dengue, '.'],['El dengue es una enfermedad viral transmitida por mosquitos, principalmente por el mosquito Aedes aegypti. Este virus pertenece al genero Flavivirus y se manifiesta en diferentes formas, desde una fiebre leve hasta una enfermedad mas grave, conocida como dengue grave o dengue hemorragico. Los sintomas comunes incluyen fiebre, dolor de cabeza, dolor muscular y articular, erupcion cutanea y sintomas similares a los de la gripe.'],[]).
    template([cuentame, sobre, el, dengue, '.'],['El dengue es una enfermedad viral transmitida por mosquitos, principalmente por el mosquito Aedes aegypti. Este virus pertenece al genero Flavivirus y se manifiesta en diferentes formas, desde una fiebre leve hasta una enfermedad mas grave, conocida como dengue grave o dengue hemorragico. Los sintomas comunes incluyen fiebre, dolor de cabeza, dolor muscular y articular, erupcion cutanea y sintomas similares a los de la gripe.'],[]).

    % sintomas del dengue
	template([sintomas, '.'], ListaResultado, []) :-
   	 	findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).
	
	template([sintomas, del, dengue, '.'], ListaResultado, []) :-
   	 	findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas, '.'], ListaResultado, []) :-
		findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas, del, dengue, '.'], ListaResultado, []) :-
		findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).

	template([dime, los, sintomas, '.'], ListaResultado, []) :-
		findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).
	
	template([dime, los, sintomas, del, dengue, '.'], ListaResultado, []) :-
		findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).
	
	% causas del dengue
	template([cuales, son, las, causas, '.'], ListaResultado, []) :-
		findall(Causas, causa_dengue(Causas), ListaResultado).
	
	template([cuales, son, las, causas, del, dengue, '.'], ListaResultado, []) :-
		findall(Causas, causa_dengue(Causas), ListaResultado).

	template([cuales, pueden, ser, las, causas, del, dengue, '.'], ListaResultado, []) :-
		findall(Causas, causa_dengue(Causas), ListaResultado).

	template([dime, las, causas, '.'], ListaResultado, []) :-
		findall(Causas, causa_dengue(Causas), ListaResultado).
	
	template([dime, las, causas, del, dengue, '.'], ListaResultado, []) :-
		findall(Causas, causa_dengue(Causas), ListaResultado).
	
	template([causas, '.'], ListaResultado, []) :-
    	findall(Causas, causa_dengue(Causas), ListaResultado).
	
	template([causas, del, dengue, '.'], ListaResultado, []) :-
    	findall(Causas, causa_dengue(Causas), ListaResultado).

	% especialistas del dengue
	template([con, quien, voy, '.'], ListaResultado, []) :-
		findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).
	
	template([quien, lo, atiende, '.'], ListaResultado, []) :-
		findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).
	
	template([quien, atiende, el, dengue, '.'], ListaResultado, []) :-
		findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).
	
	template([cuales, son, los, especialistas, '.'], ListaResultado, []) :-
		findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).

	template([dime, los, especialistas, '.'], ListaResultado, []) :-
		findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).
	
	template([especialistas], ListaResultado, []) :-
    	findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).
	
	template([quien, me , quita, el, dengue], ListaResultado, []) :-
    	findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).

	% medicamento del dengue
	template([medicamentos, '.'], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([medicamento, '.'], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([cuales, son, los, medicamentos, '.'], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([dime, los, medicamentos, '.'], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([farmacos, '.'], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([que, medicamentos, necesito, '.'], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([que, medicamentos, debo, tomar, '.'], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).

	% trataemiento del dengue
	template([tratamiento, '.'], ListaResultado, []):-
		findall(Tratameintos, tratamiento_dengue(Tratameintos), ListaResultado).
	
	template([dime, el, tratamiento, '.'], ListaResultado, []):-
		findall(Tratameintos, tratamiento_dengue(Tratameintos), ListaResultado).
	
	template([cual, es, el, tratamiento, '.'], ListaResultado, []):-
		findall(Tratameintos, tratamiento_dengue(Tratameintos), ListaResultado).
	
	template([como, se, trata, el, dengue, '.'], ListaResultado, []):-
		findall(Tratameintos, tratamiento_dengue(Tratameintos), ListaResultado).
	
	template([cuales, son, las, medidas, '.'], ListaResultado, []):-
		findall(Tratameintos, tratamiento_dengue(Tratameintos), ListaResultado).

	% templates comparativos del dengue
	template([s(_), es, un, sintoma, '.'], [flagSintoma], [0]).
    template([tengo, s(_), ',', (_), y, (_), '.'], [flagSintomas], [1, 3, 5]).
	template([s(_), es, una, causa, '.'], [flagCausas], [0]).
	template([s(_), es, un, especialista, '.'], [flagEspecialista], [0]).
	template([s(_), es, un, medicamento, '.'], [flagMedicamento], [0]).
    template([estos,son, medicamentos, s(_), ',', (_), y, (_), '.'], [flagMedicamentos], [3, 5, 7]).


	% TEMPLATES DE TFT
	% info tft
	template([tft, '.'], ['Teamfight Tactics es un juego estrategico gratuito de todos contra todos en el que participan campeones emblematicos de League of Legends. ¿Cual es el objetivo del juego? Hacer que tu equipo crezca y proteger tu tablero para convertirte en el ultimo jugador en pie. '], []).
    template([que, es, tft, '.'], ['Teamfight Tactics es un juego estrategico gratuito de todos contra todos en el que participan campeones emblematicos de League of Legends. ¿Cual es el objetivo del juego? Hacer que tu equipo crezca y proteger tu tablero para convertirte en el ultimo jugador en pie. '], []).
    template([hablame, de, tft, '.'], ['Teamfight Tactics es un juego estrategico gratuito de todos contra todos en el que participan campeones emblematicos de League of Legends. ¿Cual es el objetivo del juego? Hacer que tu equipo crezca y proteger tu tablero para convertirte en el ultimo jugador en pie. '], []).

	% rasgo KDA
	template([kda, '.'], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).
	
	template([dime, los, campeones, kda, '.'], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).
	
	template([dime, campeones, kda, de, tft, '.'], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).
	
	template([cuales, son, campeones, kda, '.'], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).

	template([cuales, son, campeones, kda, de, tft, '.'], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).
	
	template([hay, kda, '?'], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).

	template([hay, kda, en, tft, '?'], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).

	% rasgo HEARTSTEEL
	template([heartsteel, '.'], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).
	
	template([dime, los, campeones, heartsteel, '.'], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).
	
	template([dime, campeones, heartsteel, de, tft, '.'], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).
	
	template([cuales, son, campeones, heartsteel, '.'], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).

	template([cuales, son, campeones, heartsteel, de, tft, '.'], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).
	
	template([hay, heartsteel, '?'], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).

	template([hay, heartsteel, en, tft, '?'], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).

	% rasgo PENTAKILL
	template([pentakill, '.'], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).
	
	template([dime, los, campeones, pentakill, '.'], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).
	
	template([dime, campeones, pentakill, de, tft, '.'], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).
	
	template([cuales, son, campeones, pentakill, '.'], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).

	template([cuales, son, campeones, pentakill, de, tft, '.'], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).
	
	template([hay, pentakill, '?'], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).

	template([hay, pentakill, en, tft, '?'], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).

	% rasgo TRUE DAMAGE
	template([true_damage, '.'], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).
	
	template([dime, los, campeones, true_damage, '.'], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).
	
	template([dime, campeones, true_damage, de, tft, '.'], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).
	
	template([cuales, son, campeones, true_damage, '.'], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).

	template([cuales, son, campeones, true_damage, de, tft, '.'], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).
	
	template([hay, true_damage, '?'], ListaResultado, []):-
		findall(True_damage,true_damage(True_damage), ListaResultado).

	template([hay, true_damage, en, tft, '?'], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).
	
	% rasgo COUNTRY
	template([country, '.'], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).
	
	template([dime, los, campeones, country, '.'], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).
	
	template([dime, campeones, country, de, tft, '.'], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).
	
	template([cuales, son, campeones, country, '.'], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).

	template([cuales, son, campeones, country, de, tft, '.'], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).
	
	template([hay, country, '?'], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).

	template([hay, country, en, tft, '?'], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).

    % rasgo EMO
	template([emo, '.'], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).
	
	template([dime, los, campeones, emo, '.'], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).
	
	template([dime, campeones, emo, de, tft, '.'], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).
	
	template([cuales, son, campeones, emo, '.'], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).

	template([cuales, son, campeones, emo, de, tft, '.'], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).
	
	template([hay, emo, '?'], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).

	template([hay, emo, en, tft, '?'], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).

    % rasgo PUNK
	template([punk, '.'], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).
	
	template([dime, los, campeones, punk, '.'], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).
	
	template([dime, campeones, punk, de, tft, '.'], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).
	
	template([cuales, son, campeones, punk, '.'], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).

	template([cuales, son, campeones, punk, de, tft, '.'], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).
	
	template([hay, punk, '?'], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).

	template([hay, punk, en, tft, '?'], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).

    % rasgo DISCO
	template([disco, '.'], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).
	
	template([dime, los, campeones, disco, '.'], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).
	
	template([dime, campeones, disco, de, tft, '.'], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).
	
	template([cuales, son, campeones, disco, '.'], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).

	template([cuales, son, campeones, disco, de, tft, '.'], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).
	
	template([hay, disco, '?'], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).

	template([hay, disco, en, tft, '?'], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).

    % rasgo JAZZ
	template([jazz, '.'], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).
	
	template([dime, los, campeones, jazz, '.'], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).
	
	template([dime, campeones, jazz, de, tft, '.'], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).
	
	template([cuales, son, campeones, jazz, '.'], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).

	template([cuales, son, campeones, jazz, de, tft, '.'], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).
	
	template([hay, jazz, '?'], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).

	template([hay, jazz, en, tft, '?'], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).

    % rasgo 8-BIT
	template([bit, '.'], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).
	
	template([dime, los, campeones, 8-bit, '.'], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).
	
	template([dime, campeones, bit, de, tft, '.'], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).
	
	template([cuales, son, campeones, bit, '.'], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).

	template([cuales, son, campeones, bit, de, tft, '.'], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).
	
	template([hay, bit, '?'], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).

	template([hay, bit, en, tft, '?'], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).

    % rasgo HYPERPOP
	template([hyperpop, '.'], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).
	
	template([dime, los, campeones, hyperpop, '.'], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).
	
	template([dime, campeones, hyperpop, de, tft, '.'], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).
	
	template([cuales, son, campeones, hyperpop, '.'], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).

	template([cuales, son, campeones, hyperpop, de, tft, '.'], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).
	
	template([hay, hyperpop, '?'], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).

	template([hay, hyperpop, en, tft, '?'], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).



% rasgo EDM
template([edm, '.'], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([dime, los, campeones, edm, '.'], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([dime, campeones, edm, de, tft, '.'], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([cuales, son, campeones, edm, '.'], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([cuales, son, campeones, edm, de, tft, '.'], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([hay, edm, '?'], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([hay, edm, en, tft, '?'], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).


	
    % templates comparativos
	% 
	template([s(_), es, un, campeon, kda, '.'], [flagKDA], [0]).
    template([s(_), es, kda, '.'], [flagKDA], [0]).
    template([el, campeon, s(_),es, kda, '.'], [flagKDA], [0]).
    template([la, campeona, s(_),es, kda, '.'], [flagKDA], [0]).
template([s(_), ',', (_), y, (_),son, campeones, kda, '.'], [flagKDAs], [1, 3, 5]).

    template([s(_), es, un, campeon, heartsteel, '.'], [flagHeartsteel], [0]).
template([s(_), es, heartsteel, '.'], [flagHeartsteel], [0]).
    template([el, campeon, s(_),es, heartsteel, '.'], [flagHeartsteel], [0]).
    template([la, campeona, s(_),es, heartsteel, '.'], [flagHeartsteel], [0]).
template([s(_), ',', (_), y, (_),son, campeones, heartsteel, '.'], [flagHeartsteels], [1, 3, 5]).

    template([s(_), es, un, campeon, pentakill, '.'], [flagPentakill], [0]).
template([s(_), es, pentakill, '.'], [flagPentakill], [0]).
    template([el, campeon, s(_),es, pentakill, '.'], [flagPentakill], [0]).
    template([la, campeona, s(_),es, pentakill, '.'], [flagPentakill], [0]).
template([s(_), ',', (_), y, (_),son, campeones, pentakill, '.'], [flagPentakills], [1, 3, 5]).

    template([s(_), es, un, campeon, true_damage, '.'], [flagTrue_Damage], [0]).
template([s(_), es, true_damage, '.'], [flagTrue_Damage], [0]).
    template([el, campeon, s(_),es, true_damage, '.'], [flagTrue_Damage], [0]).
    template([la, campeona, s(_),es, true_damage, '.'], [flagTrue_Damage], [0]).
template([s(_), ',', (_), y, (_),son, campeones, true_damage, '.'], [flagTDs], [1, 3, 5]).

    template([s(_), es, un, campeon, country, '.'], [flagCountry], [0]).
template([s(_), es, country, '.'], [flagCountry], [0]).
    template([el, campeon, s(_),es, country, '.'], [flagCountry], [0]).
    template([la, campeona, s(_),es, country, '.'], [flagCountry], [0]).
template([s(_), ',', (_), y, (_),son, campeones, country, '.'], [flagCountrys], [1, 3, 5]).

    template([s(_), es, un, campeon, emo, '.'], [flagEmo], [0]).
template([s(_), es, emo, '.'], [flagEmo], [0]).
    template([el, campeon, s(_),es, emo, '.'], [flagEmo], [0]).
    template([la, campeona, s(_),es, emo, '.'], [flagEmo], [0]).
template([s(_), ',', (_), y, (_),son, campeones, emo, '.'], [flagEmos], [1, 3, 5]).

    template([s(_), es, un, campeon, punk, '.'], [flagPunk], [0]).
template([s(_), es, punk, '.'], [flagPunk], [0]).
    template([el, campeon, s(_),es, punk, '.'], [flagPunk], [0]).
    template([la, campeona, s(_),es, punk, '.'], [flagPunk], [0]).
template([s(_), ',', (_), y, (_),son, campeones, punk, '.'], [flagPunks], [1, 3, 5]).

    template([s(_), es, un, campeon, disco, '.'], [flagDisco], [0]).
template([s(_), es, disco, '.'], [flagDisco], [0]).
    template([el, campeon, s(_),es, disco, '.'], [flagDisco], [0]).
    template([la, campeona, s(_),es, disco, '.'], [flagDisco], [0]).
template([s(_), ',', (_), y, (_),son, campeones, disco, '.'], [flagDiscos], [1, 3, 5]).

    template([s(_), es, un, campeon, jazz, '.'], [flagJazz], [0]).
template([s(_), es, jazz, '.'], [flagJazz], [0]).
    template([el, campeon, s(_),es, jazz, '.'], [flagJazz], [0]).
    template([la, campeona, s(_),es, jazz, '.'], [flagJazz], [0]).
template([s(_), ',', (_), y, (_),son, campeones, jazz, '.'], [flagJazzs], [1, 3, 5]).

    template([s(_), es, un, campeon, bit, '.'], [flagBit], [0]).
template([s(_), es, bit, '.'], [flagBit], [0]).
    template([el, campeon, s(_),es, bit, '.'], [flagBit], [0]).
    template([la, campeona, s(_),es, bit, '.'], [flagBit], [0]).
template([s(_), ',', (_), y, (_),son, campeones, bit, '.'], [flagBits], [1, 3, 5]).

    template([s(_), es, un, campeon, hyperpop, '.'], [flagHyperpop], [0]).
template([s(_), es, hyperpop, '.'], [flagHyperpop], [0]).
    template([el, campeon, s(_),es, hyperpop, '.'], [flagHyperpop], [0]).
    template([la, campeona, s(_),es, hyperpop, '.'], [flagHyperpop], [0]).
template([s(_), ',', (_), y, (_),son, campeones, hyperpops, '.'], [flagHyperpops], [1, 3, 5]).

    template([s(_), es, un, campeon, edm, '.'], [flagEdm], [0]).
template([s(_), es, edm, '.'], [flagEdm], [0]).
    template([el, campeon, s(_),es, edm, '.'], [flagEdm], [0]).
    template([la, campeona, s(_),es, edm, '.'], [flagEdm], [0]).
template([s(_), ',', (_), y, (_),son, campeones, edm, '.'], [flagEdms], [1, 3, 5]).

	% templates default
	template(_, ['No te he comprendido, dime algo que me sirva'], []). 



	% HECHOS SOBRE MI ENFERMEDAD "DENGUE"
	% Hechos y flag de causas del dengue
	causasIs(X, R):- causa_dengue(X), R = [si, X, es, una, causa, del, dengue].
    causasIs(X, R):- \+causa_dengue(X), R = [X, no, es, una, causa, del, dengue].
	causa_dengue('virus_del_Dengue').
	causa_dengue('picadura_de_mosquito_Aedes_aegypti').
	causa_dengue('picadura_de_aedes_albopictus').
	causa_dengue('viajes_a_areas_endémicas').
    causa_dengue('acumulacion_de_agua_estancada').

	% Hechos y flag de sintomas del dengue
	sintomaIs(X, R):- sintoma_dengue(X), R = [si, X, es, un, sintoma, del, dengue].
    sintomaIs(X, R):- \+sintoma_dengue(X), R = [X, no, es, un, sintoma, del, dengue].
	sintoma_dengue('fiebre_alta').
	sintoma_dengue('dolor_de_cabeza').
	sintoma_dengue('dolor_muscular').
	sintoma_dengue('nauseas').
	sintoma_dengue('vomitos').
	sintoma_dengue('fatiga').
	sintoma_dengue('dolor_abdominal').
	sintoma_dengue('erupcion_cutanea').
	sintoma_dengue('sangrado').
	sintoma_dengue('dolor_articular').
	% Multisintoma
	sintomasIs(X, Y, Z, R):- sintomas_dengue(X, Y, Z), R = [si, X, Y, y, Z, son, sintomas, del, dengue].
	sintomasIs(X, Y, Z, R):- \+sintomas_dengue(X, Y, Z), R = [no, X, Y, y, Z, no, son, sintomas, del, dengue].
	sintomas_dengue('fiebre_alta', 'dolor_de_cabeza', 'dolor_muscular').
    sintomas_dengue('nauseas', 'vomitos', 'fatiga').
    sintomas_dengue('fiebre_alta', 'nauseas', 'sangrado').
    sintomas_dengue('vomitos', 'dolor_de_cabeza', 'nauseas').
    sintomas_dengue('fatiga', 'dolor_articular', 'dolor_muscular').
    sintomas_dengue('erupcion_cutanea', 'sangrado', 'dolor_abdominal').
    sintomas_dengue('sangrado', 'fatiga', 'dolor_articular').
    sintomas_dengue('fatiga', 'nauseas', 'vomitos').

	% Hechos de especialistas del dengue
	especialistaIs(X, R):- especialista_dengue(X), R = [si, X, es, un, especialista, apto, para, diagnosticar, el, dengue].
    especialistaIs(X, R):- \+especialista_dengue(X), R = [X, no, es, un, especialista, apto, para, diagnosticar, el, dengue].
	especialista_dengue('medico_general').
	especialista_dengue('especialista_de_enfermedades_infecciosas').
	especialista_dengue('pediatra').
	especialista_dengue('enfermero').
    especialista_dengue('especialista_de_medicina_interna').
    especialista_dengue('hematologo').
    especialista_dengue('urgenciologo').
    especialista_dengue('medico_de_familia').

	% Hechos de medicamentos para el dengue
	medicamentoIs(X, R):- medicamento_dengue(X), R = [si, X, es, un, medicamento, para, tratar, el, dengue].
    medicamentoIs(X, R):- \+medicamento_dengue(X), R = [X, no, es, un, medicamento, para, tratar, el, dengue].
	medicamento_dengue('analgesicos').
	medicamento_dengue('antifebriles').
    medicamento_dengue('monitoreo_de_plaquetas').
	% Multimedicamentos
	medicamentosIs(X, Y, Z, R):- medicamentos_dengue(X, Y, Z), R = [si, X, Y, y, Z, son, medicamentoss, del, dengue].
	medicamentosIs(X, Y, Z, R):- \+medicamentos_dengue(X, Y, Z), R = [no, X, Y, y, Z, no, son, medicamentoss, del, dengue].
	medicamentos_dengue('analgesicos', 'antifebriles', 'monitoreo_de_plaquetas').
    medicamentos_dengue('antifebriles', 'analgesicos', 'monitoreo_de_plaquetas').
    medicamentos_dengue('monitoreo_de_plaquetas', 'antifebriles', 'sanalgesicos').
    medicamentos_dengue('analgesicos', 'monitoreo_de_plaquetas', 'antifebriles'). 

    % Hechos del tratamiento para el dengue
	tratamiento_dengue('hidratacion').
	tratamiento_dengue('paracetamol').
	tratamiento_dengue('descanso').
	tratamiento_dengue('monitoreo_medico').
    tratamiento_dengue('transfucion_de_plaquetas').
    tratamiento_dengue('cuidados_en_el_hospital').


	% HECHOS SOBRE EL TEMA QUE ELEGí "TFT"
	% kda 
	kdaIs(X, R):- kda(X), R = [si, X, es, una, kda].
   	kdaIs(X, R):- \+kda(X), R = [X, no, es, una, kda].
	kda('akali').
	kda('evelynn').
	kda('kaisa').
	kda('lillia').
	kda('nekko').
    kda('seraphine').
    kda('ahri'). 
	% Multi-kda
	campeoneskdaIs(X, Y, Z, R):- campeoneskda(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, kda].
    campeoneskdaIs(X, Y, Z, R):- \+campeoneskda(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, kda].
	campeoneskda('akali', 'evelynn', 'kaisa').
    campeoneskda('evelynn', 'kaisa', 'lillia').
    campeoneskda('kaisa', 'lillia', 'nekko').
    campeoneskda('lillia', 'nekko', 'seraphine'). 
	campeoneskda('nekko', 'seraphine', 'ahri'). 

% heartsteel
heartsteelIs(X, R):- heartsteel(X), R = [si, X, es, una, heartsteel].
heartsteelIs(X, R):- \+heartsteel(X), R = [X, no, es, una, heartsteel].
heartsteel('kasante').
heartsteel('aphelios').
heartsteel('yone').
heartsteel('ezreal').
heartsteel('sett').
% Multi-hs
campeoneshsIs(X, Y, Z, R):- campeoneshs(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, heartsteel].
campeoneshsIs(X, Y, Z, R):- \+campeoneshs(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, heartsteel].
campeoneshs('kasante', 'aphelios', 'yone').
campeoneshs('aphelios', 'yone', 'ezreal').
campeoneshs('yone', 'ezreal', 'sett').


% pentakill
pentakillIs(X, R):- pentakill(X), R = [si, X, es, de, la, pentakill].
pentakillIs(X, R):- \+pentakill(X), R = [X, no, es, de, la, pentakill].
pentakill('olaf').
pentakill('gnar').
pentakill('karthus').
pentakill('kayle').
pentakill('mordekaiser').
pentakill('viego').
pentakill('yorick').
% Multi-pentakill
campeonespentakillIs(X, Y, Z, R):- campeonespentakill(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, pentakill].
campeonespentakillIs(X, Y, Z, R):- \+campeonespentakill(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, pentakill].
campeonespentakill('olaf', 'gnar', 'karthus').
campeonespentakill('gnar', 'karthus', 'kayle').
campeonespentakill('kayle', 'mordekaiser', 'viego').
campeonespentakill('mordekaiser', 'viego', 'yorick'). 


% TRUE DAMAGE
tdIs(X, R):- true_damage(X), R = [si, X, es, un, true_damage].
tdIs(X, R):- \+true_damage(X), R = [X, no, es, un, true_damage].
true_damage('ekko').
true_damage('kennen').
true_damage('qiyana').
true_damage('senna').
true_damage('yasuo').
% Multi-td
campeonestdIs(X, Y, Z, R):- campeonestd(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, true, damage].
campeonestdIs(X, Y, Z, R):- \+campeonestd(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, true, damage].
campeonestd('ekko', 'kennen', 'qiyana').
campeonestd('kennen', 'qiyana', 'senna').
campeonestd('qiyana', 'senna', 'yasuo').
campeonestd('senna', 'yasuo', 'ekko'). 


% COUNTRY
countryIs(X, R):- country(X), R = [si, X, es, un, country].
countryIs(X, R):- \+country(X), R = [X, no, es, un, country].
country('katarina').
country('tahmkench').
country('samira').
country('tresh').
country('urgot').
% Multi-country
campeonescountryIs(X, Y, Z, R):- campeonescountry(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, country].
campeonescountryIs(X, Y, Z, R):- \+campeonescountry(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, country].
campeonescountry('katarina', 'tahmkench', 'samira').
campeonescountry('tahmkench', 'samira', 'tresh').
campeonescountry('urgot', 'katarina', 'tahmkench').



		% EMO
		emoIs(X, R):- unsc(X), R = [si, X, es, emo].
   		emoIs(X, R):- \+unsc(X), R = [X, no, es, emo].
		emo('annie').
		emo('amumu').
		emo('vex').
		emo('poppy').
% Multi-emo
campeonesemoIs(X, Y, Z, R):- campeonesemo(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, emo].
campeonesemoIs(X, Y, Z, R):- \+campeonesemo(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, emo].
campeonesemo('annie', 'amumu', 'vex').
campeonesemo('poppy', 'annie', 'amumu').


		% PUNK
		punkIs(X, R):- punk(X), R = [si, X, es, del, punk].
   		punkIs(X, R):- \+punk(X), R = [X, no, es, del, punk].
		punk('vi').
		punk('jinx').
		punk('pantheon').
		punk('twitch').
% Multi-punk
campeonespunkIs(X, Y, Z, R):- campeonespunk(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, punk].
campeonespunkIs(X, Y, Z, R):- \+campeonespunk(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, punk].
campeonespunk('vi', 'jinx', 'pantheon').
campeonespunk('jinx', 'pantheon', 'twitch').


		% DISCO
		discoIs(X, R):- disco(X), R = [si, X, es, disco].
   		discoIs(X, R):- \+disco(X), R = [X, no, es, disco].
		disco('nami').
        disco('taric').
        disco('gragas').
        disco('twisted_fate').
        disco('blitzcrank').
% Multi-disco
campeonesdiscoIs(X, Y, Z, R):- campeonesdisco(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, disco].
campeonesdiscoIs(X, Y, Z, R):- \+campeonesdisco(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, disco].
campeonesdisco('nami', 'taric', 'gragas').
campeonesdisco('taric', 'gragas', 'twisted_fate').


		% JAZZ
		jazzIs(X, R):- jazz(X), R = [si, X, es, jazz].
   		jazzIs(X, R):- \+jazz(X), R = [X, no, es, jazz].
		jazz('bardo').
		jazz('miss_fortune').
        jazz('lucian').
% Multi-jazz
campeonesjazzIs(X, Y, Z, R):- campeonesjazz(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, jazz].
campeonesjazzIs(X, Y, Z, R):- \+campeonesjazz(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, jazz].
campeonesjazz('bardo', 'miss_fortune', 'lucian').


		% 8-BIT
		bitIs(X, R):- bit(X), R = [si, X, es, bit].
   		bitIs(X, R):- \+bit(X), R = [X, no, es, bit].
		bit('corki').
		bit('garen').
        bit('caitlyn').
        bit('riven').
% Multi-bit
campeonesbitIs(X, Y, Z, R):- campeonesbit(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, bit].
campeonesbitIs(X, Y, Z, R):- \+campeonesbit(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, bit].
campeonesbit('corki', 'garen', 'caitlyn').
campeonesbit('riven', 'corki', 'garen').

		
		% HYPERPOP
		hyperpopIs(X, R):- hyperpop(X), R = [si, X, es, un, hyperpop].
   		hyperpopIs(X, R):- \+hyperpop(X), R = [X, no, es, un, hyperpop].
		hyperpop('lulu').
		hyperpop('ziggs').
	    hyperpop('leopoldo').
% Multi-hyperpop
campeoneshyperpopIs(X, Y, Z, R):- campeoneshyperpop(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, hyperpop].
campeoneshyperpopIs(X, Y, Z, R):- \+campeoneshyperpop(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, hyperpop].
campeoneshyperpop('lulu', 'ziggs', 'leopoldo').


		% EDM
		edmIs(X, R):- edm(X), R = [si, X, es, un, edm].
   		edmIs(X, R):- \+edm(X), R = [X, no, es, un, edm].
		edm('jax').
        edm('lux').
        edm('zac').
        edm('zed').
	% Multi-edm
	campeonesedmIs(X, Y, Z, R):- campeonesedm(X, Y, Z), R = [si, X, Y, y, Z, son, campeones, edm].
    campeonesedmIs(X, Y, Z, R):- \+campeonesedm(X, Y, Z), R = [no, X, Y, y, Z, no, son, campeones, edm].
	campeonesedm('jax', 'lux', 'zac').
    campeonesedm('lux', 'zac', 'zed').
   

	% Lo que le gusta a pachonc : flagLike
	pachoncLikes(X, R):- likes(X), R = [si, me, gusta, X].
	pachoncLikes(X, R):- \+likes(X), R = [X, no, me, gusta].
	likes(apples).
	likes(ponies).
	likes(zombies).
	likes(manzanas).
	likes(computadoras).
	like(carros).

	% lo que hace pachonc: flagDo
	pachoncDoes(X, R):- does(X), R = [si, yo, X].
	pachoncDoes(X, R):- \+does(X), R = [X, no, yo, no, lo, hago].
	does(study).
	does(cook).
	does(work).

	% lo que es pachonc: flagIs
	pachoncIs(X, R):- is0(X), R = [si, soy, X].
	pachoncIs(X, R):- \+is0(X), R = [no, soy, X].
	is0(dumb).
	is0(weird).
	is0(nice).
	is0(fine).
	is0(happy).
	is0(redundant).

	match([],[]).
	match([], _):- true.

	match([S|Stim],[I|Input]) :-
		atom(S), % si I es un s(X) devuelve falso
		S == I,
		match(Stim, Input),!.

	match([S|Stim],[_|Input]) :-
	% I es un s(X), lo ignoro y continúo con el resto de la lista
		\+atom(S),
		match(Stim, Input),!.

	replace0([], _, _, Resp, R):- append(Resp, [], R),!.

	% pachonc likes:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagLike,
		pachoncLikes(Atom, R).

	% pachonc does:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagDo,
		pachoncDoes(Atom, R).

	% pachonc is:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagIs,
		pachoncIs(Atom, R).

	replace0([I|Index], Input, N, Resp, R):-
		length(Index, M), M =:= 0,
		nth0(I, Input, Atom),
		select(N, Resp, Atom, R1), append(R1, [], R),!.

	replace0([I|Index], Input, N, Resp, R):-
		nth0(I, Input, Atom),
		length(Index, M), M > 0,
		select(N, Resp, Atom, R1),
		N1 is N + 1,
		replace0(Index, Input, N1, R1, R),!.

	
% dengue Sintomas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintoma,
    sintomaIs(Atom, R).

% Sintomas Dengue:
replace0([I,J,K|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSintomas,
	nth0(J, Input, Atom2),
	nth0(0, Resp, Y),
	Y == flagSintomas,
	nth0(K, Input, Atom3),
	nth0(0, Resp, Z),
	Z == flagSintomas,
	sintomasIs(Atom, Atom2, Atom3, R).

% dengue Causas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagCausas,
    causasIs(Atom, R).

% dengue Especialista
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagEspecialista,
    especialistaIs(Atom, R).

% dengue medicamento
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagMedicamento,
    medicamentoIs(Atom, R).
% Medicamentos Dengue:
replace0([I,J,K|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagMedicamentos,
	nth0(J, Input, Atom2),
	nth0(0, Resp, Y),
	Y == flagMedicamentos,
	nth0(K, Input, Atom3),
	nth0(0, Resp, Z),
	Z == flagMedicamentos,
	medicamentosIs(Atom, Atom2, Atom3, R).



	% TFT FLAGS
    % KDA
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagKDA,
		kdaIs(Atom, R).

		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagKDAs,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagKDAs,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagKDAs,
			campeonestkdaIs(Atom, Atom2, Atom3, R).
		
	% Heartsteel
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagHeartsteel,
		heartsteelIs(Atom, R).

		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagHeartsteels,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagHeartsteels,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagHeartsteels,
			campeoneshsIs(Atom, Atom2, Atom3, R).
		
    % Pentakill
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPentakill,
		pentakillIs(Atom, R).

		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagPentakills,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagPentakills,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagPentakills,
			campeonespentakillIs(Atom, Atom2, Atom3, R).
		
    % TRUE DAMAGE
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagTrue_Damage,
		tdIs(Atom, R).

		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagTDs,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagTDs,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagTDs,
			campeonestdIs(Atom, Atom2, Atom3, R).
		
    % COUNTRY
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagCountry,
		countryIs(Atom, R).

		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagCountrys,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagCountrys,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagCountrys,
			campeonescountryIs(Atom, Atom2, Atom3, R).
		
    % EMO
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagEmo,
		emoIs(Atom, R).

		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagEmos,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagEmos,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagEmos,
			campeonesemoIs(Atom, Atom2, Atom3, R).
		
	% PUNK
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPunk,
		punkIs(Atom, R).

		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagPunks,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagPunks,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagPunks,
			campeonespunkIs(Atom, Atom2, Atom3, R).
		
	% DISCO
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagDisco,
		discoIs(Atom, R).
	
		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagDiscos,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagDiscos,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagDiscos,
			campeonesdiscoIs(Atom, Atom2, Atom3, R).
		
	% JAZZ
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagJazz,
		jazzIs(Atom, R).

		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagJazzs,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagJazzs,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagJazzs,
			campeonesjazzIs(Atom, Atom2, Atom3, R).
		
	% 8-BIT
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagBit,
		bitIs(Atom, R).

		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagBits,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagBits,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagBits,
			campeonesbitIs(Atom, Atom2, Atom3, R).
		
	% HYPERPOP
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagHyperpop,
		hyperpopIs(Atom, R).

		replace0([I,J,K|_], Input, _, Resp, R):-
			nth0(I, Input, Atom),
			nth0(0, Resp, X),
			X == flagHyperpops,
			nth0(J, Input, Atom2),
			nth0(0, Resp, Y),
			Y == flagHyperpops,
			nth0(K, Input, Atom3),
			nth0(0, Resp, Z),
			Z == flagHyperpops,
			campeoneshyperpopIs(Atom, Atom2, Atom3, R).
		

% EDM
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagEdm,
    edmIs(Atom, R).

	replace0([I,J,K|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagEdms,
		nth0(J, Input, Atom2),
		nth0(0, Resp, Y),
		Y == flagEdms,
		nth0(K, Input, Atom3),
		nth0(0, Resp, Z),
		Z == flagEdms,
		campeonesedmIs(Atom, Atom2, Atom3, R).
	


