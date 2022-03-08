camisa(amarela).
camisa(azul)
camisa(branca)
camisa(verde).
camisa(vermelha).

nome(celso)
nome(geraldo)
nome(marcelo)
nome(pedro)
nome(ricardo)

cargo(analista).
cargo(caixa).
cargo(estagiario).
cargo(gerente).
cargo(trainee).

ferias(janeiro).
ferias(fevereiro).
ferias(julho).
ferias(setembro).
ferias(dezembro).

lanche(banana).
lanche(bolacha).
lanche(maca).
lanche(salgadinho).
lanche(sanduiche).

suco(caju).
suco(laranja).
suco(limao).
suco(maracuja).
suco(uva).

%X está à ao lado de Y
aoLado(X,Y,Lista) :- nextto(X,Y,Lista);nextto(Y,X,Lista).

%X está entre Y e Z / 
% X está a direita de Y e X está a esquerda de Z ou
% X está a direita de Z e X está a esquerda de Y 
entre(X,Y,Z,Lista) :- 
    (aDireita(X,Y,Lista), aEsquerda(X,Z,Lista))
    ;
    (aDireita(X,Z,Lista), aEsquerda(X,Y,Lista)). 

%X está à esquerda de Y (em qualquer posição à esquerda)
aEsquerda(X,Y,Lista) :- nth0(IndexX,Lista,X), 
                        nth0(IndexY,Lista,Y), 
                        IndexX < IndexY.
                        
%X está à direita de Y (em qualquer posição à direita)
aDireita(X,Y,Lista) :- aEsquerda(Y,X,Lista). 

%X está no canto se ele é o primeiro ou o último da lista
noCanto(X,Lista) :- last(Lista,X).
noCanto(X,[X|_]).

todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H,T)), todosDiferentes(T).

solucao(ListaSolucao) :-
    
    ListaSolucao = [
        funcionario(Camisa1, Nome1, Cargo1, Ferias1, Lanche1, Suco1),
        funcionario(Camisa2, Nome2, Cargo2, Ferias2, Lanche2, Suco2),
        funcionario(Camisa3, Nome3, Cargo3, Ferias3, Lanche3, Suco3),
        funcionario(Camisa4, Nome4, Cargo4, Ferias4, Lanche4, Suco4),
        funcionario(Camisa5, Nome5, Cargo5, Ferias5, Lanche5, Suco5),
    ]

    %Ricardo está na quinta posição
    


    camisa(Camisa1), camisa(Camisa2), camisa(Camisa3), camisa(Camisa4), camisa(Camisa5).
    todosDiferentes([Camisa1, Camisa2, Camisa3, Camisa4, Camisa5]).

    nome(Nome1), nome(Nome2), nome(Nome3), nome(Nome4), nome(Nome5).
    todosDiferentes([Nome1, Nome2, Nome3, Nome4, Nome5]).

    cargo(Cargo1), cargo(Cargo2), cargo(Cargo3), cargo(Cargo4), cargo(Cargo5).
    todosDiferentes([Cargo1, Cargo2, Cargo3, Cargo4, Cargo5]).

    ferias(Ferias1), ferias(Ferias2), ferias(Ferias3), ferias(Ferias4), ferias(Ferias5).
    todosDiferentes([Ferias1, Ferias2, Ferias3, Ferias4, Ferias5]).

    lanche(Lanche1), lanche(Lanche2), lanche(Lanche3), lanche(Lanche4), lanche(Lanche5).
    todosDiferentes([Lanche1, Lanche2, Lanche3, Lanche4, Lanche5]).

    suco(Suco1), suco(Suco2), suco(Suco3), suco(Suco4), suco(Suco5).
    todosDiferentes([Suco1, Suco2, Suco3, Suco4, Suco5]).

    

