class PotatoQuotation < ApplicationRecord
  MAX_PURCHASE_PER_DAY=100

  validates :price_per_ton, :priced_at, presence: true
end
