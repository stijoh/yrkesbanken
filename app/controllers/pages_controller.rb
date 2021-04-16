class PagesController < ApplicationController

  def fag
    @fag = Fag.find(params[:id])
    @yrker = Yrke.where(tema_id: params[:tema])
    @tema = Tema.find(params[:tema]) if params[:tema].present?
    @oppgaver = Oppgaver.where(tema_id: params[:tema])
    menu_fag
  end

  def landing
    menu_fag
  end

  private

  def menu_fag
    @menu_fag = Fag.pluck(:navn, :id)
  end

end
