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

require 'spec_helper'

describe Service do
  pending "add some examples to (or delete) #{__FILE__}"
end
