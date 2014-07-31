/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisImp.Service;

import Conexion.Helper;
import SisImp.modelo.Cuota;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrador
 */
public class Prueba {

    public static void main(String[] args) {
        
        String a = "Información básica de un proceso.docx";
        System.out.println(""+QuitarEspeciales(a));
        
        
        List<Cuota> lista = new ArrayList<Cuota>();
        Helper cn = null;
        ResultSet tabla = null;
        Cuota obj;
        try {
            cn = new Helper();
            String codcli = "123456";
            tabla = cn.executeDataset("call lsCuotas", new Object[]{codcli});
            while (tabla.next()) {
                obj = new Cuota();
                obj.setCod_cuota(tabla.getInt("cod_cuota"));
                obj.setCod_contrato(tabla.getInt("cod_contrato"));
                obj.setFch_cuota(tabla.getString("fch_cuota"));
                obj.setNro_cuota(tabla.getInt("nro_cuota"));
                obj.setFch_vencimiento(tabla.getString("fch_vencimiento"));
                obj.setFch_pago(tabla.getString("fch_pago"));
                obj.setEst_cuota(tabla.getString("est_cuota"));
                //obj.setCod_comprobante(tabla.getInt("cod_comprobante"));
                obj.setSaldo(tabla.getInt("Mon_Saldo"));
                lista.add(obj);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static String QuitarEspeciales(String input) {
        // Cadena de caracteres original a sustituir.
        String original = "áàäéèëíìïóòöúùuñÁÀÄÉÈËÍÌÏÓÒÖÚÙÜÑçÇ";
        // Cadena de caracteres ASCII que reemplazarán los originales.
        String ascii = "aaaeeeiiiooouuunAAAEEEIIIOOOUUUNcC";
        String output = input;
        for (int i = 0; i < original.length(); i++) {
            // Reemplazamos los caracteres especiales.
            output = output.replace(original.charAt(i), ascii.charAt(i));
        }//for i
        return output;
    }

}
