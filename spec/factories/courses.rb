FactoryGirl.define do
   factory :course do
     title "Math 101"
     code "M101"
     teacher factory: :teacher, strategy: :build
     quota 30
   end
end
