package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DTO.ADFoodDTO;

public class ADFoodDAO {
	// bag 받아와서 DB 로 넣는곳.
	Connection con;

	public ADFoodDAO() {
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
	} //Constructor end
	public int create(ADFoodDTO dto) throws Exception {
		int result = 0;
		try {
			String sql = "insert into ADFood values (null ,?, ?, ?, ?, ?, ?, ?, 0, ?, ? )";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getAd_Writer());
			ps.setString(2, dto.getAd_Name());
			ps.setString(3, dto.getAd_Title());
			ps.setString(4, dto.getAd_Info());
			ps.setString(5, dto.getAd_IAddress());
			ps.setString(6, dto.getAd_ITime());
			ps.setString(7, dto.getAd_Img());
			ps.setFloat(8, dto.getAd_Map_1());
			ps.setFloat(9, dto.getAd_Map_2());

			System.out.println("3. sql문 생성 성공!!!");
			result = ps.executeUpdate();
			System.out.println("4. sql문 전송 전송");
			System.out.println("SQL문 수행 개수 " + result + "개");
			System.out.println(result);
		} catch (SQLException e) { // 2-4단계
			System.out.println("2-4번 에러>> DB관련된 처리하다 에러발생함..!!!!");
			e.printStackTrace(); // DB 상세에러 내용 확인
		}
		return result;
	}// create end

	public int delete(ADFoodDTO dto) throws Exception {
		int result = 0;
		try {
			String sql = "delete from ADFood where ad_Writer = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getAd_Writer()); // 추후 글을 작성한 본인만 삭제 권한.
			System.out.println("3. sql문 생성 성공!!!");
			result = ps.executeUpdate();
			System.out.println("4. sql문 전송 전송");
			System.out.println("SQL문 수행 개수 " + result + "개");
			System.out.println(result);
		} catch (SQLException e) { // 2-4단계
			System.out.println("2-4번 에러>> DB관련된 처리하다 에러발생함..!!!!");
			e.printStackTrace(); // DB 상세에러 내용 확인
		}
		return result;
	} // delete end

	public int update(ADFoodDTO dto) {
		int result = 0;
		try {
			// 3. sql문을 만든다.
			String sql = "update ADFood set ad_Title = ?, ad_info = ?, ad_IAddress = ?, ad_ITime = ?, ad_img = ?, ad_Name = ?, ad_Map_1 = ?, ad_Map_2 = ? where ad_writer = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getAd_Title());
			ps.setString(2, dto.getAd_Info());
			ps.setString(3, dto.getAd_IAddress());
			ps.setString(4, dto.getAd_ITime());
			ps.setString(5, dto.getAd_Img());
			ps.setString(6, dto.getAd_Name());
			ps.setFloat(7, dto.getAd_Map_1());
			ps.setFloat(8, dto.getAd_Map_2());
			ps.setString(9, dto.getAd_Writer());
			System.out.println("3. sql문 생성 성공!!!");
			// 4. sql문을 mysql로 전송한다.
			result = ps.executeUpdate();
			System.out.println("4. sql문 전송 전송");
			System.out.println(result);
		} catch (SQLException e) { // 2-4단계
			System.out.println("2-4번 에러>> DB관련된 처리하다 에러발생함..!!!!");
			e.printStackTrace(); // DB 상세에러 내용 확인
		}
		return result;
	} // update end

	public ADFoodDTO read(ADFoodDTO dto) {
		System.out.println("전달된 id는 " + dto.getAd_Writer());
		ADFoodDTO dto2 = new ADFoodDTO();
		ResultSet rs = null; // 참조형이기때문에 null 로 초기화
		try {
			// 3. sql문을 만든다.
			String sql = "select * from ADFood where ad_Writer = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getAd_Writer());
			System.out.println("3. sql문 생성 성공!!!");
			// 4. sql문을 mysql로 전송한다.
			rs = ps.executeQuery();
			System.out.println("4. sql문 전송 전송");
			if (rs.next()) {
				System.out.println("검색 결과가 있음.");
				String ad_Num = rs.getString(1);
				String ad_Writer = rs.getString(2);
				String ad_Name = rs.getString(3);
				String ad_Title = rs.getString(4);
				String ad_Info = rs.getString(5);
				String ad_IAddress = rs.getString(6);
				String ad_Itime = rs.getString(7);
				String ad_Img = rs.getString(8);
				int ad_Recommend = rs.getInt(9);
				float ad_Map_1 = rs.getFloat(10);
				float ad_Map_2 = rs.getFloat(11);
				System.out.println(ad_Num + " "+ ad_Name+ " " + ad_Writer + " " + ad_Info + " " + ad_Title + " " + ad_IAddress + " "
						+ ad_Itime + " " + ad_Img + " " + ad_Recommend + " " + ad_Map_1 + " " + ad_Map_2);
				dto2.setAd_Num(ad_Num);
				dto2.setAd_Writer(ad_Writer);
				dto2.setAd_Name(ad_Name);
				dto2.setAd_Info(ad_Info);
				dto2.setAd_Title(ad_Title);
				dto2.setAd_IAddress(ad_IAddress);
				dto2.setAd_ITime(ad_Itime);
				dto2.setAd_Img(ad_Img);
				dto2.setAd_Recommend(ad_Recommend);
				dto2.setAd_Map_1(ad_Map_1);
				dto2.setAd_Map_2(ad_Map_2);
			} else {
				System.out.println("검색 결과가 없음.");
				
			}
		} catch (SQLException e) { // 2-4단계
			System.out.println("2-4번 에러>> DB관련된 처리하다 에러발생함..!!!!");
			e.printStackTrace();
		}
		return dto2;
	} // read end

	public ArrayList<ADFoodDTO> read() {
		ArrayList<ADFoodDTO> list = new ArrayList<ADFoodDTO>();
		ResultSet rs = null; // 참조형이기때문에 null 로 초기화
		try {
			// 3. sql문을 만든다.
			String sql = "select * from ADFood order by ad_Recommend desc";   // 08.04 수정 : ADFood 뒷구문은 좋아요 기준 정렬 구문
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("3. sql문 생성 성공!!!");
			// 4. sql문을 mysql로 전송한다.
			rs = ps.executeQuery();
			System.out.println("4. sql문 전송 전송");
			while (rs.next()) {
				ADFoodDTO dto2 = new ADFoodDTO(); // 가방 만듬.
				System.out.println("검색 결과가 있음.");
				dto2.setAd_Num((rs.getString(1)));
				dto2.setAd_Writer(rs.getString(2));
				dto2.setAd_Name(rs.getString(3));
				dto2.setAd_Title(rs.getString(4));
				dto2.setAd_Info(rs.getString(5));
				dto2.setAd_IAddress(rs.getString(6));
				dto2.setAd_ITime(rs.getString(7));
				dto2.setAd_Img(rs.getString(8));
				dto2.setAd_Recommend(rs.getInt(9));
				dto2.setAd_Map_1(rs.getFloat(10));
				dto2.setAd_Map_2(rs.getFloat(11));
				System.out.println(dto2);
				list.add(dto2);
				System.out.println(list.size());
			} // while
		} catch (SQLException e) { // 2-4단계
			System.out.println("3-4번 에러>> DB관련된 처리하다 에러발생함..!!!!");
			e.printStackTrace();
		}
		return list;
	} // read end

	// 버튼 ++ (추천)
	public int like(String ad_Name) {
		int result = 0;
		try {
			// 3. sql문을 만든다.
			String sql = "update ADFood set ad_Recommend = ad_Recommend + 1 where ad_Name = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ad_Name);
			
			System.out.println("3. sql문 생성 성공!!!");
			// 4. sql문을 mysql로 전송한다.
			result = ps.executeUpdate();
			System.out.println("4. sql문 전송 전송");
			System.out.println(result);
		} catch (SQLException e) { // 2-4단계
			System.out.println("2-4번 에러>> DB관련된 처리하다 에러발생함..!!!!");
			e.printStackTrace(); // DB 상세에러 내용 확인
		}
		return result;
	} // update end
	
	
	
	
} // class
