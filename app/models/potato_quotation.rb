class PotatoQuotation < ApplicationRecord
  QUANTITY_MAX_PER_DAY=100

  default_scope { order(:priced_at) }

  validates :price_per_ton, :priced_at, presence: true

  scope :today, -> { where("priced_at >= ? OR priced_at < ?", Date.today, Date.today + 1) }

  def possible_gain(price)
    return 0 if price.nil?
    return 0 if price >= price_per_ton

    price_per_ton - price
  end

  class << self
    def max_possible_gains_for_today
      PotatoQuotation.today.map do |potato|
        possible_gain = potato.possible_gain(@previous_price)
        @previous_price = potato.price_per_ton
        possible_gain * QUANTITY_MAX_PER_DAY
      end
    end
  end
end
