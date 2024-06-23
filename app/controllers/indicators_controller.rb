class IndicatorsController < ApplicationController
  def index
    @indicators = EconomicIndicator.includes(
      :industrial_production_indices, :cpis, :ffrs, :gdps,
      :bond_yields, :retail_sales, :unemployment_rates
    ).all
  end

  def new
    @indicator = EconomicIndicator.new
  end

  def create
    @indicator = EconomicIndicator.new(indicator_params)
    if @indicator.save
      redirect_to indicators_path, notice: '経済指標が正常に作成されました。'
    else
      render :new
    end
  end

  def new_data
    @indicator_types = %w[IndustrialProductionIndex CPI FFR GDP BondYield RetailSale UnemploymentRate]
    @indicators = EconomicIndicator.all
    @data_entry = {}
  end

  def create_data
    if params[:data_entry].nil?
      redirect_to new_data_indicators_path, alert: '無効なデータです。'
      return
    end

    model_class = params[:data_entry][:indicator_type].constantize
    data_entry = model_class.new(data_entry_params)

    if data_entry.save
      redirect_to indicators_path, notice: 'データが正常に登録されました。'
    else
      @indicator_types = %w[IndustrialProductionIndex CPI FFR GDP BondYield RetailSale UnemploymentRate]
      @indicators = EconomicIndicator.all
      @data_entry = params[:data_entry]
      render :new_data
    end
  end

  def show_data
    @indicators = EconomicIndicator.all
    @selected_indicator = EconomicIndicator.find(params[:indicator_id]) if params[:indicator_id].present?
  end

  private

  def indicator_params
    params.require(:economic_indicator).permit(:indicator_name, :description)
  end

  def data_entry_params
    params.require(:data_entry).permit(:economic_indicator_id, :actual_value, :forecast_value, :date)
  end
end