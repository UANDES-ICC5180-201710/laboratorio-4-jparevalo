FactoryGirl.define do
   factory :student, class: Person do
     first_name "James"
     last_name "Peterson"
     email "jpeterson@gmail.com"
     is_teacher false
   end
   factory :teacher, class: Person do
     first_name "Carl"
     last_name "Johnson"
     email "cj@grovestreet.com"
     is_teacher = true
   end
end
