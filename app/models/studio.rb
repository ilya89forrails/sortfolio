class Studio < ApplicationRecord
  belongs_to :user
  has_many :projects
  has_many :cities
  mount_uploader :logo, LogoUploader


  #scope :more_than_min_price, ->(min_price) { where("min_budget > ?", min_price) }
  #scope :less_than_max_price, ->(max_price) { where("created_at < ?", max_price) }
 # scope :selected_city, ->(city) { where("city == ?", city) }
  
BUDGETS = [
     ["$3000 and under", 1],
     ["$3000-$10000", 2],
     ["$10,000-$25,000", 3],
     ["$25,000 - $50,000", 4],
     ["Over $50,000", 5]]
end
