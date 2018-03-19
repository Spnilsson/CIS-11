#include <iostream>
#include <math.h>

using namespace std;

static int binVal(int binNum[], int binBit, int num);

int main() {
	int binArray[15];
	int sum = 0;
	cout << "The purpose of this program is to tell the decimal value of a 16-bit binary number.\n\n";

	for (int i = 15; i >= 0; i--) {
		cout << "Enter bit number " << 16 - i << ": ";
		cin >> binArray[i];
	}

	cout << "The value of your binary number is: ";
	for (int i = 15; i >= 0; i--) {
		int value = 15 - i;
		sum += binVal(binArray, value, i);
		
	}
	cout << sum;

	return 0;
}

int binVal(int binNum[], int binBit, int num)
{
	int result = binNum[num] * pow(2, binBit);
	return result;
}
