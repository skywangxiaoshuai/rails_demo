class Article < ApplicationRecord
  belongs_to :user
  has_many :chapters

  validates :name, uniqueness: {scope: :user}

  scope :search, ->(term) {where("name like ?", "%#{term}%")}
end
