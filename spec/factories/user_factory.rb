FactoryGirl.define do

    factory :a_user, class: User do
        email "alex@alex.com"
        password "crazyhorse"
        name "Alex"
    end

end