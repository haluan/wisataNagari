module SessionsHelper
   def sign_in(admin)
    cookies.permanent[:ingat_aku] = admin.ingat_aku
    self.admin_sekarang = admin
  end
  
  def signed_in?
    !admin_sekarang.nil?
  end
  
  def admin_sekarang=(admin)
        @admin_sekarang = admin
  end
  
  def admin_sekarang
    @admin_sekarang ||= admin.find_by_ingat_aku(cookies[:ingat_aku])
  end
  
  def sign_out
    admin_sekarang = nil
    cookies.delete(:ingat_aku)
  end
end
