class WeaponsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @weapons = Weapon.all
  end

  def show
  end

  def edit
  end

  def update
  end
end
