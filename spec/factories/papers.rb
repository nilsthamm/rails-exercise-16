FactoryGirl.define do
  factory :paper do
    title "computing machinery and intelligence"
		venue "mind 49: 433-460"
		year 1950
  end

  factory :paper2, class: Paper do
    title "computing machinery and intelligence2"
		venue "mind 49: 433-4605"
		year 1968
  end

end
