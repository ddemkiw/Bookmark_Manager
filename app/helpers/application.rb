<<<<<<< HEAD
  helpers do

    def current_user
      @current_user ||=User.get(session[:user_id]) if session[:user_id]
    end
  end
=======
helpers do 

  def current_user
    @current_user ||=User.get(session[:user_id]) if session[:user_id]
  end 

end 
>>>>>>> ad76d02d331acebe5395e0dab710a80ebd949e64
