class PagesController < ApplicationController
  def index
    @tours = Tour.all
  end

end
