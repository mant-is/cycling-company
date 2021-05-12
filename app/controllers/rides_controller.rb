class RidesController < ApplicationController

  def index
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = current_user.rides.build(rides_params) 
    if @ride.save
      flash.keep.notice = "Ride created successfully"
      redirect_to root_path
    else
      flash.now.alert = "Error. Unable to save your ride"
      render :new
    end
  end

  private
  def rides_params
    params.require(:ride).permit(:location, :level, :distance, :date, :time, :group_size, :title)
  end 
end
