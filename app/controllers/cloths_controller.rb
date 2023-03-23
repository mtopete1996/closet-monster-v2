# frozen_string_literal: true

class ClothsController < ApplicationController
  def index
    @cloths = cloths.by_name
  end

  def new
    @cloth = Cloth.new
  end

  def create
    @cloth = Cloth.new(cloth_params)

    return render :create if @cloth.save

    render :new, flash: { error: @cloth.errors.full_messages }
  end

  private

  def cloth_params
    params.require(:cloth).permit(:name)
  end

  def cloths
    @cloths ||= Cloth.all
  end
end
