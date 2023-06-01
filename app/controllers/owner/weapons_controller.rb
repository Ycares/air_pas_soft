class Owner::WeaponsController < ApplicationController

  def index
    @user = current_user
    @weapons = current_user.weapons
  end

  def new
    @weapon = Weapon.new
  end

  def create
  end

end
