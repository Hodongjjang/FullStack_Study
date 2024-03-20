package quiz;

import java.util.Scanner;

public class B00_DollarSwap {

	public static void main(String[] args) {
	
		/*
		  원화 -> 현재 환율로 몇 달러 인지 알려주는 프로그램을 만들어보세요.
		  현재 환율 : 검색 <1,300.00> , 소수점 2자리까지 나오도록		  
		*/
	Scanner sc = new Scanner(System.in);
	System.out.println("환전하실 금액을 입력해주세요 >>");
	int num = sc.nextInt();
	
	double won = 1300.5;
	
	double exchange = num * won;
	
	System.out.printf("%.2f달러 입니다\n",exchange);
	
		
		

	}

}
