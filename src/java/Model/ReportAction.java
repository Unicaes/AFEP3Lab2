/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.opensymphony.xwork2.ActionSupport;

public class ReportAction extends ActionSupport {

	private static final long serialVersionUID = 6329394260276112660L;
	ResultSet rs = null;
	EmpBean bean = null;
	List<EmpBean> beanList = null;
	Admin admin = new Admin();
	private boolean noData = false;

	@Override
	public String execute() throws Exception {
		try {
			beanList = new ArrayList();
			rs = admin.report();
			int i = 0;
			if (rs != null) {
				while (rs.next()) {
					i++;
					bean = new EmpBean();
					bean.setEncuesta_id(rs.getInt("encuesta_id"));
					bean.setNombre(rs.getString("nombre"));
					bean.setSexo(rs.getString("sexo"));
					bean.setDeporte_favorito(rs.getString("deporte_favorito"));
					bean.setNivel_de_estudio(rs.getString("nivel_de_estudio"));
					bean.setTema_favorito(rs.getString("tema_favorito"));
					bean.setFecha_registrada(rs.getDate("fecha_registrada"));
					beanList.add(bean);
				}
			}
			if (i == 0) {
				noData = false;
			} else {
				noData = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "REPORT";
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public List<EmpBean> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<EmpBean> beanList) {
		this.beanList = beanList;
	}
}