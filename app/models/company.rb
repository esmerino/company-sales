class Company < ApplicationRecord
  has_many :sales
  has_many :transaction_files
end
