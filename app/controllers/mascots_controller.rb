class MascotsController < ApplicationController
  before_action :set_mascot, only: [:show, :update, :destroy]

  # GET /mascots
  def index
    @mascots = Mascot.all

    render json: @mascots
  end

  # GET /mascots/1
  def show
    render json: @mascot
  end

  # POST /mascots
  def create
    @mascot = Mascot.new(mascot_params)

    if @mascot.save
      render json: @mascot, status: :created, location: @mascot
    else
      render json: @mascot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mascots/1
  def update
    if @mascot.update(mascot_params)
      render json: @mascot
    else
      render json: @mascot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mascots/1
  def destroy
    @mascot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mascot
      @mascot = Mascot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mascot_params
      params.require(:mascot).permit(:name, :age, :location, :description, :gender, :friendly_with_kids, :friendly_with_other_dogs, :friendly_with_cats, :species, :race)
    end
end
