#include <iostream>

using namespace std;

int main() {
	
	cout << "How mach value do you want to insert: ";
	int array_size;
	cin >> array_size;
	
	int first_array[array_size];
	for (int x = 0; x < array_size; x++) {
		cout << "Enter value no (" << x+1 << "): ";
		cin >> first_array[x];
	}
	// Display
	for (int x = 0; x < array_size; x++) {
		cout << x << "\t" << first_array[x] << endl;
	}
	
	cout << "Enter index that you want to add value: ";
	int new_index;
	cin >> new_index;
	cout << "Enter new value: ";
	int new_value;
	cin >> new_value;
	
	// New Array
	int new_array[array_size+1];
	for(int i = 0; i <= array_size; i++) {
		if(i == new_index) {
			new_array[i+1] = first_array[i]; 
			new_array[i] = new_value;
		}
		else if(i < new_index) {
			new_array[i] = first_array[i];
		}
		else {
			new_array[i+1] = first_array[i]; 
		}
	}
	
	// Display
	for(int i = 0; i <= array_size; i++) {
		cout << i << "\t" << new_array[i] << endl;
	}
	
	return 0;
}