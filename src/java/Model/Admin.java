/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Admin {
	
	// method for create connection
	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/BPRTSM_afelab", "root", "1234");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// method for save user data in database
	public int registerUser(String nombre, String sexo, String deporte_favorito,String nivel_de_estudio,String tema_favorito,String fecha_registrada) throws Exception {
		int i = 0;
		try {
			String sql = "INSERT into bprtsm_encuesta(nombre,sexo,deporte_favorito,nivel_de_estudio,tema_favorito,fecha_registrada) VALUES (?,?,?,?,?,?)";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, nombre);
			ps.setString(2, sexo);
			ps.setString(3, deporte_favorito);
			ps.setString(4, nivel_de_estudio);
			ps.setString(5, tema_favorito);
			ps.setString(6, fecha_registrada);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for fetch saved user data
	public ResultSet report() throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT encuesta_id,nombre,sexo,deporte_favorito,nivel_de_estudio,tema_favorito,fecha_registrada FROM BPRTSM_encuesta";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}
        // method for fetch saved user data
	public ResultSet Graphicreport() throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM GraphicView";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

//	// method for fetch old data to be update
//	public ResultSet fetchUserDetails(String uemail) throws SQLException, Exception {
//		ResultSet rs = null;
//		try {
//			String sql = "SELECT UNAME,UEMAIL,UPASS,UDEG FROM STRUTS2CRUD WHERE UEMAIL=?";
//			PreparedStatement ps = getConnection().prepareStatement(sql);
//			ps.setString(1, uemail);
//			rs = ps.executeQuery();
//			return rs;
//		} catch (Exception e) {
//			e.printStackTrace();
//			return null;
//		} finally {
//			if (getConnection() != null) {
//				getConnection().close();
//			}
//		}
//	}

//	// method for update new data in database
//	public int updateUserDetails(String uname, String uemail, String upass, String udeg, String uemailhidden)
//			throws SQLException, Exception {
//		getConnection().setAutoCommit(false);
//		int i = 0;
//		try {
//			String sql = "UPDATE STRUTS2CRUD SET UNAME=?,UEMAIL=?,UPASS=?,UDEG=? WHERE UEMAIL=?";
//			PreparedStatement ps = getConnection().prepareStatement(sql);
//			ps.setString(1, uname);
//			ps.setString(2, uemail);
//			ps.setString(3, upass);
//			ps.setString(4, udeg);
//			ps.setString(5, uemailhidden);
//			i = ps.executeUpdate();
//			return i;
//		} catch (Exception e) {
//			e.printStackTrace();
//			getConnection().rollback();
//			return 0;
//		} finally {
//			if (getConnection() != null) {
//				getConnection().close();
//			}
//		}
//	}

	// method for delete the record
	public int deleteUserDetails(String uemail) throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "DELETE FROM BPRTSM_encuesta WHERE encuesta_id=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, uemail);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}
}