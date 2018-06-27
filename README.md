# actionlogin-xataface


This repo is a mimimal example app showing an issue I am trying to resolve in Xataface. See https://groups.google.com/d/topic/xataface/5KXPXV2awVI/discussion



## Post

I want to go to a custom action URL by clicking a link from another app and get a login prompt if not logged in, then be taken to the action URL.

1. I visit http://localhost/actionlogin/index.php?-action=hello
2. I get a blank white screen.
3. Note: If I am logged in I get the proper results.

What I want is to get a login prompt if I am not logged in and then get the action URL results.

A minimal example app is located at: https://github.com/dgleba/actionlogin-xataface


Can someone help me achieve the desired result?

thanks.

David Gleba

2016-11-19




## Answer

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


If you add a permission to your action in the actions.ini file it will enforce this behaviour:

e.g.

[hello]
    permission=view

If your permissions are set up such that the "public" (i.e. no logged in user) doesn't have the "view" permission, then the user will be redirected to the login prompt when they try to access the hello action.

Steve

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



Thank you very much Steve. That works!




## ref..

https://groups.google.com/d/topic/xataface/5KXPXV2awVI/discussion

http://xataface.com

https://github.com/dgleba/actionlogin-xataface


xataface version..    
  -  Latest commit fa0e32b  16 hours ago @shannah shannah Added --escape-json query parameter for the edit action to explicitly

  
# One example of installing this app.

```
cd /var/www/html
git clone https://github.com/dgleba/actionlogin-xataface.git actionlogin
cd actionlogin
touch templates_c/.keep
cp config.dbc.example config.dbc
cd ..
git clone https://github.com/shannah/xataface.git
```


  