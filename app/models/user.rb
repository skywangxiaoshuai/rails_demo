class User < ApplicationRecord

  has_many :articles

  validates :name, presence: {message: "名称必须存在"}
  validates :email, uniqueness: true
  validates :phone, presence: true


  def name_with_address
    "#{name} #{address}"
  end
end
