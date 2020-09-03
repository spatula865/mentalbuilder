class Weapon < ApplicationRecord

    belongs_to :user

    mount_uploader :image, ImageUploader

    mount_uploader :image2, ImageUploader

end
