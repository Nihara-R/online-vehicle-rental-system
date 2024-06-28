function validateForm() {
                    var firstname = document.getElementById("firstname").value;
                    var lastname = document.getElementById("lastname").value;
                    var email = document.getElementById("email").value;
                    var phone = document.getElementById("phone").value;
                    var password = document.getElementById("password").value;
                    var passwordRepeat = document.getElementById("password-repeat").value;

                    
                    if (firstname === "") {
                      alert("First Name must be filled out");
                      return false;
                    }
                    if (lastname === "") {
                      alert("Last Name must be filled out");
                      return false;
                    }
                    if (email === "") {
                      alert("Email must be filled out");
                      return false;
                    }
                    if (phone === "") {
                      alert("Mobile Number must be filled out");
                      return false;
                    }
                    if (password === "") {
                      alert("Password must be filled out");
                      return false;
                    }
                    if (password !== passwordRepeat) {
                      alert("Passwords do not match");
                      return false;
                    }

                   
                    return true;
                  }