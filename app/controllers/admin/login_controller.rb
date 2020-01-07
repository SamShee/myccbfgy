class Admin::LoginController < ApplicationController

  # you can disable csrf protection on controller-by-controller basis:
  #skip_before_filter :verify_authenticity_token

  #使用get进行界面跳转；
  def login
    user_id = session["user_id"];
    if user_id != nil  
      return redirect_to "/admin/main";
   end
  end

  #Method 为POST的登录方法
  def signin
    user = Admin::User.new;
    username = params[:username];
    password = params[:password];
    logger.info(username+","+password);

    #查询用户
    user = Admin::User.find_by(username: username);

    #如果查询到用户并且验证密码通过
    if user && user.authenticate(password)
      #设置session
      session["user_id"]=user.id;
      session[:user]=user;
      #设置菜单
      session[:menus]=Admin::Menu.all;
      
      redirect_to "/admin/main";
    else 
      redirect_to "/admin/login", msg: "用户名或者密码不正确";
    end

  end

  #logout登出方法
  def logout
    session["user_id"]=nil;
    session[:user]=nil;
    session["menus"]=nil;
    redirect_to "/admin/login";
  end

    
end
