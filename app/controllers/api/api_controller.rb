class Api::ApiController < ApplicationController
  def render_error(model)
    render json: { error: model.errors }, status 422
end
