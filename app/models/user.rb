class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ActionController::Base.helpers.asset_path('default_user.png')
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend Enumerize

  searchkick

  enumerize :role, in: [:admin, :manage, :user], default: :user

  def update_check_password params
    params[:password].blank? ? self.update_without_password(params) : self.update(params)
  end

end
