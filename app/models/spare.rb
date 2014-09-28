# == Schema Information
#
# Table name: spares
#
#  id         :integer          not null, primary key
#  spare      :string(255)
#  car        :string(255)
#  year       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Spare < ActiveRecord::Base
	validates :spare,:car,:year, :email,:phone, presence: true
end
