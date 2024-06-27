class ChangeDateToDatetimeInAllTables < ActiveRecord::Migration[7.1]
  def change
    change_column :bond_yields, :date, :datetime
    change_column :cpis, :date, :datetime
    change_column :ffrs, :date, :datetime
    change_column :gdps, :date, :datetime
    change_column :industrial_production_indices, :date, :datetime
    change_column :retail_sales, :date, :datetime
    change_column :unemployment_rates, :date, :datetime
  end
end
