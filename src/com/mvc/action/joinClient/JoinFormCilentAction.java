package com.mvc.action.joinClient;

import javax.servlet.http.*;
import com.mvc.action.CommandAction;

public class JoinFormCilentAction implements CommandAction {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

        request.setCharacterEncoding("UTF-8");
        System.out.println("- - - - JoinFormCilentAction - - - - ");
        ///////////////// 이 아래에 내용 넣으세요 /////////////////////////
        
        //

        ///////////////// 이 위에 내용 넣으세요 /////////////////////////
        return "/joinClient/JoinFormClient.jsp";
    }

}
