class EconomicIndicator < ApplicationRecord
  has_many :industrial_production_indices, class_name: 'IndustrialProductionIndex'
  has_many :cpis, class_name: 'CPI'
  has_many :ffrs, class_name: 'FFR'
  has_many :gdps, class_name: 'GDP'
  has_many :bond_yields, class_name: 'BondYield'
  has_many :retail_sales, class_name: 'RetailSale'
  has_many :unemployment_rates, class_name: 'UnemploymentRate'
end

