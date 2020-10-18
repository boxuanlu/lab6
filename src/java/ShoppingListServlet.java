

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShoppingListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action =(String) request.getParameter("action"); 
        String user = (String) session.getAttribute("username");
        if(action != null){
            session.invalidate();
            session = request.getSession();
            String logoutmessage = "you have successfully log out";
            request.setAttribute("message", logoutmessage);
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }else{
        if(user == null){
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }else {
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
        }
        }  
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<String> itemList = (ArrayList<String>) session.getAttribute("itemList");
        String action = (String)request.getParameter("action");
        switch(action){
            case "register":
                String username = request.getParameter("username");
                if(!username.equals("")){
                session.setAttribute("username",username);
                getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);}
                else{
                request.setAttribute("message", "please, fill the username form");
                request.setAttribute("username", username);
                getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);    
                }
                break;
            case "add":
                String item = (String) request.getParameter("item");
                if(!item.equals("")){
                    if(itemList == null){
                    itemList = new ArrayList();}
                    itemList.add(item);
                    session.setAttribute("itemList", itemList);
                    getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
                    
                } else {
                    String itemInputNotice = "you need input something as item";
                    request.setAttribute("message", itemInputNotice);
                    session.setAttribute("itemList", itemList);
                    getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
                }
                break;
        }

       
    }


}
