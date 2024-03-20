package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class HikariTest {
	public static void main(String[] args) {
		// 커넥션 풀 설정 객체
		HikariConfig config = new HikariConfig();
		
		config.setJdbcUrl("jdbc:oracle:thin:@localhost:1521:XE");
		config.setUsername("hr");
		config.setPassword("1234");
		config.addDataSourceProperty("diverClassName","oracle.jdbc.driver.OracleDriver" );
		config.addDataSourceProperty("cachePrepStmts", "true");
		config.addDataSourceProperty("prepStmtCacheSize", "250");
		config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");
		
		// 설정 객체를 전달하여 거넥션 풀 객체를 생성
		HikariDataSource ds = new HikariDataSource(config);
		
		// new SqlSession
	}
	
}
