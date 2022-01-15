#=======================================================
#問題
#与えられた数値から奇数を小さい順に出力する。
#
#入力値の条件
#・1≦n≦1,000
#・1<=i<=nについて、1<=a_i<=10000
#=======================================================

#!/usr/bin/env perl
use strict;
use warnings;

#↓文字コードを設定(文字化け防止)↓
use utf8;

my $enc_os = 'cp932';#Windowsの場合
#my $enc_os = 'UTF-8';#Linuxの場合
binmode STDIN, ":encoding($enc_os)";#入力
binmode STDOUT, ":encoding($enc_os)";#出力
binmode STDERR, ":encoding($enc_os)";#エラー出力

#↑文字コードを設定(文字化け防止)↑

#入力値を連続で取得(5回分)
my @numberList;
for(my $index = 0; $index < 5; $index++){
  print('数値を入力：');
  my $number = <STDIN>;
  chomp($number);
    $numberList[$index] = $number;
  }

#小さい順にソート(並べ替え)する
@numberList = sort {$a <=> $b} @numberList;

#値を出力する
#&printOdd($numberList);
for my $number (@numberList){
  if($number % 2 == 1){
    print($number."\n");
  }
}

#exitで処理を終了する
#「0」を指定すると「正常終了」、「1」を指定すると「異常終了」として扱われる
exit 0;

=pod
#奇数を出力する
sub printOdd{
  #引数として渡されたリスト@_
  #先頭の要素(@_[0])は渡した引数とは関係ない値が入っているので、
  #先頭の要素を取り出す(削除する)
  shift(@_);
  
  #引数を取得
  my @numberList = shift(@_);
  
  #配列の要素数を取得
  my $listLength = $numberList;
  
  for(my $index = 0; $index < $listLength; $index++){
    my $number = $numberList[$index];
    if($number % 2 == 1){
      print($number."\n");
    }
  }
  
  exit 0;
}


#開発中
#素数を出力する
sub printPrimeNumber{
  #引数として渡されたリスト@_
  #先頭の要素(@_[0])は渡した引数とは関係ない値が入っているので、
  #先頭の要素を取り出す(削除する)
  shift(@_);
  
  #引数を取得
  my @numberList = shift(@_);
  my $listLength = $numberList;
  
  for(my $index = 0; $index < $listLength; $index++){
    my $number = $numberList[$index];
    if($number == 2 || ($number < 2 && $number % 2 == 1)){
      print($number."\n");
    }
  }
  
  exit 0;
}
=cut