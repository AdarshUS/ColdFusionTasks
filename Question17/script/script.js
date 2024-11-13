function validate()
  {  
    var input=document.getElementById("num").value;
    console.log(input)
    let reg=/[0-9]/;
    let validInput = true;
    if(input.trim() === "")
      {
       document.getElementById("error").textContent="This field cannot be empty";
       validInput = false;
      }
    if(reg.test(input)==false)
      {
       document.getElementById("error").textContent="Not a Number";
       validInput = false;
      }
      return validInput;
  }
