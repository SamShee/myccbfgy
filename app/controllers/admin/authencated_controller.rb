class Admin::AuthencatedController < ApplicationController
    layout "admin/admin_layout";
    #判定是否有登录；
    before_action :authrize;

    #该方法引进Redis缓存更好；
    protected def authrize
        user_id = session["user_id"];
        
        if user_id == nil  
            return redirect_to "/admin/login";
        end

        @menus = session["menus"];
        @user = session["user"];
        @user_id = session["user_id"];
        
        #user = Admin::User.find_by(id: user_id);
        #if user_id == nil  
         #   return redirect_to "/admin/login";
        #end

    end
  end