<%@ Page Title="" Language="C#" MasterPageFile="Master.master" AutoEventWireup="true" CodeFile="Press.aspx.cs" Inherits="Press" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
         
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
                padding: 20px;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="page-title">
	  <div class="container">
		<div class="row">
		  <div class="col-md-12 ptn-bg">
			<h2>प्रेस</h2>
			<ol class="breadcrumb">
			<!-- Breadcrumb NavXT 6.3.0 -->
<span property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage" title="Go to Devote Charity." href="Home.aspx" class="home">
    <span property="name">मुख्य पृष्ठ</span></a><meta property="position" content="1"></span>//<span property="itemListElement" typeof="ListItem">
        <span property="name">प्रेस</span><meta property="position" content="2"></span>			</ol>
		  </div>
		</div>
	  </div>
	</div>
    
    	<div class="container ">
   <div class="m80">
     

         <div class="row">
             <h1 class="text-center main-title" style="color: #f9650e;">प्रेस</h1>
  <div class="column1 effect-bubba pic-zoom" >
    <img src="Images/News/N1.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
    
  </div>
  <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N2.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
  </div>
  <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N3.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
  </div>
  <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N4.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(4)" class="hover-shadow cursor">
  </div>
                     <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N5.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(5)" class="hover-shadow cursor">
  </div>
                     <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N6.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(6)" class="hover-shadow cursor">
  </div>
                     <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N7.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(7)" class="hover-shadow cursor">
  </div>
                     <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N8.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(8)" class="hover-shadow cursor">
  </div>
                     
                     <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N9.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(9)" class="hover-shadow cursor">
  </div>
                     <div class="column1 effect-bubba pic-zoom">
    <img src="Images/News/N10.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(10)" class="hover-shadow cursor">
  </div>
                    <div class="column1 effect-bubba pic-zoom" >
    <img src="Images/News/N11.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(11)" class="hover-shadow cursor">
    
  </div>
  <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N12.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(12)" class="hover-shadow cursor">
  </div>
  <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N13.jpg" style="width:100%;height: 274px;    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(13)" class="hover-shadow cursor">
  </div>
  <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N14.jpg" style="width:100%;height: 274px;
       box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(14)" class="hover-shadow cursor">
  </div>
                     <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N15.jpg" style="width:100%;height: 274px;
       box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(15)" class="hover-shadow cursor">
  </div>
                     <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N16.jpg" style="width:100%;height: 274px;
      box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(16)" class="hover-shadow cursor">
  </div>
                     <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N17.jpg" style="width:100%;height: 274px;
      box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(17)" class="hover-shadow cursor">
  </div>
                     <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N18.jpg" style="width:100%;height: 274px;
    box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(18)" class="hover-shadow cursor">
  </div>
                    
                     <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N19.jpg" style="width:100%;height: 274px;
      box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(19)" class="hover-shadow cursor">
  </div>
               <div class="column1  effect-bubba pic-zoom">
    <img src="Images/News/N20.jpg" style="width:100%;height: 274px;
       box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(20)" class="hover-shadow cursor">
  </div>

                     <div class="column1 effect-bubba pic-zoom">
    <img src="Images/News/N21.jpg" style="width:100%;height: 274px;
      box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(21)" class="hover-shadow cursor">
  </div>
               <div class="column1 effect-bubba pic-zoom">
    <img src="Images/News/N22.jpg" style="width:100%;height: 274px;
       box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(22)" class="hover-shadow cursor">
  </div>
               <div class="column1 effect-bubba pic-zoom">
    <img src="Images/News/N23.jpg" style="width:100%;height: 274px;
        box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(23)" class="hover-shadow cursor">
  </div>
               <div class="column1 effect-bubba pic-zoom">
    <img src="Images/News/N24.jpg" style="width:100%;height: 274px;
      box-shadow: 0 0 4px 5px #575758;
    border-radius: 1%;" onclick="openModal();currentSlide(24)" class="hover-shadow cursor ">

  </div>
             
                   


