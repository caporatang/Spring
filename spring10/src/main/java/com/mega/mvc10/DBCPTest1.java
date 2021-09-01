package com.mega.mvc10;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.mysql.cj.xdevapi.PreparableStatement;

public class DBCPTest1 {

	public static void main(String[] args) {
		// DBCP
		// vector < < Arraylist와 비슷한 개념이지만 기능이 훨신 더 많다.
		DBConnectionMgr dbcp = DBConnectionMgr.getInstance(); // 생성된 10 개를 사용할수 있게 객체 생성(싱글톤)
		try {
			// jdbc 1 , 2 단계를 해준다.
			// 드라이버설정, db연결까지 dbcp가 다 해주었음.
			Connection con = dbcp.getConnection();
			// dbcp에서 연결해놓은 것 중 하나의 연결을 꺼내와서 3,4단계를 구현하면 된다.
			
			String sql = "insert into member values ('sun','sun','sun','sun')";
			// 3단계 객체생성 , 4단계 리턴은 똑같이 코드한다.
			PreparedStatement ps = con.prepareStatement(sql);
			ps.executeUpdate();

			// dbcp 10개중에서 하나 꺼내썼던 con(참조형 주소)를 다시 되돌려 준것이다.
			dbcp.freeConnection(con, ps); // ps < < freeConnection 안에 넣을 경우에 램에 남아있는 ps를 빨리 날려보내준다.
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
