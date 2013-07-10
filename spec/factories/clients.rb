FactoryGirl.define do
  factory :client do
    name "Olena"
    surname "Sokolyk"
    sequence(:email){ |n| "email#{n}@factory.com" }
    password "123456"
    password_confirmation { |u| u.password }
    category_id 1
    date_of_birth 1993-05-30
    passport "AN387123"
    foreign_passport "jdh"
    tel_number "0676326723"
    address "Dnipropetrovsk, ul.Gagarina, 57"
  end
end