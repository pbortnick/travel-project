class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :most_expensive, :least_expensive

  def home
    @destinations = Destination.all
  end

  def trip
  end

  def most_expensive
    Destination.order('price DESC').first.location
  end

  def least_expensive
    Destination.order('price ASC').first.location
  end

end
