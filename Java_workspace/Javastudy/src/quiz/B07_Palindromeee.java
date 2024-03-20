package quiz;

import java.util.Scanner;

public class B07_Palindromeee {
	/*
	Palindrome(회문(回文))
	사용자가 단어를 입력하면 해당 단어가 좌우대칭인지 판별해주는 프로그램을 만들어보세요.
	
	해결방법
	1> 맨 앞부터 글자를 하나씩 비교해 나간다(절반까지만)
	2> 단어를 뒤집고 비교해서 똑같으면 좌우대칭이다
	
	*/

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("단어를 입력해주세요 >>");
		String word = sc.next();
		
		for(int i = 0; i < word.length(); ++i) {
			if(word.charAt(i) == word.charAt(word.length() - 1 - i) ) {
				System.out.println("좌우 대칭입니다~");
			} else {
				System.out.println(i + "좌우 대칭이 아닙니다~ ");
			}
		}
		
	}
}
