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
	template([sintomas], ListaResultado, []) :-
   	 	findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).
	
	template([sintomas, del, dengue], ListaResultado, []) :-
   	 	findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas], ListaResultado, []) :-
		findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas, del, dengue], ListaResultado, []) :-
		findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).

	template([dime, los, sintomas], ListaResultado, []) :-
		findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).
	
	template([dime, los, sintomas, del, dengue], ListaResultado, []) :-
		findall(Sintomas, sintoma_dengue(Sintomas), ListaResultado).
	
	% causas del dengue
	template([cuales, son, las, causas], ListaResultado, []) :-
		findall(Causas, causa_dengue(Causas), ListaResultado).
	
	template([cuales, son, las, causas, del, dengue], ListaResultado, []) :-
		findall(Causas, causa_dengue(Causas), ListaResultado).

	template([cuales, pueden, ser, las, causas, del, dengue], ListaResultado, []) :-
		findall(Causas, causa_dengue(Causas), ListaResultado).

	template([dime, las, causas], ListaResultado, []) :-
		findall(Causas, causa_dengue(Causas), ListaResultado).
	
	template([dime, las, causas, del, dengue], ListaResultado, []) :-
		findall(Causas, causa_dengue(Causas), ListaResultado).
	
	template([causas], ListaResultado, []) :-
    	findall(Causas, causa_dengue(Causas), ListaResultado).
	
	template([causas, del, dengue], ListaResultado, []) :-
    	findall(Causas, causa_dengue(Causas), ListaResultado).

	% especialistas del dengue
	template([con, quien, voy], ListaResultado, []) :-
		findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).
	
	template([quien, lo, atiende], ListaResultado, []) :-
		findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).
	
	template([quien, atiende, el, dengue], ListaResultado, []) :-
		findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).
	
	template([cuales, son, los, especialistas], ListaResultado, []) :-
		findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).

	template([dime, los, especialistas], ListaResultado, []) :-
		findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).
	
	template([especialistas], ListaResultado, []) :-
    	findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).
	
	template([quien, me , quita, el, dengue], ListaResultado, []) :-
    	findall(Especialistas, especialista_dengue(Especialistas), ListaResultado).

	% medicamento del dengue
	template([medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([medicamento], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([cuales, son, los, medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([dime, los, medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([farmacos], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([que, medicamentos, necesito], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).
	
	template([que, medicamentos, debo, tomar], ListaResultado, []):-
		findall(Medicamentos, medicamento_dengue(Medicamentos), ListaResultado).

	% trataemiento del dengue
	template([tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_dengue(Tratameintos), ListaResultado).
	
	template([dime, el, tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_dengue(Tratameintos), ListaResultado).
	
	template([cual, es, el, tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_dengue(Tratameintos), ListaResultado).
	
	template([como, se, trata, el, dengue], ListaResultado, []):-
		findall(Tratameintos, tratamiento_dengue(Tratameintos), ListaResultado).
	
	template([cuales, son, las, medidas], ListaResultado, []):-
		findall(Tratameintos, tratamiento_dengue(Tratameintos), ListaResultado).

	% templates comparativos del dengue
	template([s(_), es, un, sintoma], [flagSintoma], [0]).
	template([s(_), es, una, causa], [flagCausas], [0]).
	template([s(_), es, un, especialista], [flagEspecialista], [0]).
	template([s(_), es, un, medicamento], [flagMedicamento], [0]).


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
	sintoma_dengue('esangrado').
	sintoma_dengue('dolor_articular').
	

	% Hechos y flag de especialistas del dengue
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
	medicamento_dengue('reposo').
    medicamento_dengue('hidratacion').
    medicamento_dengue('monitoreo_de_plaquetas').
	
    % Hechos del tratamiento para el dengue
	tratamiento_dengue('hidratacion').
	tratamiento_dengue('paracetamol').
	tratamiento_dengue('descanso').
	tratamiento_dengue('monitoreo_medico').
    tratamiento_dengue('transfucion_de_plaquetas').
    tratamiento_dengue('cuidados_en_el_hospital').

% dengue Sintomas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintoma,
    sintomaIs(Atom, R).

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



	% TEMPLATES DE TFT
	% info tft
	template([tft], ['Teamfight Tactics es un juego estrategico gratuito de todos contra todos en el que participan campeones emblematicos de League of Legends. ¿Cual es el objetivo del juego? Hacer que tu equipo crezca y proteger tu tablero para convertirte en el ultimo jugador en pie. '], []).
    template([que, es, tft], ['Teamfight Tactics es un juego estrategico gratuito de todos contra todos en el que participan campeones emblematicos de League of Legends. ¿Cual es el objetivo del juego? Hacer que tu equipo crezca y proteger tu tablero para convertirte en el ultimo jugador en pie. '], []).
    template([hablame, de, tft], ['Teamfight Tactics es un juego estrategico gratuito de todos contra todos en el que participan campeones emblematicos de League of Legends. ¿Cual es el objetivo del juego? Hacer que tu equipo crezca y proteger tu tablero para convertirte en el ultimo jugador en pie. '], []).

	% rasgo KDA
	template([kda], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).
	
	template([dime, los, campeones, kda], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).
	
	template([dime, campeones, kda, de, tft], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).
	
	template([cuales, son, campeones, kda], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).

	template([cuales, son, campeones, kda, de, tft], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).
	
	template([hay, kda, '?'], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).

	template([hay, kda, en, tft, '?'], ListaResultado, []):-
		findall(KDA, kda(KDA), ListaResultado).

	% rasgo HEARTSTEEL
	template([heartsteel], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).
	
	template([dime, los, campeones, heartsteel], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).
	
	template([dime, campeones, heartsteel, de, tft], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).
	
	template([cuales, son, campeones, heartsteel], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).

	template([cuales, son, campeones, heartsteel, de, tft], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).
	
	template([hay, heartsteel, '?'], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).

	template([hay, heartsteel, en, tft, '?'], ListaResultado, []):-
		findall(HEARTSTEEL, heartsteel(HEARTSTEEL), ListaResultado).

	% rasgo PENTAKILL
	template([pentakill], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).
	
	template([dime, los, campeones, pentakill], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).
	
	template([dime, campeones, pentakill, de, tft], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).
	
	template([cuales, son, campeones, pentakill], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).

	template([cuales, son, campeones, pentakill, de, tft], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).
	
	template([hay, pentakill, '?'], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).

	template([hay, pentakill, en, tft, '?'], ListaResultado, []):-
		findall(Pentakill, pentakill(Pentakill), ListaResultado).

	% rasgo TRUE DAMAGE
	template([true_damage], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).
	
	template([dime, los, campeones, true_damage], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).
	
	template([dime, campeones, true_damage, de, tft], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).
	
	template([cuales, son, campeones, true_damage], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).

	template([cuales, son, campeones, true_damage, de, tft], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).
	
	template([hay, true_damage, '?'], ListaResultado, []):-
		findall(True_damage,true_damage(True_damage), ListaResultado).

	template([hay, true_damage, en, tft, '?'], ListaResultado, []):-
		findall(True_damage, true_damage(True_damage), ListaResultado).
	
	% rasgo COUNTRY
	template([country], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).
	
	template([dime, los, campeones, country], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).
	
	template([dime, campeones, country, de, tft], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).
	
	template([cuales, son, campeones, country], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).

	template([cuales, son, campeones, country, de, tft], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).
	
	template([hay, country, '?'], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).

	template([hay, country, en, tft, '?'], ListaResultado, []):-
		findall(Country, country(Country), ListaResultado).

    % rasgo EMO
	template([emo], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).
	
	template([dime, los, campeones, emo], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).
	
	template([dime, campeones, emo, de, tft], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).
	
	template([cuales, son, campeones, emo], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).

	template([cuales, son, campeones, emo, de, tft], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).
	
	template([hay, emo, '?'], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).

	template([hay, emo, en, tft, '?'], ListaResultado, []):-
		findall(Emo, emo(Emo), ListaResultado).

    % rasgo PUNK
	template([punk], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).
	
	template([dime, los, campeones, punk], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).
	
	template([dime, campeones, punk, de, tft], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).
	
	template([cuales, son, campeones, punk], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).

	template([cuales, son, campeones, punk, de, tft], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).
	
	template([hay, punk, '?'], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).

	template([hay, punk, en, tft, '?'], ListaResultado, []):-
		findall(Punk, punk(Punk), ListaResultado).

    % rasgo DISCO
	template([disco], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).
	
	template([dime, los, campeones, disco], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).
	
	template([dime, campeones, disco, de, tft], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).
	
	template([cuales, son, campeones, disco], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).

	template([cuales, son, campeones, disco, de, tft], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).
	
	template([hay, disco, '?'], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).

	template([hay, disco, en, tft, '?'], ListaResultado, []):-
		findall(Disco, disco(Disco), ListaResultado).

    % rasgo JAZZ
	template([jazz], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).
	
	template([dime, los, campeones, jazz], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).
	
	template([dime, campeones, jazz, de, tft], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).
	
	template([cuales, son, campeones, jazz], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).

	template([cuales, son, campeones, jazz, de, tft], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).
	
	template([hay, jazz, '?'], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).

	template([hay, jazz, en, tft, '?'], ListaResultado, []):-
		findall(Jazz, jazz(Jazz), ListaResultado).

    % rasgo 8-BIT
	template([bit], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).
	
	template([dime, los, campeones, 8-bit], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).
	
	template([dime, campeones, bit, de, tft], ListaResultado, []):-
		findall(Bit, bit(Bits), ListaResultado).
	
	template([cuales, son, campeones, bit], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).

	template([cuales, son, campeones, bit, de, tft], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).
	
	template([hay, bit, '?'], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).

	template([hay, bit, en, tft, '?'], ListaResultado, []):-
		findall(Bit, bit(Bit), ListaResultado).

    % rasgo HYPERPOP
	template([hyperpop], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).
	
	template([dime, los, campeones, hyperpop], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).
	
	template([dime, campeones, hyperpop, de, tft], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).
	
	template([cuales, son, campeones, hyperpop], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).

	template([cuales, son, campeones, hyperpop, de, tft], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).
	
	template([hay, hyperpop, '?'], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).

	template([hay, hyperpop, en, tft, '?'], ListaResultado, []):-
		findall(Hyperpop, hyperpop(Hyperpop), ListaResultado).

    

% rasgo EDM
template([edm], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([dime, los, campeones, edm], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([dime, campeones, edm, de, tft], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([cuales, son, campeones, edm], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([cuales, son, campeones, edm, de, tft], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([hay, edm, '?'], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).

template([hay, edm, en, tft, '?'], ListaResultado, []):-
    findall(Edm, edm(Edm), ListaResultado).


	
    % templates comparativos
	% 
	template([s(_), es, un, campeon, kda], [flagKDA], [0]).
    template([s(_), es, un, campeon, heartsteel], [flagHeartsteel], [0]).
    template([s(_), es, un, campeon, pentakill], [flagPentakill], [0]).
    template([s(_), es, un, campeon, true_damage], [flagTrue_Damage], [0]).
    template([s(_), es, un, campeon, country], [flagCountry], [0]).
    template([s(_), es, un, campeon, emo], [flagEmo], [0]).
    template([s(_), es, un, campeon, punk], [flagPunk], [0]).
    template([s(_), es, un, campeon, disco], [flagDisco], [0]).
    template([s(_), es, un, campeon, jazz], [flagJazz], [0]).
    template([s(_), es, un, campeon, bit], [flagBit], [0]).
    template([s(_), es, un, campeon, hyperpop], [flagHyperpop], [0]).
    template([s(_), es, un, campeon, edm], [flagEdm], [0]).

	% templates default
	template(_, ['No te he comprendido, dime algo que me sirva'], []). 


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

% heartsteel
heartsteelIs(X, R):- heartsteel(X), R = [si, X, es, una, heartsteel].
heartsteelIs(X, R):- \+heartsteel(X), R = [X, no, es, una, heartsteel].
heartsteel('kasante').
heartsteel('aphelios').
heartsteel('yone').
heartsteel('ezreal').
heartsteel('sett').


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

% TRUE DAMAGE
tdIs(X, R):- true_damage(X), R = [si, X, es, un, true_damage].
tdIs(X, R):- \+true_damage(X), R = [X, no, es, un, true_damage].
true_damage('akali').
true_damage('ekko').
true_damage('kennen').
true_damage('qiyana').
true_damage('senna').
true_damage('yasuo').


% COUNTRY
countryIs(X, R):- country(X), R = [si, X, es, un, country].
countryIs(X, R):- \+country(X), R = [X, no, es, un, country].
country('katarina').
country('tahmkench').
country('samira').
country('tresh').
country('urgot').



		% EMO
		emoIs(X, R):- unsc(X), R = [si, X, es, emo].
   		emoIs(X, R):- \+unsc(X), R = [X, no, es, emo].
		emo('annie').
		emo('amumu').
		emo('vex').
		emo('poppy').

		% PUNK
		punkIs(X, R):- punk(X), R = [si, X, es, del, punk].
   		punkIs(X, R):- \+punk(X), R = [X, no, es, del, punk].
		punk('vi').
		punk('jinx').
		punk('pantheon').
		punk('twitch').

		% DISCO
		discoIs(X, R):- disco(X), R = [si, X, es, disco].
   		discoIs(X, R):- \+disco(X), R = [X, no, es, disco].
		disco('nami').
        disco('taric').
        disco('gragas').
        disco('twisted_fate').
        disco('blitzcrank').

		% JAZZ
		jazzIs(X, R):- jazz(X), R = [si, X, es, jazz].
   		jazzIs(X, R):- \+jazz(X), R = [X, no, es, jazz].
		jazz('bardo').
		jazz('miss_fortune').
        jazz('lucian').
		% 8-BIT
		bitIs(X, R):- bit(X), R = [si, X, es, bit].
   		bitIs(X, R):- \+bit(X), R = [X, no, es, bit].
		bit('corki').
		bit('garen').
        bit('caitlyn').
        bit('riven').

		
		% HYPERPOP
		hyperpopIs(X, R):- hyperpop(X), R = [si, X, es, un, hyperpop].
   		hyperpopIs(X, R):- \+hyperpop(X), R = [X, no, es, un, hyperpop].
		hyperpop('lulu').
		hyperpop('ziggs').

		% EDM
		edmIs(X, R):- edm(X), R = [si, X, es, un, edm].
   		edmIs(X, R):- \+edm(X), R = [X, no, es, un, edm].
		edm('jax').
        edm('lux').
        edm('zac').
        edm('zed').
	

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

	

	% TFT FLAGS
    % KDA
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagKDA,
		kdaIs(Atom, R).
	% Heartsteel
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagHeartsteel,
		heartsteelIs(Atom, R).
    % Pentakill
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPentakill,
		pentakillIs(Atom, R).
    % TRUE DAMAGE
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagTrue_Damage,
		tdIs(Atom, R).
    % COUNTRY
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagCountry,
		countryIs(Atom, R).
    % EMO
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagEmo,
		emoIs(Atom, R).
	% PUNK
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPunk,
		punkIs(Atom, R).
	% DISCO
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagDisco,
		discoIs(Atom, R).
	% JAZZ
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagJazz,
		jazzIs(Atom, R).
	% 8-BIT
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagBit,
		bitIs(Atom, R).
	% HYPERPOP
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagHyperpop,
		hyperpopIs(Atom, R).

% EDM
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagEdm,
    edmIs(Atom, R).


