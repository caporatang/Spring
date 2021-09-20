package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DTO.OksusuMemberDTO;


public class OksusuMemberDAO {

	Connection con;
	
	// DAO는 테이블당 하나
	public OksusuMemberDAO() {
		super();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1. connector연결 성공!!!");
			String url = "jdbc:mysql://localhost:3306/oksusu?useSSL=false";
			String username = "root";
			String password = "1234";
			con = DriverManager.getConnection(url, username, password);
			System.out.println("2. oksusu db연결 성공!!!");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public int create(OksusuMemberDTO memberDTO) {
		
		int result = 0;
		try {
			// 3. sql문을 만든다.
			String sql = "insert into member values (?, ?, ?, ?, ?, ?)";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, memberDTO.getmemberId());
			ps.setString(2, memberDTO.getmemberPw());
			ps.setString(3, memberDTO.getmemberName());
			ps.setString(4, memberDTO.getmemberBusinees());
			ps.setString(5, memberDTO.getmemberAddress());
			ps.setString(6, memberDTO.getmemberTel());

			System.out.println("3. sql문 생성 성공!!!");

			// 4. sql문을 mysql로 전송한다.
			result = ps.executeUpdate();
			System.out.println("4. sql문 전송 전송");
			System.out.println(result);
		 
		} catch (SQLException e) {
			System.out.println("2~4번 에러>> DB관련된 에러");
			e.printStackTrace();
		}

		return result;

	}// creat 닫기

	public int update(OksusuMemberDTO memberDTO) {

		System.out.println("전달된 id는 " + memberDTO.getmemberId());
		System.out.println("전달된 pw는 " + memberDTO.getmemberPw());
		System.out.println("전달된 name는 " + memberDTO.getmemberName());
		System.out.println("전달된 business는 " + memberDTO.getmemberBusinees());
		System.out.println("전달된 address는 " + memberDTO.getmemberAddress());
		System.out.println("전달된 tel는 " + memberDTO.getmemberTel());
		int result = 0;
		try {
			// 자바와 db연결하는 프로그램(JDBC) 순서
			// 1. jdbc connector설정
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1. connector연결 성공!!!");

			// 2. java에서 db로 연결:
			// 연결할 주소url(ip, port, db명), username, password
			String url = "jdbc:mysql://localhost:3306/oksusu?useSSL=false";
			String username = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, username, password);
			System.out.println("2. oksusu db연결 성공!!!");

			// 3. sql문을 만든다.
			String sql = "update member set memberPw = ?, memberName = ?, memberAddress = ?, memberTel = ? where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, memberDTO.getmemberPw());
			ps.setString(2, memberDTO.getmemberName());
			ps.setString(3, memberDTO.getmemberAddress());
			ps.setString(4, memberDTO.getmemberTel());

			System.out.println("3. sql문 생성 성공!!!");

			// 4. sql문을 mysql로 전송한다.
			result = ps.executeUpdate();
			System.out.println("4. sql문 전송 전송");
			System.out.println(result);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("1번 에러>> 드라이버 없음!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("2~4번 에러>> DB관련된 처리하다가 요지경");
		}
		return result;

	}

	public int delete(OksusuMemberDTO memberDTO) {
		// 굳이 bag을 쓸 필요없이 id만 지워주면 되므로 String하나만 가져와도 됨.
		System.out.println("전달된 id는 " + memberDTO.getmemberId());
		System.out.println("전달된 pw는 " + memberDTO.getmemberPw());
		System.out.println("전달된 name는 " + memberDTO.getmemberName());
		System.out.println("전달된 business는 " + memberDTO.getmemberBusinees());
		System.out.println("전달된 address는 " + memberDTO.getmemberAddress());
		System.out.println("전달된 tel는 " + memberDTO.getmemberTel());
		int result = 0;

		try {
			// 자바와 db연결하는 프로그램(JDBC) 순서
			// 1. jdbc connector설정
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1. connector연결 성공!!!");

			// 2. java에서 db로 연결:
			String url = "jdbc:mysql://localhost:3306/oksusu?useSSL=false";
			String username = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, username, password);
			System.out.println("2. oksusu db연결 성공!!!");

			// 3. sql문을 만든다.
			String sql = "delete from member where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, memberDTO.getmemberId());

			System.out.println("3. sql문 생성 성공!!!");

			// 4. sql문을 mysql로 전송한다.
			result = ps.executeUpdate();
			System.out.println("4. sql문 전송 전송");
			System.out.println(result);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("1번 에러>> 드라이버 없음!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("2~4번 에러>> DB관련된 처리하다가 요지경");
		}

		return result;
	}

	public OksusuMemberDTO read(OksusuMemberDTO dto) {

		OksusuMemberDTO dto2 = new OksusuMemberDTO();
		ResultSet rs = null; // 참조형이기때문에 null 로 초기화
		try {
			// 3. sql문을 만든다.
			String sql = "select * from member where memberId = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getmemberId());
			System.out.println("3. sql문 생성 성공!!!");
			// 4. sql문을 mysql로 전송한다.
			rs = ps.executeQuery();
			System.out.println("4. sql문 전송 전송");
			if (rs.next()) {
				System.out.println("검색 결과가 있음.");
				dto2.setmemberId(rs.getString(1));
				dto2.setmemberPw(rs.getString(2));
				dto2.setmemberBusinees(rs.getString(4));
				
					
			} else {
				System.out.println("검색 결과가 없음.");
			}
		} catch (SQLException e) { // 2-4단계
			System.out.println("2-4번 에러>> DB관련된 처리하다 에러발생함..!!!!");
			e.printStackTrace();
		}
		return dto2;
	} // read end

	public String read2(OksusuMemberDTO memberDTO) {

		ResultSet rs = null; // 테이블 형태의 참조형
		// 메서드 안에서 선언된 변수는 모두 지역변수 이고 지역변수는 반드시 초기화해준다.
		String result = "";
		try {
			// 1. jdbc connector설정
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1. connector연결 성공!!!");

			// 2. java에서 db로 연결:
			String url = "jdbc:mysql://localhost:3306/oksusu?useSSL=false";
			String username = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, username, password);
			System.out.println("2. oksusu db연결 성공!!!");

			// 3. sql문을 만든다.
			String sql = "select * from member set memberPw = ? where memberId= ?";
			// *: 모든 컬럼 가져 올게요.
			// DB와 관련된 인덱스만 1부터 시작하므로 ?도 1부터 시작
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, memberDTO.getmemberPw());

			System.out.println("3. sql문 생성 성공!!!");

			// 4. sql문을 mysql로 전송한다.
			rs = ps.executeQuery();
			System.out.println("4. sql문 전송 전송");
			// System.out.println("검색결과는 >>" + rs.next());
			// next()는 한 row씩 확인하고 false가 나오면 정지
			if (rs.next()) {
				System.out.println("검색결과가 있음");
				// 가방을 만들어서 table에서 하나의 row를 꺼내준 다음 가방에 넣어야함.
				result = rs.getString(2);

			} else {
				System.out.println("검색결과가 없음");
			}
		} catch (ClassNotFoundException e) {
			System.out.println("1번 에러>> 드라이버 없음!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("2~4번 에러>> DB관련된 처리하다가 요지경");
			e.printStackTrace();
		}
		return result;
	}// read2 닫기

}
