#include<iostream>
using namespace std;
char  nama_mhs_IF2A [18][30] =
{"andi","haris","hikayat","rizki","salahudin","yuda","afif","fakih","aldi","cecep","riska","irna""nisa","ikhsan","raihan","rio","sandra","wildan"};
int n;
int main()
{
	cout <<"Masukan urutan mahasiswa dari 0 sampai 17: ";
	cin >> n ;
	cout <<"Nama mahasiswa tersebut adalah :";
	cout << " " <nama_mhs_IF2A [n];
	return 0;
}