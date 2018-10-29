<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/28 0028
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String solution[]=new String[100];
        String[] yoursolution=new String[5];
        //接收客户端传递过来的参数
        String[][] s1Values = (String[][]) session.getAttribute("s1Value");//用于接收题目
        String[] as =new String[]{};
        int tNum=5;
        String[] outputTopic =new String[]{"","","","",""};
        String[] outputans =new String[]{"","","","",""};
        String output = "";
        String output1 = "";
        for (int numj = 0; numj < tNum; numj++) {
            for (int numi = 0; numi < 6; numi++) {
                output = s1Values[numj][numi];
                outputTopic[numj] += output;
                out.println();
            }
            output = s1Values[numj][6];
            outputans[numj] += output;
            out.println(outputTopic[numj]);
            out.println(outputans[numj]);
            out.println();
            out.print("<br/>");

        }
        yoursolution[0] = (String) request.getParameter("answer1");
        yoursolution[1] = (String) request.getParameter("answer2");
        yoursolution[2] = (String) request.getParameter("answer3");
        yoursolution[3] = (String) request.getParameter("answer4");
        yoursolution[4] = (String) request.getParameter("answer5");

        String []asT = new String[5];

        out.println(yoursolution[0]);
        out.println(yoursolution[1]);
        out.println(yoursolution[2]);
        out.println(yoursolution[3]);
        out.println(yoursolution[4]);
    %>


    <%--<%--%>
        <%--//接收客户端传递过来的参数--%>

        <%--int sumright=0,sumerror=0,empty=0;--%>
        <%--for(int i=0;i<5;i++)--%>
        <%--{--%>
    <%--%>--%>
    <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
    <%--<%--%>
        <%--String num1="";--%>
        <%--int x=1;--%>
        <%--for(int m=0;m<yoursolution[i].length();m++)--%>
        <%--{--%>
            <%--num1=yoursolution[i];--%>
            <%--x*=10;--%>
        <%--}//字符串类型的数字转换为整型 用于和正确答案比较 因为从出题界面接受的答案是字符串类型--%>
        <%--if(yoursolution[i].equals(""))--%>
        <%--{--%>
            <%--out.println("你没有回答哦！");--%>
            <%--empty++;--%>
        <%--}--%>
        <%--else if(num1==outputans[i])--%>
        <%--{--%>
            <%--sumright++;--%>
            <%--out.println("恭喜你！回答正确！");--%>
        <%--}--%>
        <%--else--%>
        <%--{--%>
            <%--sumerror++;--%>
            <%--out.println("回答错误，再接再厉！");--%>
        <%--}--%>
        <%--out.println("<br/>");//换行--%>
        <%--}--%>
        <%--out.println("回答正确了"+sumright+"道题！");--%>
        <%--out.println("<br/>");//换行--%>
        <%--out.println("回答错误了"+sumerror+"道题！");--%>
        <%--out.println("<br/>");//换行--%>
        <%--out.println("没有回答"+empty+"道题！");--%>
        <%--out.println("<br/>");//换行--%>
    <%--%>--%>
<%--<%
    int sumright=0,sumerror=0,empty=0;
    for(int i=0;i<5;i++)
    {
    request.setCharacterEncoding("UTF-8");
    out.print(outputTopic[i]);//正确的算式
    yoursolution[i] = request.getParameter("result["+i+"]");//你的答案
    out.println(as[]);
    %>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%
    out.println("正确答案是： ");
    out.println(newdemo.answer[i]);//正确的答案
%>
    &nbsp;&nbsp;&nbsp;&nbsp;
<%
    int num1=0;
    int x=1;
    for(int m=0;m<yoursolution[i].length();m++)
    {
        num1+=(yoursolution[i].charAt(yoursolution[i].length()-m-1)-'0')*x;
        x*=10;
    }//字符串类型的数字转换为整型 用于和正确答案比较 因为从出题界面接受的答案是字符串类型
    if(yoursolution[i].equals(""))
    {
        out.println("你没有回答哦！");
        empty++;
    }
    else if(num1==newdemo.answer[i])
    {
        sumright++;
        out.println("恭喜你！回答正确！");
    }
    else
    {
        sumerror++;
        out.println("回答错误，再接再厉！");
    }
    out.println("<br/>");//换行
    }%>--%>
</body>
</html>
