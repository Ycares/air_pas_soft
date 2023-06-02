class WeaponsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @weapons = Weapon.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR origin_country ILIKE :query"
      @weapons = @weapons.where(sql_subquery, query: "%#{params[:query]}%")
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
