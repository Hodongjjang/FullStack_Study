package pj.choice;

import java.awt.BorderLayout;

import javax.swing.JButton;
import javax.swing.JPanel;

public class ChoiceFrameSelect extends JPanel {
	
	
	ChoiceSelectMenu ChoiceSelectMenu;
	JButton ChoiceSelectPrevBtn;
	JButton ChoiceSelectNextBtn;
	
	public ChoiceFrameSelect(ChoiceFrame mainFrame) {
		BorderLayout border = new BorderLayout(40,40);
		setLayout(border);
		
		ChoiceSelectPrevBtn = new ChoiceSelectPrevBtn(this);
		ChoiceSelectNextBtn = new ChoiceSelectNextBtn(this);
		
		ChoiceSelectMenu = new ChoiceSelectMenu(this);
		
		add(ChoiceSelectMenu, BorderLayout.CENTER);
		add(ChoiceSelectPrevBtn, BorderLayout.EAST);
		add(ChoiceSelectNextBtn, BorderLayout.WEST);

	}
}
