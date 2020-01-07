module Admin::SessionMenu
    
    def set_user_and_menu
        @menus = session["menus"];
        @user = session["user"];
        @user_id = session["user_id"];
    end
end
