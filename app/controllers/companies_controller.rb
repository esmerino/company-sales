class CompaniesController < ApplicationController
  def index
    @companies = Company.includes(:sales).all
  end
end
