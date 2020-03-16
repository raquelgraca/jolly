require "open-uri"

User.destroy_all

puts "Creating 5 users..."
  parent_user01 = User.new(
    first_name: "Mariana",
    last_name: "Barreiras",
    email: "mariana_b@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "parent",
    street: "Rua das Palmeiras",
    street_number: "20",
    neighbourhood: 'Catete',
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "21200021",
    bio: "I love to be a mother",
    )
  file = URI.open('https://i2.wp.com/www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/Square-Profile-Pic-1-1.jpg')
  parent_user01.avatar.attach(io: file, filename: "parent_photo.jpg", content_type: "image/jpg")
  parent_user01.save!

    parent_user02 = User.new(
    first_name: "Juana",
    last_name: "Miranda",
    email: "juana@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "parent",
    street: "Rua das Palmeiras",
    street_number: "20",
    neighbourhood: 'Catete',
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "21200021",
    bio: "I love my life",
    )
  file = URI.open('https://i2.wp.com/www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/Square-Profile-Pic-1-1.jpg')
  parent_user02.avatar.attach(io: file, filename: "parent_photo.jpg", content_type: "image/jpg")
  parent_user02.save!

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
    zip_code: "2150021",
    bio: "My place is very cool!",
    )
  file = URI.open('https://janecanblogdotcom.files.wordpress.com/2014/09/ashley-square-profile.jpg')
  owner_user02.avatar.attach(io: file, filename: "owner_photo.jpg", content_type: "image/jpg")
  owner_user02.save!

  worker_user03 = User.new(
    first_name: "Pedro Henrique",
    last_name: "Souza",
    email: "pedro_s@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "recreation worker",
    street: "Rua Bela",
    street_number: "200",
    neighbourhood: "Flamengo",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "21999001",
    bio: "I've been a recreation worker since 2015. I studied Terapeutic art and I'm also a professional actor.",
    )
  file = URI.open('https://oficinadainteligencia.com.br/wp-content/uploads/2019/07/opulent-profile-square-07.jpg')
  worker_user03.avatar.attach(io: file, filename: "worker_photo.jpg", content_type: "image/jpg")
  worker_user03.save!

  worker_user04 = User.new(
    first_name: "Juan",
    last_name: "Souza",
    email: "juan_s@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "recreation worker",
    street: "Rua Bela",
    street_number: "200",
    neighbourhood: "Flamengo",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "21999001",
    bio: "I've been a recreation worker since 2015.",
    )
  file = URI.open('https://oficinadainteligencia.com.br/wp-content/uploads/2019/07/opulent-profile-square-07.jpg')
  worker_user04.avatar.attach(io: file, filename: "worker_photo.jpg", content_type: "image/jpg")
  worker_user04.save!

  puts "Finished!"

PlaySpace.destroy_all

owner = User.find_by(role: "play space owner")

