class ThermometersController < ApplicationController

  before_action :authenticate_user!

  def new
    @thermometer = Thermometer.new
  end

  def create
    @thermometer = Thermometer.new(thermometer_params)
    if @thermometer.save
      redirect_to :action => "show"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @thermometers = Thermometer.all.order("id DESC")
  end

  def edit
    @memo = Thermometer.find(params[:id])
  end

  def update
    @memo = Thermometer.find(params[:id])
    if @memo.update(thermometer_params)
      redirect_to :action => "show"
    else
      redirect_to :action => "show"
    end
  end

  def destroy
    Thermometer.find(params[:id]).destroy
    redirect_to action: :show
  end

  private

    def thermometer_params
      params.require(:thermometer).permit(:temperature, :memo)
    end

end