/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Student
 */
public class RockPaperScissorServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String choice = request.getParameter("choice");
        
        String[] options = {"R", "P", "S"};
        Random rand = new Random();
        String computer_choice = options[rand.nextInt(options.length)];
        String result;
        
        if(choice.equals(computer_choice))
        {
            result = "draw";
        } else if(choice.equals("R") && computer_choice.equals("S") ||
                choice.equals("P") && computer_choice.equals("R") ||
                choice.equals("S") && computer_choice.equals("P") )
        {
            result = "win";
        } else
        {
            result = "lose";
        }
        
        request.setAttribute("result", result);
        RequestDispatcher disp = request.getRequestDispatcher("outcome.jsp");
        disp.forward(request, response);        
    }

}
