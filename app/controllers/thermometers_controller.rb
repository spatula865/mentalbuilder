class ThermometersController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def new
    @thermometer = Thermometer.new
  end

  def create
    @thermometer = Thermometer.new(thermometer_params)
    @thermometer.user_id = current_user.id
    if @thermometer.save
      redirect_to :action => "show"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @thermometers = Thermometer.all.order("id DESC").page(params[:page]).per(7)
    @base = Thermometer.where(user_id: current_user.id).all
    @arrayoftime = []
    @arrayofsum = []
    @array = []
    @base.each do |s|
      @arrayoftime.push(s.created_at.strftime('%Y-%m-%d %H:%M'))
      @arrayofsum.push(s.temperature)
      @array.push([s.created_at.strftime('%Y-%m-%d %H:%M'), s.temperature])
    end
    gon.time = @arrayoftime
    gon.temperature = @arrayofsum
  end

  def show2
    @thermometers = Thermometer.all.order("temperature DESC").page(params[:page]).per(7)
    @base = Thermometer.where(user_id: current_user.id).all
    @arrayoftime = []
    @arrayofsum = []
    @array = []
    @base.each do |s|
      @arrayoftime.push(s.created_at.strftime('%Y-%m-%d %H:%M'))
      @arrayofsum.push(s.temperature)
      @array.push([s.created_at.strftime('%Y-%m-%d %H:%M'), s.temperature])
    end
    gon.time = @arrayoftime
    gon.temperature = @arrayofsum
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
      params.require(:thermometer).permit(:temperature, :memo, :user_id)
    end

end