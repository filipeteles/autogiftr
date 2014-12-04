class Occasion < ActiveRecord::Base
  belongs_to :recipient
  has_many :gift_occasions
end
