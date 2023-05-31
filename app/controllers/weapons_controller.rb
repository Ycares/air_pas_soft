class WeaponsController < ApplicationController
  def index
  end

  def show
    @order = Order.new
    @weapon = Weapon.find(params[:id])
  end

  def edit
  end

  def update
  end
end
