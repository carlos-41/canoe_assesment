class DuplicateFundWarningController < ApplicationController
  before_action :set_duplicate_fund_warning, only: %i[ resolve ]

  # GET /duplicate_fund_warnings
  def index
    @duplicate_fund_warnings = DuplicateFundWarning.all
  end

  # DELETE /duplicate_fund_warning/1
  def resolve
    @duplicate_fund_warning.destroy

    redirect_to duplicate_fund_warnings_url, notice: "Duplicate fund warning was successfully resolved."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duplicate_fund_warning
      @duplicate_fund_warning = DuplicateFundWarning.find(params[:id])
    end
end
