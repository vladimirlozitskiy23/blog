FactoryGirl.define do
  factory :comment do
    author 'Mike'
    #метод принимает свойство и считает сколько раз создается сущность
    sequence(:body) {|n| "comment body #{n}"}
  end
end