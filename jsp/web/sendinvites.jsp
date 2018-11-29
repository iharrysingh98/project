<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Java Mail </title>
    </head>
    
    
    
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button
		{
			border-radius: 2px;
			background-color: crimson;
			color: white;
			font-size: 20px;
			padding: 3px 3px 3px 3px;
			margin: 0px 5px 5px 0px;
		}
button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
     <body background = "images\blur.jpg" style = "background-attachment: fixed;">
        <form action="sendMail.jsp" method="POST">
            <table border="0" align="center" cellpadding="5">
                <tbody>
                    <thead><tr> <td colspan="3" align="center">
                    <b> Send Mail </b> </td> </tr> </thead>
                    <tr>
                        <td> To </td> <td> : </td>
                        <td> <input type="text" name="to" value="" /> </td>
                    </tr>
                    <tr>
                        <td> Subject </td> <td> : </td>
                        <td> <input type="text" name="subject" value="" /> </td>
                    </tr>
                    <tr>
                        <td> Message </td> <td> : </td>
                        <td> <textarea name="message" rows="8" cols="30">
                        </textarea></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                      <button type = "submit" id = "submit" class="button"> Send mail </button><br>
					<button type = "reset" id = "reset"> Reset </button><br>
                        <td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>