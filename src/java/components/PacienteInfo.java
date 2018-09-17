package components;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.beans.*;
import java.io.Serializable;

/**
 *
 * @author Andres
 */
public class PacienteInfo implements Serializable {
    
    private String nombre, apellidos, afiliacion, amai, autoreporte, cohabitacion;
    private int katz, edad, barthel, lawton, expediente;

    public String getCohabitacion() {
        return cohabitacion;
    }

    public int getExpediente() {
        return expediente;
    }

    public void setExpediente(int expediente) {
        this.expediente = expediente;
    }

    public void setCohabitacion(String cohabitacion) {
        this.cohabitacion = cohabitacion;
    }

    public String getAfiliacion() {
        return afiliacion;
    }

    public void setAfiliacion(String afiliacion) {
        this.afiliacion = afiliacion;
    }

    public String getAmai() {
        return amai;
    }

    public void setAmai(String amai) {
        this.amai = amai;
    }

    public String getAutoreporte() {
        return autoreporte;
    }

    public void setAutoreporte(String autoreporte) {
        this.autoreporte = autoreporte;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getBarthel() {
        return barthel;
    }

    public void setBarthel(int barthel) {
        this.barthel = barthel;
    }

    public int getLawton() {
        return lawton;
    }

    public void setLawton(int lawton) {
        this.lawton = lawton;
    }
    
    public PacienteInfo() {}

    public void setNombre(String nombre) {

    this.nombre=nombre;
    }

    public String getNombre(){

    return nombre;
    }
    
    public void setApellidos(String apellidos) {

    this.apellidos=apellidos;
    }

    public String getApellidos(){

    return apellidos;
    }
    
    public void setKatz(int katz) {

    this.katz=katz;
    }

    public int getKatz(){

    return katz;
    }
    
    public String getevaluacionFuncional (){
        if (katz >= 3){
            return "Todo en orden";
        } else {
            return "Aguas";
        }
    }

    void getNombre(String nombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    void getApellidos(String apellidos) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    void setKatz(String evfuncionalkatz) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    void setApellido(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
