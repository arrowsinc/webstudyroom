class DocomoApiController < ApplicationController

  def search
    @result = DocomoApi.find_by_query(params[:query])
  end

end
