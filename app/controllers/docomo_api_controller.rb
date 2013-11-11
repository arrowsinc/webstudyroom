class DocomoApiController < ApplicationController

  def search
    @response = DocomoApi.find_by_query(params[:query])
  end

end
