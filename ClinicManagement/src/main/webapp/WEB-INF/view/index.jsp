<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<form method="get" accept-charset="utf-8" style="width:600px;margin: 0px auto;" id="formDemo">
        <fieldset>
            <legend>Demo jQuery Validation - ThienAnBlog.com</legend>
            <div>
                <label>Họ</label>
                <input name="ho" type="text" placeholder="Vui lòng nhập họ" required>
            </div>
            <div>
                <label>Tên</label>
                <input name="ten" type="text" placeholder="Vui lòng nhập tên" required>
            </div>
            <div>
                <label>Địa chỉ</label>
                <input name="diachi" type="text" placeholder="Vui lòng nhập địa chỉ" required>
            </div>
            <button type="submit">Gửi</button>
        </fieldset>
    </form>
    
    <script>
    
    $(document).ready(function() {
    	 
        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $("#formDemo").validate({
            rules: {
                ho: "required",
                ten: {
                    required: true,
                    number:true
                },
                diachi: {
                    required: true,
                    minlength: 2
                }
            },
            messages: {
                ho: "Vui lòng nhập họ",
                ten:{
                	 required: "Vui lòng nhập tên",
                	
                } ,
                diachi: {
                    required: "Vui lòng nhập địa chỉ",
                    minlength: "Địa chỉ ngắn vậy, chém gió ah?"
                }
            }
        });
    });
    </script>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>