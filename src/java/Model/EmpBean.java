/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

public class EmpBean {
	
	// generate getter and setters
	private String uname, uemail, upass, udeg;
	int srNo;

    public String getUname() {
        return uname;
    }

    public String getUemail() {
        return uemail;
    }

    public String getUpass() {
        return upass;
    }

    public String getUdeg() {
        return udeg;
    }

    public int getSrNo() {
        return srNo;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public void setUdeg(String udeg) {
        this.udeg = udeg;
    }

    public void setSrNo(int srNo) {
        this.srNo = srNo;
    }
        
}