#include <iostream>
#include <string>

using namespace std;

bool palavraIngrata (string entrada) {

  int vogais;

  for (int i = 0; i < entrada.length(); i++) {
    if (entrada[i] == 'a' || entrada[i] == 'A' ||
        entrada[i] == 'e' || entrada[i] == 'E' ||
        entrada[i] == 'i' || entrada[i] == 'I' ||
        entrada[i] == 'o' || entrada[i] == 'O' ||
        entrada[i] == 'u' || entrada[i] == 'U') {
      return false;
    }
  }
  return true;
}

int main() {
  int qtdIngratas = 0;
  string entrada = "";
  bool flag = true;
  string ingratas[3];

  do {
    getline(cin, entrada);

    if (palavraIngrata(entrada)) {
      ingratas[qtdIngratas] = entrada;
      qtdIngratas++;
    }
    if (qtdIngratas >= 3) {
      flag = false;
    }
  } while(flag);

  for (int i = 0; i < 3; i++) {
    cout << ingratas[i] << endl;
  }

  return 0;
}
