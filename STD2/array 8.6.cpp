#include<iostream>
#include<conio.h>
using namespace std;

int main()
{
	//pendefinisan array berdimensi dua
	//dari pemberian nilai awal
	
	int huruf_A[8][8] =
	{
		{ 0, 1, 1, 1, 1, 1, 0, 0 } ,
		{ 0, 1, 0, 0, 0, 1, 0, 0 } ,
		{ 0, 1, 0, 0, 0, 1, 0, 0 } ,
		{ 1, 1, 1, 1, 1, 1, 1, 0 } ,
		{ 1, 1, 0, 0, 0, 0, 1, 0 } ,
		{ 1, 1, 0, 0, 0, 0, 1, 0 } ,
		{ 1, 1, 0, 0, 0, 0, 1, 0 } ,
		{ 0, 0, 0, 0, 0, 0, 0, 0 } ,
	};
	int i,j;
	
	//clrscr ();					//hapus layar
	
	for (i = 0; i<8; i++)
	{
		for(j = 0; j<8; j++)
			if (huruf_A [i] [j] == 1)
				cout<< '\xDB';
			else
				cout<< '\x20';	//spasi
		cout<< endl;			// pindah baris	
	}
}
