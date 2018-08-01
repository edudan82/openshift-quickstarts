<!DOCTYPE html >
<html >
<head>
    <title>Untitled Page</title>
     <style type="text/css">
/*
0 - 600px:      Phone
600 - 900px:    Tablet portrait
900 - 1200px:   Tablet landscape
[1200 - 1800] is where our normal styles apply
1800px + :      Big desktop
$breakpoint arguement choices:
- phone
- tab-port
- tab-land
- big-desktop
ORDER: Base + typography > general layout + grid > page layout > components
1em = 16px
*/
*,
*::after,
*::before {
  margin: 0;
  padding: 0;
  box-sizing: inherit; }
html {
  font-size: 62.5%; }
  
 
@media only screen and (min-width: 37em)  {   
 
        /*       ##Device = Most of the Smartphones Mobiles (Portrait)      ##Screen = B/w 320px to 479px    */                    
        html {
            font-size: 50%; 
        }
}
  
 
@media only screen and (min-width: 57em)  {
 
        /*       ##Device = Tablets, Ipads (portrait)      ##Screen = B/w 768px to 1024px    */
        html {
            font-size: 56%; 
        }
}
    
@media only screen and (min-width: 75em) {
  
        /*       ##Device = Laptops, Desktops      ##Screen = B/w 1025px to 1280px    */
        html {
            font-size: 62%; 
        }
}
     
@media only screen and (min-width: 112em) {
  
        /*       ##Device = Desktops      ##Screen = 1281px to higher resolution desktops    */
        html {
            font-size: 75%; 
        }
}
  
body {
  box-sizing: border-box;
  padding: 0; 
    height: 100vh;
  width: 100vw;
  background:lightslategray;
}
  
  
  
        @media only screen and (min-width: 37em)  {
   
 
            /*       ##Device = Most of the Smartphones Mobiles (Portrait)      ##Screen = B/w 320px to 479px    */
                    
            body {
                padding: 0; 
            } 
  
        }
 
        @media only screen and (min-width: 57em)  {
 
            /*       ##Device = Tablets, Ipads (portrait)      ##Screen = B/w 768px to 1024px    */
            body {
                padding: 0; 
            } 
        }
    
        @media only screen and (min-width: 75em) {
  
            /*       ##Device = Laptops, Desktops      ##Screen = B/w 1025px to 1280px    */
            body {
                padding: 4rem 2rem 2rem 2rem; 
            } 
        }
        @media only screen and (min-width: 112em) {
  
             /*       ##Device = Desktops      ##Screen = 1281px to higher resolution desktops    */
            body {
                padding: 6rem 3rem 3rem 3rem; 
            } 
  
        } 
      
      
      
