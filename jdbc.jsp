<HTML>
<body>
<h3> jdbc jndi test sample code </h3>

<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*" %>

<%
	java.sql.Connection c1;
	java.sql.Statement s1;
	java.sql.ResultSet rs1;
	java.sql.PreparedStatement pst1;
	DataSource paymentDB;

	c1=null;
	s1=null;
	pst1=null;
	rs1=null;

	javax.naming.Context initCtx = new javax.naming.InitialContext();
//	javax.naming.Context envCtx = (javax.naming.Context) initCtx.lookup("java:comp/env");
	paymentDB = (DataSource) initCtx.lookup("java:comp/env/jdbc/defaultDS");

	try{
		if(paymentDB == null) {
			javax.naming.Context initCtx1 = new javax.naming.InitialContext();
			javax.naming.Context envCtx1 = (javax.naming.Context) initCtx1.lookup("java:comp/env");
			paymentDB = (DataSource) envCtx1.lookup("jdbc/defaultDS");
		}
	}
	catch(Exception e){
		System.out.println("inside the context exception");
		e.printStackTrace();
	}


	c1 = paymentDB.getConnection();
	
	if ( c1 != null ) {
		out.println("JDBC Connection is established....");
	}
//	String sq1= "select top 10 * from tbl_sys_user";

//	pst1 = c1.prepareStatement(sq1);

//	rs1 = pst1.executeQuery();

//	while( rs1.next() ){
//
//	}


	if(pst1!=null) pst1.close();
	if(rs1!=null) rs1.close();
	if(c1!=null) c1.close();
%>

</body>
</HTML>
