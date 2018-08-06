class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :text, presence: true, length: {minimum: 5}
  validates :title, uniqueness: true
end
