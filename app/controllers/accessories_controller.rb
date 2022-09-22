class AccessoriesController < ApplicationController
  def new
    @accessories = Accessory.new
  end

  def create
   
  end

  def index
    @accessories = Accessory.all

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end #Accessories.controller
