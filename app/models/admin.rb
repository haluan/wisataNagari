class Admin < ActiveRecord::Base
  attr_accessible :nama, :password, :password_confirmation, :email
  has_secure_password
  before_save :create_ingat_aku
  validates :nama, presence: true
  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true
  
  private
    def create_ingat_aku
      self.ingat_aku = SecureRandom.urlsafe_base64
    end
    
    def signed_in_user
      redirect_to signin_path, notice: "Please sign in." unless signed_in?
    end
    
    def beneran_user
      @admin = Admin.find(params[:id])
      redirect_to(root_path) unless current_user?(@admin)
    end
end
