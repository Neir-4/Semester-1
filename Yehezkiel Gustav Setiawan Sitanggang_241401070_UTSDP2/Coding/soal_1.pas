program supermarket_skibidi;
uses crt;
var
    nama, hari, nomor, lagi: string;
    harga, total, semua: longint;
    diskon: real;
    beli, barang, tambahan, poin: integer;
begin
    clrscr;
    writeln('Selamat datang di Supermarket AHY :)');
    writeln('Selamat belanja semoga bahagia :) ');
    write('Masukkan Nama Member : '); readln(nama);
    write('Hari apakah ini? : '); readln(hari);
    
    if (nama <> '-') then
        writeln('Halo! ', nama, ', Selamat hari ', hari, ', Silakan lihat barang hari ini :) ')
    else
        writeln('Selamat hari ', hari, ', Silakan lihat barang hari ini :) ');

    writeln('1. Pasta Gigi  : Rp.  16.000');
    writeln('2. Sabun       : Rp.   7.000');
    writeln('3. Es Krim     : Rp.  20.000');
    writeln('4. Sosis       : Rp.  10.000');
    writeln('5. Rice Cooker : Rp. 300.000');
    writeln('6. Kipas Angin : Rp. 150.000');
    writeln('7. Keju        : Rp.  25.000');
    writeln('8. Yoghurt     : Rp.  20.000');
    
    semua := 0;
    barang := 0;
    repeat
        write('Silakan Pilih barang berdasarkan nomornya saja :) : '); readln(nomor);
        write('Ingin beli berapa? : '); readln(beli);

        case nomor of
            '1': harga := 16000; 
            '2': harga := 7000;
            '3': harga := 20000;
            '4': harga := 10000;
            '5': harga := 300000;
            '6': harga := 150000;
            '7': harga := 25000;
            '8': harga := 20000;
        else
            begin
                writeln('Produk tidak tersedia');
                harga := 0;
            end;
        end;

        
        if (hari = 'senin') or (hari = 'Senin') then
        begin
            if (nomor = '1') or (nomor = '2') then
                harga := harga * 90 div 100;
        end
        else if (hari = 'selasa') or (hari = 'Selasa') then
        begin
            if (nomor = '3') or (nomor = '4') then
                harga := harga * 95 div 100;
        end
        else if (hari = 'rabu') or (hari = 'Rabu') then
        begin
            if (nomor = '5') or (nomor = '6') then
                harga := harga * 70 div 100;
        end
        else if (hari = 'kamis') or (hari = 'Kamis') then
        begin
            if (nomor = '7') or (nomor = '8') then
                harga := harga * 92 div 100;
        end;

        total := harga * beli;
        semua := semua + total;
        barang := barang + beli;

        write('Apakah anda ingin belanja lagi? (Y/N) : '); readln(lagi);
    until (lagi = 'n') or (lagi = 'N');

    writeln('Anda membeli sebanyak ', barang, ' barang dengan total harga sebesar: Rp. ', semua);

    poin := semua div 50000;
    tambahan := barang div 10;
    diskon := 1.0; 

    if (nama <> '-') then
        diskon := diskon * 0.90; 
    if (tambahan >= 1) then
        diskon := diskon * 0.95; 
    if (poin >= 50) then
        diskon := diskon * 0.80; 
    semua := round(semua * diskon);
    writeln('Total setelah Diskon adalah : Rp. ', semua);
    writeln('Anda mendapatkan poin : ',poin);
    writeln('Terimakasih telah berbelanja :) ');
end.
