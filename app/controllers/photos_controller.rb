class PhotosController < ApplicationController
  def index
    render html: "<strong>Index Action in Photos<strong>"
  end

  def show
    render html: "<strong>Show Action in Photos</strong>"
  end
end
