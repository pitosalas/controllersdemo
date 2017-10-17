class HomepagesController < ApplicationController
  def index
    render html: "<strong>Index Action in Homepage</strong>".html_safe
  end

  def show
    render html: "<strong>Show Action in Homepage</strong>".html_safe
  end

  def home
  end
end
