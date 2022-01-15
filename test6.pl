#=======================================================
#問題
#英文字の名前が与えられ、その名前のイニシャルを出力します。
#「Ken Sato」なら「K.S.」と出力される
#ファーストネーム、ラストネームの各文字数は最大10文字までとします。
#=======================================================

#!/usr/bin/env perl
use strict;
use warnings;

#文字コードを設定(文字化け防止)
use utf8;

my $enc_os = 'cp932';#Windowsの場合
#my $enc_os = 'UTF-8';#Linuxの場合
binmode STDIN, ":encoding($enc_os)";
binmode STDOUT, ":encoding($enc_os)";
binmode STDERR, ":encoding($enc_os)";

#名前を取得
print('英文字でお名前を入力してください',"\n",'ファーストネーム：');
my $first = <STDIN>;#ファーストネーム
print('ラストネーム：');
my $last = <STDIN>;#ラストネーム

#\nを消す
chomp($first);
chomp($last);

#入力された名前からイニシャルを出力する
if(length($first) <= 10 && length($last) <= 10){
  my $name .= substr($first,0,1);
  $name .= '.';
  $name .= substr($last,0,1);
  $name .= '.';

  print('イニシャル：',$name);
}else{
  print('文字数は10文字以内でお願いします');
}

exit 0;
