package mod_doctorPatient;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PatientServlet
 */
public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String value=request.getParameter("val");
		switch(value)
		{
		case "1":patientEntryForm(request,response);break;
		case "2":patientDisplay(request,response);break;
		}
	}
	
	public void patientEntryForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String output=request.getParameter("patientName");
		output=output+","+request.getParameter("address");
		output=output+","+request.getParameter("contact");
		output=output+","+request.getParameter("gender");
		output=output+","+request.getParameter("health");
		output=output+","+request.getParameter("doctorName");
		PatientData.addPatient(output);
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.print("<center><h4><font color='lightgreen'><i>Patient Details Listed</i></font></h4></center>");
		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		rd.include(request,response);
	}
	public void patientDisplay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String doctorName=request.getParameter("doc");
		List<String> patientList=PatientData.findPatientByDoctor(doctorName);
	 request.setAttribute("doctorName",doctorName);
		 request.setAttribute("patientList",patientList);
		 RequestDispatcher rd=request.getRequestDispatcher("PatientView.jsp");
		rd.forward(request,response);
		
	}


}
