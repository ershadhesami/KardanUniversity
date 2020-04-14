#include <iostream>
#include <string>

using namespace std;

int main() {
	
	int array_length = 5, nums[array_length], search_num, index = -1;
	
	for(int i = 0; i < array_length; i++) {
		cout << "Enter number for index no (" << i << "): ";
		cin >> nums[i];
	}
	
	while(true) {
		cout << "\nEnter the number that you want to search: ";
		cin >> search_num;
		
		for(int i = 0; i < array_length; i++) {
			if(nums[i] == search_num) {
				index = i;
				break;
			}
		}
		
		if(index != -1) {
			cout << "Value " << search_num << " is at index no " << index << endl;
		}
		else {
			cout << "Not Found!" << endl;
		}
		
		cout << "Do you want to exit(y for yes, n for no): ";
		char ask;
		cin >> ask;
		if(ask == 'y')
			break;
		index = -1;
	}
	
	return 0;
}
