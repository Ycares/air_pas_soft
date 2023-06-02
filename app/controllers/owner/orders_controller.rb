class Owner::OrdersController < ApplicationController

  # before action :find_weapon, only: %i[index create]

  def index
    @user = current_user

    @all_requests_orders = Order.includes(:weapon).where(weapons: { owner: @user } )
    @new_requests = Order.includes(:weapon).where(weapons: { owner: @user } ).where( status: nil)
    @old_requests = Order.includes(:weapon).where(weapons: { owner: @user } ).where( status: true).and(Order.includes(:weapon).where(weapons: { owner: @user } ))

  end

  def accept
    @order = Order.find(params[:id])
    @order.status = true
    if @order.save
      redirect_to owner_orders_path
    else
      render "owner/order/show", status: :unprocessable_entity
    end
  end

  def decline
    @order = Order.find(params[:id])
    @order.status = false
    if @order.save
      redirect_to owner_orders_path
    else
      render "owner/order/show", status: :unprocessable_entity
    end
  end

end
