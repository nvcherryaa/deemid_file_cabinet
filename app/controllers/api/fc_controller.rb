class Api::FcController < ApplicationController
  after_action :set_access_control_headers

  def index
    render json: Doc.all
  end

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = "*"
    headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
  end
end
