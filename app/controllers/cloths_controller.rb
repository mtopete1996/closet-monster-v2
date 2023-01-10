# frozen_string_literal: true

class ClothsController < ApplicationController
  def index
    @cloths = cloths
  end

  def edit
    @cloth = cloth
  end

  def show
    @cloth = cloth
  end

  def update
    respond_to do |format|
      format.html { render(cloth) } if cloth.update(update_params)
    end
  end

  private

  def cloths
    @cloths ||= Cloth.by_name
  end

  def cloth
    @cloth ||= Cloth.find(params[:id])
  end

  def update_params
    params.require(:cloth).permit(:name)
  end
end
