class OrdersController < ApplicationController
  # before action :find_weapon, only: %i[index create]

  def index
    @user = current_user
    @orders = Order.where(user: current_user)

    @futur_orders = Order.where(user: current_user).where("start_date > ?", DateTime.now)
    @past_orders = Order.where("end_date < ?", DateTime.now)
    @current_orders = Order.where("end_date > ? AND start_date < ?", DateTime.now, DateTime.now)

  end

  def create
    @weapon = Weapon.find(params[:weapon_id])
    @order = Order.new(order_params)
    @order.weapon = @weapon
    @order.user = current_user
    time = (@order.end_date - @order.start_date).fdiv((24 * 3600))
    @order[:duration] = time.to_i
    @order.total_price = @weapon.price * @order.duration
    if @order.save
      redirect_to orders_path
    else
      render "weapons/show", status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:comment, :total_price, :start_date, :end_date)
  end

end
