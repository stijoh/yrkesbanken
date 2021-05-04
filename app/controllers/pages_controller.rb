class PagesController < ApplicationController

  def fag
    @fag = Fag.find(params[:id])
    @kompetansemaal = Kompetansemaal.where(fag_id: params[:id])
    @yrke = []
    YrkeTema.where(tema_id: params[:tema]).each do |y|
      @yrke << Yrke.find(y.yrke.id)
    end
    @tema = Tema.find(params[:tema]) if params[:tema].present?
    @oppgaver = Oppgaver.where(tema_id: params[:tema])
    @materialer = Material.where(yrke_id: params[:yrke])
    @teknikker = Teknikk.where(yrke_id: params[:yrke])
    @verktoy = Verktoy.where(yrke_id: params[:yrke])
    @fagutrykk = Fagutrykk.where(yrke_id: params[:yrke])
    @saertrekk = Saertrekk.where(yrke_id: params[:yrke])
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
