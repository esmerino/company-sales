class TransactionFilesController < ApplicationController
  before_action :set_company

  def new
    @transaction_file = TransactionFile.new
  end

  def create
    TransactionFile.create!(transaction_file_params.merge(company_id: @company.id))

    redirect_to company_sales_path(@company)
  end

  private 

  def set_company
    @company  = Company.find(params[:company_id])
  end

  def transaction_file_params
    params.require(:transaction_file).permit(:file)
  end
end
