class CompaniesController < ApplicationController
  respond_to :html, :xlsx, :ods, :csv

  def index
    raise unless Company.generate_xlxs_file
    send_data File.read('public/companies.xlsx'), filename: 'companies.xlsx'
  end
end
