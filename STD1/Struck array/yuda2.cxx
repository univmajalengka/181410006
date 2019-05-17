#include <iostream>
#include <string>
#include <sstream>
using namespace std;

struct datamhs_t {
  string title;
  int year;
} datamhs [3];

void printdatamhs (datamhs_t datamhs);

int main ()
{
  string mystr;
  int n;

  for (n=0; n<3; n++)
  {
    cout << "Enter title: ";
    getline (cin,datamhs[n].title);
    cout << "Enter year: ";
    getline (cin,mystr);
    stringstream(mystr) >> datamhs[n].year;
  }

  cout << "\n anda memasukan data mahasiswa:\n";
  for (n=0; n<3; n++)
    printdatamhs (datamhs[n]);
  return 0;
}

void printdatamhs (datamhs_t datamhs)
{
  cout << datamhs.title;
  cout << " (" << datamhs.year << ")\n";
}