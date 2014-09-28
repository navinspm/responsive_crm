# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :integer
#  doorno     :string(255)
#  street     :string(255)
#  city       :string(255)
#  pincode    :integer
#  date       :datetime
#  created_at :datetime
#  updated_at :datetime
#  car        :string(255)
#

class Customer < ActiveRecord::Base
	validates :name,:email,:phone, :doorno,:street, :city, :pincode,:date, :car, presence: true
end
