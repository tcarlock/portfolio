FactoryGirl.define do
  factory :project do
    title               { Faker::Lorem.words(3).join(' ') }
    details             { Faker::Lorem.paragraph }
    feedback            { Faker::Lorem.paragraph }
    start_date          { Time.now - (60 * 60 * 24 * 7 * rand(52)) }
    end_date            { |p| p.start_date + (60 * 60 * 24 * 7) }
    primary_url         { 'http://' << Faker::Internet.domain_name }
    github_url          { 'http://github.com/' << Faker::Internet.user_name }    
    skill_list          { FactoryGirl.generate(:skills_tag_array) }
    tool_list           { FactoryGirl.generate(:tools_tag_array) }
    category_list       { FactoryGirl.generate(:category_tag_array) }
    organization

    factory :project_with_attachments do
      ignore do
        attachments_count 5
      end

      after(:create) do |project, evaluator|
        FactoryGirl.create_list(:project_attachment, evaluator.attachments_count, project: project)
      end
    end
  end
end