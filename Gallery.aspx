<%@ Page Title="" Language="C#" MasterPageFile="Master.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        body {
            font-family: Verdana, sans-serif;
            margin: 0%;
        }

        * {
            box-sizing: border-box;
        }

        .row > .column {
            padding: 0 8px;
        }

        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        .column {
            float: left;
            width: 25%;
        }

        .column1 {
            float: left;
            width: 33%;
            padding: 13px;
        }
        /* The Modal (background) */
        .modal {
            display: none;
            position: fixed;
            z-index: 999;
            padding-top: 100px;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: black;
        }

        /* Modal Content */
        .modal-content {
            position: relative;
            background-color: #fefefe;
            margin: auto;
            padding: 0;
            width: 90%;
            max-width: 1200px;
        }

        /* The Close Button */
        .close {
            color: white;
            position: absolute;
            top: 10px;
            right: 25px;
            font-size: 35px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: #999;
                text-decoration: none;
                cursor: pointer;
            }

        .mySlides {
            display: none;
            background-color: black;
        }

        .cursor {
            cursor: pointer;
        }

        /* Next & previous buttons */
        .prev,
        .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -50px;
            color: white;
            font-weight: bold;
            font-size: 20px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
            -webkit-user-select: none;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

            /* On hover, add a black background color with a little bit see-through */
            .prev:hover,
            .next:hover {
                background-color: rgba(0, 0, 0, 0.8);
            }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        img {
            margin-bottom: -4px;
        }

        .caption-container {
            text-align: center;
            background-color: black;
            padding: 2px 16px;
            color: white;
        }

        .demo {
            opacity: 0.6;
            height: 170px;
        }

            .active,
            .demo:hover {
                opacity: 1;
            }

        img.hover-shadow {
            transition: 0.3s;
        }

        .hover-shadow:hover {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-md-12 ptn-bg">
                    <h2>फ़ोटो गैलरी</h2>
                    <ol class="breadcrumb">
                        <!-- Breadcrumb NavXT 6.3.0 -->
                        <span property="itemListElement" typeof="ListItem">
                            <a property="item" typeof="WebPage" title="Go to Devote Charity." href="Home.aspx" class="home"><span property="name">मुख्य पृष्ठ</span></a><meta property="position" content="1"></span>//<span property="itemListElement" typeof="ListItem"><span property="name">फ़ोटो गैलरी</span><meta property="position" content="2"></span>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div id="content" class="site-content">
        <div class="main-container">
            <!--  Main-container section -->
            <!--  Service section -->
            <div class="container ">
                <div class="row">
                    <h1 class="heading-title" style="text-align: center;">फ़ोटो <span style="color: #f9650e;"> गैलरी</span></h1>
                    <hr style="height: 3px; background-color: #000000; width: 113px; border-top: none; margin-top: -11px; margin-bottom: 25px; position: relative; right: 40px;">
                    <hr style="height: 3px; background-color: #f9650e; width: 113px; border-top: none; margin-top: -21px; margin-bottom: 20px; position: relative; left: 40px;">

                    <div class="col-md-12">
                        <!-- details section -->
                        <div class="row">
                            <div class="col-md-12">
                            </div>
                        </div>




                        <div class="row">

                             <div class="column1">

                                <img src="Images/newphoto/1.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(1)" class="hover-shadow cursor" />
                            </div>
                            <div class="column1">

                                <img src="Images/newphoto/2.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(2)" class="hover-shadow cursor" />
                            </div>
                            <div class="column1">

                                <img src="Images/newphoto/3.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(3)" class="hover-shadow cursor" />
                            </div>
                            <div class="column1">

                                <img src="Images/newphoto/4.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(4)" class="hover-shadow cursor" />
                            </div>
                            <div class="column1">

                                <img src="Images/newphoto/6.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(5)" class="hover-shadow cursor" />
                            </div>
                           
                            
                            <div class="column1">

                                <img src="Images/newphoto/10.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(6)" class="hover-shadow cursor" />
                            </div>
                            <div class="column1">

                                <img src="Images/newphoto/11.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(7)" class="hover-shadow cursor" />
                            </div>
                            <div class="column1">

                                <img src="Images/newphoto/12.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(8)" class="hover-shadow cursor" />
                            </div>
                            <div class="column1">

                                <img src="Images/newphoto/13.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(9)" class="hover-shadow cursor" />
                            </div>
                            <div class="column1">

                                <img src="Images/newphoto/14.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(10)" class="hover-shadow cursor" />
                            </div>
                            <div class="column1">

                                <img src="Images/newphoto/15.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(11)" class="hover-shadow cursor" />
                            </div>
                            <div class="column1">


                                <img src="Images/newphoto/16.jpeg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(12)" class="hover-shadow cursor" />
                            </div>




                            <div class="column1">
                                <img src="Images/Gallery/G6.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(13)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G12.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(14)" class="hover-shadow cursor">
                            </div>



                            <div class="column1">
                                <img src="Images/Gallery/27.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(15)" class="hover-shadow cursor">
                            </div>



                            <div class="column1">
                                <img src="Images/Gallery/G14.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(16)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G15.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(17)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G18.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(18)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G20.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(19)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G22.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(20)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G23.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(21)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G24.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(22)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G25.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(23)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G26.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(24)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G27.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(25)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G28.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(26)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G29.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(27)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G30.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(28)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G31.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(29)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G32.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(30)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/G33.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(31)" class="hover-shadow cursor">
                            </div>


                            <div class="column1">
                                <img src="Images/Gallery/1.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(32)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/2.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(33)" class="hover-shadow cursor">
                            </div>


                            <div class="column1">
                                <img src="Images/Gallery/3.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(34)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/4.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(35)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/5.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(36)" class="hover-shadow cursor">
                            </div>

                            <div class="column1">
                                <img src="Images/Gallery/6.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(37)" class="hover-shadow cursor">
                            </div>

                            <div class="column1">
                                <img src="Images/Gallery/7.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(38)" class="hover-shadow cursor">
                            </div>


                            <div class="column1">
                                <img src="Images/Gallery/8.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(39)" class="hover-shadow cursor">
                            </div>

                            <div class="column1">
                                <img src="Images/Gallery/9.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(40)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/10.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(41)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/11.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(42)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/12.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(43)" class="hover-shadow cursor">
                            </div>


                            <div class="column1">
                                <img src="Images/Gallery/13.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(44)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/14.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(45)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/15.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(46)" class="hover-shadow cursor">
                            </div>

                            <div class="column1">
                                <img src="Images/Gallery/16.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(47)" class="hover-shadow cursor">
                            </div>

                            <div class="column1">
                                <img src="Images/Gallery/18.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(48)" class="hover-shadow cursor">
                            </div>

                            <div class="column1">
                                <img src="Images/Gallery/19.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(49)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/20.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(50)" class="hover-shadow cursor">
                            </div>

                            <div class="column1">
                                <img src="Images/Gallery/21.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(51)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/22.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(52)" class="hover-shadow cursor">
                            </div>


                            <div class="column1">
                                <img src="Images/Gallery/23.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(53)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/24.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(54)" class="hover-shadow cursor">
                            </div>
                            <div class="column1">
                                <img src="Images/Gallery/25.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(55)" class="hover-shadow cursor">
                            </div>

                            <div class="column1">
                                <img src="Images/Gallery/26.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(56)" class="hover-shadow cursor">
                            </div>

                            <div class="column1">
                                <img src="Images/Gallery/26.jpg" style="width: 100%; height: 274px;" onclick="openModal();currentSlide(57)" class="hover-shadow cursor">
                            </div>
                           




                            <div id="myModal" class="modal">
                                <span class="close cursor" onclick="closeModal()">&times;</span>
                                <div class="modal-content">


                                    <div class="mySlides">
                                        <div class="numbertext">1 / 59</div>
                                        <img src="Images/newphoto/1.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">2 / 59</div>
                                        <img src="Images/newphoto/2.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">3 / 59</div>
                                        <img src="Images/newphoto/3.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">4 / 59</div>
                                        <img src="Images/newphoto/4.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">5 / 59</div>
                                        <img src="Images/newphoto/5.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">6 / 59</div>
                                        <img src="Images/newphoto/6.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">8 / 59</div>
                                        <img src="Images/newphoto/8.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">9 / 59</div>
                                        <img src="Images/newphoto/9.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">10 / 59</div>
                                        <img src="Images/newphoto/10.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">11 / 59</div>
                                        <img src="Images/newphoto/11.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">12 / 59</div>
                                        <img src="Images/newphoto/12.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">13 / 59</div>
                                        <img src="Images/newphoto/13.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">14 / 59</div>
                                        <img src="Images/newphoto/14.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">15 / 59</div>
                                        <img src="Images/newphoto/15.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">16 / 59</div>
                                        <img src="Images/newphoto/16.jpeg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                   

                                    <div class="mySlides">
                                        <div class="numbertext">17 / 59</div>
                                        <img src="Images/Gallery/G6.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">18 / 59</div>
                                        <img src="Images/Gallery/G12.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">19 / 59</div>
                                        <img src="Images/Gallery/27.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">20 / 59</div>
                                        <img src="Images/Gallery/G14.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">21 / 59</div>
                                        <img src="Images/Gallery/G15.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">22 / 59</div>
                                        <img src="Images/Gallery/G18.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">23 / 59</div>
                                        <img src="Images/Gallery/G20.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">24 / 59</div>
                                        <img src="Images/Gallery/G22.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">25 / 59</div>
                                        <img src="Images/Gallery/G23.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">26 / 59</div>
                                        <img src="Images/Gallery/G24.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">27 / 59</div>
                                        <img src="Images/Gallery/G25.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">28 / 59</div>
                                        <img src="Images/Gallery/G26.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">29 / 59</div>
                                        <img src="Images/Gallery/G27.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">30 / 59</div>
                                        <img src="Images/Gallery/G28.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">31 / 59</div>
                                        <img src="Images/Gallery/G29.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">32 / 59</div>
                                        <img src="Images/Gallery/G30.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">33 / 59</div>
                                        <img src="Images/Gallery/G31.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">34 / 59</div>
                                        <img src="Images/Gallery/G32.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">35 / 59</div>
                                        <img src="Images/Gallery/G33.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>
                                    <div class="mySlides">
                                        <div class="numbertext">36 / 59</div>
                                        <img src="Images/Gallery/1.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">37 / 59</div>
                                        <img src="Images/Gallery/2.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>


                                    <div class="mySlides">
                                        <div class="numbertext">38 / 59</div>
                                        <img src="Images/Gallery/3.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">39 / 59</div>
                                        <img src="Images/Gallery/4.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>


                                    <div class="mySlides">
                                        <div class="numbertext">40 / 59</div>
                                        <img src="Images/Gallery/5.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">41 / 59</div>
                                        <img src="Images/Gallery/6.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>


                                    <div class="mySlides">
                                        <div class="numbertext">42 / 59</div>
                                        <img src="Images/Gallery/7.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">43 / 59</div>
                                        <img src="Images/Gallery/8.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>



                                    <div class="mySlides">
                                        <div class="numbertext">44 / 59</div>
                                        <img src="Images/Gallery/9.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>



                                    <div class="mySlides">
                                        <div class="numbertext">45 / 59</div>
                                        <img src="Images/Gallery/10.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">46 / 59</div>
                                        <img src="Images/Gallery/11.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">47 / 59</div>
                                        <img src="Images/Gallery/12.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>


                                    <div class="mySlides">
                                        <div class="numbertext">48 / 59</div>
                                        <img src="Images/Gallery/13.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">49 / 59</div>
                                        <img src="Images/Gallery/14.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>


                                    <div class="mySlides">
                                        <div class="numbertext">50 / 59</div>
                                        <img src="Images/Gallery/15.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">51 / 59</div>
                                        <img src="Images/Gallery/16.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>


                                    <div class="mySlides">
                                        <div class="numbertext">52 / 59</div>
                                        <img src="Images/Gallery/17.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">53 / 59</div>
                                        <img src="Images/Gallery/18.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>



                                    <div class="mySlides">
                                        <div class="numbertext">54 / 59</div>
                                        <img src="Images/Gallery/19.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>



                                    <div class="mySlides">
                                        <div class="numbertext">55 / 59</div>
                                        <img src="Images/Gallery/20.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">56 / 59</div>
                                        <img src="Images/Gallery/21.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">57 / 59</div>
                                        <img src="Images/Gallery/22.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>


                                    <div class="mySlides">
                                        <div class="numbertext">58 / 59</div>
                                        <img src="Images/Gallery/23.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">59 / 59</div>
                                        <img src="Images/Gallery/24.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>


                                    <div class="mySlides">
                                        <div class="numbertext">59 / 59</div>
                                        <img src="Images/Gallery/25.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">59 / 59</div>
                                        <img src="Images/Gallery/26.jpg" style="width: 100%; padding-left: 25%; padding-right: 25%; height: 370px;">
                                    </div>


                                  

                                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                                    <a class="next" onclick="plusSlides(1)">&#10095;</a>

                                    <div class="caption-container">
                                        <p id="caption"></p>
                                    </div>




                                </div>
                            </div>

                        </div>
                        <!-- detail section ending -->

                    </div>
                </div>
                <!-- Service section ending-->
            </div>
            <!--  Main-containre section ending-->
        </div>
</asp:Content>

