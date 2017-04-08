FactoryGirl.define do
   factory :grade do
     person factory: :student, strategy: :build
     assignment factory: :assignment, strategy: :build
     value 3
   end
end
