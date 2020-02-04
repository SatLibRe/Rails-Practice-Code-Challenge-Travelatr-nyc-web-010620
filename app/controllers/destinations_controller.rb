class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def delete
  end
end
