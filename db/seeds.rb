require "open-uri"

file = URI.open('https://source.unsplash.com/100x100/?face')
filename = File.basename(file.path)


puts "Creating 3 users..."
  parent_user01 = User.new(
    first_name: "Marina",
    last_name: "Barreiras",
    email: "mariana_b@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "parent",
    street: "Rua das Palmeiras",
    street_number: "20",
    neighbourhood: 'Laranjeiras',
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "21200021"
    bio: "I love to me a mother"
    )
  parent_user01.avatar.attach(io: file, filename: filename, content_type: "image/jpg")
  parent_user01.save!

  owner_user02 = User.new(
    first_name: "Fernanda",
    last_name: "Tuxi",
    email: "fernanda_t@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "play space owner",
    street: "Rua Banbina",
    street_number: "23",
    neighbourhood: "Botafogo",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "2150021"
    bio: "My place is very cool!"
    )
  owner_user02.avatar.attach(io: file, filename: filename, content_type: "image/jpg")
  owner_user02.save!

  worker_user03 = User.new(
    first_name: 'Mariana',
    last_name: 'Lord of the Rings',
    email:
    password:
    password_confirmation:
    role:
    street:
    street_number:
    neighbourhood:
    city:
    state:
    zip_code:
    bio:
    avatar:
    )

  puts "Finished!"
