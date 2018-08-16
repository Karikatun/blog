class Article < ApplicationRecord
  belongs_to :category
  has_many :comments, dependent: :destroy

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }

  validates :title, :text, presence: true, length: {minimum: 5}
  validates :title, uniqueness: true
  validates_attachment_content_type :image, content_type: [/\Aimage/]
end