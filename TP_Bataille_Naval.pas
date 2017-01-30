{ALGORITHME : TP_Bataille_Naval
//BUT : créer le jeu bataille naval
//ENTREE : les cellules pour faire le cadre du jeu, les bateaux
//SORTIE : le jeu apres traitement des données

CONST

	TMAX=5 //taille max des bateaux
	MAX=10
TYPE
	cases = ENREGISTREMENT

		ligne : ENTIER
		colonne : ENTIER

FINENREGISTREMENT

		

TYPE
	bateaux = ENREGISTREMENT

		TabBateau = Tableau [1..TMAX] de cases

		

FINENREGISTREMENT
		

TYPE
	flotte = ENREGISTREMENT

		Tabflotte = Array [1..TMAX]de bateaux


FINENREGISTREMENT

procedure CreateCell(var ligne,colonne:entier)

	VAR
		i,j:ENTIER

	DEBUT
		POUR i de 1 a MAX FAIRE
		DEBUT
			POUR j de 1 a MAX FAIRE
			DEBUT
				ligne <- 0
				colonne <- 0
				ECRIRE ligne & colonne
			FINPOUR
		FINPOUR
FINPROCEDURE


VAR
	i,j:ENTIER

DEBUT
	CreateCell(i,j)
FIN


}

program TP_Bataille_Naval;

uses crt;

CONST
	TMAX=5;
	MAX=10;

TYPE

	cellule = record

		ligne : integer;
		colonne : integer;

END;

		
TYPE
	bateaux = record

		TabBateau : Array [1..TMAX]of cellule;

END;
		

TYPE
	flotte = record

		Tabflotte : Array [1..TMAX]of bateaux;

END;


procedure CreateCell(var ligne,colonne:integer);

VAR
	i,j:integer;

//initialisation des cellules de 0 qui represente l'eau
	BEGIN
		FOR i:= 1 TO MAX DO
			BEGIN
				FOR j:= 1 TO MAX DO
					BEGIN
					ligne:=0;
					colonne:=0;
					write(ligne,colonne);
					END;
				writeln;
			END;

END;

function Comparaison(var ligne,colonne:integer):boolean;

var
	ok:boolean;

BEGIN
		IF (ligne=0) AND (colonne=0) THEN
			ok:=false
		ELSE
			ok:=true;
		Comparaison:=ok;
END;





VAR
	i,j:integer;
	ok:boolean;

BEGIN
	CreateCell(i,j);
	readln;
END.

