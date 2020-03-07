class Api::V1::DefensesController < Api::V1Controller
  before_action :set_defense, only: [:show]

  # GET /defenses
  def index
    @defenses = Defense.all

    render json: @defenses
  end

  # GET /defenses/1
  def show
    render json: @defense
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
