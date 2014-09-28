# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  mobileno   :string(255)
#  email      :string(255)
#  car        :string(255)
#  year       :integer
#  problem    :text
#  created_at :datetime
#  updated_at :datetime
#

class Service < ActiveRecord::Base
	validates :name, :mobileno,:email, :car, :year, :problem, presence: true
end
