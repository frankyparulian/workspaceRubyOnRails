# code ini digunakan untuk create sample database
namespace :db do
  task populate: :environment do
      Comment.destroy_all

      10.times do
        Comment.create(
          author: FFaker::Name.first_name + " " + Faker::Name.last_name,
          comment: FFaker::HipsterIpsum.words(10).join(' ')
        )
      end
  end
end
