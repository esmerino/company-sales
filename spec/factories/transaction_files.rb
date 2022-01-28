FactoryBot.define do
  factory :transaction_file do
    company
    file { { io: File.open(File.join(Rails.root.join('./spec/fixtures/example_input.tab'))), filename: 'example_input'} }
  end
end
