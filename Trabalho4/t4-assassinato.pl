%Trabalho 4
%Paradigmas de Programa��o
%Diego Viana dos santos


%Localiza��o dos suspeitos.
%Pedro.
localizacao(pedro,segunda,santa_maria).
localizacao(pedro,terca,santa_maria).
localizacao(pedro,quarta,porto_alegre).
localizacao(pedro,quinta,santa_maria).
localizacao(pedro,sexta,apartamento).

%Caren.
localizacao(caren,segunda,porto_alegre).
localizacao(caren,terca,porto_alegre).
localizacao(caren,quarta,porto_alegre).
localizacao(caren,quinta,santa_maria).
localizacao(caren,sexta,apartamento).

%Henrique.
localizacao(henrique,segunda,apartamento).
localizacao(henrique,terca,porto_alegre).
localizacao(henrique,quarta,apartamento).
localizacao(henrique,quinta,apartamento).
localizacao(henrique,sexta,apartamento).

%Bia.
localizacao(bia,segunda,apartamento).
localizacao(bia,terca,porto_alegre).
localizacao(bia,quarta,porto_alegre).
localizacao(bia,quinta,santa_maria).
localizacao(bia,sexta,apartamento).

%Adriano.
localizacao(adriano,segunda,apartamento).
localizacao(adriano,terca,apartamento).
localizacao(adriano,quarta,santa_maria).
localizacao(adriano,quinta,apartamento).
localizacao(adriano,sexta,apartamento).

%Alice.
localizacao(alice,segunda,apartamento).
localizacao(alice,terca,porto_alegre).
localizacao(alice,quarta,porto_alegre).
localizacao(alice,quinta,apartamento).
localizacao(alice,sexta,apartamento).

%Bernardo.
localizacao(bernado,segunda,santa_maria).
localizacao(bernado,terca,santa_maria).
localizacao(bernado,quarta,porto_alegre).
localizacao(bernado,quinta,santa_maria).
localizacao(bernado,sexta,apartamento).

%Maria.
localizacao(maria,segunda,apartamento).
localizacao(maria,terca,santa_maria).
localizacao(maria,quarta,santa_maria).
localizacao(maria,quinta,santa_maria).
localizacao(maria,sexta,apartamento).


%Status psicol�gico
insano(maria).
insano(adriano).


%Condi��o financeira
pobre(pedro).
pobre(bia).
pobre(bernardo).
pobre(maria).

rico(caren).
rico(henrique).
rico(adriano).
rico(alice).


%Rela��es 
relacionamento(anita,bernardo).
relacionamento(bernardo,anita).

relacionamento(anita,pedro).
relacionamento(pedro,anita).

relacionamento(pedro,alice).
relacionamento(alice,pedro).

relacionamento(alice,henrique).
relacionamento(henrique,alice).

relacionamento(henrique,maria).
relacionamento(maria,henrique).

relacionamento(caren,bernardo).
relacionamento(bernardo,caren).

relacionamento(maria,adriano).
relacionamento(adriano,maria).

relacionamento(adriano,caren).
relacionamento(caren,adriano).


%V�tima
vitima(anita).


%Motiva��o do crime
motivo(X) :- ciume(anita,X);insanidade(X);pobre(X).
ciume(X,Y) :- relacionamento(X,A),relacionamento(Y,A).


%Acontecimentos
roubo_da_arma(X) :- bastao(X);martelo(X).
roubo_da_chave(X) :- localizacao(X,segunda,santa_maria);localizacao(X,terca,porto_alegre).
estava_no_apartamento(X) :- localizacao(X,quinta,apartamento);localizacao(X,sexta,apartamento).
acesso(X) :- roubo_da_chave(X), estava_no_apartamento(X), roubo_da_arma(X).


%Possiveis armas
bastao(X) :- localizacao(X,quinta,porto_alegre);localizacao(X,quarta,santa_maria).
martelo(X) :- localizacao(X,quarta,apartamento);localizacao(X,quinta,apartamento).


%Assassino
assassino(X) :- motivo(X), acesso(X).