class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend Enumerize

  enumerize :role, in: [:admin, :manage, :user], default: :user

  def update_check_password params
    if params[:password].blank?
      params.delete("password")
      params.delete("password_confirmation")
    end
    self.update(params)
  end

  def self.search(email)
    where("email like ? ", email)
  end

end
