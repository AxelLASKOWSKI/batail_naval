Program Boutaille_naval;//nom

Uses crt, math;//bibliotheque

Const
Max=11;
Maxbato=5;

Type
Cases = record
abs, ord:integer;//creer les cases
end;
Procedure genplateau(abs,ord:integer);

	Var
	i, j :integer;

	Begin
	For i:=1 to max do
	Begin
		For j:=1 to max do
		If (i=1) and (j>1) then
		    Begin
				Write(j-1);//Tout les if afficheront les bord 
		    End     
	    else If (j=1) and (i>1) then
	        Begin
				Write(chr(63+i));
	        End
	        else If (j=1) and (i=1) then
	        Begin
	        	write(' ');
	        end
	        Else
	        begin
	        	write(' ');
	        end;
	        Writeln;
End;
    Readln;
End;
var
        abs, ord    :integer;
        abs1, ord1:char;

Begin
clrscr;
genplateau(abs,ord);
Readln;
End.

