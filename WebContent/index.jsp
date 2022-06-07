<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%!
    public class Employee
    {
        double _salary;
        public double getSalary()
        {
            return _salary;
        }
        public void setSalary(double theSalary)
        {
            _salary = theSalary;
        }
    }
%>
<%
    Employee x = new Employee();
    x.setSalary(100);
    pageContext.setAttribute("emp", x);
%>
<c:choose>
    <c:when test="${emp.salary <= 0}">
        Sorry, no pay for you!
    </c:when>
    <c:when test="${emp.salary < 10000}">
        I'm going to have to ask you to
        come in on Saturday...
    </c:when>
    <c:otherwise>
        Yes sir! Whatever you say, sir!
    </c:otherwise>
</c:choose>
