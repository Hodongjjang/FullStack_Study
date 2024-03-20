package quiz;

import java.util.Scanner;

public class B03_If_AppleQuiz {
	public static void main(String[] args) {
		
		/*
		 사과를 10개씩 담을 수 있는 바구니가 있을때
		 사용자가 사과의 개수를 입력하면
		 사과를 모두 담기 위해 바구니가 총 몇 개 필요한지 알려주는 프로그램 만들어보세요.
		*/
		
		// 2차> 풀리긴하지만, - 개수의 사과에 대해서는 대처할 수 없음
		Scanner sc = new Scanner(System.in);
		System.out.println("사과의 갯수를 입력해주세요 >>");
		int applecount = sc.nextInt();
		int basketcount = applecount / 10;
		
		if (applecount < 0){
			System.out.println("잘못입력하셨습니다 다시 입력해주세요");
		} else if(applecount % 10 != 0) {
			System.out.println(basketcount + 1);
		} else {
			System.out.println(basketcount);
		}
		
			
	}
}
