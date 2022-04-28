<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
	b{
	font-size:20pt; background-color: gray;}
</style>
</head>
<body>
	<%	//스크리틀릿
		//java 문법 가능(jsp 문법임)
		int num =10;
		System.out.println(num);
		out.print(num);//웹브라우저에 num 표시
	%>
		<%= num %>페이지 만듭니다 <br>
		이건 표현식
		<hr>
		<% String name ="jsp"; %><br>
		<b><%=name %> 시작입니다<br></b>
		<B><%out.print(name);%>입니다</B>
		<h1><%out.write(name+"시작입니다"); %></h1>
		<%out.print("<h1>"+name); %>시작입니다~~~</h1>
		
		
		<% int num1=10;
		   int num2=20;
		   out.print("10+20=");
		   out.print(num1+num2);
		   //스크립틀릿으로 변수 만들기
		%>
		<%=num1 %>+<%out.write(num2); %>=<%=num1+num2 %>
		<br>
		
		<% 
			int s=0;
			for( int i=1;i<=100; i++){
				s+=i;
			}
		%>
		<%for(int i=1;i<=100;i++){
			if(i==100){
				out.print(i);
			}else{
				out.print(i+"+");
			}
		}%>=<%=s %>
		
		<br>
		짝수의 합은 
		<% 
			int odd=0, even=0;
			for(int i=0;i<=100;i++){
				if(i%2==0){
					even+=i;
					if(i==100){
						out.print(i);
					}else{
					out.print(i+"+");
					}
				}
			}
		%> = <%= even%><br>
		홀수의 합은 
		<% 
			
			for(int i=0;i<100;i++){
				if(i%2==1){
					odd+=i;
					if(i==99){
						out.print(i);
					}else{
					out.print(i+"+");
					}
				}
			}
		%> = <%= odd%>
		<br>
		<div>
		<a href="ex02.jsp">ex02</a>
		<a href="jsp01/ex02.jsp">ex02</a>
		</div>
		
		

</body>
</html>