#include <iostream>

using namespace std;

int main() {
	
	// Declaring
	int marks[10] = {97,85,73,62,53,41,39,27,18,9};
	int min_index, max_index, found_index, avg_index;
	
	while(true) {
		min_index = 0;
		max_index = 9;
		found_index = -1;
		avg_index = min_index + max_index / 2;
		
		// Input from user
		cout << "Enter a value to search: ";
		int user_input;
		cin >> user_input;
		
		// Binary Search
		if(user_input == marks[avg_index]) {
			found_index = avg_index;
		}
		else {
			if (user_input > marks[avg_index]) {
				max_index = avg_index - 1;
			}
			else {
				min_index = avg_index + 1;
			}
			// Searching for index
			for(int i = min_index; i <= max_index; i++) {
				if(user_input == marks[i]) {
					found_index = i;
					break;
				}
			}
		}
		
		// Print message
		if(found_index != -1) {
			cout << "The value " << user_input << " is in index no [" << found_index << "]." << endl;
		}
		else {
			cout << "The value you have entered is not in this array." << endl;
		}

		
		// Ask for closing
		cout << "Enter (y) to continue and any other key to exit: ";
		char ask;
		cin >> ask;
		if(ask != 'y')
			break;
	}
	
	return 0;
}
