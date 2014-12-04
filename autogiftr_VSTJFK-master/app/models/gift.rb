class Gift < ActiveRecord::Base
	has_many :gift_occasions
	mount_uploader :picture, GiftPictureUploader
end
