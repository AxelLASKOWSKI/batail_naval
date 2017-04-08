Program Boutaille_naval;//nom

Uses crt, SysUtils;//bibliotheque

Const
	NdBateau=2;
	MaxCase=2;//cellule de bateau
	MinL=1; //ligne
	MaxL=50;
	MinC=1; //cases
	MaxC=50;

Type Cases=record
		ligne	:integer;
		col		:integer;
end;

Type bateau=record
	NCase:array[1..MaxCase] of Cases;
end;
Type Flotte = record
	NBateau:array[1..NdBateau] of bateau;
end;

Type positionBateau=(enligne(*=1*), enColonne(*=2*), enDiag(*=3*));

Type etatBateau=(toucher,couler);

Type etatFlotte=(aFlot,Asombrer);

Type etatJoueur=(gagne,perd);
//BUT: crée les cases
//ENTREE: lignes et colonnes
//SORTIE: les cases
Procedure creatCase (l,c:integer;Var mCase:Cases);

	begin
		mCase.ligne:=l;
		mCase.col:=c;
	end;
//BUT: compare les cases
//ENTREE: lignes et colonnes
//SORTIE: comparaison vrais/faux
function cmpcase (NCase,tCase:Cases):boolean; 
	
	begin
		if((NCase.col=tCase.col) and (NCase.ligne=tCase.ligne)) then
			cmpcase:=true;
	end;
//BUT: cree les bateaux
//ENTREE: position des bateaux
//SORTIE: les bateaux
function creatBateau (NCase:cases;taille:integer):bateau;

var 
	res:bateau;
	posbateau:positionBateau;
	pos,i :integer;

begin
	pos=random[1..3];
	posbateau:=positionBateau (pos);//choisi si en ligne, colonne, diagonal (1=ligne,2=colone,3=diag)
	for i of 1 to MaxCase pas 1 do
		if (i<=taille) then
			begin
				res.NCase[i].ligne:=mCase.ligne;
				res.NCase[i].col:=mCase.col;
			end;
			begin
				res.NCase[i].ligne:=0;
				res.NCase[i].col:=0;
			end;
		end;
		if (positionBateau=enligne) then
			mCase.col:=mCase.col+1;
		else
			if
				(positionBateau=enColonne) then
				mCase.ligne:=mCase.ligne+1;
		else
			(positionBateau=enDiag) then
			mCase.diag:=mCase.dia+1;
			begin
				mCase.ligne=mCase.ligne+;
				mCase.col=mCase.col+1;
			end;
		end;
	end;
	creatBateau:=res
end;
	else cmpcase:=false;
end;
//BUT: compare les cases
//ENTREE: cases bateaux, cases vide
//SORTIE: vrais ou faux
function ctrlCase (nbat:bateau;mCase:cases):boolean;
	Var
		i:integer;
		valtest:boolean;
	begin
		valtest:=false;
		for i of 1 to MaxCase pos 1 do
			begin
				if (cmpcase(nbat.NCase[i],mCase))then
					valtest:=true;
				end;
		end;
		ctrlCase:=valtest;
end;
//BUT: vérifie les bateaux
//ENTREE: bateaux
//SORTIE: vrais,faux
function ctrlflotte (mflotte:flotte;mCase:cases):boolean;
	Var
		i 		:integer;
		valtest :boolean;

	begin
		valtest:=false;
		for i of 1 to NBateau pasde 1 do
			if (ctrlCase(mflotte.NBateau[i],mCase));
			then
				valtest:=true;
			end;
		end;
		ctrlflotte:=valtest;
end;


