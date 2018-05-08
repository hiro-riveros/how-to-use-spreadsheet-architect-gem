class Company < ApplicationRecord
  include SpreadsheetArchitect
  has_many :employees

  def self.generate_xlxs_file
    companies = order(id: :asc)
    File.open('public/companies.xlsx', 'w+b') do |f|
      f.write companies.to_xlsx
    end
  end

  def spreadsheet_columns
    [
      ['company name', name],
      ['address', address],
      ['phone', phone],
      ['employees count', employees.count]
    ]
  end
end
