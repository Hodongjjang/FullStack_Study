package pj.choice;

import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JPanel;

public class ChoiceSelectMenu extends JPanel {
	
	public ChoiceSelectMenu(ChoiceFrameSelect mainFrame) {
	
		JPanel pan1 = new JPanel(new GridLayout(3,3));
		JPanel pan2 = new JPanel(new GridLayout(3,3));
		JButton but1 = new JButton("dd");
		JButton but2 = new JButton("ss");
		
		CardLayout card = new CardLayout();
		
		but1.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				card.next(mainFrame);
				
				
			}
		});
		
		
		pan1.add(but1);
		pan2.add(but2);
		add(pan1);
		add(pan2);
		setLayout(card);
		setVisible(true);

	}

}
