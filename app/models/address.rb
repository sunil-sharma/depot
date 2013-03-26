class Address < ActiveRecord::Base
	belongs_to :user
  attr_accessible :address, :city, :country, :pin, :state,:user_id
end
