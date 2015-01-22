class HomesController < ApplicationController
  respond_to :html, :json
  before_filter :set_home, only: [:show, :edit, :update, :destroy]

  def index
    @homes = Home.all
    respond_with(@homes)
  end

  def show
    respond_with(@home)
  end

  def new
    @home = Home.new
    respond_with(@home)
  end

  def edit
  end

  def create
    @home = Home.new(params[:home])
    @home.save
    respond_with(@home)
  end

  def update
    @home.update_attributes(params[:home])
    respond_with(@home)
  end

  def destroy
    @home.destroy
    respond_with(@home)
  end

  private
    def set_home
      @home = Home.find(params[:id])
    end
end
