class Course < ApplicationRecord
  has_many :resources

  has_attached_file :image, :styles => { :medium => "600x600", :thumb => "100x100" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
