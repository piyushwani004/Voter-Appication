<!DOCTYPE html>
<html lang="en">
    <head>
        <title>REGISTRATION</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
        <style>
            body {
                font-family: sans-serif;
                background-color: #eeeeee;
            }

            .file-upload {
                background-color: #ffffff;
                width: 600px;
                margin: 0 auto;
                padding: 20px;
            }

            .file-upload-btn {
                width: 100%;
                margin: 0;
                color: #fff;
                background: #1FB264;
                border: none;
                padding: 10px;
                border-radius: 4px;
                border-bottom: 4px solid #15824B;
                transition: all .2s ease;
                outline: none;
                text-transform: uppercase;
                font-weight: 700;
            }

            .file-upload-btn:hover {
                background: #1AA059;
                color: #ffffff;
                transition: all .2s ease;
                cursor: pointer;
            }

            .file-upload-btn:active {
                border: 0;
                transition: all .2s ease;
            }

            .file-upload-content {
                display: none;
                text-align: center;
            }

            .file-upload-input {
                position: absolute;
                margin: 0;
                padding: 0;
                width: 100%;
                height: 100%;
                outline: none;
                opacity: 0;
                cursor: pointer;
            }

            .image-upload-wrap {
                margin-top: 20px;
                border: 4px dashed #1FB264;
                position: relative;
            }

            .image-dropping,
            .image-upload-wrap:hover {
                background-color: #1FB264;
                border: 4px dashed #ffffff;
            }

            .image-title-wrap {
                padding: 0 15px 15px 15px;
                color: #222;
            }

            .drag-text {
                text-align: center;
            }

            .drag-text h3 {
                font-weight: 100;
                text-transform: uppercase;
                color: #15824B;
                padding: 60px 0;
            }

            .file-upload-image {
                max-height: 200px;
                max-width: 200px;
                margin: auto;
                padding: 20px;
            }

            .remove-image {
                width: 200px;
                margin: 0;
                color: #fff;
                background: #cd4535;
                border: none;
                padding: 10px;
                border-radius: 4px;
                border-bottom: 4px solid #b02818;
                transition: all .2s ease;
                outline: none;
                text-transform: uppercase;
                font-weight: 700;
            }

            .remove-image:hover {
                background: #c13b2a;
                color: #ffffff;
                transition: all .2s ease;
                cursor: pointer;
            }

            .remove-image:active {
                border: 0;
                transition: all .2s ease;
            }
        </style>
    </head>
    <body>


        <div class="container-contact100" style="background-color: #1994ac;">


            <div class="wrap-contact100" style="border: 2px solid #3300ff;">
                <div class="contact100-form-title" style="background-image: url(images/bg-01.jpg);">
                    <span class="contact100-form-title-1">
                        Voters Registration Form
                    </span>				
                </div>

                <form class="contact100-form validate-form"  action="<%=request.getContextPath()%>/VoterServlet" enctype="multipart/form-data" method="post">

                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Portrait_Photo:</span>
                        <input type="file" class="form-control" name="file" required="required" placeholder="Enter photo">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Name is required">
                        <span class="label-input100">First_Name:</span>
                        <input class="input100" type="text" name="Fname" placeholder="Enter First name">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Name is required">
                        <span class="label-input100">Last_Name:</span>
                        <input class="input100" type="text" name="Lname" placeholder="Enter Last name">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                        <span class="label-input100">Email:</span>
                        <input class="input100" type="text" name="Email" placeholder="Enter email addess">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Phone is required">
                        <span class="label-input100">Phone:</span>
                        <input class="input100" type="text" name="Mobile" placeholder="Enter phone number">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="City is required">
                        <span class="label-input100">City:</span>
                        <input class="input100" type="text" name="City" placeholder="Enter City">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Deparment is required">
                        <span class="label-input100">Department:</span>
                        <input class="input100" type="text" name="Dept" placeholder="Enter Deparment">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Roll Number is required">
                        <span class="label-input100">Party_Name:</span>
                        <input class="input100" type="text" name="Party_Name" placeholder="Enter Party Number">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="container-contact100-form-btn">
                        <button class="contact100-form-btn">
                            <span>
                                Submit
                                <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                            </span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <div id="dropDownSelect1"></div>

        <script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <!--===============================================================================================-->
        <script src="js/main_1.js"></script>
        <!--===============================================================================================-->
        <!--===============================================================================================-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
        <script src="js/map-custom.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-23581568-13');
        </script>

    </body>
</html>
