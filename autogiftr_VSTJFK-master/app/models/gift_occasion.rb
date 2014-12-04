class GiftOccasion < ActiveRecord::Base
  belongs_to :gift
  belongs_to :occasion
end
