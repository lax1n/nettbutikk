class Shop < ActiveRecord::Base
  belongs_to :user
  has_many :shop_users
end