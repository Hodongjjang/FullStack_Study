package firstProject;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;


public class MenuFrame extends JFrame {

	JButton homeBtn = new JButton("홈");

	JButton icecreamBtn = new JButton("아이스크림");
	JButton icecakeBtn = new JButton("아이스케이크");
	JButton coffeeBtn = new JButton("커피");
	JButton beverageBtn = new JButton("음료");
	JButton dessertBtn = new JButton("디저트");
   
   public MenuFrame() {
	   setTitle("MenuSelect");
		setLayout(new BorderLayout());

		JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
		buttonPanel.add(homeBtn);
		add(buttonPanel, BorderLayout.NORTH);

		JPanel mainPanel = new JPanel(new GridLayout(5,1));
		add(mainPanel, BorderLayout.CENTER);

		JPanel categoryPanel = new JPanel();
		categoryPanel.setLayout(new FlowLayout(FlowLayout.CENTER, 1, 1));
		// 카테고리 버튼 추가
		mainPanel.add(icecreamBtn);
		mainPanel.add(icecakeBtn);
		mainPanel.add(coffeeBtn);
		mainPanel.add(beverageBtn);
		mainPanel.add(dessertBtn);

		icecreamBtn.setPreferredSize(new Dimension(100, 40));
		icecakeBtn.setPreferredSize(new Dimension(100, 40));
		coffeeBtn.setPreferredSize(new Dimension(100, 40));
		beverageBtn.setPreferredSize(new Dimension(100, 40));
		dessertBtn.setPreferredSize(new Dimension(100, 40));

		icecreamBtn.addActionListener(new MenuButtonListener("아이스크림"));
		icecakeBtn.addActionListener(new MenuButtonListener("아이스케이크"));
		coffeeBtn.addActionListener(new MenuButtonListener("커피"));
		beverageBtn.addActionListener(new MenuButtonListener("음료"));
		dessertBtn.addActionListener(new MenuButtonListener("디저트"));

		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setBounds(300, 300, 500, 800);
		setVisible(true);
	}

	// 메뉴 버튼에 대한 액션 리스너
	private class MenuButtonListener implements ActionListener {
		private String itemName;

		public MenuButtonListener(String itemName) {
			this.itemName = itemName;
		}

		@Override
		public void actionPerformed(ActionEvent e) {
			// 선택된 메뉴 정보 처리
			System.out.println(itemName + " 선택됨");
		}
	}

	public static void main(String[] args) {
		new Category_2();
	}
}