.app{
  font-family: "Lato", sans-serif;
  font-weight: 400;
  /*font-size: 16px;*/
  line-height: 1.7;
  color: #708090;
  background-image: linear-gradient(to right bottom, lightslategray, white);
  background-size: cover;
  background-repeat: no-repeat; 
  overflow-y:hidden;
  margin: auto;
  min-width: 600px;
  box-shadow: 0 .4rem .8rem 0 rgba(0, 0, 0, 0.4), 0 .6rem 2rem 0 rgba(0, 0, 0, 0.6);
  
}
::selection {
  background-color: white;
  color: lightslategray;
  }  
        
 
 
      
        
        .master__content-1
        {
        /*global app size*/
            flex:0 1 auto;
    	    background:black;
    	
            display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: row;
            -webkit-flex-direction: row;
            flex-direction: row;
            align-items: stretch;
            opacity:0.9;
            
    	
         }
    
         .master__content-1::after {
              content: '';
              width: 0;
              overflow: hidden;
              visibility: hidden;
              float: left;
              
              /*media query normal*/
              height: 100vh;
        }
        
          
        
            
          
        @media only screen and (min-width: 37em)  {
   
 
            /*       ##Device = Most of the Smartphones Mobiles (Portrait)      ##Screen = B/w 320px to 479px    */
                   .master__content-1::after {
                        height: 100vh; 
                     } 
  
        }
 
        @media only screen and (min-width: 57em)  {
 
            /*       ##Device = Tablets, Ipads (portrait)      ##Screen = B/w 768px to 1024px    */
                   .master__content-1::after {
                        height: 100vh; 
                        
                        
                        
                     } 
        }
    
        @media only screen and (min-width: 75em) {
  
            /*       ##Device = Laptops, Desktops      ##Screen = B/w 1025px to 1280px    */
                   .master__content-1::after {
                        height: 90vh; 
                     } 
        }
        @media only screen and (min-width: 112em) {
  
             /*       ##Device = Desktops      ##Screen = 1281px to higher resolution desktops    */
                   .master__content-1::after {
                        height: 85vh;
                     } 
  
        } 
        
        
        
        
        
        
        
        
        
        
        
    
        .master__child-1-1	
        {
  	   
           flex-grow:1;
   	      
        }
    
        .master__content-2	
        {
            display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: row;
            -webkit-flex-direction: row;
            flex-direction: row;
           
           
           position:relative;
        }	
        
        
    
        .master__child-2-1
        {
            /*full row - master__content          0 0 auto  */
            /*full row - available space  1 0 auto  */
            /*full row - available space + remain  0 0 100%   full row 100 * 100 */
             /*full row - available space - remain  0 1 100%  */
            flex-grow: 0;
            flex-shrink :0;
            flex-basis:100%; 
        }
        
        .master__content-3	
        {
            display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: column;
            -webkit-flex-direction: column;
            flex-direction: column;
            justify-content:space-between;
            
            
            position:relative;
        }
        
        .master__child-3-1
        {
            /*full column - master__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow: 0;
            flex-shrink :0;
            flex-basis:auto; 
            
   	  
        }
        
        
        .master__child-3-2
        {
            /*full column - master__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow:1;
            flex-shrink :0;
            flex-basis:auto; 
            
   	        
        }
        
        
        .master__child-3-3
        {
            /*full column - master__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow: 0;
            flex-shrink :0;
            flex-basis:auto; 
            
   	  
        }
        
        .master__content-4	
        {
            display: none;
            -ms-flex-direction: row;
            -webkit-flex-direction: row;
            flex-direction: row;
            justify-content:space-between;
            
  
            
            position:relative;
            
            
        }
        
        .master__child-4-1
        {
          /*  background:rgba(1,1,1,0.1);*/
   	        
        }
        
        .master__child-4-2
        {
            /*full column - master__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
         /*   background:rgba(1,1,1,0.9);*/
            flex-grow:0;
            flex-shrink :0;
            flex-basis:70%; 
            
            

           
   	        
        }
        
        .master__child-4-3
        {
            /*  background:rgba(1,1,1,0.1);*/
   	        
        }
        
        
        @media only screen and (min-width: 37em)  {
   
 
            /*       ##Device = Most of the Smartphones Mobiles (Portrait)      ##Screen = B/w 320px to 479px    */
                   .master__content-4 {
                        display: none;
                     } 
  
        }
 
        @media only screen and (min-width: 57em)  {
 
            /*       ##Device = Tablets, Ipads (portrait)      ##Screen = B/w 768px to 1024px    */
                   .master__content-4 {
                        display: none;
                     } 
        }
    
        @media only screen and (min-width: 75em) {
  
            /*       ##Device = Laptops, Desktops      ##Screen = B/w 1025px to 1280px    */
                   .master__content-4 {
                        display: flex;
                     } 
        }
        @media only screen and (min-width: 112em) {
  
             /*       ##Device = Desktops      ##Screen = 1281px to higher resolution desktops    */
                   .master__content-4 {
                        display: flex;
                     } 
  
        } 
        
        
        .master__content-7 {
            display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: row;
            -webkit-flex-direction: row;
            flex-direction: row;
            justify-content:space-between;
            
            
            position:relative;
        }       
  
  
  
  
        
        .master__content-5	
        {
            display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: column;
            -webkit-flex-direction: column;
            flex-direction: column;
            justify-content:space-between;
            
            
            position:relative;
        }
        
        
        .master__child-5-1
        {
            /*full column - master__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow:1;
            flex-shrink :0;
            flex-basis:auto; 
            
            
            
   	        
        }
        
        
        @media only screen and (min-width: 75em) {
  
    /*       ##Device = Laptops, Desktops      ##Screen = B/w 1025px to 1280px    */
           .master__content-5 {
                padding:1rem 2rem;
             } 
}
            @media only screen and (min-width: 112em) {
  
                 /*       ##Device = Desktops      ##Screen = 1281px to higher resolution desktops    */
                       .master__content-5 {
                            padding:2rem 4rem;
                         } 
  
            } 
        
        .master__content-6	
        {
  
            display: flex;
            -ms-flex-direction: row;
            -webkit-flex-direction: row;
            flex-direction: row;
            justify-content:space-between;
            
            
           
            
            position:relative;
            
            
        }
        
        .master__child-6-1
        {
           /* background:rgba(1,1,1,0.1);*/
        }
        
         .master__child-6-2
        {
            flex-grow:0;
            flex-shrink :0;
            flex-basis:40%; 
     /*       background:rgba(1,1,1,0.2);*/
            
            
                        display: flex;
            -ms-flex-direction: row;
            -webkit-flex-direction: row;
            flex-direction: row;
            justify-content:center;
        }
        
        .master__child-6-3
        {
             /* background:rgba(1,1,1,0.1);*/
        }
        
        
        
