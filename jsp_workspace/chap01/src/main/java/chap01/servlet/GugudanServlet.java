package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//chap01/gugudan으로 접속하는 사용자에게 멋있는 구구단 페이지를 응답하는 서블릿을 만들어보세요

@WebServlet("/gugudan2")
public class GugudanServlet extends HttpServlet {

   @Override
   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      resp.setCharacterEncoding("UTF-8");
      PrintWriter out = resp.getWriter();

      out.print("<!DOCTYPE html>");
      out.print("<html>");
      out.print("<head>");
      out.print("<meta charset=\"UTF-8\">");
      out.print("<title>구구단</title>");
      //out.print("<link rel=\"stylesheet\" href=\"http://localhost:9000/chap01/assets/gugudan.css\">");
      // 절대경로를 쓰지 않고 상대경로를 쓴다
      
      // 절대경로는 프로토콜 이름부터 시작 되는 경로 
      // 상대경로는 이 페이지에 접속했던 URL기준의 상대경로
      // a태그 뿐만 이 아니라 link, img, script 태그 등은 페이지에 사용하는것만으로도 서버로 요청을 보내 정적 자원을 받아와서 활용한다
      //out.print("<link rel=\"stylesheet\" href=\"/chap01/assets/gugudan.css\">");
      out.print("<link rel=\"stylesheet\" href=\"./assets/gugudan.css\">");
      // @WebServlet("/gugudan2/") -> gugudan2 안의 / 빈 인덱스가 됨으로 
      //out.print("<link rel=\"stylesheet\" href=\"../assets/gugudan.css\">"); -> 상대경로를 쓸때 ../ 하나더 상위 폴더로 들어가야한다
      
      out.print("</head>");
      out.print("<body>");
      out.print("<h2># Fantastic Gugudan #</h2>");
      out.print("<div id=\"gugudan\">");
      
      
      for (int gop = 0; gop <= 9; ++gop) {
         for (int dan = 2; dan <= 9; ++dan) {

            if (gop == 0) {
               out.print(String.format("<div class=\"dan\">%d단</div>", dan));
            } else {
               out.print(String.format("<div class=\"data\">%d x %d = %d</div>", dan, gop, dan * gop));
            }
            out.print("");
         }
      }
      out.print("</div>");
      out.print("</body>");
      out.print("</html>");
   }
}