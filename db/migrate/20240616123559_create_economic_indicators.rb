class CreateEconomicIndicators < ActiveRecord::Migration[7.1]
  def change
    create_table :economic_indicators do |t|
      t.string :indicator_name
      t.text :description

      t.timestamps
    end
  end
end