@media only screen and (min-width: 37em)  {
   
 
    /*       ##Device = Most of the Smartphones Mobiles (Portrait)      ##Screen = B/w 320px to 479px    */
           .master__content-6 {
                display: none;
             } 
  
}
 
@media only screen and (min-width: 57em)  {
 
    /*       ##Device = Tablets, Ipads (portrait)      ##Screen = B/w 768px to 1024px    */
           .master__content-6 {
                display: none;
             } 
}
    
@media only screen and (min-width: 75em) {
  
    /*       ##Device = Laptops, Desktops      ##Screen = B/w 1025px to 1280px    */
           .master__content-6 {
                display: flex;
             } 
}
@media only screen and (min-width: 112em) {
  
     /*       ##Device = Desktops      ##Screen = 1281px to higher resolution desktops    */
           .master__content-6 {
                display: flex;
             } 
  
} 
        
        
        
         .app__content-1
        {
      	    background:white;
    	
            display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: row;
            -webkit-flex-direction: row;
            flex-direction: row;
            align-items: stretch;
           /*   min-height: 100vh;*/
          position :relative;
         
    	
         }
         
         
         
         
         
         
    
        .app__child-1-1
        {
            /*full column - app__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow:0;
            flex-shrink :0;
            flex-basis:20%; 
             background:rgba(1,1,1,0.3);
   	        
        }
        
        .app__child-1-2
        {
            /*full column - app__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow:1;
            flex-shrink :0;
            flex-basis:auto; 
            
   	        
        }
        
        
        
        
        @media only screen and (max-width: 57em) {
   
 
    /*       ##Device = Most of the Smartphones Mobiles (Portrait)      ##Screen = B/w 320px to 479px    */
         
    
        .app__child-1-1
        {
            /*full column - app__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow:0;
            flex-shrink :0;
            flex-basis:auto;
            
           
   	        
        }
        
        .app__child-1-2
        {
            /*full column - app__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow:1;
            flex-shrink :0;
            flex-basis:auto; 
     
            
   	        
        }
  
}
 
      
        
        
        
        
        
        
        
    
    
        .app__content-2	
        {
            display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: column;
            -webkit-flex-direction: column;
            flex-direction: column;
            justify-content:space-between;
            
            
            position:relative;
        }	
    
        .app__child-2-1
        {
            
        }
        
        
        
       
          
          
        
        
        
        
        
     
        
        
        
        .app__content-3	
        {
            display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: column;
            -webkit-flex-direction: column;
            flex-direction: column;
            justify-content:space-between;
            
            position:relative;
            
        }
        
        .app__child-3-1
        {
            /*full column - master__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow: 0;
            flex-shrink :0;
            flex-basis:auto; 
            
   	  
        }
        
        
        .app__child-3-2
        {
            /*full column - master__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow:1;
            flex-shrink :0;
            flex-basis:auto; 
     
            
   	        
        }
        
        
        .app__child-3-3
        {
            /*full column - master__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow: 0;
            flex-shrink :0;
            flex-basis:auto; 
            
   	  
        }
        
        .app__content-4	
        {
            display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: row;
            -webkit-flex-direction: row;
            flex-direction: row;
            justify-content:space-between;
            
            position:relative;
            
                padding: 1rem
        }
        
        .app__child-4-1
        {
            /*full column - app__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow: 0;
            flex-shrink :0;
            flex-basis:4rem; 
   	  
        }
        
        
        .app__child-4-2
        {
            /*full column - app__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow:1;
            flex-shrink :0;
            flex-basis:auto; 
            
            
            
            
                                    display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: row;
            -webkit-flex-direction: row;
            flex-direction: row;
            justify-content:center;
            
   	      
        }
        
        
        .app__child-4-3
        {
            /*full column - app__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow: 0;
            flex-shrink :0;
            flex-basis:4rem; 
            
   	  
        }
        
        
        
        .app__content-5	
        {
            display  : -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -ms-flex-direction: row ;
            -webkit-flex-direction: row;
            flex-direction: row;
            justify-content:space-between;
            
            
                padding: 1rem
        }
        
        .app__child-5-1
        {
            /*full column - app__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow: 0;
            flex-shrink :0;
            flex-basis:4rem; 
  
   	  
        }
        
        
        .app__child-5-2
        {
            /*full column - app__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow:0;
            flex-shrink :0;
            flex-basis:40%; 
            
  
        }
        
        
        .app__child-5-3
        {
            /*full column - app__content          0 0 auto  */
            /*full column - available space  1 0 auto  */
            /*full column - available space + remain  0 0 100%  full column 100 * 100 */
             /*full column - available space - remain  0 1 100% or 1 1 auto */
            flex-grow: 0;
            flex-shrink :0;
            flex-basis:4rem; 

   	  
        }
        
        
        
        
        
        
        
        
        
 .navigation {/*
  display: none; */
  
  }      
        
        
.navigation__checkbox {
  display: none; }
.navigation__button 
{
    opacity:0.7;
  background-color: #fff;
  height: 7rem;
  width: 7rem;
  position: fixed;
  top: 6rem;
  right: 6rem;
  border-radius: 50%;
  z-index: 2000;
  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.1);
  text-align: center;
  cursor: pointer; }
  @media only screen and (max-width: 57em) {
    .navigation__button {
      top: 4rem;
      right: 4rem; } }
  @media only screen and (max-width: 37em) {
    .navigation__button {
      top: 3rem;
      right: 3rem; } }
