class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role

  before_create :set_default_role

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "32x32" }
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  # or
  # before_validation :set_default_role

  private
  def set_default_role
    self.role ||= Role.find_by_name('User')
  end

end
