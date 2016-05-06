class RegistrationsController < ApplicationController

  def new
    @course = Course.find(params[:id])
  end

  def create
  end
end
