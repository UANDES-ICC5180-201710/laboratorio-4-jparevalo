FactoryGirl.define do
   factory :assignment do
     title "Microsoft Office"
     course factory: :course, strategy: :build
     enunciado "Tienen que hacer un Microsoft Office para mañana, suerte"
   end
end
