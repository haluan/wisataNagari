class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    admin = Admin.find_by_email(params[:sessions][:email])
    if admin && admin.authenticate(params[:sessions][:password])
      #sign in  berhasil
      sign_in admin
      redirect_to root_path
    else
      #sig in gagal
      flash[:error] = 'akses ditolak'
      render 'new'  
    end
  end
  
  def destroy
    sign_out    
    redirect_to root_path
    
  end
end
