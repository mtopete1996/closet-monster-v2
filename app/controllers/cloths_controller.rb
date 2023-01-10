# frozen_string_literal: true

class ClothsController < ApplicationController
  def index
    @cloths = Cloth.by_name
  end

  def edit
    @cloth = cloth
  end

  def show
    @cloth = cloth
  end

  def update
    render(cloth) if cloth.update(update_params)
  end

  private

  def cloth
    Cloth.find(params[:id])
  end

  def update_params
    params.require(:cloth).permit(:name)
  end
end
