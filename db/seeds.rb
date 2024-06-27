# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
indicators_data = [
  { name: "政策金利", description: "国債や社債などの債券の利回りを示す経済指標です。" },
  { name: "消費者物価指数", description: "消費財やサービスの価格変動を反映する指標で、物価上昇率を把握するために用いられます。" },
  { name: "GDP", description: "国内総生産の略称で、国の経済活動全体の価値を示す指標です。" },
  { name: "鉱工業生産指数", description: "鉱業と製造業の生産活動の推移を示す経済指標です。" },
  { name: "小売売上高", description: "小売業の売上高を示す指標で、消費動向の変化を反映します。" },
  { name: "失業率", description: "労働市場における失業者の割合を示す経済指標です。" }
]

indicators_data.each do |data|
  EconomicIndicator.find_or_create_by!(indicator_name: data[:name], description: data[:description])
end

cpis_data = [
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.30, forecast_value: 3.40, date: DateTime.new(2024, 6, 12, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.40, forecast_value: 3.40, date: DateTime.new(2024, 5, 15, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.50, forecast_value: 3.40, date: DateTime.new(2024, 4, 10, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.20, forecast_value: 3.10, date: DateTime.new(2024, 3, 12, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.10, forecast_value: 2.90, date: DateTime.new(2024, 2, 13, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.40, forecast_value: 3.20, date: DateTime.new(2024, 1, 11, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.10, forecast_value: 3.10, date: DateTime.new(2023, 12, 12, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.20, forecast_value: 3.30, date: DateTime.new(2023, 11, 14, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.70, forecast_value: 3.60, date: DateTime.new(2023, 10, 12, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.70, forecast_value: 3.60, date: DateTime.new(2023, 9, 13, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.20, forecast_value: 3.30, date: DateTime.new(2023, 8, 10, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 3.00, forecast_value: 3.10, date: DateTime.new(2023, 7, 12, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 4.00, forecast_value: 4.10, date: DateTime.new(2023, 6, 13, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 4.90, forecast_value: 5.00, date: DateTime.new(2023, 5, 10, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 5.00, forecast_value: 5.20, date: DateTime.new(2023, 4, 12, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 6.00, forecast_value: 6.00, date: DateTime.new(2023, 3, 14, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 6.40, forecast_value: 6.20, date: DateTime.new(2023, 2, 14, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 6.50, forecast_value: 6.50, date: DateTime.new(2023, 1, 12, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 7.10, forecast_value: 7.30, date: DateTime.new(2022, 12, 13, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 7.70, forecast_value: 8.00, date: DateTime.new(2022, 11, 10, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 8.20, forecast_value: 8.10, date: DateTime.new(2022, 10, 13, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 8.30, forecast_value: 8.10, date: DateTime.new(2022, 9, 13, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 8.50, forecast_value: 8.70, date: DateTime.new(2022, 8, 10, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 9.10, forecast_value: 8.80, date: DateTime.new(2022, 7, 13, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 8.60, forecast_value: 8.30, date: DateTime.new(2022, 6, 10, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 8.30, forecast_value: 8.10, date: DateTime.new(2022, 5, 11, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 8.50, forecast_value: 8.40, date: DateTime.new(2022, 4, 12, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 7.90, forecast_value: 7.90, date: DateTime.new(2022, 3, 10, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 7.50, forecast_value: 7.30, date: DateTime.new(2022, 2, 10, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 7.00, forecast_value: 7.00, date: DateTime.new(2022, 1, 12, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 6.80, forecast_value: 6.80, date: DateTime.new(2021, 12, 10, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "消費者物価指数").id, actual_value: 6.20, forecast_value: 5.80, date: DateTime.new(2021, 11, 10, 22, 30) }
]
# EconomicIndicator モデルへのデータの挿入

cpis_data.each do |data|
  CPI.find_or_create_by!(
    economic_indicator_id: data[:economic_indicator_id],
    actual_value: data[:actual_value],
    forecast_value: data[:forecast_value],
    date: data[:date]
  )
end

unemployment_data = [
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 4.00, forecast_value: 3.90, date: DateTime.new(2024, 6, 7, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.90, forecast_value: 3.80, date: DateTime.new(2024, 5, 3, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.80, forecast_value: 3.90, date: DateTime.new(2024, 4, 5, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.90, forecast_value: 3.70, date: DateTime.new(2024, 3, 8, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.70, forecast_value: 3.80, date: DateTime.new(2024, 2, 2, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.70, forecast_value: 3.80, date: DateTime.new(2024, 1, 5, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.70, forecast_value: 3.90, date: DateTime.new(2023, 12, 8, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.90, forecast_value: 3.80, date: DateTime.new(2023, 11, 3, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.80, forecast_value: 3.70, date: DateTime.new(2023, 10, 6, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.80, forecast_value: 3.50, date: DateTime.new(2023, 9, 1, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.50, forecast_value: 3.60, date: DateTime.new(2023, 8, 4, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.60, forecast_value: 3.60, date: DateTime.new(2023, 7, 7, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.70, forecast_value: 3.50, date: DateTime.new(2023, 6, 2, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.40, forecast_value: 3.60, date: DateTime.new(2023, 5, 5, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.50, forecast_value: 3.60, date: DateTime.new(2023, 4, 7, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.60, forecast_value: 3.40, date: DateTime.new(2023, 3, 10, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.40, forecast_value: 3.60, date: DateTime.new(2023, 2, 3, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.50, forecast_value: 3.70, date: DateTime.new(2023, 1, 6, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.70, forecast_value: 3.70, date: DateTime.new(2022, 12, 2, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.70, forecast_value: 3.60, date: DateTime.new(2022, 11, 4, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.50, forecast_value: 3.70, date: DateTime.new(2022, 10, 7, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.70, forecast_value: 3.50, date: DateTime.new(2022, 9, 2, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.50, forecast_value: 3.60, date: DateTime.new(2022, 8, 5, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.60, forecast_value: 3.60, date: DateTime.new(2022, 7, 8, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.60, forecast_value: 3.50, date: DateTime.new(2022, 6, 3, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.60, forecast_value: 3.50, date: DateTime.new(2022, 5, 6, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.60, forecast_value: 3.70, date: DateTime.new(2022, 4, 1, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.80, forecast_value: 3.90, date: DateTime.new(2022, 3, 4, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 4.00, forecast_value: 3.90, date: DateTime.new(2022, 2, 4, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 3.90, forecast_value: 4.10, date: DateTime.new(2022, 1, 7, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 4.20, forecast_value: 4.50, date: DateTime.new(2021, 12, 3, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "失業率").id, actual_value: 4.60, forecast_value: 4.70, date: DateTime.new(2021, 11, 5, 21, 30) }
]

unemployment_data.each do |data|
  UnemploymentRate.find_or_create_by!(
    economic_indicator_id: data[:economic_indicator_id],
    actual_value: data[:actual_value],
    forecast_value: data[:forecast_value],
    date: data[:date]
  )
end

gdp_data = [
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 1.30, forecast_value: 1.60, date: DateTime.new(2024, 5, 30, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 1.60, forecast_value: 2.50, date: DateTime.new(2024, 4, 25, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 3.40, forecast_value: 3.20, date: DateTime.new(2024, 3, 28, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 3.20, forecast_value: 3.30, date: DateTime.new(2024, 2, 28, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 3.30, forecast_value: 2.00, date: DateTime.new(2024, 1, 25, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 4.90, forecast_value: 5.20, date: DateTime.new(2023, 12, 21, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 5.20, forecast_value: 4.90, date: DateTime.new(2023, 11, 29, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 4.90, forecast_value: 4.30, date: DateTime.new(2023, 10, 26, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.10, forecast_value: 2.10, date: DateTime.new(2023, 9, 28, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.10, forecast_value: 2.40, date: DateTime.new(2023, 8, 30, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.40, forecast_value: 1.80, date: DateTime.new(2023, 7, 27, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.00, forecast_value: 1.40, date: DateTime.new(2023, 6, 29, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 1.30, forecast_value: 1.10, date: DateTime.new(2023, 5, 25, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 1.10, forecast_value: 2.00, date: DateTime.new(2023, 4, 27, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.60, forecast_value: 2.70, date: DateTime.new(2023, 3, 30, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.70, forecast_value: 2.90, date: DateTime.new(2023, 2, 23, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.90, forecast_value: 2.60, date: DateTime.new(2023, 1, 26, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 3.20, forecast_value: 2.90, date: DateTime.new(2022, 12, 22, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.90, forecast_value: 2.70, date: DateTime.new(2022, 11, 30, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.60, forecast_value: 2.40, date: DateTime.new(2022, 10, 27, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: -0.60, forecast_value: -0.60, date: DateTime.new(2022, 9, 29, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: -0.60, forecast_value: -0.80, date: DateTime.new(2022, 8, 25, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: -0.90, forecast_value: 0.50, date: DateTime.new(2022, 7, 28, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: -1.60, forecast_value: -1.50, date: DateTime.new(2022, 6, 29, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: -1.50, forecast_value: -1.30, date: DateTime.new(2022, 5, 26, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: -1.40, forecast_value: 1.10, date: DateTime.new(2022, 4, 28, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 6.90, forecast_value: 7.10, date: DateTime.new(2022, 3, 30, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 7.00, forecast_value: 7.00, date: DateTime.new(2022, 2, 24, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 6.90, forecast_value: 5.50, date: DateTime.new(2022, 1, 27, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.30, forecast_value: 2.10, date: DateTime.new(2021, 12, 22, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.10, forecast_value: 2.20, date: DateTime.new(2021, 11, 24, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "GDP").id, actual_value: 2.00, forecast_value: 2.70, date: DateTime.new(2021, 10, 28, 21, 30) },
]

gdp_data.each do |data|
  GDP.find_or_create_by!(
    economic_indicator_id: data[:economic_indicator_id],
    actual_value: data[:actual_value],
    forecast_value: data[:forecast_value],
    date: data[:date]
  )
end

industrial_production_data = [
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.90, forecast_value: 0.30, date: DateTime.new(2024, 6, 18, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.00, forecast_value: 0.10, date: DateTime.new(2024, 5, 16, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.40, forecast_value: 0.40, date: DateTime.new(2024, 4, 16, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.10, forecast_value: 0.00, date: DateTime.new(2024, 3, 15, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: -0.10, forecast_value: 0.20, date: DateTime.new(2024, 2, 15, 23, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.10, forecast_value: 0.00, date: DateTime.new(2024, 1, 17, 23, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.20, forecast_value: 0.30, date: DateTime.new(2023, 12, 15, 23, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: -0.60, forecast_value: -0.30, date: DateTime.new(2023, 11, 16, 23, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.30, forecast_value: 0.10, date: DateTime.new(2023, 10, 17, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.40, forecast_value: 0.10, date: DateTime.new(2023, 9, 15, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 1.00, forecast_value: 0.30, date: DateTime.new(2023, 8, 16, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: -0.50, forecast_value: 0.00, date: DateTime.new(2023, 7, 18, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: -0.20, forecast_value: 0.10, date: DateTime.new(2023, 6, 15, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.50, forecast_value: -0.10, date: DateTime.new(2023, 5, 16, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.40, forecast_value: 0.20, date: DateTime.new(2023, 4, 14, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.00, forecast_value: 0.20, date: DateTime.new(2023, 3, 17, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.00, forecast_value: 0.50, date: DateTime.new(2023, 2, 15, 23, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: -0.70, forecast_value: -0.10, date: DateTime.new(2023, 1, 18, 23, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: -0.20, forecast_value: 0.10, date: DateTime.new(2022, 12, 15, 23, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: -0.10, forecast_value: 0.20, date: DateTime.new(2022, 11, 16, 23, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.40, forecast_value: 0.10, date: DateTime.new(2022, 10, 18, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: -0.20, forecast_value: 0.10, date: DateTime.new(2022, 9, 15, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.60, forecast_value: 0.30, date: DateTime.new(2022, 8, 16, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: -0.20, forecast_value: 0.10, date: DateTime.new(2022, 7, 15, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.20, forecast_value: 0.40, date: DateTime.new(2022, 6, 17, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 1.10, forecast_value: 0.50, date: DateTime.new(2022, 5, 17, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.90, forecast_value: 0.40, date: DateTime.new(2022, 4, 15, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.50, forecast_value: 0.50, date: DateTime.new(2022, 3, 17, 22, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 1.40, forecast_value: 0.40, date: DateTime.new(2022, 2, 16, 23, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: -0.10, forecast_value: 0.30, date: DateTime.new(2022, 1, 14, 23, 15) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "鉱工業生産指数").id, actual_value: 0.50, forecast_value: 0.70, date: DateTime.new(2021, 12, 16, 23, 15) }
]

industrial_production_data.each do |data|
 IndustrialProductionIndex.find_or_create_by!(
    economic_indicator_id: data[:economic_indicator_id],
    actual_value: data[:actual_value],
    forecast_value: data[:forecast_value],
    date: data[:date]
  )
end

retail_sales_data = [
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.10, forecast_value: 0.30, date: DateTime.new(2024, 6, 18, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.00, forecast_value: 0.40, date: DateTime.new(2024, 5, 15, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.70, forecast_value: 0.40, date: DateTime.new(2024, 4, 15, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.60, forecast_value: 0.80, date: DateTime.new(2024, 3, 14, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: -0.80, forecast_value: -0.20, date: DateTime.new(2024, 2, 15, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.60, forecast_value: 0.40, date: DateTime.new(2024, 1, 17, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.30, forecast_value: -0.10, date: DateTime.new(2023, 12, 14, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: -0.10, forecast_value: -0.30, date: DateTime.new(2023, 11, 15, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.70, forecast_value: 0.30, date: DateTime.new(2023, 10, 17, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.60, forecast_value: 0.20, date: DateTime.new(2023, 9, 14, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.70, forecast_value: 0.40, date: DateTime.new(2023, 8, 15, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.20, forecast_value: 0.50, date: DateTime.new(2023, 7, 18, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.30, forecast_value: -0.10, date: DateTime.new(2023, 6, 15, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.40, forecast_value: 0.80, date: DateTime.new(2023, 5, 16, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: -1.00, forecast_value: -0.40, date: DateTime.new(2023, 4, 14, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: -0.40, forecast_value: -0.30, date: DateTime.new(2023, 3, 15, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 3.00, forecast_value: 1.80, date: DateTime.new(2023, 2, 15, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: -1.10, forecast_value: -0.80, date: DateTime.new(2023, 1, 18, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: -0.60, forecast_value: -0.10, date: DateTime.new(2022, 12, 15, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 1.30, forecast_value: 1.00, date: DateTime.new(2022, 11, 16, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.00, forecast_value: 0.20, date: DateTime.new(2022, 10, 14, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.30, forecast_value: 0.20, date: DateTime.new(2022, 9, 15, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.00, forecast_value: 0.10, date: DateTime.new(2022, 8, 17, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 1.00, forecast_value: 0.80, date: DateTime.new(2022, 7, 15, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: -0.30, forecast_value: 0.20, date: DateTime.new(2022, 6, 15, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.90, forecast_value: 0.90, date: DateTime.new(2022, 5, 17, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.50, forecast_value: 0.60, date: DateTime.new(2022, 4, 14, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.30, forecast_value: 0.40, date: DateTime.new(2022, 3, 16, 21, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 3.80, forecast_value: 2.00, date: DateTime.new(2022, 2, 16, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: -1.90, forecast_value: -0.10, date: DateTime.new(2022, 1, 14, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 0.30, forecast_value: 0.80, date: DateTime.new(2021, 12, 15, 22, 30) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "小売売上高").id, actual_value: 1.70, forecast_value: 1.20, date: DateTime.new(2021, 11, 16, 22, 30) },
]

retail_sales_data.each do |data|
  RetailSale.find_or_create_by!(
     economic_indicator_id: data[:economic_indicator_id],
     actual_value: data[:actual_value],
     forecast_value: data[:forecast_value],
     date: data[:date]
   )
 end

 bond_yield_data = [
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.50, forecast_value: 5.50, date: DateTime.new(2024, 6, 13, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.50, forecast_value: 5.50, date: DateTime.new(2024, 5, 2, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.50, forecast_value: 5.50, date: DateTime.new(2024, 3, 21, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.50, forecast_value: 5.50, date: DateTime.new(2024, 2, 1, 4, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.50, forecast_value: 5.50, date: DateTime.new(2023, 12, 14, 4, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.50, forecast_value: 5.50, date: DateTime.new(2023, 11, 2, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.50, forecast_value: 5.50, date: DateTime.new(2023, 9, 21, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.50, forecast_value: 5.50, date: DateTime.new(2023, 7, 27, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.25, forecast_value: 5.25, date: DateTime.new(2023, 6, 15, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.25, forecast_value: 5.25, date: DateTime.new(2023, 5, 4, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 5.00, forecast_value: 5.00, date: DateTime.new(2023, 3, 23, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 4.75, forecast_value: 4.75, date: DateTime.new(2023, 2, 2, 4, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 4.50, forecast_value: 4.50, date: DateTime.new(2022, 12, 15, 4, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 4.00, forecast_value: 4.00, date: DateTime.new(2022, 11, 3, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 3.25, forecast_value: 3.25, date: DateTime.new(2022, 9, 22, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 2.50, forecast_value: 2.50, date: DateTime.new(2022, 7, 28, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 1.75, forecast_value: 1.50, date: DateTime.new(2022, 6, 16, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 1.00, forecast_value: 1.00, date: DateTime.new(2022, 5, 5, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.50, forecast_value: 0.50, date: DateTime.new(2022, 3, 17, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2022, 1, 27, 4, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2021, 12, 16, 4, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2021, 11, 4, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2021, 9, 23, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2021, 7, 29, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2021, 6, 17, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2021, 4, 29, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2021, 3, 18, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2021, 1, 28, 4, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2020, 12, 17, 4, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2020, 11, 6, 4, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2020, 9, 17, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2020, 7, 30, 3, 0) },
  { economic_indicator_id: EconomicIndicator.find_by(indicator_name: "政策金利").id, actual_value: 0.25, forecast_value: 0.25, date: DateTime.new(2020, 6, 11, 3, 0) }
]

bond_yield_data.each do |data|
  BondYield.find_or_create_by!(
     economic_indicator_id: data[:economic_indicator_id],
     actual_value: data[:actual_value],
     forecast_value: data[:forecast_value],
     date: data[:date]
   )
 end