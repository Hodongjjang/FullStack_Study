package quiz;

import java.util.Scanner;

public class B04_MakeSeason_1 {

	/*
	 * 사용자가 몇 월인지 입력하면 해당 하는 계절이 무엇인지 출력하기 1. switch문 2. if문
	 */

	public static void main(String[] args) {

		
		/// System.out.println(month+"월은"+season+"입니다."); 이걸 출력받고 싶은데 String season을 못만들음..;_;
		Scanner sc = new Scanner(System.in);
		System.out.println("몇월인지 적어주세요>> ");
		
		int month = sc.nextInt();
		switch (month) {
			case 1: 
				System.out.println("겨울입니다.");
				break;
			case 2, 3, 4:
				System.out.println("봄입니다.");
				break;
			case 5, 6, 7, 8:
				System.out.println("여름입니다.");
				break;
			case 9, 10, 11:
				System.out.println("가을입니다.");
				break;
			case 12:
				System.out.println("겨울입니다.");
				break;
			default :
				System.out.println("1부터 12사이의 숫자만 입력해주세요");
				break;
		}
	}
}
