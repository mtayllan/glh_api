class Api::V1::ProceedingsController < Api::V1Controller
  before_action :set_proceeding, only: [:show, :update, :destroy]

  # GET /proceedings
  def index
    @proceedings = Proceeding.all

    render json: @proceedings
  end

  # GET /proceedings/1
  def show
    render json: @proceeding
  end

  # POST /proceedings
  def create
    @proceeding = Proceeding.new(proceeding_params)

    if @proceeding.save
      render json: @proceeding, status: :created, location: @proceeding
    else
      render json: @proceeding.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /proceedings/1
  def update
    if @proceeding.update(proceeding_params)
      render json: @proceeding
    else
      render json: @proceeding.errors, status: :unprocessable_entity
    end
  end

  # DELETE /proceedings/1
  def destroy
    @proceeding.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proceeding
      @proceeding = Proceeding.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def proceeding_params
      params.require(:proceeding).permit(:patient_id, :medication_id, :document)
    end
end
