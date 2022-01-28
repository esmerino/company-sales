class Sale < ApplicationRecord
  belongs_to :company
  belongs_to :transaction_file
end
