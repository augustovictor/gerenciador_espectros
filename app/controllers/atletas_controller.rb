#encoding: utf-8
class AtletasController < ApplicationController

  before_filter :authenticate_admin!, only: [:new, :edit, :update, :destroy]

  def index
    @atletas = Atleta.all
  end

  def show
    @atleta = Atleta.find(params[:id])
  end

  def new
    @atleta = Atleta.new
  end

  def create
    @atleta = Atleta.new(params[:atleta])

    if @atleta.save
      flash[:notice] = 'Atleta criado com sucesso.'
      redirect_to @atleta
    else
      flash[:error] = 'Não foi possível criar o atleta.'
      render 'new'
    end

  end

  def edit
    @atleta = Atleta.find(params[:id])
  end

  def update
    @atleta = Atleta.find(params[:id])
    @atleta.update_attributes(params[:atleta])

    if @atleta.save
      flash[:notice] = 'Atleta atualizado com sucesso.'
      redirect_to @atleta
    else
      flash[:error] = 'Não foi possível atualizar o atleta.'
      render 'edit'
    end

  end

  def destroy
    @atleta = Atleta.find(params[:id]).destroy
    flash[:notice] = 'Atleta deletado com sucesso.'
    redirect_to atletas_path
  end

  def inadimplentes
    @atletas_inadimplentes = Atleta.inadimplentes
  end

  def em_dia
    @atleta = Atleta.find(params[:id])
    unless @atleta.ultimo_pagamento > Time.now.to_date
      @atleta.update_attributes(:ultimo_pagamento => Time.now.to_date)

      redirect_to(:back, :notice => "Atleta #{@atleta.nome} está em dia.")
    end
  end
end