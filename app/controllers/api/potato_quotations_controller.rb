module Api
  class PotatoQuotationsController < Api::BaseController
    def index
      @potato_quotations = PotatoQuotation.today
    end

    def maximum_gain
      @maximum_gain = PotatoQuotation.max_possible_gains_for_today.sum
    end
  end
end
