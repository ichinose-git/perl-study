#=======================================================
#問題
#入力する回数を入力後、その回数分名前を入力します。
#入力された中で、初めて出てきた名前には「YES」、2回目以降の名前には「NO」を出力します。
#
#入力値の条件
#・1≦n≦20
#・1 ≦ (c_1の長さ), (c_2の長さ), ..., (c_nの長さ) ≦ 10
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

#入力回数を指定
print('入力回数：');
my $insertCount = <STDIN>;

#名前を取得
my @nameList = &insert($insertCount);
print 'insertlist:',@nameList,"\n";
&firstNameCheck(\@nameList);

#exitで処理を終了する
#「0」を指定すると「正常終了」、「1」を指定すると「異常終了」として扱われる
exit 0;

#1度目かチェックする
sub firstNameCheck{
  my $checkNameList = shift(@_);#対象リスト
  print 'checklist:',@$checkNameList,"\n";
  my %firstNameList;#1度出た名前の格納用
  my @resultList;#YES,NOの情報格納用
  
  for my $name(@$checkNameList){
    if($firstNameList{$name}){
      print 'NO';
    }else{
      print 'YES' , "\n";
      $firstNameList{$name} = '1';
    }
  }
}


#入力値を連続で取得する
sub insert{
  my $count = shift(@_);
  my @list;
  for(my $index = 0; $index < $count; $index++){
    print('入力', $index + 1 ,'：');
    my $number = <STDIN>;
    chomp($number);
    $list[$index] = $number;
  }
  @list;
}


sub print{
  my @list = shift(@_);
  for my $data (@list){
    print($data."\n");
  }
}
