class Studio < ApplicationRecord
  belongs_to :user
  has_many :projects
  has_attached_file :logo, styles: { large: '600x300>', medium: '300x150>', thumb: '100x50>' }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/


  #scope :more_than_min_price, ->(min_price) { where("min_budget > ?", min_price) }
  #scope :less_than_max_price, ->(max_price) { where("created_at < ?", max_price) }
 # scope :selected_city, ->(city) { where("city == ?", city) }
  
end
