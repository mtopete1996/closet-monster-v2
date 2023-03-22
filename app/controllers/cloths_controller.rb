# frozen_string_literal: true

class ClothsController < ApplicationController
  def index
    @cloths = cloths
  end

  def new
    @cloth = Cloth.new
  end

  private

  def cloths
    @cloths ||= Cloth.all
  end
end
