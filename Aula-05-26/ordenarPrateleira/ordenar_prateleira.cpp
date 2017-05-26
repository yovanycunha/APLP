#include <iostream>

int main() {
  int qtd = 0;
  string entrada = "";

  getline(cin, qnt);

  string entradas[qnt];


  for (int i = 0; i < qtd; i++) {
    getline(cin,entradas[i]);
  }

  entradas = entradas.sort();



  return 0;
}
