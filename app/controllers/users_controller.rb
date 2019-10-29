class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

 def show    
   if current_user
     @user = current_user
     @microposts = @user.microposts
   else
     redirect_to new_user_session_path, notice: 'You are not logged in.'
   end
 end
end
