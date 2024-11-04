function validate()
  {  
    var input=document.getElementById("num").value;
    console.log(input)
    let reg=/[0-9]/;
    if(input.trim() === "")
      {
       document.getElementById("error").textContent="This field cannot be empty";
       event.preventDefault();
      }
    if(reg.test(input)==false)
      {
       document.getElementById("error").textContent="Illegal character";
       event.preventDefault();
      }
  }
