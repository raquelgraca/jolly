require "open-uri"

User.destroy_all

puts "Creating 5 users..."
  parent_user01 = User.new(
    first_name: "Raquel",
    last_name: "Graça",
    email: "raquel@email.com",
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
  file = URI.open('https://res.cloudinary.com/dxvk3qixb/image/upload/v1583937288/1NtBUkgPbZQsuXyVj4GzfASm.jpg')
  parent_user01.avatar.attach(io: file, filename: "parent_photo.jpg", content_type: "image/jpg")
  parent_user01.save!

  worker_user02 = User.new(
    first_name: "Juana",
    last_name: "Miranda",
    email: "juana@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "recreation worker",
    street: "Rua das Palmeiras",
    street_number: "20",
    neighbourhood: 'Catete',
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "21200021",
    bio: "I have 10 years of experience working with youth populations representing the range of diverse communities in Rio de Janeiro.
Knowledge of and experience working with diverse communities and equity-seeking groups (ie Women, People with Disabilities, GLBT, Race and Ethnic groups).
I have a certification in Parks and Recreation Rio de Janeiro's Principles of Healthy Child Development.",
    )
  file = URI.open('https://weddinghacker.com.br/wp-content/uploads/2017/05/opulent-profile-square-02.jpg')
  worker_user02.avatar.attach(io: file, filename: "worker02_photo.jpg", content_type: "image/jpg")
  worker_user02.save!

  owner_user03 = User.new(
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
  file = URI.open('https://oficinadainteligencia.com.br/wp-content/uploads/2019/07/opulent-profile-square-06.jpg')
  owner_user03.avatar.attach(io: file, filename: "owner03_photo.jpg", content_type: "image/jpg")
  owner_user03.save!

  worker_user04 = User.new(
    first_name: "Emilie",
    last_name: "Nicolau",
    email: "emilie_n@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "recreation worker",
    street: "Rua Banbina",
    street_number: "23",
    neighbourhood: "Botafogo",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "2150021",
    bio: "My place is very cool!",
    )
  file = URI.open('https://oficinadainteligencia.com.br/wp-content/uploads/2019/07/opulent-profile-square-01.jpg')
  worker_user04.avatar.attach(io: file, filename: "worker_user04_photo.jpg", content_type: "image/jpg")
  worker_user04.save!

  worker_user05 = User.new(
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
    bio: "Experience leading preschool and childrens activities. I have some previous skills and knowledge in a program area such as; arts & crafts, games, sports, dance.",
    )
  file = URI.open('https://oficinadainteligencia.com.br/wp-content/uploads/2019/07/opulent-profile-square-07.jpg')
  worker_user05.avatar.attach(io: file, filename: "worker05_photo.jpg", content_type: "image/jpg")
  worker_user05.save!

  worker_user06 = User.new(
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
    bio: "Experience planning and instructing preschool and children's programs. Formal training/certification in related area an asset.Skills in a variety of program areas i.e. music, art, sports, games.
Current Emergency First Aid certification as recognized by the SUS.",
    )
  file = URI.open('https://oficinadainteligencia.com.br/wp-content/uploads/2019/07/opulent-profile-square-04.jpg')
  worker_user06.avatar.attach(io: file, filename: "worker06_photo.jpg", content_type: "image/jpg")
  worker_user06.save!


  puts "Finished!==============================================="

PlaySpace.destroy_all

owner = User.find_by(role: "play space owner")

puts "Creating 8 Playspaces...+++++++++++++++++++++++++++++"
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

  play_space05 = PlaySpace.new(
    name: "Sky of diamonds",
    street: "Rua da Alegria",
    street_number: "32",
    neighbourhood: "Botafogo",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "220003021",
    facilities: "Playspace indoor for teenagers",
    user_id: owner.id
    )
  file10 = URI.open('https://www.mygrandeprairienow.com/wp-content/uploads/2018/01/36682860954_1025c65b11_b.jpg')
  file11 = URI.open('https://main-cdn.grabone.co.nz/goimage/fullsize/1e9bc2257fab9d2cb3e538eee3983470bce1c969.jpg')
  file12 = URI.open('https://bloximages.chicago2.vip.townnews.com/billingsgazette.com/content/tncms/assets/v3/editorial/b/40/b40d5956-3113-5171-bdae-e13e853312bb/576d9c6db1027.image.jpg')

  play_space05.photos.attach(io: file10, filename: "space05_1.jpg", content_type: "image/jpg")
  play_space05.photos.attach(io: file11, filename: "space05_2.jpg", content_type: "image/jpg")
  play_space05.photos.attach(io: file12, filename: "space05_3.jpg", content_type: "image/jpg")
  play_space05.save!

  play_space06 = PlaySpace.new(
    name: "Floresta Encantada",
    street: "Rua da Alegria",
    street_number: "32",
    neighbourhood: "Botafogo",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "220003021",
    facilities: "Playspace indoor for teenagers",
    user_id: owner.id
    )
  file13 = URI.open('https://www.mygrandeprairienow.com/wp-content/uploads/2018/01/36682860954_1025c65b11_b.jpg')
  file14 = URI.open('https://main-cdn.grabone.co.nz/goimage/fullsize/1e9bc2257fab9d2cb3e538eee3983470bce1c969.jpg')
  file15 = URI.open('https://bloximages.chicago2.vip.townnews.com/billingsgazette.com/content/tncms/assets/v3/editorial/b/40/b40d5956-3113-5171-bdae-e13e853312bb/576d9c6db1027.image.jpg')

  play_space06.photos.attach(io: file13, filename: "space06_1.jpg", content_type: "image/jpg")
  play_space06.photos.attach(io: file14, filename: "space06_2.jpg", content_type: "image/jpg")
  play_space06.photos.attach(io: file15, filename: "space06_3.jpg", content_type: "image/jpg")
  play_space06.save!

  play_space07 = PlaySpace.new(
    name: "Trenzinho da Alegria",
    street: "Rua da Alegria",
    street_number: "32",
    neighbourhood: "Botafogo",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "220003021",
    facilities: "Playspace indoor for teenagers",
    user_id: owner.id
    )
  file16 = URI.open('https://www.mygrandeprairienow.com/wp-content/uploads/2018/01/36682860954_1025c65b11_b.jpg')
  file17 = URI.open('https://main-cdn.grabone.co.nz/goimage/fullsize/1e9bc2257fab9d2cb3e538eee3983470bce1c969.jpg')
  file18 = URI.open('https://bloximages.chicago2.vip.townnews.com/billingsgazette.com/content/tncms/assets/v3/editorial/b/40/b40d5956-3113-5171-bdae-e13e853312bb/576d9c6db1027.image.jpg')

  play_space07.photos.attach(io: file16, filename: "space07_1.jpg", content_type: "image/jpg")
  play_space07.photos.attach(io: file17, filename: "space07_2.jpg", content_type: "image/jpg")
  play_space07.photos.attach(io: file18, filename: "space07_3.jpg", content_type: "image/jpg")
  play_space07.save!

  puts "Finished!========================================="

  Appointment.destroy_all

  play_space01 = PlaySpace.find_by(name: "Big and Tiny")
  play_space02 = PlaySpace.find_by(name: "Kids Island")
  play_space03 = PlaySpace.find_by(name: "Fun Time")
  play_space04 = PlaySpace.find_by(name: "Power Play Kids")
  play_space05 = PlaySpace.find_by(name: "Sky of diamonds")
  play_space06 = PlaySpace.find_by(name: "Floresta Encantada")
  play_space07 = PlaySpace.find_by(name: "Trenzinho da Alegria")
  time_1 = DateTime.now + 2.hours
  time_2 = DateTime.now + 4.hours
  time_3 = DateTime.now + 1.hours
  time_4 = DateTime.now + 3.hours
  time_5 = DateTime.now + 5.hours
  time_6 = DateTime.now + 7.hours
  time_7 = DateTime.now + 1.hours
  time_8 = DateTime.now + 3.hours
  time_9 = DateTime.now + 4.hours
  time_10 = DateTime.now + 6.hours
  time_11 = DateTime.now + 5.hours
  time_12 = DateTime.now + 7.hours
  time_13 = DateTime.now + 8.hours
  time_14 = DateTime.now + 10.hours

  puts "Creating 8 Appointments...+++++++++++++++++++++++++++++++++++++"
  appointment_1 = Appointment.create!(
    minimum_capacity: 5,
    maximum_capacity: 7,
    start_time: time_1,
    end_time: time_2,
    play_space_id: play_space01.id,
    owner_fee_per_kid_cents: 2000,
    )
  appointment_2 = Appointment.create!(
    minimum_capacity: 5,
    maximum_capacity: 7,
    start_time: time_3,
    end_time: time_4,
    play_space_id: play_space02.id,
    owner_fee_per_kid_cents: 1500,
    )
  appointment_3 = Appointment.create!(
    minimum_capacity: 10,
    maximum_capacity: 12,
    start_time: time_5,
    end_time: time_6,
    play_space_id: play_space03.id,
    owner_fee_per_kid_cents: 1300,
    )
  appointment_4 = Appointment.create!(
    minimum_capacity: 10,
    maximum_capacity: 12,
    start_time: time_7,
    end_time: time_8,
    play_space_id: play_space04.id,
    owner_fee_per_kid_cents: 1600,
    )
  appointment_5 = Appointment.create!(
    minimum_capacity: 5,
    maximum_capacity: 7,
    start_time: time_9,
    end_time: time_10,
    play_space_id: play_space05.id,
    owner_fee_per_kid_cents: 1800,
    )
  appointment_6 = Appointment.create!(
    minimum_capacity: 5,
    maximum_capacity: 7,
    start_time: time_11,
    end_time: time_12,
    play_space_id: play_space06.id,
    owner_fee_per_kid_cents: 1500,
    )
  appointment_7 = Appointment.create!(
    minimum_capacity: 10,
    maximum_capacity: 12,
    start_time: time_13,
    end_time: time_14,
    play_space_id: play_space07.id,
    owner_fee_per_kid_cents: 1000,
    )
  appointment_8 = Appointment.create!(
    minimum_capacity: 10,
    maximum_capacity: 12,
    start_time: time_11,
    end_time: time_12,
    play_space_id: play_space01.id,
    owner_fee_per_kid_cents: 1600,
    )

  puts "Finished!"

  worker = User.find_by(role: "recreation worker")

  PlaySession.destroy_all

  puts "Creating 08 Play_sessions...++++++++++++++++++++++++++++"

    play_session01 = PlaySession.new(
    name: "Afternoon Reading",
    description: "Afternoon reading for under 10s",
    requirements: "Under 10",
    worker_fee_per_kid_cents: 1200,
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
    worker_fee_per_kid_cents: 1400,
    user_id: worker_user02.id,
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
    user_id: worker_user05.id,
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
    worker_fee_per_kid_cents: 900,
    user_id: worker_user04.id,
    status: "pending",
    appointment_id: appointment_4.id,
    )

  file13 = URI.open('https://images.unsplash.com/photo-1484820540004-14229fe36ca4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60')
  play_session04.photo.attach(io: file13, filename: "play_session04", content_type: "image/jpg")
  play_session04.save!

    play_session06 = PlaySession.new(
    name: "Jump class",
    description: "Improve your balance and have fun in a super elastic playground.",
    requirements: "Aged 8-11",
    worker_fee_per_kid_cents: 1100,
    user_id: worker_user06.id,
    status: "pending",
    appointment_id: appointment_5.id,
    )

  file13 = URI.open('https://res.cloudinary.com/dxvk3qixb/image/upload/v1583936835/oUGCDS3XsudgX31m3L4fPkmr.jpg')
  play_session06.photo.attach(io: file13, filename: "play_session04", content_type: "image/jpg")
  play_session06.save!

    play_session07 = PlaySession.new(
    name: "Painting Session",
    description: "Children of all ages love to paint! From the simplest painting with a brush or hands to more elaborate spin art, marble painting, and painting a fort.",
    requirements: "Aged 08-12",
    worker_fee_per_kid_cents: 1600,
    user_id: worker_user02.id,
    status: "pending",
    appointment_id: appointment_6.id,
    )

  file13 = URI.open('https://images.unsplash.com/photo-1453749024858-4bca89bd9edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1307&q=80')
  play_session07.photo.attach(io: file13, filename: "play_session04", content_type: "image/jpg")
  play_session07.save!

  play_session08 = PlaySession.new(
    name: "Drama class",
    description: "Drama and imaginative play classes for children aged 5 years to 11 Years.",
    requirements: "Aged 5-11",
    worker_fee_per_kid_cents: 1200,
    user_id: worker_user05.id,
    status: "pending",
    appointment_id: appointment_7.id,
    )

  file13 = URI.open('https://images.unsplash.com/photo-1485546246426-74dc88dec4d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
  play_session08.photo.attach(io: file13, filename: "play_session04", content_type: "image/jpg")
  play_session08.save!


  play_session09 = PlaySession.new(
    name: "Managing Emotions",
    description: "Mental health literacy and emotional self-regulation",
    requirements: "Aged 12-15",
    worker_fee_per_kid_cents: 1250,
    user_id: worker_user06.id,
    status: "pending",
    appointment_id: appointment_8.id,
    )

  file13 = URI.open('https://images.unsplash.com/photo-1524503033411-c9566986fc8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
  play_session09.photo.attach(io: file13, filename: "play_session04", content_type: "image/jpg")
  play_session09.save!

  play_session10 = PlaySession.new(
    name: "Playground session",
    description: "Group session at one of the largest playgrounds in Rio.",
    requirements: "Aged 9-11",
    worker_fee_per_kid_cents: 1000,
    user_id: worker_user05.id,
    status: "pending",
    appointment_id: appointment_1.id,
    )

  file13 = URI.open('https://res.cloudinary.com/dxvk3qixb/image/upload/v1584019750/cRncYD26um6mTqhbvaKWoWBi.jpg')
  play_session10.photo.attach(io: file13, filename: "play_session04", content_type: "image/jpg")
  play_session10.save!


  puts "Finished!======================================="

  Booking.destroy_all

  parent = User.find_by(role: "parent")

  puts "Creating 4 Bookings...++++++++++++++++++++++++++"

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
    play_session_id: play_session03.id,
    user_id: parent.id,
    )

    booking03 = Booking.create!(
    name_of_kid: "Elisa",
    gender_of_kid: "Female",
    age_of_kid: 9,
    comment: "She can't eat peanut.",
    status: "confirmed",
    play_session_id: play_session06.id,
    user_id: parent.id,
    )

    booking04 = Booking.create!(
    name_of_kid: "Julia",
    gender_of_kid: "F",
    age_of_kid: 8,
    comment: "She loves to take a nap after lunch",
    status: "pending",
    play_session_id: play_session08.id,
    user_id: parent.id,
    )

  puts "Finished!=============================="

  Review.destroy_all

  puts "Creating 4 reviews+++++++++++++++++++++"

    review01 = Review.create!(
      content: "My child had an amazing time! The class was very well organized and prepared.",
      stars: 5,
      reviewer_id: parent_user01.id,
      reviewee_id: worker_user02.id,
      )

    review02 = Review.create!(
      content: "Nice ammenities and the recreational worker is very professional and carefull with all the kids.",
      stars: 4,
      reviewer_id: parent_user01.id,
      reviewee_id: worker_user04.id,
      )

    review03 = Review.create!(
      content: "He caught everyone's attention by telling incredible stories",
      stars: 4,
      reviewer_id: parent_user01.id,
      reviewee_id: worker_user05.id,
      )

    review04 = Review.create!(
      content: "Lovely work of this recreation. 5 deserved stars!",
      stars: 5,
      reviewer_id: parent_user01.id,
      reviewee_id: worker_user06.id,
      )

  puts "Finished!================================"





