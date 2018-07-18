
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
				  	
				
				
				
		</style>
		
		<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		<script type="text/javascript" src=  "<c:url value="/js/jquery-3.3.1.js"/>">  </script>
		<script type="text/javascript" src=  "<c:url value="/js/base.js"/>">  </script>
		<script type="text/javascript" src=  "<c:url value="/js/mydoctor.js"/>">  </script>
		
		<script type="text/javascript" > var myContextPath = "${pageContext.request.contextPath}";  </script>
		
		
		
	</head>
	<body>
		<div class="container">
			<div class="header">
				<tiles:insertAttribute name="header" />
			</div>
			<div id="content">
				<tiles:insertAttribute name="content" />
			</div>
			<div class="footer">
				<tiles:insertAttribute name="footer" />
			</div>			
		</div>
	</body>
</html>