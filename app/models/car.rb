# == Schema Information
#
# Table name: cars
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  price       :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  image       :string(255)
#

class Car < ActiveRecord::Base
	mount_uploader :image , ImageUploader
	validates :name,:price, :description,:image, presence: true
end
