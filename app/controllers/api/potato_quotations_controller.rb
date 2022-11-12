module Api
  class PotatoQuotationsController < Api::BaseController
    def index
      @potato_quotations = PotatoQuotation.today
    end

    def maximum_gain
      # TODO : move logic in model
      potato_quotations = PotatoQuotation.today

      previous_price = nil
      gains = potato_quotations.map do |potato|
        if previous_price.nil?
          previous_price = potato.price_per_ton
          0
        else
          diff = [(potato.price_per_ton - previous_price), 0].max
          previous_price = potato.price_per_ton
          diff * PotatoQuotation::MAX_PURCHASE_PER_DAY
        end
      end

      @maximum_gain = gains.sum
    end
  end
end
