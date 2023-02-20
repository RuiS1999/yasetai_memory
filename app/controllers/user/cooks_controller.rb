class User::CooksController < ApplicationController
  private

  def cook_params
    params.require(:cook).permit(:menu, :introduction, :food_staff, :recipe, :time, :serving, cook_images: [])
  end
end
