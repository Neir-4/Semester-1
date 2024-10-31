program angka_jono_sigma;
uses crt;
var i,n,angka,jumlah:integer;
rr:real;
begin
    clrscr;
    write('Anda ingin menghitung berapa angka ? : '); readln(n);
    jumlah:=0;
    rr:=0;
    for i:= 1 to n do 
    begin
        angka:=0;
        write('Angka ke-',i,' : '); readln(angka);
        jumlah:=jumlah+angka;
    end;
    rr:=jumlah/n;
    writeln('Jumlah Total : ',jumlah);
    writeln('Rata Rata : ',rr:0:1);
end.
