class PagesController < ApplicationController
  def welcome
    @series = Series.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end
end
