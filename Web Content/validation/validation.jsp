<script>
function validateName(name) {							//text validation
	  if (/^[a-zA-Z]{20}[. ]+$/.exec(name)) {
	    return true;
	  }
	  return false;
}


function phonenumber(phoneNo) 							//phoneno validation					
{
var phoneno = /^\(?([0-9]{10})+$/;
if((phoneNo.value.match(phoneno)))
		{ return true;
		} 
else { 
	alert("message"); return false; 
	}
}

function alphanumeric(userId)  							//userId validation
{  
 var letterNumber = /^[0-9a-zA-Z]{10}+$/;  
 if((userId.value.match(letterNumber)))   
  {  
   return true;  
  }  
else  
  {   
   alert("message");   
   return false;   
  }  
  }  
 
function ValidateEmail(mail)   							//email Vaildation
{  
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value))  
  {  
    return (true);  
  }  
    alert("You have entered an invalid email address!");  
    return (false);  
}  



</script>