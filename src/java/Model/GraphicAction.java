/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bryan
 */
public class GraphicAction extends ActionSupport {

    private static final long serialVersionUID = 6329394260276112660L;
    ResultSet rs = null;
    private String PorcentajeMujeres, PorcentajeHombre;
    private int TotalEncuestas;
    Admin admin = new Admin();
    @Override
    public String execute() throws Exception {
        try {

            rs = admin.Graphicreport();
            if (rs != null) {
                while (rs.next()) {
                    PorcentajeMujeres = (rs.getString("Porcentaje Mujeres"));
                    PorcentajeHombre = (rs.getString("Porcentaje Hombres"));
                    TotalEncuestas=rs.getInt("Total Encuestas");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "GRAPHIC_REPORT";
    }


    public String getPorcentajeMujeres() {
        return PorcentajeMujeres;
    }

    public String getPorcentajeHombre() {
        return PorcentajeHombre;
    }

    public void setPorcentajeMujeres(String PorcentajeMujeres) {
        this.PorcentajeMujeres = PorcentajeMujeres;
    }

    public void setPorcentajeHombre(String PorcentajeHombre) {
        this.PorcentajeHombre = PorcentajeHombre;
    }

    public int getTotalEncuestas() {
        return TotalEncuestas;
    }

    public void setTotalEncuestas(int TotalEncuestas) {
        this.TotalEncuestas = TotalEncuestas;
    }
    

}
