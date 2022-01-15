#!/usr/bin/env perl
use strict;
use warnings;

#天気が晴れ、雨、曇りのどれになるか靴飛ばしで占う
#入力した数値分の数日間の天気を占う(次の日を１とする)
#例：入力値→3としたとき、3日間分の天気を出力する
#入力できる数値は1～10とする

#文字コードを設定(文字化け防止)
use utf8;

my $enc_os = 'cp932';#Windowsの場合
#my $enc_os = 'UTF-8';#Linuxの場合
binmode STDIN, ":encoding($enc_os)";
binmode STDOUT, ":encoding($enc_os)";
binmode STDERR, ":encoding($enc_os)";

#入力値を取得
print('天気を知りたい日数の入力をお願いします：');
my $input_number = <STDIN>;

#\nを消す
chomp($input_number);

#天気を配列で用意
my @weather = ('晴れ','雨','曇り');

#各日の天気をランダムに出力していく
for(my $i = 0; $i < $input_number; $i++){
  my $array_number = int(rand 3);#0～2の値を取得
  print($i + 1,'日後の天気：',$weather[$array_number],"\n");
}

exit 0;
