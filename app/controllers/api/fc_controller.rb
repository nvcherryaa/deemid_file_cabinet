class Api::FcController < ApplicationController
  def index
    render json: Doc.all
  end
end
