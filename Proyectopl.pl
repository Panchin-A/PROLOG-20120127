eliza:- writeln('Hola, soy Eliza, un chatbot de enfermedades. Tengo conocimientos sobre el dengue. ¿En qué puedo ayudarte?'),
        readln(Input),
        eliza(Input), !.

eliza(Input):- 
    (   Input = ['bye', '.'] ; Input = ['Adios', '.'] ; Input = ['adios', '.'] ),
    writeln('Adiós, espero haberte ayudado. Si necesitas algo más, aquí estoy.'), !.
eliza(Input):- 
    (   Input = ['bye'] ; Input = ['Adios'] ; Input = ['adios'] ),
    writeln('Adiós, espero haberte ayudado. Si necesitas algo más, aquí estoy.'), !.

eliza(Input) :-
    template(Stim, Resp, IndStim),
    match(Stim, Input),
    replace0(IndStim, Input, 0, Resp, R),
    writeln(R),
    readln(Input1),
    eliza(Input1), !.

template([hola, soy, s(_), '.'], ['Hola', 0, '¿En qué puedo ayudarte?'], [2]).
template(['Hola', soy, s(_)], ['Hola', 0, '¿En qué puedo ayudarte?'], [2]).
template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, '¿En qué puedo ayudarte?'], [4]).
template(['Hola', 'mi', 'nombre', 'es', s(_)], ['Hola', 0, '¿En qué puedo ayudarte?'], [4]).
template(['Hola', chatbot, mi, nombre, es, s(_), '.'], ['Hola', 0, '¿En qué puedo ayudarte?'], [5]).
template(['Hola', chatbot, mi, nombre, es, s(_)], ['Hola', 0, '¿En qué puedo ayudarte?'], [5]).

template([me, siento, con, s(_), _], [flagSin], [3]).
template([tambien, tengo, s(_), _], [flagSin], [2]).
template([siento, s(_), _], [flagSin], [1]).
template([me, siento, con, mucha, s(_), _], [flagSin], [4]).
template([tengo, s(_), _], [flagSin], [1]).
template(['Me', siento, con, s(_), _], [flagSin], [3]).
template(['Siento', s(_), _], [flagSin], [1]).
template(['Me', siento, con,mucho, s(_), _], [flagSin], [4]).
template(['Tengo', s(_), _], [flagSin], [1]).

template([creo, que, tambien, tengo, s(_), _], [flagDer], [4]).
template([creo, que, tengo, s(_), tambien, _], [flagDer], [3]).
template(['Creo', que, tambien, tengo, s(_), _], [flagDer], [4]).
template(['Creo', que, tengo, s(_),tambien, _], [flagDer], [3]).

template([puedes, decirme, mas, derivaciones, que, hay, de, s(_), _], [flagLisDer], [7]).

template([si, tengo, s(_), _], [flagReg], [3]).
template([si, en, la, region, de, s(_), _], [flagReg], [6]).
template([en, la, region, de, s(_), _], [flagReg], [5]).
template([en, s(_), _], [flagReg], [2]).

template([me, puedes, recomendar, un, doctor, para, tratar, el, s(_), _], [flagDoc], [10]).
template([me, puedes, decir, un, buen, doctor, para, tratar, el, s(_), _], [flagDoc], [11]).
template([recomiendame, un, doctor, para, tratar, el, s(_), _], [flagDoc], [8]).
template([quiero, encontrar, un, doctor, para, tratar, el, s(_), _], [flagDoc], [8]).

template([me, puedes, explicar, sobre, s(dengue), _], [flagPai], [5]).
template([me, puedes, contar, sobre, s(dengue), _], [flagPai], [5]).
template([quiero, saber, mas, sobre, s(dengue), _], [flagPai], [5]).

