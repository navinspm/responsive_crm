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

require 'spec_helper'

describe Spare do
  pending "add some examples to (or delete) #{__FILE__}"
end
