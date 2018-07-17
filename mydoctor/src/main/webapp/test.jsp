<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>popup</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>

    <style type="text/css">
        .popup{
            height:100vh;
            width:100%;
            position:fixed;
            top:0;
            left:0;
            background-color: rgba(0,0,0,.5);
            opacity :0;
            visibility:hidden;
            transition: all 1s;
            
            display:flex;   
            display: -webkit-flex; 
            -webkit-flex-direction: column;
            flex-direction: column;
            -webkit-align-items: center;
            align-items: center;
            -webkit-justify-content: center;
            justify-content: center;
        }
        
        
        .popup:target
        {
            opacity :1;
            visibility:visible;
        }
        
        .popup:target .popup__content
        {
            opacity :1;
            transform:scale(1);
        }
        
        
        .popup__content{
            
            min-width:45%;
            max-width:65%;
            min-height:10rem;
            background-color: white;
            box-shadow: 0 2rem 4rem rgba(0,0,0,.3);
            border-radius: 3px;
            opacity:0;
            transform: scale(.25);
            transition: all .5s 1s;
            padding:1rem;           

        }
        
        .popup__bar
        {
            display:flex;   
            display: -webkit-flex;  
            -webkit-justify-content: flex-end;
            justify-content: flex-end;
            background-color:red;
        }
        
        .popup__title
        {
             display:flex;   
             display: -webkit-flex;  
             -webkit-justify-content: center;
             justify-content: center;
             background-color :yellow;
        
        }
        .popup__message
        {
         
             background-color:orange;
         
        }
        
        .popup__actions
        {
             display:flex;   
             display: -webkit-flex;  
             -webkit-justify-content: flex-end;
             justify-content: flex-end;
             background-color:purple;
           
        }        

        .popup__close:link,
        .popup__close:visited
        {
            color:grey;
            font-size: 3rem;
            text-decoration:none;            
           
        }
        
        .popup__close:hover
        {
            color:purple;
        }
        
        
        
        
        .btn, .btn:link, .btn:visited {
	text-transform: uppercase;
	text-decoration: none;
	padding: 1.5rem 4rem;
	display: inline-block;
	border-radius: 10rem;
	transition: all .2s;
	position: relative;
	font-size: 1 rem;
	border: none;
	cursor: pointer;
}

.btn:hover {
	transform: translateY(-3px);
	box-shadow: 0 1rem 2rem rgba(0, 0, 0, 0.2);
}

.btn:hover::after {
	transform: scaleX(1.4) scaleY(1.6);
	opacity: 0;
}

.btn:active, .btn:focus {
	outline: none;
	transform: translateY(-1px);
	box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.2);
}

.btn--white {
	background-color: white;
	color: gret;
}

.btn--white::after {
	background-color: white;
}

.btn--green {
	background-color: green;
	color: white;
}

.btn--green::after {
	background-color: green;
}

.btn--red {
	background-color: red;
	color: white;
}

.btn--red::after {
	background-color: red;
}

.btn::after {
	content: "";
	display: inline-block;
	height: 100%;
	width: 100%;
	border-radius: 10rem;
	position: absolute;
	top: 0;
	left: 0;
	z-index: -1;
	transition: all .4s;
}

.btn--animated {
	animation: moveInBottom .5s ease-out .75s;
	animation-fill-mode: backwards;
}
        
        
    </style>
</head>


<body>

<a href="#popup" class="showPopup">popup</a>

<div class="popup" id="popup">
    <div class="popup__content">            
            <div class="popup__bar">
                <a href="#" class="popup__close">&times</a>
            </div>
            <div class="popup__title">
                <h2 class="heading-secondary">popup 1</h2>
             </div>
             <div class="popup__message">
                <p class="popup_text">
                    content of the pop up content of th
                </p>
             </div>
             <div class="popup__actions">   
                <a class="btn btn__green">save</a>
                <a class="btn btn__red">cancel</a>
            </div>
            
    </div>
</div>





</body>
</html>
