class WeaponsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @weapons = Weapon.all
  end

  def show
    @weapon = Weapon.find(params[:id])
    @order = Order.new
    @order.weapon = @weapon
  end

  def edit
  end

  def update
  end
end
