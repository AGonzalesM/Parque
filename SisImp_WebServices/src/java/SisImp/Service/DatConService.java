/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package SisImp.Service;

import SisImp.modelo.DatCon;
import java.util.List;
import javax.jws.WebService;

/**
 *
 * @author Antonio
 */
@WebService
public interface DatConService {
    
    List<DatCon> getDatosContrato(String DocCli);
    
    
}
