
package Method;

import java.sql.*;


public class Dbconnect {
    
        private Connection con;
        private Statement st;
        private ResultSet rs;
        
        public Dbconnect(){
            try{
                Class.forName("com.mysql.jdbc.Driver");
                
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/topjob","ssrahul96","rahul1234");
                st = con.createStatement();
                
            }catch(ClassNotFoundException ex){
                System.out.println("Error : "+ex);
            } catch (SQLException ex) {
                System.out.println("Error : "+ex);
            }
        }
        
        public boolean LoginCheck(String uname,String pass,int utype)throws SQLException{
            String query="";
            if(utype==1)
                query="select password from jobseaker where username ='"+uname+"';";

            if(utype==2)
                query="select password from employer where username ='"+uname+"';";
            
            System.out.println(query);            
            rs = st.executeQuery(query);            
            
            if(rs.next()==true)            
                return rs.getString(1).equals(pass);
            else
                return false;
            
        }     

    public boolean Signup(String uname, String pass, String fname, String mob, String email, String gender, int utype) throws SQLException {
        String query="";
            if(utype==1)
                query="select password from jobseaker where username ='"+uname+"';";

            if(utype==2)
                query="select password from employer where username ='"+uname+"';";
            
            rs = st.executeQuery(query);
            if(rs.next()==true)
                return false;
            else{
                String query1="";
                if(utype==1)
                    query1="insert into jobseaker values('"+uname+"','"+pass+"','"+fname+"','"+gender+"','"+mob+"','"+email+"');";
                if(utype==2)
                    query1="insert into employer values('"+uname+"','"+pass+"','"+fname+"','"+gender+"','"+mob+"','"+email+"');";
                
                System.out.println(query1);
                st.executeUpdate(query1);
              con.close(); 
                return true;
            }
    }

    public String[] getDetails(String uname, int utype) throws SQLException {
        String query="";
        String[] details = new String[6];
            if(utype==1)
                query="select * from jobseaker where username ='"+uname+"';";
            if(utype==2)
                query="select * from employer where username ='"+uname+"';";
            System.out.println(query);
            rs = st.executeQuery(query);
            rs.next();
            details[0]=rs.getString(1);
            details[1]=rs.getString(2);
            details[2]=rs.getString(3);
            details[3]=rs.getString(4);
            details[4]=rs.getString(5);
            details[5]=rs.getString(6);
          con.close();  
        return details;    
    }

    public int postjob(String uname, String jobtype) throws SQLException {
        String query="insert into jobs values('"+uname+"','"+jobtype+"');";
        return st.executeUpdate(query);
    }

    public int applyjob(String uname, String sjob) throws SQLException {
        String query="insert into sekjob values('"+uname+"','"+sjob+"');";
        System.out.println(query);
        return st.executeUpdate(query);
    }

    public void upfatefeedback(String fname, String num, String webr, StringBuffer ufed) throws SQLException {
        String query="insert into feedback values('"+fname+"','"+num+"','"+webr+"','"+ufed+"');";
        System.out.println(query);
        st.executeUpdate(query);
    }
}
