package quiz;

public class B09_Gugudan2 {
	
	/*
	구구단 출력
	
	1. 가로로 출력해보세요
	
	2단 : 2X1=2 2X2=4 .... // 한줄이 내용이 몇번 바뀌느냐, 맨 앞이 바깥for문, 오른쪽이 안쪽for문
	3단 : ..
	
	2. 세로로 출력해보세요
	2단    3단   ... // 줄이 바뀌면서 곱하기가 바뀌기 때문에, 바깥쪽 반복문이 곱이 되는것,
	2X1=2 3X1=3
	2X2=4 3X2=6
	.	  .
	.	  .
	
	
	*/

	public static void main(String[] args) {

		// 1번
		for(int dan = 2; dan <=9; ++dan) {
			System.out.printf("%d단 :\t", dan);
			
			for(int gop = 1; gop <=9; ++gop) {
				System.out.printf("%d x %d = %d\t", dan, gop, dan*gop);
			}
			System.out.println();
			
		}
		
		// 2번
		for(int gop = 1; gop <=9; ++gop) {
			for(int dan = 2; dan <=9; ++dan) {
				System.out.printf("%d단 :\t", dan);
			System.out.printf("%d x %d = %d\t", dan, gop, dan*gop);
			}
		}
	}
}