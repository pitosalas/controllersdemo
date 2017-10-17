class HomepagesController < ApplicationController
  def index
    log params.inspect
    render html: "<strong>Index Action in Homepage</strong>".html_safe
  end

  def show
    log params.inspect
    render html: "<strong>Show Action in Homepage</strong>".html_safe
  end

  def home
  end
end
