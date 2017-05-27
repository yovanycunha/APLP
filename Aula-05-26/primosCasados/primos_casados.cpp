#include <iostream>


using namespace std;

bool isPrime(int n) {

    for (int i =( n - 1); i >= 2; i--) {
        if ( (n % i) == 0) {
            return false;
        }
    }
    return true;
}

bool isPrimosCasados(int n) {

    if (isPrime(n) && isPrime(n + 2)) {
        return true;
    }
    return false;
}

int main() {

    int k;

    std::cin >> k;

    for (int i = 1; i < k - 2; i++) {
        if(isPrimosCasados(i)) {
            std::cout << i << " " << i + 2 << endl;
        }
    }
    return 0;
}
