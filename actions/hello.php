<?php

class actions_hello {
  
  function handle(&$params){
    
      // http://v206x2016103022/shiftcsd1/index.php?-table=sf_test&-action=hello
      // http://v206x2016103022/actionlogin/index.php?-table=people&-action=hello
      // http://localhost/actionlogin/index.php?-action=hello
      // http://localhost/actionlogin/index.php?-table=people&-action=hello
      
      df_display(array(), 'HelloWorld.html');
      }
  }

 