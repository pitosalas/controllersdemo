require 'colorize'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def log str
    logger.info "**** ".red
    logger.info "**** ".red + str
    logger.info "**** ".red
  end
end
