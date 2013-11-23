FactoryGirl.define do
  # Create factory sequences for regular users.
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    # Create factory for admin user.
    factory :admin do
      admin true
    end
  end

  # Create factory for microposts.
  factory :micropost do
    content "Lorem ipsum"
    user
  end
end
