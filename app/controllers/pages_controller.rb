class PagesController < ApplicationController

  def fag
    @fag = Fag.find(params[:id])
  end

  def landing; end

end
