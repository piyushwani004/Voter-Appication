<html lang = "en">
   <head>
      <!-- Meta tags -->
      <meta charset = "utf-8">
      <meta name = "viewport" content = "width = device-width, initial-scale = 1, shrink-to-fit = no">
      
      <!-- Bootstrap CSS -->
      <link rel = "stylesheet" 
         href = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
         integrity = "sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
         crossorigin = "anonymous">
      
      <title>Registration Page</title>
      <style type="text/css">
        body
        {
           background-color:#83e0dc;
        }
      </style>
   </head>
   
   <body>
   <form action="<%=request.getContextPath()%>/RegisterServlet" method="get">
      <div class = "container">
         <form>
            <h2>Registration Form</h2>
            <br/>
            <br/>
            <div class = "form-row">
               <div class = "form-group col-md-6">
                  <label for = "inputEmail4">First Name</label>
                  <input type = "text" name="Fname" class =" form-control" 
                     id = "inputEmail4" placeholder = "First Name">
               </div>
               
               <div class = "form-group col-md-6">
                  <label for = "inputPassword4">Last Name</label>
                  <input type = "text" name="Lname" class = "form-control" 
                     id = "inputPassword4" placeholder = "Last Name">
               </div>
            </div>
            
            <div class = "form-row">
               <div class = "form-group col-md-6">
                  <label for = "inputEmail4">Email ID</label>
                  <input type = "text" name="Email" class =" form-control" 
                     id = "inputEmail41" placeholder = "Enter Email ID">
               </div>
               
               <div class = "form-group col-md-6">
                  <label for = "inputPassword4">Mobile No.</label>
                  <input type = "text" name="Mobile" class = "form-control" 
                     id = "inputPassword41" placeholder = "Enter Mobile No.">
               </div>
            </div>
            
            <div class = "form-row">
               <div class = "form-group col-md-6">
                  <label for = "inputCity">City</label>
                  <input type = "text" name="City" class = "form-control" placeholder = "City" 
                     id = "inputCity">
               </div>
               
               <div class = "form-group col-md-4">
                  <label for = "inputState">Department</label>
                  <select id = "inputState" name="Dept" class = "form-control">
                     <option selected disabled>Select Department</option>
                     <option>Computer</option>
                     <option>Mechanical</option>
                     <option>Civil</option>
                     <option>Electrical</option>
                     <option>MBA</option>
                  </select>
               </div>
               
               <div class = "form-group col-md-2">
                  <label for = "inputZip">Pin Code</label>
                  <input type = "text" name="Pin" class = "form-control" id = "inputZip" 
                     placeholder = "Pin Code">
               </div>
            </div>
            
            <div class = "form-group">
               <div class = "form-check">
                  <input class = "form-check-input" type = "checkbox" id = "gridCheck" >
                  <label class = "form-check-label" for = "gridCheck">
                     I Agree To Terms and Conditions
                  </label>
               </div>
            </div>
            <button type = "submit" class = "btn btn-primary">Register</button>
         </form>
      </div>
      
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src = "https://code.jquery.com/jquery-3.3.1.slim.min.js" 
         integrity = "sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
         crossorigin = "anonymous">
      </script>
      
      <script src = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
         integrity = "sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" 
         crossorigin = "anonymous">
      </script>
      
      <script src = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
         integrity = "sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" 
         crossorigin = "anonymous">
      </script>
      
      
      </form>
   </body>
</html>