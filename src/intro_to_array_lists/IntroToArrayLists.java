package intro_to_array_lists;

import java.util.ArrayList;

public class IntroToArrayLists {
	public static void main(String[] args) {
		//1. Create an array list of Strings
		//   Don't forget to import the ArrayList class
		ArrayList<String> list1 = new ArrayList<String>();
		//2. Add five Strings to your list
		list1.add("Apple");
		list1.add("Banana");
		list1.add("Carrot");
		list1.add("Grape");
		list1.add("Strawberry");
		
		//3. Print all the Strings using a standard for-loop
		//for (int i = 0; i < 5; i++) {
			//String s = list1.get(i);
			//System.out.println(s);
		//}
		//4. Print all the Strings using a for-each loop
		//for (String s : list1) {
			//System.out.println(s);
		//}
		//5. Print only the even numbered elements in the list.
		//for (int i = 0; i < 5; i++) {
			//if (i % 2 == 0) {
				//String s = list1.get(i);
				//System.out.println(s);
			//}
			//}
			
		//6. Print all the Strings in reverse order.
		for (int i = list1.size() -1; i >= 0; i--) {
				String s = list1.get(i);
				System.out.println(s);
			}
		//7. Print only the Strings that have the letter 'e' in them.
		for (int i = 0; i < 5; i++) {
			String s = list1.get(i);
			if (s.contains("e") ) {
				System.out.println(s);
			}
				
			}
	}
}
