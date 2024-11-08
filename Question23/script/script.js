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
    let phone = document.getElementById("phone").value;

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
        relocateError.textContent = "select any one";
        validInput = false;
      }
    if(position.value == "selectcard")
      {
        document.getElementById("positionError").textContent = "select any one";
        validInput = false;
      }
    if(dateString.trim() === "")
      {
         positionError.textContent = "select any one";
        validInput = false;
      }
    if(firstname.trim() === "" || lastname.trim() === "")
      {
       timeError.textContent = "Name cannot be empty";
        validInput = false;
      }
    if(mail.trim() === "" ||  !(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(mail)))
      {
        emailError.textContent = "Enter valid mail";
        validInput = false;
      }
    if(!/[0-9]/.test(phone) || !(phone.length==10))
      {
        phoneError.textContent = "Enter valid phone Number";
        validInput = false;
      }
      console.log(validInput);

      return validInput;
  }