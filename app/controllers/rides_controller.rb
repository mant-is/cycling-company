class RidesController < ApplicationController

  def index
    @rides = Ride.all
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = current_user.rides.build(rides_params) 
    @ride.date = DateTime.strptime(rides_params[:date], "%m/%d/%Y")
    if @ride.save
      flash.keep.notice = "Ride created successfully"
      redirect_to root_path
    else
      flash.now.alert = "Error. Unable to save your ride"
      render :new
    end
  end

  def show
    @ride = Ride.find(params[:id])
  end

  def destroy
    @ride = Ride.find(params[:id])
    if @ride.delete
      flash.keep.notice = "Ride has been successfully deleted"
      redirect_to root_path
    else
      render :show
      flash.now.alert = "Error. Unable to delete ride. Try again"
    end
  end

  private
  def rides_params
    params.require(:ride).permit(:location, :level, :distance, :date, :time, :group_size, :title)
  end 
end

