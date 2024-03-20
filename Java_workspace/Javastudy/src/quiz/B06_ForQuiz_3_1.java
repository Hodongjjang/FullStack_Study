package quiz;

public class B06_ForQuiz_3_1 {
	/*
	#for 문을 사용해 숫자 출력
	
	1. 0 3 6 9 12 .... 93 96 99
	2. -35 -28 -21 .... 0 7 14 ... 35
	3. 100 200 300.... 800 900 1000
	4. 100 99 98 97 .... 5 4 3 2 1 0
	5. 0 1 2 3... 7 8 9 0 1 2 3 . .. 7 8 9... (30번) 
	6. 10 9 8 7 ...3 2 1 10 9 8... 3 2 1 ...3 2 1 (30번)
	7. 7 77 777 7777 7777...7777777777 

	*/
	
	public static void main(String[] args) {
		for(int i = 0; i < 100; ++i) {
			if(i % 3 == 0) {
			System.out.print(i+" ");
			}		
		}
		System.out.println();
	
		for(int i = -35; i < 35 ; ++i) {
			if(i % 7 == 0) {
				System.out.print(i+ " ");
			}
		}
		System.out.println();
	
		for(int i = 100; i < 1001; i += 100) {
			System.out.print(i + " ");
		}
		System.out.println();
		
		for(int i = 100; i >= 0; --i) {
			System.out.print(i + " ");
		}
		System.out.println();
 //----------------------------------------------------------------------------------------------------------		
		int count = 0;
		
 		for(int i = 0; i < 300; ++i) {
 			if(count == 10) {
 				count -= 10;
 			
 			}
 			System.out.print(count + " ");
 			count++;
		}
 		System.out.println();
		 
	}
}
