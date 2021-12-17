# namespace :db do
#     desc "產生假課程"
#     task :new_courses => :environment do
#       u = User.random
#       10.times do |i|
#         u.courses.create(name: Faker::Name.name,
#                          price: Faker::Number.between(from: 10, to: 100),
#                          hour: Faker::Number.between(from: 1, to: 20))
#       end
#     end
#   end
namespace :db do
    desc "產生隨機的課程"
    task :create_random_courses => :environment do
      u = User.random
      10.times do |i|
        u.courses.create(name: Faker::Movie.title, 
                         price: Faker::Number.between(from: 50, to: 500),
                         hour: Faker::Number.between(from: 1, to: 20))
      end
    end
  end