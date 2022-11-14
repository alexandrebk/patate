module Api
  class PotatoQuotationsController < Api::BaseController
    before_action :set_date

    def history
      @potato_quotations = PotatoQuotation.history(@date)
    end

    def maximum_gain
      @maximum_gain = PotatoQuotation.max_possible_gain(@date)
    end

    private

    def set_date
      @date = Date.parse(params[:date])
    end
  end
end
