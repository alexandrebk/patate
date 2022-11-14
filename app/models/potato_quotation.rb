class PotatoQuotation < ApplicationRecord
  QUANTITY_MAX_PER_DAY=100

  default_scope { order(:priced_at) }

  validates :price_per_ton, :priced_at, presence: true

  class << self
    def history(date)
      self.where("priced_at >= ? AND priced_at < ?", date, date + 1)
    end

    def max_possible_gain(date)
      prices = self.history(date).pluck(:price_per_ton)
      max = 0
      previous_price=nil
      prices.each do |price|
        unless previous_price.nil?
          diff = [0, (price - previous_price)].max
          max = diff if diff > max
        end
        previous_price = price
      end
      return max * QUANTITY_MAX_PER_DAY
    end
  end
end
