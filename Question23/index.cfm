<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="style/style.css">
</head>
<body>
  <cfoutput>
     <div class="formContainer">
        <div class="formContainerHeader">
          <div class="imagecntr">
            <img src="./images/wufologo.png" alt="logo">
          </div>
        </div>
        <div class="empApp">
          <h2>Employement Application</h2>
          <div>Infinity Box Inc</div>
        </div>
        <form  onsubmit="return validate();" method="POST" enctype="multipart/form-data">
            <ul>
              <li id="positionContainer">
                <label for="position" class="required heading" >which position are you applying for?</label><br>
                <select name="position" id="position" class="selectBox">
                  <option value="selectcard"></option>
                  <option value="Interface Designer">Interface Designer</option>
                  <option value="Software Enginer">Software Engineer</option>
                  <option value="System Administrator">System Administrator</option>
                  <option value="Office Manger">Office Manger</option>
                </select>
                <div id="positionError" class="error"></div>
              </li>
              <li id="relocationContainer">
                <div class="required heading">Are you willing to relocate</div>
                <div class="relocateBox">
                  <label for="relocate1">Yes</label>
                  <input type="radio" name="relocate" id="relocate1" class="relocate" value="Yes"><br>
                </div>
                <div class="relocateBox">
                  <label for="relocate2">No</label>
                  <input type="radio" name="relocate" id="relocate2" class="relocate" value="No">
                </div>
                <div id="relocateError" class="error"></div>
              </li>
              <li id ="JoinTimeContainer">
                <div class="startTime required heading">When you can start?</div>
                <input type="date" name="date" id="date" class="dateItem">     
                <div id="timeError" class="error"></div>
              </li>
              <li id ="portfolioContainer">
                <label for="portfolio" class="heading">Portfolio Web Site</label><br>
                <input type="text" name="portfolio" id="portfolio" class="portfolio">
              </li>
              <li class="fileContainer">
                <label for="resume" class="heading">Attach a copy of Your Resume</label><br>
                <input type="file" name="resume" id="resume">
                <p>word or pdf Documents only</p>
              </li>
              <li id ="salaryContainer">
                <div class="salryrequirement heading">Salary Requirements</div>
                <input type="text" name="dollar" id="dollar" class="salaryBox1">
                <span></span>
                <input type="text" name="cent" id="cent" class="salaryBox2">
              </li>
              <li id ="contactContainer">
                <div class="cntinfo">Your Contact Information</div>
                <label for="first" class="required heading">Name</label><br>
                <input type="text" name="first" id="first">
                <input type="text" name="last" id="last">
                <div class="nameLabel">
                  <span>First</span>
                  <span>Last</span>
                </div>          
                <div id="contactError" class="error"></div>
              </li>
              <li id ="emailContainer">
                <label for="mail" class="required heading">Email Address</label><br>
                <input type="text" name="mail" id="mail">
                <div id="emailError" class="error"></div>
              </li>
              <li id ="phoneContainer">
                <div class="phontext required heading">Phone</div>
                <input type="text" name="ph1" id="ph1" class="phoneBox" onkeydown="validatePhone(this)"><span class="slash">-</span> 
                <input type="text" name="ph2" id="ph2" class="phoneBox" onkeydown="validatePhone(this)"><span class="slash">-</span>
                <input type="text" name="ph3" id="ph3" class="phoneBoxLarge" onkeydown="validatePhone(this)">          
                <div id = "phoneError" class="error"></div>
              </li>
            </ul>
            <input type="submit" id="submitbtn" name="submitbtn" onclick="validate()">
          </form>    
      </div>
      <cfif structKeyExists(form,"submitbtn")>
        <cfset local.obj = createObject("component","components.DatabaseOperation")>      
        <cfset local.inserted = local.obj.insertData(form.position,form.relocate,form.date,form.portfolio,form.resume,form.dollar,form.cent,form.first,form.last,form.mail,form.ph1,form.ph2,form.ph3)>
        <cfif local.inserted>
          <p>Submitted Successfully</p>
        <cfelse>
          <p>Submission Failed</p>
        </cfif>
      </cfif>
      <script src="./script/script.js"></script>
      <script src="./script/jquery.js"></script>
  </cfoutput> 
</body>
</html>