function validateMethod()
{
	//alert("empty");
	var MyForm=document.forms[0];
	
	
	var userid=MyForm.userid;
	if(userid.value.length==0 || userid=="" || userid==null)
	{
		alert("Please enter the userid");
		userid.focus();
		return false;
	}
	
	var pwd=MyForm.pwd;
	if(pwd.value.length==0 || pwd=="" || pwd==null)
	{
		alert("Please enter the password");
		pwd.focus();
		return false;
	}
	
	var name=MyForm.name;
	if(name.value.length==0 || name=="" || name==null)
	{
		alert("Please enter the name");
		name.focus();
		return false;
	}
	
	var dob=MyForm.dob;

	if(dob.value.length==0 || dob=="" || dob==null)
	{
		alert("Please enter the date");
		dob.focus();
		return false;
	}

     // Checks for the following valid date formats:
	 // MM/DD/YYYY
	 // Also separates date into month, day, and year variables
	 var datePat = /^(\d{2,2})(\/)(\d{2,2})\2(\d{4}|\d{4})$/;
	 
	 var matchArray = dob.value.match(datePat); // is the format ok?
	 if (matchArray == null) 
	 {
	  alert("Date must be in MM/DD/YYYY format");
	  dob.focus();
	  return false;
	 }
	
	 
	 var month=matchArray[1];
	 var date=matchArray[3];
	 var year=matchArray[4];
	 
	 if(month>12 || month<1)
	 {
		 alert("Invalid month");
		 dob.focus();
		 return false;
	 }
	 if((month==04 || month==06 || month==09 || month==11) && date==31) 
	 {
		 alert("Month "+month+" doesn't have 31 days!");
		 return false;
	 }
	 if(date>31 || date<1)
	 {
		 alert("Invalid date.. Date must be between 1 and 31");
		 dob.focus();
		 return false;
	 }
	 if (month == 2) 
	 { 
		 // check for february 29th
		 var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		 if (date>29 || (date==29 && !isleap))
		 {
			 alert("February " + year + " doesn't have " + date + " days!");
			 return false;
		 }
	}
		
	
	
	var cellno=MyForm.cellno;
	if(cellno.value.length==0 || cellno=="" || cellno==null)
	{
		alert("Please enter the cellno");
		cellno.focus();
		return false;
	}
	
	var num=/[0-9]/;
	if(!cellno.value.match(num))
	{
		alert("Please enter only numbers");
		cellno.focus();
		return false;
	}
	
	var address=MyForm.address;
	if(address.value.length==0 || address=="" || address==null)
	{
		alert("Please enter the address");
		address.focus();
		return false;
	}
	
	var email=MyForm.email;
	if(email.value.length==0 || email=="" || email==null)
	{
		alert("Please enter the email");
		email.focus();
		return false;
	}
	
	var emailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
	if(!email.value.match(emailformat))  
	{  
		alert("You have entered an invalid email address!");  
		email.focus();  
		return false;  
	}  
	
	else
		return true;
  }