package com.mvc.action.baemin;

import javax.servlet.http.*;
import com.mvc.action.CommandAction;

public class OrderProAction implements CommandAction {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

        request.setCharacterEncoding("UTF-8");
        System.out.println("- - - - OrderProAction - - - - ");
        ///////////////// 이 아래에 내용 넣으세요 /////////////////////////

        //

        ///////////////// 이 위에 내용 넣으세요 /////////////////////////
        return "aaaa";
    }

}
