class Micropost < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :content, length: { maximum: 140 }
end