puts "Creating 4 Playspaces..."
  play_space01 = PlaySpace.new(
    name: "Big and Tiny",
    street: "Rua da diversão",
    street_number: "46",
    neighbourhood: "Flamengo",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "27000210",
    facilities: "Natural playground",
    user_id: owner.id
    )
  file = URI.open('https://redtricom.files.wordpress.com/2018/02/bigandtiny.jpg?w=1000&h=664')
  file2 = URI.open('https://redtricom.files.wordpress.com/2018/08/shop-and-lounge-area-big-and-tiny.jpg?w=605')
  play_space01.photos.attach(io: file, filename: "space01_1.jpg", content_type: "image/jpg")
  play_space01.photos.attach(io: file2, filename: "space01_2.jpg", content_type: "image/jpg")
  play_space01.save!

  play_space02 = PlaySpace.new(
    name: "Kids Island",
    street: "Rua da risada",
    street_number: "98",
    neighbourhood: "Copacabana",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "99008675",
    facilities: "Special place for little kids",
    user_id: owner.id
    )
  file3 = URI.open('https://redtricom.files.wordpress.com/2017/11/img_0730.jpg?w=605&h=454')
  file4 = URI.open('https://redtricom.files.wordpress.com/2013/09/kids-island-sand.jpg')
  play_space02.photos.attach(io: file3, filename: "space02_1.jpg", content_type: "image/jpg")
  play_space02.photos.attach(io: file4, filename: "space02_2.jpg", content_type: "image/jpg")
  play_space02.save!

  play_space03 = PlaySpace.new(
    name: "Fun Time",
    street: "Rua da Felicidade",
    street_number: "22",
    neighbourhood: "Catete",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "20210021",
    facilities: "Inclusive playspaces for children with disability",
    user_id: owner.id
    )
  file5 = URI.open('https://media.timeout.com/images/105158871/750/422/image.jpg')
  file6 = URI.open('https://powerplaykids.com/wp-content/uploads/2020/01/20191025_134720-768x576.jpg')
  play_space03.photos.attach(io: file5, filename: "space03_1.jpg", content_type: "image/jpg")
  play_space03.photos.attach(io: file6, filename: "space03_2.jpg", content_type: "image/jpg")
  play_space03.save!

  play_space04 = PlaySpace.new(
    name: "Power Play Kids",
    street: "Rua da Alegria",
    street_number: "32",
    neighbourhood: "Botafogo",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "220003021",
    facilities: "Playspace indoor for teenagers",
    user_id: owner.id
    )
  file7 = URI.open('https://www.mygrandeprairienow.com/wp-content/uploads/2018/01/36682860954_1025c65b11_b.jpg')
  file8 = URI.open('https://main-cdn.grabone.co.nz/goimage/fullsize/1e9bc2257fab9d2cb3e538eee3983470bce1c969.jpg')
  file9 = URI.open('https://bloximages.chicago2.vip.townnews.com/billingsgazette.com/content/tncms/assets/v3/editorial/b/40/b40d5956-3113-5171-bdae-e13e853312bb/576d9c6db1027.image.jpg')

  play_space04.photos.attach(io: file7, filename: "space04_1.jpg", content_type: "image/jpg")
  play_space04.photos.attach(io: file8, filename: "space04_2.jpg", content_type: "image/jpg")
  play_space04.photos.attach(io: file9, filename: "space04_3.jpg", content_type: "image/jpg")

  play_space04.save!

  puts "Finished!"

  Appointment.destroy_all

  play_space_1 = PlaySpace.find_by(name: "Big and Tiny")
  play_space_2 = PlaySpace.find_by(name: "Kids Island")
  time_1 = DateTime.now + 24.hours
  time_2 = DateTime.now + 26.hours
  time_3 = DateTime.now + 36.hours
  time_4 = DateTime.now + 38.hours

  puts "Creating 4 Appointments..."
  appointment_1 = Appointment.create!(
    minimum_capacity: 5,
    maximum_capacity: 7,
    start_time: time_1,
    end_time: time_2,
    play_space_id: play_space_1.id,
    owner_fee_per_kid_cents: 2000,
    )
  appointment_2 = Appointment.create!(
    minimum_capacity: 5,
    maximum_capacity: 7,
    start_time: time_3,
    end_time: time_4,
    play_space_id: play_space_1.id,
    owner_fee_per_kid_cents: 1500,
    )
  appointment_3 = Appointment.create!(
    minimum_capacity: 10,
    maximum_capacity: 12,
    start_time: time_1,
    end_time: time_2,
    play_space_id: play_space_2.id,
    owner_fee_per_kid_cents: 1000,
    )
  appointment_4 = Appointment.create!(
    minimum_capacity: 10,
    maximum_capacity: 12,
    start_time: time_3,
    end_time: time_4,
    play_space_id: play_space_2.id,
    owner_fee_per_kid_cents: 1600,
    )

  puts "Finished!"

  worker = User.find_by(role: "recreation worker")

  PlaySession.destroy_all

  puts "Creating 4 Play_sessions..."

    play_session01 = PlaySession.new(
    name: "Afternoon Reading",
    description: "Afternoon reading for under 10s",
    requirements: "Under 10",
    worker_fee_per_kid_cents: 1000,
    user_id: worker_user04.id,
    status: "confirmed",
    appointment_id: appointment_1.id,
    )

  file10 = URI.open('https://images.unsplash.com/photo-1554721299-e0b8aa7666ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60')
  play_session01.photo.attach(io: file10, filename: "play_session01", content_type: "image/jpg")
  play_session01.save!


    play_session02 = PlaySession.new(
    name: "Tuesday Swimming",
    description: "Two hours supervised swimming",
    requirements: "Armbands needed",
    worker_fee_per_kid_cents: 4000,
    user_id: worker_user03.id,
    status: "cancelled",
    appointment_id: appointment_2.id,
    )

  file11 = URI.open('https://images.unsplash.com/flagged/photo-1578467992042-7e2e9650cfbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
  play_session02.photo.attach(io: file11, filename: "play_session02", content_type: "image/jpg")
  play_session02.save!

    play_session03 = PlaySession.new(
    name: "Creative Arts Play",
    description: "Colouring, clay play, drawings",
    requirements: "Aged 4 - 11",
    worker_fee_per_kid_cents: 1500,
    user_id: worker_user03.id,
    status: "confirmed",
    appointment_id: appointment_3.id,
    )

  file12 = URI.open('https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=333&q=80')
  #senjuti-kundu-JfolIjRnveY-unsplash.jpg
  play_session03.photo.attach(io: file12, filename: "play_session03", content_type: "image/jpg")
  play_session03.save!


    play_session04 = PlaySession.new(
    name: "Toy and object play",
    description: "Group session with a variety of toys",
    requirements: "Aged 4-11",
    worker_fee_per_kid_cents: 1000,
    user_id: worker_user04.id,
    status: "pending",
    appointment_id: appointment_4.id,
    )

  file13 = URI.open('https://images.unsplash.com/photo-1484820540004-14229fe36ca4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60')
  play_session04.photo.attach(io: file13, filename: "play_session04", content_type: "image/jpg")
  play_session04.save!

  puts "Finished!"

  Booking.destroy_all

  parent = User.find_by(role: "parent")

  puts "Creating 4 Bookings..."

    booking01 = Booking.create!(
    name_of_kid: "Joseph",
    gender_of_kid: "M",
    age_of_kid: 7,
    comment: "He can't eat seafood",
    status: "confirmed",
    play_session_id: play_session01.id,
    user_id: parent.id,
    )

    booking02 = Booking.create!(
    name_of_kid: "Mario",
    gender_of_kid: "M",
    age_of_kid: 5,
    comment: "He likes everything except play videogames",
    status: "cancelled",
    play_session_id: play_session02.id,
    user_id: parent.id,
    )

    booking03 = Booking.create!(
    name_of_kid: "Elisa",
    gender_of_kid: "Female",
    age_of_kid: 9,
    comment: "She tried to kill me once",
    status: "confirmed",
    play_session_id: play_session03.id,
    user_id: parent.id,
    )

    booking04 = Booking.create!(
    name_of_kid: "Julia",
    gender_of_kid: "F",
    age_of_kid: 8,
    comment: "She loves to take a nap after lunch",
    status: "pending",
    play_session_id: play_session04.id,
    user_id: parent.id,
    )

  puts "Finished!"

  Review.destroy_all

  puts "Creating 4 reviews"

    review01 = Review.create!(
      content: "Such a great place",
      stars: 5,
      reviewer_id: parent_user01.id,
      reviewee_id: worker_user03.id,
      )

    review02 = Review.create!(
      content: "Nice ammenities but the recreational worker could be better",
      stars: 4,
      reviewer_id: parent_user02.id,
      reviewee_id: worker_user03.id,
      )

    review03 = Review.create!(
      content: "Such an old place",
      stars: 2,
      reviewer_id: parent_user02.id,
      reviewee_id: worker_user03.id,
      )

    review04 = Review.create!(
      content: "Lovely place",
      stars: 5,
      reviewer_id: parent_user01.id,
      reviewee_id: worker_user03.id,
      )

  puts "Finished!"





