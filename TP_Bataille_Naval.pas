{ALGORITHME : TP_Bataille_Naval
//BUT : créer le jeu bataille naval
//ENTREE : les cellules pour faire le cadre du jeu, les bateaux
//SORTIE : le jeu apres traitement des données


CONST
	MAX=10		//taille de la map
	MAXNAVIRE=5		//nombre de navire MAX=8
	MAXTAILLENAVIRE=6		//taille des navires MAX=10
	
//DEBUT TYPE
TYPE
	cellule = ENREGISTREMENT
		ligne:ENTIER
		colonne:ENTIER
	FINENREGISTREMENT
	
TYPE
	navire = ENREGISTREMENT
		n : cellule
		taille: ENTIER
		nom: CHAINE
	FINENREGISTREMENT
	
TYPE
	flotte = ENREGISTREMENT
		n1 : navire
	FINENREGISTREMENT
	

TYPE
	Tcellule=TABLEAU [1..100] DE cellule
	Tbateau=TABLEAU [1..100] DE navire
	TFlotte=TABLEAU [1..MAXNAVIRE,1..100] of flotte




	//init tableau
//BUT:Initialisation a 0 des position des cellules
//ENTREE:1 tableau d'entier, 1 entier, 1 constante
//SORTIE:1 tableau d'entier avec valeur 0
PROCEDURE InitCellule(VAR PosCellule,CelluleTouche:Tcellule)
VAR
	i:ENTIER
DEBUT
	POUR i DE 1 A MAX FAIRE
		PosCellule[i].colonne<-0
		PosCellule[i].ligne<-0
		CelluleTouche[i].colonne<-0
		CelluleTouche[i].ligne<-0
	FINPOUR
FINPROCEDURE
//


//BUT:Initialisation a 0 de la flotte
//ENTREE:2 tableau avec 1 sous type Tflotte, et 1 sous type Tbateau
//SORTIE:2 tableau avec valeur 0
PROCEDURE InitFlotte(VAR Bateau:Tbateau; VAR Ensemble:TFlotte)
VAR
	i,j:ENTIER
DEBUT
	POUR i DE 1 A MAX FAIRE
		Bateau[i].n.colonne<-0
		Bateau[i].n.ligne<-0
		POUR j DE 1 A MAXNAVIRE FAIRE
			Ensemble[j,i].n1.n.colonne<-0
			Ensemble[j,i].n1.n.ligne<-0
		FINPOUR
	FINPOUR
FINPROCEDURE

//programme principal
VAR
	
	PosCellule,CelluleTouche:Tcellule
	Bateau:Tbateau
	Ensemble:TFlotte


DEBUT

	InitCellule(PosCellule,CelluleTouche)		// Init des cellules
	InitFlotte(Bateau,Ensemble)		//Init de la flotte
	

FIN }


	


program TP_Bataille_Naval;

uses crt;
//BUT:Bataille Navale
//ENTREE:2 entier
//SORTIE:Bateau

CONST
	MAX=10;		//taille de la map
	MAXNAVIRE=5;		//nombre max de navire possible
	MAXTAILLENAVIRE=6;		//taille max d'un navire
	
//DEBUT TYPE
TYPE
	cellule = record
		ligne:integer;
		colonne:integer;
	END;
	
TYPE
	navire = record
		n : cellule;
		taille: integer;
	END;
	
TYPE
	flotte = record
		n1 : navire
	END;
	

TYPE
	Tcellule=ARRAY [1..100] OF cellule;
	Tbateau=ARRAY [1..100] OF navire;
	TFlotte=ARRAY [1..MAXNAVIRE,1..100] OF flotte;
//FIN TYPE



//BUT:Initialisation a 0 des position des cellules
//ENTREE:1 tableau d'entier, 1 entier, 1 constante
//SORTIE:1 tableau d'entier avec valeur 0
PROCEDURE InitCellule(VAR PosCellule,CelluleTouche:Tcellule);
VAR
	i:integer;

BEGIN
	FOR i := 1 TO MAX DO;
	BEGIN
		PosCellule[i].colonne:=0;
		PosCellule[i].ligne:=0;
		CelluleTouche[i].colonne:=0;
		CelluleTouche[i].ligne:=0;
	END;
END;



//BUT:Initialisation a 0 de la flotte
//ENTREE:2 tableau avec 1 sous type Tflotte, et 1 sous type Tbateau
//SORTIE:2 tableau avec valeur 0
PROCEDURE InitFlotte(VAR Bateau:Tbateau; VAR Ensemble:TFlotte);
VAR
	i,j:integer;
BEGIN
	FOR i := 1 TO MAX DO
	BEGIN
		Bateau[i].n.colonne:=0;
		Bateau[i].n.ligne:=0;
		FOR j := 1 TO MAXNAVIRE DO
		BEGIN
			Ensemble[j,i].n1.n.colonne:=0;
			Ensemble[j,i].n1.n.ligne:=0;
		END;
	END;
END;




//programme principal
VAR
	
	PosCellule,CelluleTouche:Tcellule;
	Bateau:Tbateau;
	Ensemble:TFlotte;


BEGIN

	InitCellule(PosCellule,CelluleTouche);		// Init des cellules
	InitFlotte(Bateau,Ensemble);		//Init de la flotte
	readln;

END.






