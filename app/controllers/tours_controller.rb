class ToursController < ApplicationController
  def index
    @tours = Tour.all
  end

  def show
    @mes = "BANANA!!!"
  end
end
