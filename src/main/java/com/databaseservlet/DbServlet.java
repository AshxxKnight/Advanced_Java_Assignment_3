package com.databaseservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.databaseclass.Protable;

@WebServlet("/DbServlet")
public class DbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String title = request.getParameter("name");
		String qty = request.getParameter("quantity");
		String sz = request.getParameter("size");
		String img = request.getParameter("image");
		
		HttpSession session = request.getSession();
				
		Protable pro = new Protable();
		
		session.setAttribute("title",title);
		
		pro.setTitle(title);
		pro.setQuantity(qty);
		pro.setSize(sz);
		pro.setImg(img);
		
		
		Configuration con = new Configuration().configure().addAnnotatedClass(Protable.class);
        SessionFactory sf = con.buildSessionFactory();
        Session ssn= sf.openSession();

        Transaction tx = ssn.beginTransaction();
        ssn.persist(pro);
        tx.commit();
		
	}

}
