/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class RegisterAction extends ActionSupport {

    private static final long serialVersionUID = 2139116285823340125L;
    private String nombre, sexo, deporte_favorito, nivel_de_estudio, tema_favorito;
    private String fecha_registrada;
    private String msg = "";
    Admin admin = null;
    int ctr = 0;

    @Override
    public String execute() throws Exception {
        admin = new Admin();

        try {
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
            fecha_registrada=dtf.format(LocalDateTime.now());
            ctr = admin.registerUser(nombre, sexo, deporte_favorito, nivel_de_estudio, tema_favorito, fecha_registrada);
            if (ctr > 0) {
                msg = "Registration Successfull";
            } else {
                msg = "Some error";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REGISTER";
    }

    public String getNombre() {
        return nombre;
    }

    public String getSexo() {
        return sexo;
    }

    public String getDeporte_favorito() {
        return deporte_favorito;
    }

    public String getNivel_de_estudio() {
        return nivel_de_estudio;
    }

    public String getTema_favorito() {
        return tema_favorito;
    }

    public String getFecha_registrada() {
        return fecha_registrada;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public void setDeporte_favorito(String deporte_favorito) {
        this.deporte_favorito = deporte_favorito;
    }

    public void setNivel_de_estudio(String nivel_de_estudio) {
        this.nivel_de_estudio = nivel_de_estudio;
    }

    public void setTema_favorito(String tema_favorito) {
        this.tema_favorito = tema_favorito;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCtr() {
        return ctr;
    }

    public void setCtr(int ctr) {
        this.ctr = ctr;
    }
}
