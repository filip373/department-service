class API::ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    @contracts = Contract.all
  end

  def new
    render json: Contract.new
  end

  def show
  end

  def create
    @contract = Contract.new(contract_params)

    if @contract.save
      render json: @contract
    else
      render json: @contract.errors, status: :unprocessable_entity
    end
  end

  def update
    if @contract.update(contract_params)
      render json: @contract
    else
      render json: @contract.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @contract.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_params
      params.require(:contract).permit(:title, :description, :due_date, :showroom_id)
    end
end
