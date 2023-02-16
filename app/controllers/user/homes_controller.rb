class User::HomesController < ApplicationController
  def top
    @users = User.all
  end

  def about
  end
end
