class UserSticker < ApplicationRecord
	belongs_to :user
	belongs_to :sticker
	
end
