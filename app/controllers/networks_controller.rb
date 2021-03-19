class NetworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_network, only: %w[show edit update destroy]

  def index
    @networks = Network.order(created_at: :desc).page params[:page]
  end

  def show; end

  def new
    @network = Network.new
  end

  def create
    @network = Network.new(network_params)
    if @network.save
      redirect_to network_path(@network)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @network.update(network_params)
      redirect_to network_path(@network)
    else
      render :edit
    end
  end

  def destroy
    @network.destroy
    redirect_to networks_path
  end

  private

  def set_network
    @network = Network.find(params[:id])
  end

  def network_params
    params.require(:network).permit(:title, :description, photos: [])
  end
end
