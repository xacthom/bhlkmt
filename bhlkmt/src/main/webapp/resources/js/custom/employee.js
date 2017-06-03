$(window).load(function () {
	abc();
	xyz();
	$('#startdate').val(ConvertToDate(new Date()));
});

function abc(){
	var url = window.location;
    $.ajax({
        type: "GET",
    	url: "./employee/getAll",
    	dataType: 'json',
        success: function (result) {
            loadData(result);
        },
        error: function (result) {
            console.log("object", result);
        }
    });
};

function xyz(){
	$.ajax({
        type: "GET",
    	url: "./employee/getAllPositions",
    	contentType: "application/json; charset=utf-8",
    	dataType: 'json',
        success: function (result) {
        	var pos = $('#pos');
        	var pos1 = $('#pos1');
        	for(var i = 0;i < result.length;i++){
        		var temp = result[i];
        		pos.append("<option value="+temp.positionId+">"+temp.positionName+"</option>");
        		pos1.append("<option value="+temp.positionId+">"+temp.positionName+"</option>");
        	}
        	pos.trigger("chosen:updated");
        	pos1.trigger("chosen:updated");
        },
        error: function (result) {
        }
    });
}

function loadData(data) {
    //load data here
    $('#hello').html
    var result = $('#hello');
    result.html("");
    var records = $('#records');
    records.html("Hiển thị " + data.length + " bản ghi");
    if (data.length > 0) {
    	
    	replaceAllUUIDkey(data, ["position"]);
    	
        for (var i = 0; i < data.length ; i++) {
            var temp = data[i];
            var stt = i + 1;
            if (temp.website != null) {
                var sd = temp.website.substring(8);
            }

            else { sd = temp.website; }
            if (temp.isActive == true) {
                var active = "<td class=\"col-md-1\"><h5 class=\"text-greensea\">Hoạt Động</h5></td>";

            }
            else {
                active = "<td class=\"col-md-1\"><h5 class=\"text-red\">Vô Hiệu</h5></td>";

            }
            
            
            var employeeStartDate = new Date(parseInt(temp.startDate));
            
            var bdYear = employeeStartDate.getFullYear();
			var bdMonth = employeeStartDate.getMonth() + 1;
			var bdDay = employeeStartDate.getDate();
			
			employeeStartDate = bdDay+'/'+bdMonth+'/'+bdYear;
			
            result.append("<tr><td>"+ stt +"</td>" +
                    "<td hidden> <input type=\"text\" id=\"" + temp.employeeId + "\"value=\"" + temp.employeeId + "\"></td>" +
                    "<td>" + temp.position.positionName + "</td>" +
                    "<td>" + temp.employeeCode + "</td>" +
                    "<td>" + temp.employeeName + "</td>" +
                    "<td>" + temp.gender + "</td>" +
                    "<td style=\"width: 15%\">" + temp.phone + "</td>" +
                    "<td>" + employeeStartDate + "</td>" +
                    "<td class=\"actions\">" +
                        "<a role=\"button\" tabindex=\"0\" onclick=\"Edit(" + temp.employeeId + ")\" class=\"edit text-primary text-uppercase text-strong text-sm mr-10\">Sửa</a>" +
                        "<a role=\"button\" tabindex=\"0\" onclick=\"Del(" + temp.employeeId + ")\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>" +
                    "</td></tr>");
        }
    }
    else {
        result.append("<tr class=\"odd\"><td valign=\"top\" colspan=\"3\" class=\"dataTables_empty\">.......Không Có Dữ Liệu ....</td></tr>")

    }

};  

$("#form3").submit(function (e) {
    //nếu form đã validate
    if (this.checkValidity()) {
        e.preventDefault();
        
        var employee = {}
        employee["address"] = $('#address').val();
        employee["birthday"] = $('#birthday').val();
        employee["email"] = $('#email').val();
        employee["employeeCode"] = $('#employeeCode').val();
        employee["employeeName"] = $('#employeeName').val();
        employee["gender"] = $('#gender').val();
        employee["isActive"] = true;
        employee["phone"] = $('#phone').val();
        employee["startDate"] = $('#startdate').val();
        
        var position = {}
        position["positionId"] = $( "#pos option:selected" ).val();
        employee["position"] = position;

        var user = {}
        user["email"] = $('#email').val();
        user["emailConfirmed"] = true;
        user["enabled"] = true;
        user["name"] = $('#employeeName').val();
        user["passwordHash"] = $('#password').val();
        user["role"] = $( "#pos option:selected" ).text();
        user["userName"] = $('#username').val();

        employee["user"] = user;
        
        $.ajax({
        	type : "POST",
        	url : "./employee/add",
        	contentType: "application/json; charset=UTF-8",
        	data : JSON.stringify(employee),
        	dataType : "json",
        	success : function(employee) {
        		if (employee == true) {
        			$('#success').addClass("alert alert-success");
					$('#success').text("Thêm Thành Công");
					$('#error').removeClass("alert alert-danger");
					$('#error').text("");
					$('#refresh').click();
					$('#create').modal('hide');
					abc();
        		} else {
        			$('#error').addClass("alert alert-danger");
					$('#error').text("Thêm Không Thành Công! Vui lòng thử lại!");
					$('#success').removeClass("alert alert-success");
					$('#success').text("");
        		}
        	}
        });
}else {
	alert("Thông tin không hợp lệ !");
}

})

