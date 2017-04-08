FactoryGirl.define do
   factory :enrollment do
     student factory: :student, strategy: :build
     course factory: :course, strategy: :build
   end
end
