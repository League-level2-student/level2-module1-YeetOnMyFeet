package intro_to_array_lists;

import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class GuestBook {
	JFrame frame = new JFrame();
	JPanel panel = new JPanel();
	JButton add = new JButton();
	JButton view = new JButton();
	// Create a GUI with two buttons. One button reads "Add Name" and the other button reads "View Names". 
	// When the add name button is clicked, display an input dialog that asks the user to enter a name. Add
	// that name to an ArrayList. When the "View Names" button is clicked, display a message dialog that displays
	// all the names added to the list. Format the list as follows:
	// Guest #1: Bob Banders
	// Guest #2: Sandy Summers
	// Guest #3: Greg Ganders
	// Guest #4: Donny Doners
	ArrayList<String> names = new ArrayList<String>();
	void start() {
		names.add("Bob Banders");
		names.add("Sandy Summers");
		names.add("Greg Ganders");
		names.add("Donny Doners");
		frame.add(panel);
		panel.add(add);
		panel.add(view);
		
	}
	public static void main(String[] args) {
		
	}
}
