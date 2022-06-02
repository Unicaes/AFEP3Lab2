/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

public class EmpBean {
	
	// generate getter and setters
	private String nombre, sexo, deporte_favorito, nivel_de_estudio,tema_favorito;
	int encuesta_id;
        
        Date fecha_registrada;

    

    public int getEncuesta_id() {
        return encuesta_id;
    }

    public void setEncuesta_id(int encuesta_id) {
        this.encuesta_id = encuesta_id;
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

    public int getId() {
        return encuesta_id;
    }

    public Date getFecha_registrada() {
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

    public void setId(int id) {
        this.encuesta_id = id;
    }

    public void setFecha_registrada(Date fecha_registrada) {
        this.fecha_registrada = fecha_registrada;
    }
        
}