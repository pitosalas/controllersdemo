class AlbumsController < ApplicationController
  def index
    log params.inspect
    render html: "<strong>Index Action in Albums<strong>".html_safe
  end

  def show
    log params.inspect
    render html: "<strong>Show Action in Albums</strong>".html_safe
  end
end
