package com.tour.increpas;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class MySQLConnectionTest {
	// MySQL이 제대로 동작 하는지 테스트 하는 Junit Class

	@Inject
	private DataSource ds;

	@Test
	public void testConnection() throws Exception {

		try (Connection con = ds.getConnection()) {

			System.out.println("mysql 연결 성공 " + con + " ");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}