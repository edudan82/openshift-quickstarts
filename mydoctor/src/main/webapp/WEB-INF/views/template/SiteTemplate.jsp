		<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>My Doctor</title>
		
		<style>
		
		   *{
			  margin: 0;  
			  padding: 0;
			}		   
			
			*::before,
			*::after{
			   box-sizing: inherit; 
			}
			
			html{
			  box-sizing: border-box;  
			  font-size:62.5%
			}
			
			
			@media all and (max-width: 800px) {
				html{
				   font-size:57.5%;
				}
			}
			
			@media all and (max-width: 600px) {
				html{
				   font-size:47.5%;
				}
			}
			
			
			body{
			  min-height: 100vh; 
			}
			
			
			
			.container {
			  display: flex;  
			  flex-direction:column;
			  justify-content:space-between;			  
			  font-weight: bold;
			  text-align: center;
			  min-height: 70rem;
			  background-image:linear-gradient( to bottom right,    grey, darkblue );
			}
			

			
			.header {
			
			}
			

			
			.content {
			  flex: 1;
			  display: flex;
			  text-align: left;		  
			  margin: 4rem auto;
			  box-shadow: 0 2rem 6rem rgba(0,0,0,.3); 
			   width:95%;
			   min-height: 55rem;
			  
			}	
			
			
				.sidebar{
				  flex: 0 0 18%;
				  background: black;
				}
				
				.main{
				  flex: 1;
				  display:flex;
				  background: white;

				}
			
			.footer {
			  flex: 0;	
			}
			
			
			.footer h4 {
			font-size:1.2rem;
			color:white;
			  padding: 0 2rem 1rem 2rem;
			}

			
			@media all and (max-width: 800px) {
			
				.sidebar{
				  flex: 0 0 28%;
				}
			
			}
			
			@media all and (max-width: 600px) {
			
			    .container {

			       min-height: 90rem;
			    }
			
			
				.content {
				
				  flex: 1;
				  display: flex;  
				  flex-direction:column;
				  justify-content:space-between;
				  margin: 1rem auto;
				  width:98%
				  

				}
				
				.sidebar{
					flex: 0;
				}
				
				.main{
				  	flex: 1;
				  	display:flex;
         			background:grey;
				  	
				}	
				
	
			

			}
			

			
				.navigation {
				   font-size:1.4rem;
				  list-style: none;
				  margin: 0;
				  background-color: deepskyblue;
				  display: flex;			
				  justify-content: flex-end;
				  align-self:stretch;
				  text-align: center;
				}
				
				  .navigation a,
				  .navigation a:link,
				  .navigation a:visited 
				  {
				  	color:white;
				    display:block;
				    text-decoration: none;
				    padding: 1rem 2.5rem;
				    align-items: center;
				    position:relative;
				    z-index:2;
				    
				  }
				  
				  .navigation li {

				  	position:relative;
				  }
				  
				  .navigation li:not(:last-child) {
				    margin-right:.5rem;

				  }
				  
				  .navigation li::before {
				    content:"";
				    position:absolute;
				    top:0;
				    left:0;
				    height:.3rem;
				    width:100%;
				    background-color:darkblue;
				    transform:scaleX(0);
				    transition: transform .1s , 
				    			height .3s cubic-bezier(1,0,0,1) .1s ,
				    			background-color .2s;
				  }
				  
				  .navigation li:active::before{
				    
				    background-color:red;
				  }
				  
				  
				   .navigation li:hover::before{
				    
	
				    transform:scaleX(1);
				    height:100%;
				  }

				
				@media all and (max-width: 800px) {
				  .navigation {
				    justify-content: space-around;
				    
				  }
				  
				  
				  
				  .navigation li {

				  		width:100%;
				  }
				}
				
				
				@media all and (max-width: 600px) {
				  .navigation {
				    -webkit-flex-flow: column wrap;
				    flex-flow: column wrap;
				    padding: 0;
				  }
				
				  .navigation a {
				    text-align: center;
				    padding: 10px;
				    border-top: 1px solid rgba(255, 255, 255, 0.3);
				    border-bottom: 1px solid rgba(0, 0, 0, 0.1);
				  }
				
				  .navigation li:last-of-type a {
				    border-bottom: none;
				  }
				}
				
				
				
				
				
				  .side-nav {
				    font-size:1.4rem;
				    list-style: none;
				    margin-top:3.5rem;
				    
				  }
				  
				  
				  @media all and (max-width: 600px) {
					  .side-nav {
						 margin-top:0;
					  }
				  }
				  
				  .side-nav a,
				  .side-nav a:link,
				  .side-nav a:visited 
				  {
				  	color:white;
				    display:block;
				    text-decoration: none;
				    padding: 1.5rem 2rem;
				    align-items: center;
				    position:relative;
				    z-index:2;
				    
				  }
				  
				  
				  .side-nav li {
				    position:relative;

				  }
				  
				  .side-nav li:not(:last-child) {
				    margin-bottom:.5rem;

				  }
				  
				  
				  .side-nav li::before {
				    content:"";
				    position:absolute;
				    top:0;
				    left:0;
				    height:100%;
				    width:3px;
				    background-color:#00b7f5;
				    transform:scaleY(0);
				    transition: transform .3s , 
				    			width .6s cubic-bezier(1,0,0,1) .3s ,
				    			background-color .3s;
				    
				    
				  }
				  
				  .side-nav li:active::before{
				    
				    background-color:red;
				  }
				  
				  
				   .side-nav li:hover::before{
				    
	
				    transform:scaleY(1);
				    width:100%;
				  }
				  
				  

				  
				    .form__content
           {
        
                display:flex;

  
                width:100%;
                
               flex-direction: column;
               justify-content: space-between;
                
                                
                background:blue; 
                position:relative;
                
           }
       
  
       
                   .form__search__header
                   {
                 
                       width:98%; 
                       margin:0 auto;
                       
                       z-index:3;
					                 
					   display: flex;
					   align-items: center;
					   justify-content: center;
					   background:yellow;
                   }
       
                   .form__search__footer
                   {
                      width:98%; 
                      margin:0 auto;
                      background:orange;
                      z-index:3;
                      display:flex;
                      justify-content:flex-end;
                   }
       
               .form__main
               {
                    
                   

                    background:brown;
                    height:70%;
                    width:90%;
                    margin:auto ;
                    z-index:2;
                   
               }
               
               
               
               
               .pagination
               {
                 flex:0 1 auto;
                 display:flex;  
                 justify-content:flex-end;
               }
               
               .pagination > li
               {                
                 display:flex;  
               }
               
