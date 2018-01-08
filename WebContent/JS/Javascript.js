function validate(form){
	
	if(empno_valid()){
		
		if(empname_valid()){
			if(empfrom_valid()){
				if(empto_valid()){
					if(reason_valid()){
						return true;
					}
				}
			}
		}
	}
	return false;
}
function empno_valid(){
	var no = empform.empno;
	var desp = /^([0-9]{5})+$/;
	if(no.value == ""){
		document.getElementById("empno_error").innerHTML = "No cannot be Empty";
		return false;
	}
	if(no.value.match(desp)){
		document.getElementById("empno_error").innerHTML = "No Should be 5 nos";
		return false;
	
	}
	else{
		document.getElementById("empno_error").innerHTML = "";
		return true;
	}
}
function empname_valid(){
	var no = empform.empname;
	if(no.value == ""){
		document.getElementById("empname_error").innerHTML = "Name cannot be Empty";
		return false;
	}
	else{
		document.getElementById("empname_error").innerHTML = "";
		return true;
	}
}
function empto_valid(){
	var no = empform.to;
	var desp = /^(\d{1,2})-(\d{1,2})-(\d{4})$/;
	if(no.value.match(desp)){
		document.getElementById("empto_error").innerHTML = "";
		return true;
	}
	else{
		document.getElementById("empto_error").innerHTML = "Enter Date in DD-MM-YYYY";
		return false;
		
	}
}
function empfrom_valid(){
	var no = empform.from;
	var desp = /^(\d{1,2})-(\d{1,2})-(\d{4})$/;
	if(no.value.match(desp)){
		document.getElementById("empfrom_error").innerHTML = "";
		return true;
	}
	else{
		document.getElementById("empfrom_error").innerHTML = "Enter Date in DD-MM-YYYY";
		return false;
		
	}
}
function reason_valid(){
	var no = empform.reason;
	if(no.value == ""){
		document.getElementById("reason_error").innerHTML = "Reason cannot be Empty";
		return false;
	}
	else{
		document.getElementById("reason_error").innerHTML = "";
		return true;
	}
}
