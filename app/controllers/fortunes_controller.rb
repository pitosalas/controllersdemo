class FortunesController < ApplicationController
  def index
    @fortunes = Fortune.all
  end

  def show
    @fortune = helpers.get_fortune(params[:id])
  end
end