elizaSin :- writeln('El dengue puede presentar síntomas como fiebre alta, dolor de cabeza, dolor detrás de los ojos, dolor muscular y articular, erupciones cutáneas, y sangrado de encías o nariz. Sin embargo, estos síntomas también pueden estar relacionados con otras condiciones médicas, por lo que es importante consultar a un médico para obtener un diagnóstico preciso.'), !.
elizaDer :- writeln('Algunas derivaciones comunes para el dengue son: descanso, hidratación adecuada, analgésicos para aliviar el dolor y antipiréticos para reducir la fiebre. En casos graves, la hospitalización puede ser necesaria. Es recomendable consultar con un médico para discutir las opciones de tratamiento específicas.'), !.
elizaLisDer :- writeln('Las derivaciones de tratamiento para el dengue incluyen: descanso adecuado, ingesta de líquidos para prevenir la deshidratación, analgésicos como el paracetamol para aliviar el dolor y reducir la fiebre. En casos de dengue grave, se pueden requerir intervenciones médicas adicionales. Es importante consultar a un médico para determinar el mejor plan de tratamiento.'), !.
elizaDoc :- writeln('Es recomendable buscar la atención de un médico o especialista en enfermedades infecciosas si sospechas que puedes tener dengue. Un médico puede realizar pruebas para confirmar el diagnóstico y proporcionar orientación sobre el tratamiento adecuado. No dudes en buscar ayuda médica si experimentas síntomas de dengue.'), !.
elizaReg :- writeln('El dengue es una enfermedad transmitida por mosquitos que puede ocurrir en varias regiones, especialmente en áreas tropicales y subtropicales. La prevención de picaduras de mosquitos es fundamental, y en caso de sospecha de dengue, es crucial buscar atención médica. Consulta con un médico en tu región para obtener información específica sobre la prevención y el tratamiento del dengue.'), !.
elizaPai :- writeln('El dengue es una enfermedad viral transmitida por mosquitos que afecta a millones de personas en todo el mundo. Los síntomas pueden variar desde leves hasta graves, y el tratamiento se centra en aliviar los síntomas y prevenir complicaciones. Es fundamental buscar atención médica si se sospecha de dengue, ya que el manejo temprano puede ser crucial para una recuperación exitosa.'), !.

match([], _) :- !.
match([X|T], [X|Input]) :- match(T, Input).

replace0([], _, _, [], []) :- !.
replace0([N|NT], Input, N, [X|XT], Output) :- 
    match(X, Input),
    NextN is N + 1,
    replace0(NT, Input, NextN, XT, Output).
replace0([N|NT], Input, CurN, [X|XT], [X|Output]) :-
    CurN \= N,
    replace0(NT, Input, CurN, XT, Output).

elizaSin :- writeln('El dengue puede presentar síntomas como fiebre alta, dolor de cabeza, dolor detrás de los ojos, dolor muscular y articular, erupciones cutáneas, y sangrado de encías o nariz. Sin embargo, estos síntomas también pueden estar relacionados con otras condiciones médicas, por lo que es importante consultar a un médico para obtener un diagnóstico preciso.'), !.
elizaDer :- writeln('Algunas derivaciones comunes para el dengue son: descanso, hidratación adecuada, analgésicos para aliviar el dolor y antipiréticos para reducir la fiebre. En casos graves, la hospitalización puede ser necesaria. Es recomendable consultar con un médico para discutir las opciones de tratamiento específicas.'), !.
elizaLisDer :- writeln('Las derivaciones de tratamiento para el dengue incluyen: descanso adecuado, ingesta de líquidos para prevenir la deshidratación, analgésicos como el paracetamol para aliviar el dolor y reducir la fiebre. En casos de dengue grave, se pueden requerir intervenciones médicas adicionales. Es importante consultar a un médico para determinar el mejor plan de tratamiento.'), !.
elizaDoc :- writeln('Es recomendable buscar la atención de un médico o especialista en enfermedades infecciosas si sospechas que puedes tener dengue. Un médico puede realizar pruebas para confirmar el diagnóstico y proporcionar orientación sobre el tratamiento adecuado. No dudes en buscar ayuda médica si experimentas síntomas de dengue.'), !.
elizaReg :- writeln('El dengue es una enfermedad transmitida por mosquitos que puede ocurrir en varias regiones, especialmente en áreas tropicales y subtropicales. La prevención de picaduras de mosquitos es fundamental, y en caso de sospecha de dengue, es crucial buscar atención médica. Consulta con un médico en tu región para obtener información específica sobre la prevención y el tratamiento del dengue.'), !.
elizaPai :- writeln('El dengue es una enfermedad viral transmitida por mosquitos que afecta a millones de personas en todo el mundo. Los síntomas pueden variar desde leves hasta graves, y el tratamiento se centra en aliviar los síntomas y prevenir complicaciones. Es fundamental buscar atención médica si se sospecha de dengue, ya que el manejo temprano puede ser crucial para una recuperación exitosa.'), !.

start :- eliza.

:- initialization(start).
