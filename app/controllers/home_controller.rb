class HomeController < ApplicationController
  def index
  	@apartments = Apartment.order("RANDOM()")
  	@first_row = [ 0, 1, 2 ]
  	@second_row = [ 3, 4, 5 ]
  end

  def search
  	@q = "%#{params[:query]}%"
	@results = Apartment.where("title like ? or description like ? or zone like ? or city like ?", @q, @q, @q, @q)
  end
end
