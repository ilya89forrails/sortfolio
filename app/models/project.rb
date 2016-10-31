class Project < ApplicationRecord
  belongs_to :studio
  mount_uploader :image, ImageUploader
end
