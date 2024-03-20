package quiz;

import java.util.Scanner;

public class B06_CheckDigit2 {

	public static void main(String[] args) {
		//사용자가 숫자를 입력하면 해당 숫자가 몇 자리 숫자인지 알려주는 프로그램을 만들어보세요. 		
	Scanner sc = new Scanner(System.in);
	System.out.println("숫자를 입력해주세요");
	int num = sc.nextInt();
	int count = 0;
	
	for(int i = 0; i < num; num/=10) {
		++count;
	}
	System.out.println(count);
	
		
		
	}
}
