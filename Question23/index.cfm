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
    <form  onsubmit="return validate();" method="POST">
      <ul>
        <li>
          <label for="position" class="required">which position are you applying for?</label><br>
          <select name="position" id="position" class="selectBox">
            <option value="selectcard"></option>
            <option value="Interface Designer">Interface Designer</option>
            <option value="Software Enginer">Software Engineer</option>
            <option value="System Administrator">System Administrator</option>
            <option value="Office Manger">Office Manger</option>
          </select>
           <div id="positionError" class="error"></div>
        </li>
        <li>
          <div class="required">Are you willing to relocate</div>
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
        <li>
          <div class="startTime required">When you can start?</div>
         <input type="date" name="date" id="date" class="dateItem">  <!--<span class="slash">/</span> -->
          <!-- <input type="text" name="" id="" class="startdateItem2" required><span class="slash">/</span>
          <input type="text" name="" id="" class="startdateItem3" required> -->
          <div id="timeError" class="error"></div>
        </li>
        <li>
          <label for="portfolio">Portfolio Web Site</label><br>
          <input type="text" name="portfolio" id="portfolio" class="portfolio">
        </li>
        <li>
          <label for="resume">Attach a copy of Your Resume</label><br>
          <input type="file" name="resume" id="resume">
          <p>word or pdf Documents only</p>
        </li>
        <li>
          <div class="salryrequirement">Salary Requirements</div>
          <input type="text" name="dollar" id="dollar" class="salaryBox1">
          <span></span>
          <input type="text" name="cent" id="cent" class="salaryBox2">
        </li>
        <li>
          <div class="cntinfo">Your Contact Information</div>
          <label for="first" class="required">Name</label><br>
          <input type="text" name="first" id="first">
          <input type="text" name="last" id="last">
          <div id="contactError" class="error"></div>
        </li>
        <li>
          <label for="mail" class="required">Email Address</label><br>
          <input type="text" name="mail" id="mail">
          <div id="emailError" class="error"></div>
        </li>
        <li>
          <div class="phontext required">Phone</div>
          <!-- <input type="email" name="ph" id="ph1" class="phoneBox" required><span class="slash">-</span> -->
          <!-- <input type="email" name="ph" id="ph2" class="phoneBox" required><span class="slash">-</span> -->
          <input type="text" name="ph" id="phone" class="phone">
          <div id = "phoneError" class="error"></div>
        </li>
      </ul>
      <input type="submit" id="submitbtn" name="submitbtn" onclick="validate()">
    </form>    
  </div>
  <cfif structKeyExists(form,"submitbtn")>
      <cfset local.obj = createObject("component","components.DatabaseOperation")>
      <cfdump var="#form.relocate#" >
      #local.obj.insertData(form.position,form.relocate,form.date,form.portfolio,form.resume,form.dollar,form.cent,form.first,form.last,form.mail,form.ph)#      
  </cfif>  
  <script src="./script/script.js"></script>
  </cfoutput> 
</body>
</html>