</div>

<div id="myModal" class="modal">
  <span class="close cursor" onclick="closeModal()">&times;</span>
  <div class="modal-content">

    <div class="mySlides">
      <div class="numbertext">1 / 24</div>
      <img src="Images/News/N1.jpg" style="width: 100%;
    padding-left: 32%;
    padding-right: 32%;
    height: 500px;">
    </div>

    <div class="mySlides">
      <div class="numbertext">2 / 24</div>
      <img src="Images/News/N2.jpg" style="width: 100%;
    padding-left: 32%;
    padding-right: 32%;
    height: 500px;">
    </div>

    <div class="mySlides">
      <div class="numbertext">3 / 24</div>
      <img src="Images/News/N3.jpg" style="width: 100%;
    padding-left: 32%;
    padding-right: 32%;
    height: 500px;">
    </div>
    
    <div class="mySlides">
      <div class="numbertext">4 / 24</div>
      <img src="Images/News/N4.jpg" style="width: 100%;
    padding-left: 32%;
    padding-right: 32%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">5 / 24</div>
      <img src="Images/News/N5.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">6 / 24</div>
      <img src="Images/News/N6.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">7 / 24</div>
      <img src="Images/News/N7.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">8 / 24</div>
      <img src="Images/News/N8.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">9 / 24</div>
      <img src="Images/News/N9.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">10 / 24</div>
      <img src="Images/News/N10.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">11 / 24</div>
      <img src="Images/News/N11.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">12 / 24</div>
      <img src="Images/News/N12.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">13 / 24</div>
      <img src="Images/News/N13.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">14 / 24</div>
      <img src="Images/News/N14.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">15 / 24</div>
      <img src="Images/News/N15.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">16 / 24</div>
      <img src="Images/News/N16.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">18 / 24</div>
      <img src="Images/News/N17.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
       <div class="mySlides">
      <div class="numbertext">19 / 24</div>
      <img src="Images/News/N18.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
         <div class="mySlides">
      <div class="numbertext">19 / 24</div>
      <img src="Images/News/N18.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
         <div class="mySlides">
      <div class="numbertext">20 / 24</div>
      <img src="Images/News/N20.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
         <div class="mySlides">
      <div class="numbertext">21 / 24</div>
      <img src="Images/News/N21.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
         <div class="mySlides">
      <div class="numbertext">22 / 24</div>
      <img src="Images/News/N22.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
         <div class="mySlides">
      <div class="numbertext">23 / 24</div>
      <img src="Images/News/N23.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>
         <div class="mySlides">
      <div class="numbertext">24 / 24</div>
      <img src="Images/News/N24.jpg" style="width:100%;padding-left: 25%;
    padding-right: 25%;
    height: 500px;">
    </div>



    
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>

    <div class="caption-container">
      <p id="caption"></p>
    </div>
  




    <%--   <div class="row">
            <div class="col-md-4 nopadding blog-boxed column1"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N1.jpg"  onclick="openModal();currentSlide(4)" class="hover-shadow cursorge" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div>
                   <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N2.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div>
                          <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N4.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
               


                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N5.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N6.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N7.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N8.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N9.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N10.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 


                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N11.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div>
                  <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N12.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div>
                          <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N14.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
               


                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N15.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N16.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N17.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N18.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N19.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N20.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 

                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N21.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div>
                <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N22.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div>
                          <div class="col-md-4 nopadding blog-boxed"><figure class="effect-bubba pic-zoom">
                <img width="800" height="480" src="Images/News/N24.jpg" class="img-responsive wp-post-image" alt=""  sizes="(max-width: 800px) 100vw, 800px">
			
			<figcaption>
			<div class="box_link">
              
			  
              
			  </div>
            </figcaption>
          </figure></div> 
               


               
               
               </div>--%></div>
            </div></div></div>
</asp:Content>

