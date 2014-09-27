class Car < ActiveRecord::Base
	mount_uploader :image , ImageUploader
end