.navigation__background {
  height: 6rem;
  width: 6rem;
  border-radius: 50%;
  position: fixed;
  top: 6.5rem;
  right: 6.5rem;
  background-image: radial-gradient(lightslategray, white);
  z-index: 1000;
  transition: transform 0.8s cubic-bezier(0.86, 0, 0.07, 1); }
  @media only screen and (max-width: 57em) {
    .navigation__background {
      top: 4.5rem;
      right: 4.5rem; } }
  @media only screen and (max-width: 37em) {
    .navigation__background {
      top: 3.5rem;
      right: 3.5rem; } }
.navigation__nav {
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  z-index: 1500;
  opacity: 0;
  width: 0;
  overflow:hidden;
  transition: all 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55); }
.navigation__list {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  list-style: none;
  text-align: center;
  width: 100%; }
.navigation__item {
  margin: 1rem; }
.navigation__link:link, .navigation__link:visited {
  display: inline-block;
  font-size: 3rem;
  font-weight: 300;
  padding: 1rem 2rem;
  color: #fff;
  text-decoration: none;
  text-transform: uppercase;
  background-image: linear-gradient(120deg, transparent 0%, transparent 50%, #fff 50%);
  background-size: 220%;
  transition: all .4s; }
  .navigation__link:link span, .navigation__link:visited span {
    margin-right: 1.5rem;
    display: inline-block; }
.navigation__link:hover, .navigation__link:active {
  background-position: 100%;
  color: lightslategray;
  transform: translateX(1rem); }
.navigation__checkbox:checked ~ .navigation__background {
  transform: scale(80); }
.navigation__checkbox:checked ~ .navigation__nav {
  opacity: 1;
  width: 100%; }
.navigation__icon {
  position: relative;
  margin-top: 3.5rem; }
  .navigation__icon, .navigation__icon::before, .navigation__icon::after {
    width: 3rem;
    height: 2px;
    background-color: #333;
    display: inline-block; }
  .navigation__icon::before, .navigation__icon::after {
    content: "";
    position: absolute;
    left: 0;
    transition: all .2s; }
  .navigation__icon::before {
    top: -.8rem; }
  .navigation__icon::after {
    top: .8rem; }
.navigation__button:hover .navigation__icon::before {
  top: -1rem; }
.navigation__button:hover .navigation__icon::after {
  top: 1rem; }
.navigation__checkbox:checked + .navigation__button .navigation__icon {
  background-color: transparent; }
.navigation__checkbox:checked + .navigation__button .navigation__icon::before {
  top: 0;
  transform: rotate(135deg); }
.navigation__checkbox:checked + .navigation__button .navigation__icon::after {
  top: 0;
  transform: rotate(-135deg); }
        
        
        
        
@media only screen and (min-width: 37em)  {
   
 
    /*       ##Device = Most of the Smartphones Mobiles (Portrait)      ##Screen = B/w 320px to 479px    */
            .navigation {
                display: block; 
             } 
  
}
 
@media only screen and (min-width: 57em)  {
 
    /*       ##Device = Tablets, Ipads (portrait)      ##Screen = B/w 768px to 1024px    */
              .navigation {
                display: block; 
             } 
}
    
@media only screen and (min-width: 75em) {
  
    /*       ##Device = Laptops, Desktops      ##Screen = B/w 1025px to 1280px    */
            .navigation {
                display: none; 
             } 
}
@media only screen and (min-width: 112em) {
  
     /*       ##Device = Desktops      ##Screen = 1281px to higher resolution desktops    */
            .navigation {
                display: none; 
             } 
  
}     







.mainbar
{
                       flex-grow:1 ;
                       flex-shrink :0;
                       flex-basis:auto;
                       align-self: normal; 
                       
                       
                       display:flex;
                       flex-direction:column;
                       flex-wrap: nowrap;
                       align-items:stretch;
                       justify-content:center; 
                       position:relative;
}
.main-nav
{
                       flex-grow:0 ;
                       flex-shrink :0;
                       flex-basis:auto;
                       align-self: normal;  
                       
                       
                       display:flex;
                       flex-direction:row;
                       flex-wrap: nowrap;
                       align-items:stretch;
                       justify-content:space-around; 
                       position:relative;
}
.main-nav__item 
{
                         flex-grow:1 ;
                       flex-shrink :0;
                       flex-basis:auto;
                       align-self: normal;  
                       
                       
                       display:flex;
                       flex-direction:row;
                       flex-wrap: nowrap;
                       align-items:center;
                       justify-content:center; 
                       
                       position:relative;
}
.main-nav__item:not(:last-child) 
{
    
     margin-right: .1rem; 
     
}
.main-nav__link
{
                       flex-grow:1 ;
                       flex-shrink :0;
                       flex-basis:auto;
                       align-self: normal;  
                         padding: 1.5rem 2rem 1rem 2em;
                    
                       
                       
                       display:flex;
                       flex-direction:row;
                       flex-wrap: nowrap;
                       align-items:center;
                       justify-content:center; 
                       
                       position:relative;
}
.main-nav
{
         font-size: 1.4rem;
      list-style: none; 
    }
.main-nav_link
{
   padding: 1.5rem 3rem; 
    
    }
    
  .main-nav__item::before {
    content: "";
    position: absolute;
    bottom: 0;
    
    height: 3px;
    width: 3px;
    
    
    background-color: lightslategray;
    
    transform: scaleY(0);
    transition: transform 0.2s, width 0.4s cubic-bezier(1, 0, 0, 1) 0.4s, background-color 0.1s; 
  }
  
    .main-nav__item:hover::before {
    transform: scaleY(1);
    width: 100%; 
  }
    
    .main-nav__link:link, .main-nav__link:visited 
    {
           color: white;
           text-decoration: none;
           text-transform: uppercase;
     }
  
    .main-nav__icon {
            width: 1.75rem;
            height: 1.75rem;
            margin-right: 2rem;
            fill: currentColor; 
    }
 
.sidebar
{
       
        
                       flex-grow:1 ;
                       flex-shrink :0;
                       flex-basis:auto;
                       align-self: normal;   
                       
                       
                       display:flex;
                       flex-direction:column;
                       flex-wrap: nowrap;
                       align-items:stretch;
                       justify-content:flex-start; 
                       position:relative;
}
.side-nav
{
                       flex-grow:0 ;
                       flex-shrink :0;
                       flex-basis:auto;
                       align-self: normal; 
                       
                       
                       display:flex;
                       flex-direction:column;
                       flex-wrap: nowrap;
                       align-items:stretch;
                       justify-content:space-around; 
                       position:relative;
}
.side-nav__item 
{
                         flex-grow:1 ;
                       flex-shrink :0;
                       flex-basis:auto;
                       align-self: normal; 
                       
                       
                       display:flex;
                       flex-direction:row;
                       flex-wrap: nowrap;
                       align-items:stretch;
                       justify-content:flex-start; 
                       
                       position:relative;
}
.side-nav__item:not(:last-child) 
{
    
     margin-bottom: .1rem; 
     
}
.side-nav__link
{
                       flex-grow:1 ;
                       flex-shrink :0;
                       flex-basis:auto;
                       align-self: normal;  
                         padding: 1.5rem 3rem;
                    
                       
                       
                       display:flex;
                       flex-direction:row;
                       flex-wrap: nowrap;
                       align-items:center;
                       justify-content:flex-start; 
                       
                       position:relative;
}
.sidebar
{
     padding-top: 8rem;
    
    }
.side-nav
{
         font-size: 1.4rem;
      list-style: none; 
    }
.side-nav_link
{
   padding: 1.5rem 3rem; 
    
    }
    
  .side-nav__item::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 3px;
    
    
    background-color: lightslategray;
    
    transform: scaleY(0);
    transition: transform 0.2s, width 0.4s cubic-bezier(1, 0, 0, 1) 0.4s, background-color 0.1s; 
  }
  
    .side-nav__item:hover::before, .side-nav__item--active::before {
    transform: scaleY(1);
    width: 100%; 
  }
    
    .side-nav__link:link, .side-nav__link:visited 
    {
           color: #522727;
           text-decoration: none;
           text-transform: uppercase;
     }
  
    .side-nav__icon {
            width: 1.75rem;
            height: 1.75rem;
            margin-right: 2rem;
            fill: currentColor; 
    }
    
