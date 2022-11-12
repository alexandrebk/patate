class PotatoQuotation < ApplicationRecord
  MAX_PURCHASE_PER_DAY=100

  default_scope { order(:priced_at) }

  validates :price_per_ton, :priced_at, presence: true
end