//edit model
   function Edit(id) {	
	var inputData = {}
	inputData["employeeId"] = id;
	
	$.ajax({
		type : "POST",
		url : "./employee/getById",
		contentType: "application/json; charset=UTF-8",
		data : JSON.stringify(inputData),
		dataType : "json",
		success : function(data) {
			$('#edit').modal('toggle');
			var employeeBirthday = new Date(parseInt(data.birthday));
			employeeBirthday = ConvertToDate(employeeBirthday);
			
			var employeeStartDate = new Date(parseInt(data.startDate));
			employeeStartDate = ConvertToDate(employeeStartDate);
			
			$('#id1').val(data.employeeId);
			$('#employeeCode1').val(data.employeeCode);
			$('#employeeName1').val(data.employeeName);
			$("#gender1").val(data.gender);
            $("#pos1").val(data.position.positionId);
            $("#pos1").trigger("chosen:updated");
			$('#birthday1').val(employeeBirthday);
			$('#startdate1').val(employeeStartDate);
			$('#address1').val(data.address);
			$('#phone1').val(data.phone);
			
			$('#email1').val(data.email);
			$('#user1').val(data.user.userId);
		},
		error : function() {
			alert("Có Lỗi Xảy Ra");
			$('#edit').modal('hide');
		}
	});
}

$("#formedit").submit(function (e) {
    //nếu form đã validate
    if (this.checkValidity()) {
        e.preventDefault();
        
        var employee = {}
        employee["address"] = $('#address1').val();
        employee["birthday"] = $('#birthday1').val();
        employee["email"] = $('#email1').val();
        employee["employeeId"] = $('#id1').val();
        employee["employeeCode"] = $('#employeeCode1').val();
        employee["employeeName"] = $('#employeeName1').val();
        employee["gender"] = $('#gender1').val();
        employee["isActive"] = true;
        employee["phone"] = $('#phone1').val();
        employee["startDate"] = $('#startdate1').val();
        employee["email"] = $('#email1').val();
        
        var user = {}
        user["userId"] = $('#user1').val();
        employee["user"] = user;
        
        var position = {}
        position["positionId"] = $( "#pos1 option:selected" ).val();
        employee["position"] = position;
        
        $.ajax({
        	type : "POST",
        	url : "./employee/edit",
        	contentType: "application/json; charset=UTF-8",
        	data : JSON.stringify(employee),
        	dataType : "json",
        	success : function(employee) {
        		if (employee == true) {
        			$('#success').addClass("alert alert-success");
					$('#success').text("Sửa Thành Công");
					$('#error').removeClass("alert alert-danger");
					$('#error').text("");
					$('#edit').modal('hide');
					$('#refresh').click();
					abc();
        		} else {
        			$('#error').addClass("alert alert-danger");
					$('#error').text("Sửa Không Thành Công! Vui lòng thử lại!");
					$('#success').removeClass("alert alert-success");
					$('#success').text("");
        		}
        	}
        });
}else {
	alert("Thông tin không hợp lệ !");
}

})

function Del(id) {
	if (confirm("Bạn có muốn xóa không?") == false) {
		return;
	} else {
		var inputData = {}
		inputData["employeeId"] = id;
		
		$.ajax({
			type : "POST",
			url : "./employee/del",
			contentType: "application/json; charset=UTF-8",
			data : JSON.stringify(inputData),
			dataType : "json",
			success : function(inputData) {
				if (inputData == true) {
					alert("Xóa Thành Công");
					abc();
				} else {
					alert("Có Lỗi Xảy Ra");
				}
				$('#refresh').click();
			},
			error : function(data) {
				alert("Có Lỗi Xảy Ra");
			}
		});
	}
}

$('#search').click(function(e) {
	var inputData = [$('#searchdata').val(), $('#searchtype').val()];
	
	if (inputData[0] != "") {
		$.ajax({
			type : "POST",
			url : "./employee/search",
			contentType: "application/json; charset=UTF-8",
			data : JSON.stringify(inputData),
			dataType : "json",
			success : function(data) {
				loadData(data);
			},
			error : function(data) {
				alert("Lỗi xảy ra !!");
			}
		});
	}
})
           