class AccountController < ApplicationController

  def login
    session[:user] = nil

    case request.method
      when :post
        if session[:user] = User.authenticate(params[:user_login], params[:user_password])
          flash[:notice]  = "Login successful."
					@user = User.find( :first, :conditions => ["login = ?", params[:user_login]] );

					if @user.instructor
          	redirect_to :controller => :instructor, :action => "index"
					else
	          redirect_to :controller => :student, :action => "index"
					end
        else
          @login = params[:user_login]
          flash[:notice]  = "Login unsuccessful."
					redirect_to :action => "login"
      end
    end
  end
  
  def signup
    case request.method
      when :post
        @user = User.new(params[:user])
        
        if @user.save      
          flash[:notice]  = "Signup successful."
          redirect_to :action => "login"
        end

      when :get
        @user = User.new
    end      
  end  
    
  def logout
    session[:user] = nil
		flash[:notice] = "Logout successful."
		redirect_to :action => "login"
  end
    
end
