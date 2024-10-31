program agus_lapar_oak_buk;
uses crt;
var n,i,g:integer;
begin
    clrscr;
    write('Masukkan tinggi segitiga : '); readln(n);
    for i:= 1 to n do 
    begin
        for g:= 1 to i do   
        if g mod 2 = 1 then
            write('1 ')
        else
            write('0 ');
    writeln;
    end;
end.
