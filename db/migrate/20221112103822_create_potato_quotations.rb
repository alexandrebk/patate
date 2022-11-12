class CreatePotatoQuotations < ActiveRecord::Migration[7.0]
  def change
    create_table :potato_quotations do |t|
      t.float :price_per_ton
      t.datetime :priced_at

      t.timestamps
    end
  end
end
