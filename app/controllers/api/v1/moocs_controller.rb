class Api::V1::MoocsController < ApplicationController
  before_action :set_mooc, only: [:show, :update, :destroy]

  # GET /moocs
  def index
    @moocs = Mooc.all

    render json: @moocs
  end

  # GET /moocs/1
  def show
    render json: @mooc
  end

  # POST /moocs
  def create
    @mooc = Mooc.new(mooc_params)

    if @mooc.save
      render json: @mooc, status: :created, location: @mooc
    else
      render json: @mooc.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /moocs/1
  def update
    if @mooc.update(mooc_params)
      render json: @mooc
    else
      render json: @mooc.errors, status: :unprocessable_entity
    end
  end

  # DELETE /moocs/1
  def destroy
    @mooc.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mooc
      @mooc = Mooc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mooc_params
      params.require(:mooc).permit(:title, :link)
    end
end
