#=======================================================
#問題
#ゆで卵を作ります。ゆで卵の状態が「生、半熟、固ゆで」のどれになっているかを出力します。
#卵をゆでている時間(分)を入力して、その時間に応じた卵の状態を出力します。
#0～5分で生、6～7分で半熟、8～15分で固ゆでとします。
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

#入力値を取得
print('ゆでている時間(分)を取得します：');
my $minute = <STDIN>;

#時間に応じた卵の状態を出力する
if($minute <= 5){
  print('生');
}elsif($minute <= 7){
  print('半熟');
}elsif($minute <= 15){
  print('固ゆで');
}else{
  print('ゆですぎです');
}


exit 0;
