class FundManagersController < ApplicationController
  before_action :set_fund_manager, only: %i[ show edit update destroy ]

  # GET /fund_managers
  def index
    @fund_managers = FundManager.all
  end

  # GET /fund_managers/new
  def new
    @fund_manager = FundManager.new
  end

  # GET /fund_managers/1/edit
  def edit
  end

  # POST /fund_managers
  def create
    @fund_manager = FundManager.new(fund_manager_params)

    if @fund_manager.save
      redirect_to fund_managers_url, notice: "Fund manager was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fund_managers/1
  def update
    if @fund_manager.update(fund_manager_params)
      redirect_to fund_managers_url, notice: "Fund manager was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /fund_managers/1
  def destroy
    @fund_manager.destroy

    redirect_to fund_managers_url, notice: "Fund manager was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_manager
      @fund_manager = FundManager.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fund_manager_params
      params.require(:fund_manager).permit(:name, :company_id)
    end
end