.pagination {
  text-align: center; }
  .pagination ul {
    list-style: none;
    margin: 0;
    padding: 0;
    text-align: center; }


  .pagination a {
    border-radius: 3px;
    box-shadow: rgba(0, 0, 0, 0.2) 0 0 0 1px;
    margin: .1rem .2rem;
    padding: .5rem 1rem;
    border-top: 1px solid #fff;
    text-decoration: none;
    color: #999;
    font-size: smaller;
    font-family: "Helvetica Neueu", Helvetica, Arial, sans-serif;
    text-shadow: white 0 1px 0;
    background-color: #f0eeee;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#f9f9f9), to(#eaeaea));
    background-image: -webkit-linear-gradient(top, #f9f9f9, #eaeaea);
    background-image: -moz-linear-gradient(top, #f9f9f9, #eaeaea);
    background-image: -ms-linear-gradient(top, #f9f9f9, #eaeaea);
    background-image: -o-linear-gradient(top, #f9f9f9, #eaeaea);
    background-image: linear-gradient(top, #f9f9f9, #eaeaea);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f9f9f9', EndColorStr='#eaeaea'); }
    .pagination a:first-child, .pagination a.first {
      margin-left: 0; }
    .pagination a:last-child, .pagination a.last {
      margin-right: 0; }
    .pagination a:hover, .pagination a:focus {
      border-color: #fff;
      background-color: #fdfdfd;
      background-image: -webkit-gradient(linear, left top, left bottom, from(#fefefe), to(#fafafa));
      background-image: -webkit-linear-gradient(top, #fefefe, #fafafa);
      background-image: -moz-linear-gradient(top, #fefefe, #fafafa);
      background-image: -ms-linear-gradient(top, #fefefe, #fafafa);
      background-image: -o-linear-gradient(top, #fefefe, #fafafa);
      background-image: linear-gradient(top, #fefefe, #fafafa);
      filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#fefefe', EndColorStr='#fafafa'); }
    .pagination a.more {
      box-shadow: 0 0 0 0 transparent;
      border: 0 none;
      background: transparent;
      margin-left: 0;
      margin-right: 0; }
    .pagination a.active {
      box-shadow: rgba(0, 0, 0, 0.75) 0 0 0 0 inset;
      border-color: #505050;
      color: #f0eeee;
      text-shadow: black 0 1px 0;
      background-color: #333;
      background-image: -webkit-gradient(linear, left top, left bottom, from(#5f5f5f), to(#5c5c5c));
      background-image: -webkit-linear-gradient(top, #5f5f5f, #5c5c5c);
      background-image: -moz-linear-gradient(top, #5f5f5f, #5c5c5c);
      background-image: -ms-linear-gradient(top, #5f5f5f, #5c5c5c);
      background-image: -o-linear-gradient(top, #5f5f5f, #5c5c5c);
      background-image: linear-gradient(top, #5f5f5f, #5c5c5c);
      filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#5f5f5f', EndColorStr='#5c5c5c'); }
        
        
        
   
.search__input {
  font-family: inherit;
  font-size: inherit;
  color: inherit;
  background-color: #f4f2f2;
  border: none;
  padding: 0.7rem 2rem;
  border-radius: 100px;
  width: 60%;
  transition: all 0.2s;
  margin-right: -5.25rem;
}
.search__input:focus {
  outline: none;
  width: 80%;
  background-color: #f0eeee);
}
.search__input::-webkit-input-placeholder {
  font-weight: 100;
  color: white;
}
.search__input:focus + .search__button {
  background-color: #f0eeee;
}
.search__button {
  border: none;
  background-color: #f4f2f2;
  cursor: pointer;
}
.search__button:focus {
  outline: none;
  cursor: pointer;
}
.search__button:active {
  transform: translateY(1px);
  cursor: pointer;
}
.search__icon {
  height: 2rem;
  width: 2rem;
  fill: #999;
}      
.bar {
  fill: grey; /* changes the background */
  height: 21px;
  transition: fill .3s ease;
  cursor: pointer;
  font-family: Helvetica, sans-serif;
}
.bar text {
  color: black;
}
.bar:hover,
.bar:focus {
  fill: black;
}
.bar:hover text,
.bar:focus text {
  fill: red;
}
				  
				  
				  	
				
				
				
		</style>
		


		
		
		
		
	<script type="text/javascript" > var myContextPath = "${pageContext.request.contextPath}";  </script>	
	</head>
	<body>
		<div class="container">
			<div class="header">
				<tiles:insertAttribute name="header" />
			</div>
			<div class="content" id="content">
				<tiles:insertAttribute name="content" />
			</div>
			<div class="footer">
				<tiles:insertAttribute name="footer" />
			</div>			
		</div>
	</body>
		<script type="text/javascript" src=  "<c:url value="/js/jquery-3.3.1.js"/>">  </script>
		<script type="text/javascript" src=  "<c:url value="/js/base.js"/>">  </script>
		<script type="text/javascript" src=  "<c:url value="/js/mydoctor.js"/>">  </script>
</html >