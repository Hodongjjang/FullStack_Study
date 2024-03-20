package quiz;

import java.util.Arrays;

public class B14_LottoStudy{

	/*
	 * 1. 랜덤으로 로또 당첨번호 생성 (1~45의 중복없는 랜덤 숫자 7개, 마지막번호는 보너스 번호) +) 1~45숫자를 뽑고, 예전에 뽑은
	 * 숫자가 있다면 같은 숫자인지 확인한다. 중복이 있다고 판단되면 다시 뽑는다.
	 * 
	 * 2. 1등에 당첨될때까지 로또 번호를 자동으로 계속 생성하여 몇 번 만에 당첨되었는지 출력
	 * 
	 * 3. 1등에 당첨 될 때까지 뽑는 동안 2등에 당첨되는 번호들이 있다면 출력 2등은 : 1등 번호 5개 + a
	 */

	public static void main(String[] args) {

		int[] winNums = new int[7];

		int i = 0;
		int len = winNums.length;

		while (i < len) {
			winNums[i] = (int) (Math.random() * 45 + 1);
			int j = 0;

			boolean duplicate = false;
			while (j < i) {
				if (winNums[j] == winNums[i]) {
					duplicate = true;
					break;
				}
				++j;
			}
			if (!duplicate) {
				++i;
			}
		}

		for (i = 0; i < len; ++i) {
			System.out.printf("winNums [%d 번] :  %d\n", i, winNums[i]);
		}

		int[] tiketNums = new int[6];
		int buycount = 0;
		while (true) {
			i = 0;
			len = tiketNums.length;
			while (i < len) {
				tiketNums[i] = (int) (Math.random() * 45 + 1);

				int j = 0;
				boolean duplicate = false;
				while (j < i) {
					if (tiketNums[j] == tiketNums[i]) {
						duplicate = true;
						break;
					}
					++j;
				}
				if (!duplicate) {
					++i;
				}
			}
			++buycount;

			boolean hasBonusNum = false;
			int winCount = 0;

			for (int tiketIndex = 0; tiketIndex < tiketNums.length; ++tiketIndex) {
				for (int winIndex = 0; winIndex < winNums.length; ++winIndex) {
					if (tiketNums[tiketIndex] == winNums[winIndex]) {
						if (winIndex == 6) {
							hasBonusNum = true;
						}
						++winCount;
					}
				}
			}
			if(winCount == 5) {
				System.out.println("3등당첨");
			}

			if (winCount == 6) {
				System.out.printf("%s vs %s\n", Arrays.toString(winNums), Arrays.toString(tiketNums));
				if (hasBonusNum) {
					System.out.println("2등 당첨 " + buycount + "회");
				}
				System.out.println(buycount + "회 만에 1등 당첨");
				break;
			}

		}
	}
}
