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
    private int TotalFutbol,TotalBasquet,TotalJockey,TotalBeisbal,TotalGolf;
    private int nulo,basico,intermedio,superior;
    private int Television,Cocina,Tecnologia,Musica,Deportes;
    EmpBean bean = null;
    List<EmpBean> beanList = null;
    Admin admin = new Admin();
    
    private int CantHombres,CantMujeres;

    @Override
    public String execute() throws Exception {
        try {

            rs = admin.Graphicreport();
            if (rs != null) {
                while (rs.next()) {
                    PorcentajeMujeres = (rs.getString("Porcentaje Mujeres"));
                    PorcentajeHombre = (rs.getString("Porcentaje Hombres"));
                    TotalEncuestas = rs.getInt("Total Encuestas");
                    CantHombres=rs.getInt("Total Hombres");
                    CantMujeres=rs.getInt("Total Mujeres");
                    TotalFutbol=rs.getInt("Total Futbol");
                    TotalBasquet=rs.getInt("Total basquetball");
                    TotalJockey=rs.getInt("Total jockey");
                    TotalBeisbal=rs.getInt("Total Beisbal");
                    TotalGolf=rs.getInt("Total Golf");
                    nulo=rs.getInt("nulo");
                    basico=rs.getInt("basico");
                    intermedio=rs.getInt("intermedio");
                    superior=rs.getInt("superior");
                    Television = rs.getInt("Television");
                    Cocina=rs.getInt("Cocina");
                    Tecnologia=rs.getInt("Tecnologia");
                    Musica = rs.getInt("Musica");
                    Deportes=rs.getInt("Deportes");
                }
            }
//            rs = admin.report();
//            if (rs != null) {
//                while (rs.next()) {
//                    bean = new EmpBean();
//                    bean.setEncuesta_id(rs.getInt("encuesta_id"));
//                    bean.setNombre(rs.getString("nombre"));
//                    bean.setSexo(rs.getString("sexo"));
//                    bean.setDeporte_favorito(rs.getString("deporte_favorito"));
//                    bean.setNivel_de_estudio(rs.getString("nivel_de_estudio"));
//                    bean.setTema_favorito(rs.getString("tema_favorito"));
//                    bean.setFecha_registrada(rs.getDate("fecha_registrada"));
//                    beanList.add(bean);
//                }
//            }
            for (int i = 0; i < beanList.size(); i++) {
                if (beanList.get(i).getSexo().equals("Masculino")) {
                    CantHombres++;
                }else{
                    CantMujeres++;
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

    public int getCantHombres() {
        return CantHombres;
    }

    public int getCantMujeres() {
        return CantMujeres;
    }

    public void setCantHombres(int CantHombres) {
        this.CantHombres = CantHombres;
    }

    public void setCantMujeres(int CantMujeres) {
        this.CantMujeres = CantMujeres;
    }

    public List<EmpBean> getBeanList() {
        return beanList;
    }
    
    public void setBeanList(List<EmpBean> beanList) {
        this.beanList = beanList;
    }

    public int getTotalFutbol() {
        return TotalFutbol;
    }

    public int getTotalBasquet() {
        return TotalBasquet;
    }

    public int getTotalJockey() {
        return TotalJockey;
    }

    public int getTotalBeisbal() {
        return TotalBeisbal;
    }

    public int getTotalGolf() {
        return TotalGolf;
    }

    public void setTotalFutbol(int TotalFutbol) {
        this.TotalFutbol = TotalFutbol;
    }

    public void setTotalBasquet(int TotalBasquet) {
        this.TotalBasquet = TotalBasquet;
    }

    public void setTotalJockey(int TotalJockey) {
        this.TotalJockey = TotalJockey;
    }

    public void setTotalBeisbal(int TotalBeisbal) {
        this.TotalBeisbal = TotalBeisbal;
    }

    public void setTotalGolf(int TotalGolf) {
        this.TotalGolf = TotalGolf;
    }

    public int getNulo() {
        return nulo;
    }

    public int getBasico() {
        return basico;
    }

    public int getIntermedio() {
        return intermedio;
    }

    public int getSuperior() {
        return superior;
    }

    public void setNulo(int nulo) {
        this.nulo = nulo;
    }

    public void setBasico(int basico) {
        this.basico = basico;
    }

    public void setIntermedio(int intermedio) {
        this.intermedio = intermedio;
    }

    public void setSuperior(int superior) {
        this.superior = superior;
    }

    public int getTelevision() {
        return Television;
    }

    public int getCocina() {
        return Cocina;
    }

    public int getTecnologia() {
        return Tecnologia;
    }

    public int getMusica() {
        return Musica;
    }

    public int getDeportes() {
        return Deportes;
    }

    public void setTelevision(int Television) {
        this.Television = Television;
    }

    public void setCocina(int Cocina) {
        this.Cocina = Cocina;
    }

    public void setTecnologia(int Tecnologia) {
        this.Tecnologia = Tecnologia;
    }

    public void setMusica(int Musica) {
        this.Musica = Musica;
    }

    public void setDeportes(int Deportes) {
        this.Deportes = Deportes;
    }
    
}
