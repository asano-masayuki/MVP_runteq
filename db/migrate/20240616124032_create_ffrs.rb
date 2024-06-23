class CreateFfrs < ActiveRecord::Migration[7.1]
  def change
    create_table :ffrs do |t|
      t.references :economic_indicator, null: false, foreign_key: true
      t.float :actual_value
      t.float :forecast_value
      t.date :date

      t.timestamps
    end
  end
end
