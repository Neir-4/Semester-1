program primaxxing;
uses crt;
var i,n,t:integer;
prima:boolean;
begin
    clrscr;
    write('Masukkan rentang nilai bilangan prima : '); readln(n);
    writeln('Bilangan Prima antara 1 dan ',n,' adalah : ');
    for i:=2 to n do 
    begin
        prima := True;
    
    for t := 2 to i - 1 do
    begin
    if (i mod t = 0) then
    begin
    prima := False;
    break;
    end;
    end;
    
    if prima then
    begin
        write(i);
        if (i+3<n) then
        write(',');
        end;
    end;
end.
