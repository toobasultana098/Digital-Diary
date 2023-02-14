package p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Connect {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;

	public Connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "");
			System.out.println("Connected");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean saveRegn(String email, String name, String mob, String password) {
		boolean b = false;
		Encrypt e1 = new Encrypt();
		String eemail = e1.encrypt(email);
		String emob = e1.encrypt(mob);
		String epassword = e1.encrypt(password);
		String sql = "INSERT INTO person(email,name,mob,password)VALUES(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, eemail);
			ps.setString(2, name);
			ps.setString(3, emob);
			ps.setString(4, epassword);
			int n = ps.executeUpdate();
			if (n > 0)
				b = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public boolean checklogin(String email, String password) {
		boolean b = false;
		Encrypt e1 = new Encrypt();
		String eemail = e1.encrypt(email);
		String epassword = e1.encrypt(password);
		String sql = "select * from person Where email=? and password=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, eemail);
			ps.setString(2, epassword);
			rs = ps.executeQuery();
			if (rs.next()) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public getset getData(String email) {
		Encrypt e1 = new Encrypt();
		String eemail = e1.encrypt(email);
		getset s1 = null;
		String sql = "SELECT * FROM person WHERE email=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, eemail);
			rs = ps.executeQuery();
			if (rs.next()) {
				s1 = new getset();
				String mail = rs.getString(1);
				String demail = e1.decrypt(mail);
				s1.setemail(demail);
				s1.setname(rs.getString(2));
				String mob = rs.getString(3);
				String dmob = e1.decrypt(mob);
				s1.setmob(dmob);
			}
		} catch (SQLException e) {
		}
		return s1;
	}

	public boolean saveContact(String name, String alias, String contact, String address, String email, String uid) {
		boolean b = false;
		Encrypt e1 = new Encrypt();
		String euid = e1.encrypt(uid);
		String econtact = e1.encrypt(contact);
		String sql = "INSERT INTO teledir(uid,name,alias,contact,address,email)VALUES(?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, euid);
			ps.setString(2, name);
			ps.setString(3, alias);
			ps.setString(4, econtact);
			ps.setString(5, address);
			ps.setString(6, email);
			int n = ps.executeUpdate();
			if (n > 0)
				b = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public boolean saveCard(String uid, String type, String bname, String branch, String accno, String expdate,
			String cvv, String pin) {
		boolean b = false;
		Encrypt e1 = new Encrypt();
		String euid = e1.encrypt(uid);
		String etype = e1.encrypt(type);
		String ebname = e1.encrypt(bname);
		String ebranch = e1.encrypt(branch);
		String eaccno = e1.encrypt(accno);
		String eexpdate = e1.encrypt(expdate);
		String ecvv = e1.encrypt(cvv);
		String epin = e1.encrypt(pin);
		String sql = "INSERT INTO card(uid,type,bname,branch,accno,expdate,cvv,pin)VALUES(?,?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, euid);
			ps.setString(2, etype);
			ps.setString(3, ebname);
			ps.setString(4, ebranch);
			ps.setString(5, eaccno);
			ps.setString(6, eexpdate);
			ps.setString(7, ecvv);
			ps.setString(8, epin);
			int n = ps.executeUpdate();
			if (n > 0)
				b = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public boolean savePin(String uid, String menu, String show, String edit, String delete, String qone, String qtwo,
			String qthree) {
		boolean b = false;
		String sql = "INSERT INTO tblsetting(uid,menu,tblshow,tbledit,tbldelete,qone,qtwo,qthree)VALUES(?,?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setString(2, menu);
			ps.setString(3, show);
			ps.setString(4, edit);
			ps.setString(5, delete);
			ps.setString(6, qone);
			ps.setString(7, qtwo);
			ps.setString(8, qthree);
			int n = ps.executeUpdate();
			if (n > 0)
				b = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public ArrayList<getset> getContact(String uid) {
		ArrayList<getset> arr = new ArrayList<getset>();
		getset s1;
		Encrypt e1 = new Encrypt();
		String euid = e1.encrypt(uid);
		String sql = "SELECT * FROM teledir where uid=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, euid);
			rs = ps.executeQuery();
			while (rs.next()) {
				s1 = new getset();
				s1.setuid(rs.getString(1));
				s1.setname(rs.getString(2));
				s1.setalias(rs.getString(3));
				String dcont = e1.decrypt(rs.getString(4));
				s1.setcontact(dcont);
				s1.setaddress(rs.getString(5));
				s1.setemail(rs.getString(6));
				arr.add(s1);
			}
		} catch (SQLException e) {
		}
		return arr;
	}

	public boolean checkContShowPin(String uid, String c, String pin) {
		boolean b = false;
		String sql = "select * from tblsetting Where uid=? and menu=? and tblshow=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setString(2, c);
			ps.setString(3, pin);
			rs = ps.executeQuery();
			if (rs.next()) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public ArrayList<getset> getCard(String uid) {
		ArrayList<getset> arr = new ArrayList<getset>();
		getset s1;
		Encrypt e1 = new Encrypt();
		String euid = e1.encrypt(uid);
		String sql = "SELECT * FROM card where uid=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, euid);
			rs = ps.executeQuery();
			while (rs.next()) {
				s1 = new getset();
				s1.setuid(e1.decrypt(rs.getString(1)));
				s1.settype(e1.decrypt(rs.getString(2)));
				s1.setbname(e1.decrypt(rs.getString(3)));
				s1.setbranch(e1.decrypt(rs.getString(4)));
				s1.setaccno(e1.decrypt(rs.getString(5)));
				s1.setexpdate(e1.decrypt(rs.getString(6)));
				s1.setcvv(e1.decrypt(rs.getString(7)));
				s1.setpin(e1.decrypt(rs.getString(8)));
				arr.add(s1);
			}
		} catch (SQLException e) {
		}
		return arr;
	}

	public boolean checkCardShowPin(String uid, String c, String pin) {
		boolean b = false;
		String sql = "select * from tblsetting Where uid=? and menu=? and tblshow=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setString(2, c);
			ps.setString(3, pin);
			rs = ps.executeQuery();
			if (rs.next()) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public boolean checkPasswordExistCont(String uid) {
		boolean b = false;
		String sql = "select * from tblsetting where uid=? and menu=\'contact\'";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			rs = ps.executeQuery();
			if (rs.next()) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public boolean checkPasswordExistCard(String uid) {
		boolean b = false;
		String sql = "select * from tblsetting where uid=? and menu=\'card\'";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			rs = ps.executeQuery();
			if (rs.next()) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public boolean changePin(String uid, String menu, String show, String edit, String delete) {
		boolean b = false;
		String sql = "UPDATE tblsetting set tblshow=?, tbledit=?, tbldelete=? where uid=? and menu=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, show);
			ps.setString(2, edit);
			ps.setString(3, delete);
			ps.setString(4, uid);
			ps.setString(5, menu);
			int n = ps.executeUpdate();
			if (n > 0)
				b = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public boolean quesCheckOne(String uid, String qone) {
		boolean b = false;
		String sql = "select * from tblsetting where uid=? and qone=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setString(2, qone);
			rs = ps.executeQuery();
			if (rs.next()) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public boolean quesCheckTwo(String uid, String qtwo) {
		boolean b = false;
		String sql = "select * from tblsetting where uid=? and qtwo=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setString(2, qtwo);
			rs = ps.executeQuery();
			if (rs.next()) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public boolean quesCheckThree(String uid, String qthree) {
		boolean b = false;
		String sql = "select * from tblsetting where uid=? and qthree=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setString(2, qthree);
			rs = ps.executeQuery();
			if (rs.next()) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}
}