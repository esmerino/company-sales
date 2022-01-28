class SalesController < ApplicationController
  before_action :set_company

  def index
    @sales = @company.sales
  end

  private 

  def set_company
    @company = Company.includes(:sales).find(params[:company_id])
  end
end