@media only screen and (max-width: 57em)  {
 
    /*       ##Device = Tablets, Ipads (portrait)      ##Screen = B/w 768px to 1024px    */
              .side-nav__link span {
                display: none; 
             } 
             
             
             
               .side-nav__item::before {
    
                transform: scaleY(0);
                transition: transform 0.3s, background-color 0.4s; 
              }
             
             
             
             .side-nav__item:hover::before, .side-nav__item--active::before {
               transform: scaleY(1);
               width :3px;
    
              }
              
                            .side-nav__icon 
                            {
                                            width: 2.75rem;
            height: 2.75rem;
                margin-right: 0rem;
             } 
}
  
  
  
  
  
  .searchbar
  {
      
                             flex-grow:0 ;
                       flex-shrink :0;
                       flex-basis:80%;
                       align-self: normal;  
                       
                       
                       
                                              display:flex;
                       flex-direction:row;
                       flex-wrap: nowrap;
                       align-items:stretch;
                       justify-content:center; 
      
      
     
      
      
      padding: 1.5rem 2.5rem;
      }
  
  
 .search__input 
 {
     margin-left: -2rem; 
  font-family: inherit;
  font-size: inherit;
  color: inherit;
  background-color: #f4f2f2;
  border: none;
  padding: 1.5rem 3rem ;
  border-radius: 100px;
  width: 80%;
  transition: all 0.2s;
  
  
}
.search__input:focus {
  outline: none;
  width: 99%;
  background-color: #f0eeee);
}

  
    
    
    .search__input:focus + .search__button {
      background-color: #f0eeee;
    }
