package SisImp.Service;

import Conexion.Helper;
import SisImp.modelo.Cuota;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.jws.WebService;

@WebService(endpointInterface="SisImp.Service.CuotaService")
public class CuotaServiceImp implements CuotaService{
    
    @Override
    public List<Cuota> getCuotasXContrato(int Cont){
        
           List<Cuota> lista = new ArrayList<Cuota>();
           Helper cn = null;
           ResultSet tabla = null;
           Cuota obj;
           try {       
               cn = new Helper();
               tabla = cn.executeDataset("exec lsCuotasxContrato "+Cont, new Object[]{});
               while(tabla.next()){
                  obj = new Cuota();
                  obj.setCod_cuota(tabla.getInt("cod_cuota"));
                  obj.setCod_contrato(tabla.getInt("cod_contrato"));        
                  obj.setFch_cuota(tabla.getString("fch_cuota"));
                  obj.setNro_cuota(tabla.getInt("nro_cuota")); 
                  obj.setFch_vencimiento(tabla.getString("fch_vencimiento"));
                  obj.setFch_pago(tabla.getString("fch_pago"));
                  obj.setEst_cuota(tabla.getString("est_cuota"));
                  obj.setCod_comprobante(tabla.getInt("cod_comprobante"));
                  obj.setSaldo(tabla.getInt("Mon_Saldo"));   
                  lista.add(obj);
               }               
           } catch (Exception e) {
           }              
           return lista;
    }

    
    
}
