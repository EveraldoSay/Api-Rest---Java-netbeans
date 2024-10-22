

/**
 *
 * @author edvin
 */

package com.aprendec.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class SqlServerConexion {

    static {
        try {
            // CARGAR EL CONTROLADOR DE BD
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (Exception e) {
            System.out.println("[SqlServerConexion] Error al cargar el driver de conexión");
            e.printStackTrace();
        }
    }

    public static Connection obtenerConexion() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(
                    "jdbc:sqlserver://EDVIN:1433;databaseName=ReealoDB2019;user=sa;password=manager;encrypt=false;trustServerCertificate=true;");
        } catch (Exception e) {
            System.out.println("[SqlServerConexion] Error al obtener la conexión");
            e.printStackTrace();
        }
        return con;
    }
    
}

