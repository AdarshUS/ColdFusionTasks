function validate()
  {    
    let position =  document.getElementById("position").value;
    let relocateChecked = document.querySelector('input[name = "relocate"]:checked');
    let dateString =  document.getElementById("date").value;
    // let dateobj = date.parse(dateString);
    let firstname = document.getElementById("first").value;
    let lastname = document.getElementById("last").value;
    let mail = document.getElementById("mail").value;
    var pattern = "/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/";
    let phone = document.getElementById("ph1").value;
     alert(position)
    let relocateError = document.getElementById("relocateError");
    let positionError = document.getElementById("positionError");
    let timeError = document.getElementById("timeError");
    let contactError = document.getElementById("contactError");
    let emailError = document.getElementById("emailError");
    let phoneError = document.getElementById("phoneError");

    relocateError.textContent="";
    positionError.textContent="";
    timeError.textContent="";
    contactError.textContent="";
    emailError.textContent="";
    phoneError.textContent="";
   
   
    let validInput = true;
    

    if(relocateChecked == null)
      {
        relocateError.textContent = "select any";
        validInput = false;
        document.getElementById("relocationContainer").style.backgroundColor = "#ffdfe0";
      }
    if(position == "selectcard")
      {
        positionError.textContent = "select any position";
        validInput = false;
        document.getElementById("positionContainer").style.backgroundColor = "#ffdfe0";
      }
    if(dateString.trim() === "")
      {
        timeError.textContent = "please enter the Date";
        validInput = false;
        document.getElementById("JoinTimeContainer").style.backgroundColor = "#ffdfe0";
      }
    if(firstname.trim() === "" || lastname.trim() === "")
      {
       contactError.textContent = "Name cannot be empty";
        validInput = false;
        document.getElementById("contactContainer").style.backgroundColor = "#ffdfe0";
      }
    if(mail.trim() === "" ||  !(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(mail)))
      {
        emailError.textContent = "Enter valid mail";
        validInput = false;
        document.getElementById("emailContainer").style.backgroundColor = "#ffdfe0";
      }
    // if(!/[0-9]/.test(phone) || !(phone.length==10))
    //   {
    //     phoneError.textContent = "Enter valid phone Number";
    //     validInput = false;
    //     document.getElementById("phoneContainer").style.backgroundColor = "#ffdfe0";
    //   }
    
      alert(validInput)

      return validInput;
  }

  function validatePhone(input){
        
    if(input.value.length >=3)
      {        
        $(input).next().focus();    
      }
    if(input.value.length<=0)
      {
        $(input).prev().focus();
      }
  }