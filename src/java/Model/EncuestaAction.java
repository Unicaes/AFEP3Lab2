/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Model.Admin;
import Model.Singleton;
import com.opensymphony.xwork2.ActionSupport;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bryan
 */
public class EncuestaAction extends ActionSupport {
    private String msg = "";
    int ctr = 0;
    private String wtd;
    @Override
    public String execute() throws Exception {

        try {
            if (Integer.parseInt(wtd)==0) {
                Singleton.OpenEncuestas=false;
                ctr=0;
            }else{
                Singleton.OpenEncuestas=true;
                ctr=1;
            }
            if (ctr > 0) {
                msg = "Encuestas Abiertas";
            } else {
                msg = "Encuestas cerradas";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "WTD";
    }

    public String getMsg() {
        return msg;
    }

    public int getCtr() {
        return ctr;
    }

    public String getWtd() {
        return wtd;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setCtr(int ctr) {
        this.ctr = ctr;
    }

    public void setWtd(String wtd) {
        this.wtd = wtd;
    }
    
}
