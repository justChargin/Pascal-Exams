uses crt;
var
  kacSayi:integer;
  sayilar:array[0..999] of integer;

label tekrarSor;

procedure fibonacci(kacSayi:integer);
var i:integer;

begin
  sayilar[1] := 0;
  sayilar[0] := 1;

  for i:=1 to kacSayi do begin
    sayilar[i+1] := sayilar[i] + sayilar[i-1];

    write(sayilar[i], ' ');
  end;
end;

begin
tekrarSor:
write('Kac adet fibonacci sayisi: ');
readln(kacSayi);

if kacSayi <= 0 then begin
  writeln('Gecersiz sayi girdiniz devam etmek icin bir tusa basin');
  readln;
  clrscr;
  goto tekrarSor;
end;

fibonacci(kacSayi);

readln; end.

