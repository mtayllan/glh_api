class Api::V1::MedicinesController < Api::V1Controller
  before_action :set_medicine, only: [:show, :update, :destroy]

  # GET /medicines
  def index
    @medicines = Medicine.all

    render json: @medicines
  end

  # GET /medicines/1
  def show
    render json: @medicine
  end

  # POST /medicines
  def create
    @medicine = Medicine.new(medicine_params)

    if @medicine.save
      render json: @medicine, status: :created, location: @medicine
    else
      render json: @medicine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medicines/1
  def update
    if @medicine.update(medicine_params)
      render json: @medicine
    else
      render json: @medicine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medicines/1
  def destroy
    @medicine.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicine
      @medicine = Medicine.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def medicine_params
      params.require(:medicine).permit(:name, :group, composition: [], description: [])
    end
end
