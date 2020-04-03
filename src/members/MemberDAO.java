package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private String url = "jdbc:oracle:thin:@192.168.0.40:1521:xe";
	private String user = "jsp", pwd = "1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;

	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<MemberDTO> memberView() {
		String sql = "select * from members";
		ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				MemberDTO m = new MemberDTO();
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setName(rs.getString("name"));
				m.setAddr(rs.getString("addr"));
				m.setTel(rs.getString("tel"));
				members.add(m);
				System.out.print("====="+m.getId()+"=====");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return members;
	}

	public MemberDTO userInfo(String id) {
		System.out.println("================" + id + "=============");
		String sql = "select * from members where id = ?";
		MemberDTO member = null;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPwd(rs.getString("pwd"));
				member.setName(rs.getString("name"));
				member.setAddr(rs.getString("addr"));
				member.setTel(rs.getString("tel"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;

	}

	public int chkuser(String id, String pwd) {
		String id2 = null;
		String pwd2 = null;
		String sql = "select * from members where id = ?";
		int i = 2;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				id2 = rs.getString("id");
				pwd2 = rs.getString("pwd");
				if(id.equals(id2)) {
					if(pwd.equals(pwd2)) {
						i =  0;
					}else {
						i =  1;
					}
				}else {
					i = 2;
				}
			}	
		}catch(SQLException e) {
			e.printStackTrace();
		}return i;
	}
	
	public int changeUser(String id, String name, String addr, String tel) {
		int i = 0;
		String sql = "update members set name=?, addr=?, tel=? where id=?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			System.out.println("=========sql="+name);
			ps.setString(2, addr);
			System.out.println("=========sql="+addr);
			ps.setString(3, tel);
			System.out.println("=========sql="+tel);
			ps.setString(4, id);
			System.out.println("=========sql="+id);
			ps.executeUpdate();
			i = 1;
			System.out.println("여기?3");
			return i;
		}catch(SQLException e) {
			System.out.println("여기?4");
			return i;
		}
		
	}
	public int delete(String id, String pwd) {
		System.out.println("=== 삭제 확인 ====");
		System.out.println(id+pwd);
		int i = 0;
		String sql = "delete from members where id=? and pwd=?";
	
			try {
				con = DriverManager.getConnection(url, user, pwd);
				ps = con.prepareStatement(sql);
				ps.setString(1, id);
				ps.setString(2, pwd);
				ps.executeUpdate();
				i = 1;
				return i;
			} catch (SQLException e) {
				e.printStackTrace();
				return i;
			}
	}
	
	public int regChk(String id, String pwd, String name, String addr, String tel) {
		int i = 0;
		String sql = "select * from members where id=?";
		String id2 = null;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				id2 = rs.getString("id");
				System.out.println(id2);
			}
			if(id2==null) {
				String sql2 = "insert into members values(?,?,?,?,?)";
				con = DriverManager.getConnection(url, user, pwd);
				ps = con.prepareStatement(sql2);
				ps.setString(1, id);
				ps.setString(2,  pwd);
				ps.setString(3,  name);
				ps.setString(4,  addr);
				ps.setString(5,  tel);
				ps.executeQuery();
				i = 1;
				return i;
			}else {
				return i;
			}
			
		}catch(SQLException e) {
			i = -1;
			return i;
		}
	}
}
