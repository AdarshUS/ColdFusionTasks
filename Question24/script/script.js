function checkEmail()
  {
    let mail = document.getElementById("mail").value;
    let submitBtn = document.getElementById("submitBtn");
    let errorText = document.getElementById("existError");
    errorText.textContent = "";
      $.ajax({
        url: "components/checkData.cfc?method=checkDatafn",type:"POST", data:{email :mail}, success:
        function(data){      
          if(!data)
          {
            submitBtn.disabled = false;             
            
          }
          else
          {
            errorText.textContent = "Mail id is already there";
          }
        },
        error: function()
          {
            console.log("no ajax call");
          }
      })    
   }



  