class Post < ApplicationRecord
  has_attached_file :photo, styles: {large: "600x600>", medium: "350x300>", thumb: "70x70>" }
  validates_attachment :photo, presence: true
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
