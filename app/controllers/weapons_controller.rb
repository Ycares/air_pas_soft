class WeaponsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @weapons = Weapon.all
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
