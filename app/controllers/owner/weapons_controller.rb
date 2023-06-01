class Owner::WeaponsController < ApplicationController

  def index
    @user = current_user
    @weapons = current_user.weapons
  end
end
