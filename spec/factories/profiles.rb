FactoryBot.define do
  factory :profile do
    price { 1000 }
    color { "red" }
    work_type { "machine" }
    user
  end
end
