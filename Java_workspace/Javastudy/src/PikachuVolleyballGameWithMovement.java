


	import java.awt.event.KeyEvent;
	import java.awt.event.KeyListener;

	public class PikachuVolleyballGameWithMovement {

	    private static int playerPosition = 0; // 플레이어의 초기 위치

	    public static void main(String[] args) {
	        System.out.println("Pikachu Volleyball Game 시작!");

	        // 키 이벤트를 처리할 KeyListener를 생성
	        KeyListener keyListener = new KeyListener() {
	            @Override
	            public void keyTyped(KeyEvent e) {
	                // 사용하지 않음
	            }

	            @Override
	            public void keyPressed(KeyEvent e) {
	                // 키가 눌렸을 때 호출되는 메서드
	                if (e.getKeyChar() == 'a' && playerPosition > 0) {
	                    playerPosition--;
	                } else if (e.getKeyChar() == 'd' && playerPosition < 4) {
	                    playerPosition++;
	                }
	            }

	            @Override
	            public void keyReleased(KeyEvent e) {
	                // 사용하지 않음
	            }
	        };

	        // KeyListener를 JFrame에 등록
	        // (여기서는 콘솔 기반이라 JFrame을 사용하지 않고 콘솔에서 키 이벤트를 받아 처리합니다)
	        System.out.println("a: 왼쪽으로 이동, d: 오른쪽으로 이동");

	        while (true) {
	            System.out.println("현재 플레이어 위치: " + playerPosition);
	            // 게임 로직 추가

	            // 대기 시간을 가상으로 설정
	            try {
	                Thread.sleep(1000);
	            } catch (InterruptedException ex) {
	                ex.printStackTrace();
	            }
	        }
	    }
	}


