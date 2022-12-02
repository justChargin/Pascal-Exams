// Global Variables
var
  a, b, c, delta:real;
  fileToSave: TextFile;

// Function and Procedures
function findDelta(a, b, c:real):real;
var
  delta:real;
begin
  delta := ((b*b)-4*a*c);
  findDelta := delta;
end;

procedure showSingleRoot(a, b:real);
var
  singleRoot:real;
begin
  singleRoot := (-1*b)/2*a;
  writeln('Single Root Found: ', singleRoot:0:2);
end;

procedure showRoots(a, b, delta:real);
var
  x1, x2:real;
begin
  x1 := ((-1*b) + sqrt(delta)) / 2*a;
  x2 := ((-1*b) - sqrt(delta)) / 2*a;
  writeln('x1: ', x1:0:2, ' x2: ', x2:0:2);
end;

begin
  Assign(fileToSave, 'userFiles/info.txt');

  write('A degeri: ');
  readln(a);

  write('B degeri: ');
  readln(b);

  write('C degeri: ');
  readln(c);

  delta := findDelta(a, b, c);

  if (delta < 0) then begin
    writeln('Reel (Gercek) Kok Yok!');

    Append(fileToSave);
    writeln(fileToSave, a, b, c, delta);
    close(fileToSave);
  end;

  if (delta = 0) then begin
    showSingleRoot(a, b);

    Append(fileToSave);
    writeln(fileToSave, a, b);
    close(fileToSave);
  end;

  if (delta > 0) then begin
    showRoots(a, b, delta);

    Append(fileToSave);
    writeln(fileToSave, a, b, delta);
    close(fileToSave);
  end;

  readln;
end.

