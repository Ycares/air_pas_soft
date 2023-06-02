class WeaponsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    if user_signed_in?
      @weapons = Weapon.where.not(owner: current_user)
    else
      @weapons = Weapon.all
    end
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
