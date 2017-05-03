class Movie < ApplicationRecord
  searchkick
  belongs_to :user
  has_many :reviews

  # default_url: "/images/:style/missing.png"
  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
