FactoryBot.define do
  factory :sale do
    company
    transaction_file
    purchaser_name { "João Silva" }
    item_description { "R$10 off R$20 of food" }
    item_price { "10.0" }
    purchase_count { 2 }
    merchant_address { "456 Unreal Rd" }
    merchant_name { "Sneaker Store Emporium" }
  end
end
