class ArticlesController < ApplicationController
  def index
   render json: {message: "Hello Articles!"}
  end

end