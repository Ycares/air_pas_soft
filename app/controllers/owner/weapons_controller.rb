class Owner::WeaponsController < ApplicationController
  def index
    @user = current_user
    @weapons = current_user.weapons
  end

  def new
    @weapon = Weapon.new
  end

  def create
    @weapon = Weapon.new(set_params)
    @weapon.characteristics = set_characteristics[:characteristics].reject(&:empty?).join(", ")
    @weapon.owner = current_user

    if @weapon.save
      redirect_to owner_weapons_path
    else
      render "owner/weapons/new", status: :unprocessable_entity
    end
  end

  private

  def set_params
    params.require(:weapon).permit(:name, :price, :category, :weapon_type, :era_of_use, :details, :origin_country, :photo)
  end

  def set_characteristics
    params.require(:weapon).permit(characteristics: [])
  end
end
