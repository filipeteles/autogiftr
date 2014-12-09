class Occasion < ActiveRecord::Base
	belongs_to :recipient
	has_many :gift_occasions
	has_many :gifts, through: :gift_occasions

	def self.date_ordered
		order(date: :asc)
	end

	def self.future_occasions
		date_ordered.where('date >= ?', Date.today)
	end

	def self.undelivered
		where('delivered != ?', true)
	end

	def self.delivered
		date_ordered.where('delivered = ?', true)
	end
end
