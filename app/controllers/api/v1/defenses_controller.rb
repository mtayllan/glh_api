class Api::V1::DefensesController < Api::V1Controller
  before_action :set_defense, only: [:show, :update, :destroy]

  # GET /defenses
  def index
    @defenses = Defense.all

    render json: @defenses
  end

  # GET /defenses/1
  def show
    render json: @defense
  end

  # POST /defenses
  def create
    @defense = Defense.new(defense_params)

    if @defense.save
      render json: @defense, status: :created, location: @defense
    else
      render json: @defense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /defenses/1
  def update
    if @defense.update(defense_params)
      render json: @defense
    else
      render json: @defense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /defenses/1
  def destroy
    @defense.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defense
      @defense = Defense.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def defense_params
      params.require(:defense).permit(:proceeding_id)
    end
end
