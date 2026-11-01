
program NilaiMahasiswa;
uses crt;

var
  { Array untuk menyimpan nilai tugas, kuis, UTS, dan UAS
    dari maksimal 5 mahasiswa }
  tugas, kuis, uts, uas: array[1..5] of real;

  { Array untuk menyimpan hasil rata-rata setiap mahasiswa }
  rata: array[1..5] of real;

  { n = jumlah mahasiswa
    i = variabel untuk perulangan }
  n, i: integer;

begin
  clrscr;

  { Menampilkan judul program }
  writeln('=== PROGRAM NILAI MAHASISWA ===');

  { Meminta pengguna memasukkan jumlah mahasiswa }
  write('Masukkan jumlah mahasiswa: ');
  readln(n);

  { Melakukan perulangan untuk memasukkan nilai setiap mahasiswa }
  for i := 1 to n do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);

    { Memasukkan nilai tugas mahasiswa ke dalam array }
    write('Nilai Tugas : ');
    readln(tugas[i]);

    { Memasukkan nilai kuis mahasiswa ke dalam array }
    write('Nilai Kuis  : ');
    readln(kuis[i]);

    { Memasukkan nilai UTS mahasiswa ke dalam array }
    write('Nilai UTS   : ');
    readln(uts[i]);

    { Memasukkan nilai UAS mahasiswa ke dalam array }
    write('Nilai UAS   : ');
    readln(uas[i]);

    { Menghitung rata-rata dari empat komponen nilai }
    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
  end;

  { Menampilkan judul hasil nilai mahasiswa }
  writeln;
  writeln('=== HASIL NILAI MAHASISWA ===');

  { Melakukan perulangan untuk menampilkan hasil setiap mahasiswa }
  for i := 1 to n do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);

    { Menampilkan nilai tugas, kuis, UTS, dan UAS }
    writeln('Nilai Tugas : ', tugas[i]:0:2);
    writeln('Nilai Kuis  : ', kuis[i]:0:2);
    writeln('Nilai UTS   : ', uts[i]:0:2);
    writeln('Nilai UAS   : ', uas[i]:0:2);

    { Menampilkan hasil perhitungan rata-rata }
    writeln('Rata-rata   : ', rata[i]:0:2);

    { Memeriksa apakah mahasiswa lulus atau tidak
      Jika rata-rata 70 atau lebih, mahasiswa dinyatakan lulus }
    if rata[i] >= 70 then
      writeln('Keterangan  : LULUS')
    else
      writeln('Keterangan  : TIDAK LULUS');
  end;

  { Menahan tampilan program agar tidak langsung tertutup }
  readln;
end.
