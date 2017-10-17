class PhotosController < ApplicationController
  def index
    log params.inspect
    render html: "<strong>Index Action in Photos<strong>".html_safe
  end

  def show
    log params.inspect
    render html: "<strong>Show Action in Photos</strong>".html_safe
  end
end
