package service;

import java.sql.*;
import java.util.*;

public class ServiceDAO {
	public static ServiceDTO readDB (int sno) {
		ServiceDTO Service = new ServiceDTO();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select * from servicelist where sno =?";
		
		try {
			con = connect.DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setInt(1, sno);
			rs = ps.executeQuery();
			if(rs.next()) {
				Service.setSno(rs.getInt("sno"));
				Service.setNickname(rs.getString("nickname"));
				Service.setPassword(rs.getString("password"));
				String text = rs.getString("text");
				Service.setText(text);
				String content = rs.getString("content");
				Service.setContent(content);
				Service.setRegdate(rs.getDate("regdate"));
				Service.setUpdatedate(rs.getDate("updatedate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connect.DBCon.close(con, ps, rs);
		}
		return Service;
	}
	
	public static int insertDB (ServiceDTO service) {
		int result = -1;
		Connection con = null;
		PreparedStatement ps = null;
		
		String sql = "insert into servicelist "
				+ "(sno,nickname,password,text,content) "
				+ "values (?,?,?,?,?)";
		
		try {
			con = connect.DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setInt(1, service.getSno());
			System.out.println("Sno 는 : " + service.getSno());
			ps.setString(2, service.getNickname());
			System.out.println("닉네임 는 : " + service.getNickname());
			ps.setString(3, service.getPassword());
			ps.setString(4, service.getText());
			ps.setString(5, service.getContent());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connect.DBCon.close(con, ps, null);
		}
		return result;
	}
	
	public static int deleteDB (int sno) {
		int result = -1;
		
		Connection con = null;
		PreparedStatement ps = null;
		
		String sql = "delete from servicelist where sno =?";
		
		try {
			con = connect.DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setInt(1, sno);
			result=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connect.DBCon.close(con, ps, null);
		}
		return result;
	}
	
	public static int updateDB (ServiceDTO service) {
		int result = -1;
		Connection con = null;
		PreparedStatement ps = null;
		
		String sql = "update servicelist set "
				+ "text =?,content =?, updatedate = sysdate where sno = ?";
		
		try {
			con = connect.DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, service.getText());
			ps.setString(2, service.getContent());
			ps.setInt(3, service.getSno());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connect.DBCon.close(con, ps, null);
		}
		return result;
	}
	
	public static int totalCnt() {
		int cnt = 0;
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select count(sno) from servicelist";
		
		try {
			con = connect.DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt(1);
			} else {
				cnt = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	
	public static int maxCnt() {
		int cnt = 0;
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select max(sno) from servicelist";
		
		try {
			con = connect.DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public static List<ServiceDTO> readDBList(int pageNo) {
		List<ServiceDTO> list = new ArrayList<ServiceDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int pageLine = 5;
		int end = pageNo * pageLine;
		int start = end - pageLine + 1;
		String sql = "select b.* from (select rownum rn, a.* from (select * from servicelist order by sno desc)a)b where b.rn between " + start + " and " + end;
		
		/* select * from
		(select sno, rownum rn from tbl_board order by sno desc) natural join tbl_board
		where rn between 1 and 5 order by rn; */ // 도 가능
		
		try {
			con = connect.DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				ServiceDTO service = new ServiceDTO();
				service.setSno(rs.getInt("sno"));
				service.setNickname(rs.getString("nickname"));
				service.setText(rs.getString("text"));
				service.setContent(rs.getString("content"));
				service.setRegdate(rs.getDate("regdate"));
				service.setHit(rs.getInt("hit"));
				// service.setUpdatedate(rs.getDate("updatedate"));
				list.add(service);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static void updateHit(int sno) {
		String sql = "update servicelist set hit = hit+1 where sno = ?";
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = connect.DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setInt(1, sno);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connect.DBCon.close(con, ps, null);
		}
	}
}
