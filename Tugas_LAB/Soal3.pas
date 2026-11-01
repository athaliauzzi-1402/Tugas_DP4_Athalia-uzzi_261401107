
program UrutNilaiUAS;
uses crt;

var
  { Array untuk menyimpan maksimal 10 nilai mahasiswa }
  nilai: array[1..10] of integer;

  { n = jumlah mahasiswa
    i dan j = variabel perulangan
    temp = variabel sementara untuk menukar nilai }
  n, i, j, temp: integer;

begin
  clrscr;

  { Menampilkan judul program }
  writeln('=== PROGRAM URUT NILAI UAS ===');

  { Meminta pengguna memasukkan jumlah mahasiswa }
  write('Masukkan jumlah mahasiswa: ');
  readln(n);

  { Memasukkan nilai mahasiswa ke dalam array }
  for i := 1 to n do
  begin
    write('Masukkan nilai mahasiswa ke-', i, ': ');
    readln(nilai[i]);
  end;

  { Proses pengurutan nilai menggunakan metode Bubble Sort }
  { Perulangan pertama menentukan berapa kali proses pengurutan dilakukan }
  for i := 1 to n-1 do
  begin
    { Perulangan kedua membandingkan dua nilai yang bersebelahan }
    for j := 1 to n-i do
    begin

      { Jika nilai di sebelah kiri lebih besar,
        maka kedua nilai akan ditukar }
      if nilai[j] > nilai[j+1] then
      begin

        { Menyimpan nilai sementara ke dalam variabel temp }
        temp := nilai[j];

        { Memindahkan nilai berikutnya ke posisi sebelumnya }
        nilai[j] := nilai[j+1];

        { Memindahkan nilai sementara ke posisi berikutnya }
        nilai[j+1] := temp;
      end;
    end;
  end;

  { Menampilkan hasil nilai yang sudah diurutkan }
  writeln;
  writeln('=== NILAI SETELAH DIURUTKAN ===');

  { Menampilkan seluruh isi array dari nilai terkecil ke terbesar }
  for i := 1 to n do
  begin
    writeln('Nilai mahasiswa ke-', i, ': ', nilai[i]);
  end;

  readln;
end.
