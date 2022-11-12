module Api
  class PotatoQuotationsController < Api::BaseController
    def index
      @potato_quotations = PotatoQuotation.where("priced_at >= ? OR priced_at < ?", Date.today, Date.today + 1)
    end
  end
end
