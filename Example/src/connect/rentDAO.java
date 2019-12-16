package connect;

import java.sql.*;
import java.util.*;

public class rentDAO {
	public static rentDTO readDB (String userId) {
		rentDTO rent = new rentDTO();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select * from rentuser where id=?";
		
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			rs = ps.executeQuery();
			if(rs.next()) {
				rent.setName(rs.getString("name"));
				rent.setId(rs.getString("id"));
				rent.setPassword(rs.getString("password"));
				rent.setTel(rs.getString("tel"));
				rent.setMyun(rs.getString("myun"));
				rent.setGender(rs.getInt("gender"));
			} else {
				rent.setId(null);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBCon.close(con, ps, rs);
		}
		return rent;
	}
	
	public static List<rentDTO> readDBList() {
		List<rentDTO> list = new ArrayList<rentDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select * from rentuser";
		
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				rentDTO user = new rentDTO();
				user.setName(rs.getString("name"));
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				user.setTel(rs.getString("tel"));
				user.setMyun(rs.getString("myun"));
				user.setGender(rs.getInt("gender"));
				list.add(user);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	public static int insertDB(rentDTO user) {
		int result = -1;
		Connection con = null;
		PreparedStatement ps = null;
		String query = "Insert into rentuser "
				+ "(id,name,password,tel,myun,gender) "
				+ "values(?,?,?,?,?,?)";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(query);
			ps.setString(1, user.getId());
			ps.setString(2, user.getName());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getTel());
			ps.setString(5, user.getMyun());
			ps.setInt(6, user.getGender());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
	
	public static int deleteDB(String userId) {
		int result = -1;
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "delete rentuser where id =?";
		
		try {
			con=DBCon.getCon();
			ps=con.prepareStatement(sql);
			ps.setString(1, userId);
			result=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
	
	public static int updateDB(rentDTO rent) {
		int result = -1;
		Connection con = null;
		PreparedStatement ps = null;
		
		String query = "update rentuser set "
				+ "password=?,tel=?"
				+ "where id=?";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(query);
			ps.setString(1, rent.getPassword());
			ps.setString(2, rent.getTel());
			ps.setString(3, rent.getId());
			ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
	
	public static int MaxCnt() {
		int cnt = 0;
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select max(rentno) from carrent";
		
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBCon.close(con, ps, rs);
		}
		return cnt;
	}
	
	public static int reservationInsert(rentDTO rent) {
		int result = -1;
		
		Connection con = null;
		PreparedStatement ps = null;
		
		String sql = "insert into carrent (rentno,userid,username,usertel,usermyun) "
				+ "values ((select max(rentno) + 1 from carrent),?,?,?,?)";
		
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, rent.getUserid());
			ps.setString(2, rent.getUsername());
			ps.setString(3, rent.getUsertel());
			ps.setString(4, rent.getUsermyun());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
}