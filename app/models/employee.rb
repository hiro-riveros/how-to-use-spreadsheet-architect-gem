class Employee < ApplicationRecord
  include SpreadsheetArchitect
  belongs_to :company

  def spreadsheet_columns
    [
      ['company name', company.name],
      ['employee', full_name],
    ]
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
