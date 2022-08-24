class CheesesController < ApplicationController
  def index
    # model
    cheeses = Cheese.all.order(price: :desc).limit(2)
    # view
    render json: cheeses
  end
end
