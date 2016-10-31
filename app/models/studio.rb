class Studio < ApplicationRecord
  belongs_to :user
  has_many :projects
  mount_uploader :logo, LogoUploader


  #scope :more_than_min_price, ->(min_price) { where("min_budget > ?", min_price) }
  #scope :less_than_max_price, ->(max_price) { where("created_at < ?", max_price) }
 # scope :selected_city, ->(city) { where("city == ?", city) }
  
end
