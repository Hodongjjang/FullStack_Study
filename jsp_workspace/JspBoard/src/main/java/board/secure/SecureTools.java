package board.secure;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SecureTools {

	public  static String genHashPassword(String password) {
		try {
			byte[] hashed = MessageDigest.getInstance("SHA256").digest(password.getBytes());
			
			StringBuilder bulider = new StringBuilder();
			
			for(byte b : hashed) {
				bulider.append(String.format("%02X", b));
			}
			return bulider.toString();
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			
			return null;
		}
	}
}