.search__button 
{
     margin-left: -4rem;  
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
        .search__icon 
        {
         
          height: 2rem;
          width: 2rem;
          fill: #999;
        }  
  
  
  
  
  .paginationbar
  {
     flex-grow: 0;
    flex-shrink: 0;
    flex-basis: 80%;
    align-self: normal;
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-items: stretch;
    justify-content: center;
    padding: 1.5rem 2.5rem;
      
      }
  
  
                 .pagination
               {
                      flex-grow: 0;
    flex-shrink: 0;
    flex-basis: auto;
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
    font-size: 1.2rem;
    font-family: "Helvetica Neueu", Helvetica, Arial, sans-serif;
    text-shadow: white 0 1px 0;
    background-color: #f0eeee;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#f9f9f9), to(#eaeaea));
    background-image: -webkit-linear-gradient(top, #f9f9f9, #eaeaea);
    background-image: -moz-linear-gradient(top, #f9f9f9, #eaeaea);
    background-image: -ms-linear-gradient(top, #f9f9f9, #eaeaea);
    background-image: -o-linear-gradient(top, #f9f9f9, #eaeaea);
    background-image: linear-gradient(top, #f9f9f9, #eaeaea); }
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
      background-image: linear-gradient(top, #fefefe, #fafafa); }
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
      background-image: linear-gradient(top, #5f5f5f, #5c5c5c); }
    
</style>



</head>


<body>

        <div class="navigation">
            <input type="checkbox" class="navigation__checkbox" id="navi-toggle">

            <label for="navi-toggle" class="navigation__button">
                <span class="navigation__icon">&nbsp;</span>
            </label>

            <div class="navigation__background">&nbsp;</div>

            <nav class="navigation__nav">
                <ul class="navigation__list">
                    <li class="navigation__item"><a href="https://wwww.yahoo.com" class="navigation__link"><span>01</span>menu123</a></li>
                    <li class="navigation__item"><a href="https://wwww.yahoo.com" class="navigation__link"><span>02</span>menu123</a></li>
                    <li class="navigation__item"><a href="https://wwww.yahoo.com" class="navigation__link"><span>03</span>menu123</a></li>
                    <li class="navigation__item"><a href="https://wwww.yahoo.com" class="navigation__link"><span>04</span>menu123</a></li>
                    <li class="navigation__item"><a href="https://wwww.yahoo.com" class="navigation__link"><span>05</span>menu123</a></li>
                    </ul>
            </nav>
        </div>
    <div class="app">

   
               <div class="master__content-1"> 
                    <div class="master__child-1-1 master__content-2">
                           <div class="master__child-2-1 master__content-3">

                                    <div class="master__child-3-1 master__content-4">

                                        <div class="master__child-4-1">
                                          
                                        </div>

                                        <div class="master__child-4-2 master__content-7">
                                                                            <nav class="mainbar">
                                                                                <ul class="main-nav">
                                                                                    <li class="main-nav__item main-nav__item--active">
                                                                                        <a href="#" class="main-nav__link">
                                                                                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" class="main-nav__icon">
                                                                                            <title>star</title>
                                                                                                    <path d="M10 1.3l2.388 6.722h6.412l-5.232 3.948 1.871 6.928-5.439-4.154-5.438 4.154 1.87-6.928-5.233-3.948h6.412l2.389-6.722z"></path>
                                                                                            </svg>
                                                                                            <span>Nuevo</span>
                                                                                        </a>
                                                                                    </li>
                                                                                    <li class="main-nav__item">
                                                                                        <a href="#" class="main-nav__link">
                                                                                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" class="main-nav__icon">
                                                                                            <title>star</title>
                                                                                                    <path d="M10 1.3l2.388 6.722h6.412l-5.232 3.948 1.871 6.928-5.439-4.154-5.438 4.154 1.87-6.928-5.233-3.948h6.412l2.389-6.722z"></path>
                                                                                            </svg>
                                                                                            <span>Nuevo</span>
                                                                                        </a>
                                                                                    </li>
                                                                                    <li class="main-nav__item">
                                                                                        <a href="#" class="main-nav__link">                                                                                          
                                                                                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" class="main-nav__icon">
                                                                                                    <title>star</title>
                                                                                                    <path d="M10 1.3l2.388 6.722h6.412l-5.232 3.948 1.871 6.928-5.439-4.154-5.438 4.154 1.87-6.928-5.233-3.948h6.412l2.389-6.722z"></path>
                                                                                            </svg>
                                                                                            <span>Nuevo</span>
                                                                                        </a>
                                                                                    </li>
                                                                                </ul>
                                                                            </nav>
                                        </div>

                                        <div class="master__child-4-3">
                                          
                                        </div>
                                       
                                    </div>

                                    <div class="master__child-3-2 master__content-5">

                                            <div class="master__child-5-1 app__content-1">
                                              
                                                    <div class="app__child-1-1 app__content-2">
                                                          


                                                                          <nav class="sidebar">
                                                                                <ul class="side-nav">
                                                                                    <li class="side-nav__item side-nav__item--active">
                                                                                        <a href="#" class="side-nav__link">
                                                                                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" class="side-nav__icon">
                                                                                            <title>star</title>
                                                                                                    <path d="M10 1.3l2.388 6.722h6.412l-5.232 3.948 1.871 6.928-5.439-4.154-5.438 4.154 1.87-6.928-5.233-3.948h6.412l2.389-6.722z"></path>
                                                                                            </svg>
                                                                                            <span>Nuevo</span>
                                                                                        </a>
                                                                                    </li>
                                                                                    <li class="side-nav__item">
                                                                                        <a href="#" class="side-nav__link">
                                                                                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" class="side-nav__icon">
                                                                                            <title>star</title>
                                                                                                    <path d="M10 1.3l2.388 6.722h6.412l-5.232 3.948 1.871 6.928-5.439-4.154-5.438 4.154 1.87-6.928-5.233-3.948h6.412l2.389-6.722z"></path>
                                                                                            </svg>
                                                                                            <span>Nuevo</span>
                                                                                        </a>
                                                                                    </li>
                                                                                    <li class="side-nav__item">
                                                                                        <a href="#" class="side-nav__link">
                                                                                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" class="side-nav__icon">
                                                                                                <title>star</title>
                                                                                                        <path d="M10 1.3l2.388 6.722h6.412l-5.232 3.948 1.871 6.928-5.439-4.154-5.438 4.154 1.87-6.928-5.233-3.948h6.412l2.389-6.722z"></path>
                                                                                                </svg>       
                                                                                            <span>Nuevo</span>
                                                                                        </a>
                                                                                    </li>
                                                                                </ul>
                                                                            </nav>









                                                    </div>

                                                    <div class="app__child-1-2 app__content-3">

                                                            <div class="app__child-3-1 app__content-4">
                                                                    
                                                                                            <div class="app__child-4-1">
                                                                                              
                                                                                            </div>

                                                                                            <div class="app__child-4-2">



                                                                                                <div class="searchbar">

                                                                                                    <input type="text" class="search__input" placeholder="Search ..." >
                                                                                                    <button class="search__button" id="pacienteMostrar">                            
                                                                                                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" class="search__icon">
                                                                                                            <title>magnifying-glass</title>
                                                                                                            <path d="M17.545 15.467l-3.779-3.779c0.57-0.935 0.898-2.035 0.898-3.21 0-3.417-2.961-6.377-6.378-6.377s-6.186 2.769-6.186 6.186c0 3.416 2.961 6.377 6.377 6.377 1.137 0 2.2-0.309 3.115-0.844l3.799 3.801c0.372 0.371 0.975 0.371 1.346 0l0.943-0.943c0.371-0.371 0.236-0.84-0.135-1.211zM4.004 8.287c0-2.366 1.917-4.283 4.282-4.283s4.474 2.107 4.474 4.474c0 2.365-1.918 4.283-4.283 4.283s-4.473-2.109-4.473-4.474z"></path>
                                                                                                        </svg>
                                                                                                    </button> 

                                                                                                </div>



                                                                                            </div>

                                                                                            <div class="app__child-4-3">
                                                                                               
                                                                                            </div>
                                                            </div>
                                                            <div class="app__child-3-2">
                                                                


















                                                            </div>
                                                            <div class="app__child-3-3 app__content-5">
                                                                                            
                                                                                            <div class="app__child-5-1">
                                                                                              
                                                                                            </div>

                                                                                            <div class="app__child-5-2">



                                                                                                <div class="paginationbar">

                                                                                                   <ul class="pagination">

                                                                                                        <li><a>&lang;</a></li> 
                                                                                                    
  									                                                                            <li><a>1</a></li>
                                                                                                                <li><a>2</a></li>                                                                                                              									                                                                       
                                                                                                                <li><a>3</a></li>                                                                                                              									                                                                       
                                                                                                                <li><a>4</a></li>

                                                                                                        <li><a>&rang;</a></li>

                                                                                                    </ul> 

                                                                                                </div>


                                                                                            </div>

                                                                                            <div class="app__child-5-3">
                                                                                             
                                                                                            </div>
                                                            </div>

                                                    </div>
                                           
                                        
                                        
                                        
                                        
                                        
                                        
                                            </div>
                                     </div>

                                       
                                  

                                    <div class="master__child-3-3 master__content-6">

                                        <div class="master__child-6-1">
                                         
                                        </div>

                                        <div class="master__child-6-2">
                                            <h3 class="copyright__text">
                                                © 2018 Copyright information.
                                            </h3>
                                        </div>

                                        <div class="master__child-6-3">
                                         
                                        </div>
                               
                                       
                                    </div>
                            </div>

                    </div>
               </div>
    </div>
 




  
</body>
</html>
