json.array! @potato_quotations do |potato_quotation|
  json.time potato_quotation.priced_at
  json.value potato_quotation.price_per_ton
end
