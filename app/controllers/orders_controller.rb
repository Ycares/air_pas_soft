class OrdersController < ApplicationController
  # before action :find_weapon, only: %i[index create]

  def index
    @user = current_user
    @orders = Order.where(user: current_user)
  end

  def create
    # raise
    @weapon = Weapon.find(params[:weapon_id])
    @order = Order.new(order_params)
    @order.weapon = @weapon
    @order.user = current_user
    if @order.save
      redirect_to weapon_orders_path(params[:weapon_id])
    else
      render "weapons/show", status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:comment, :total_price)
  end

end
