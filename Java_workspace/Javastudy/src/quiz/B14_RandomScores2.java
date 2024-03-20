package quiz;

import java.util.Arrays;
import java.util.Random;

public class B14_RandomScores2 {

	/*
	 * 1. 300개의 랜덤 점수 생성 (0~20000) 
	 * 2. 해당 점수들을 한 줄에 5개씩 보기 좋게 출력 
	 * 3. 모든 점수들의 평균을 출력 (소수 셋째자리에서 반올림) 
	 * 4. 가장 높은 점수와 가장 낮은 점수를 찾아 해당 점수와 몇 번째 사람인지 출력
	 */

	public static void main(String[] args) {
		Random ran = new Random();
		int[] scores = new int[300];
		int count = 0;
		int sum = 0;

		for (int i = 0; i < scores.length; ++i) {
			scores[i] = (int) (Math.random() * (20000 - 0) + 1);
			++count;
			if(count % 5 == 0) {
				System.out.println();
		}
		
		System.out.println(Arrays.toString(scores));
		}
	}
}