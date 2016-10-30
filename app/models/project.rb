class Project < ApplicationRecord
  belongs_to :studio
  has_attached_file :image, styles: { large: '600x300>', medium: '300x150>', thumb: '100x50>' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
