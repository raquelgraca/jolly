require "open-uri"

User.destroy_all
Address.destroy_all

puts "Creating 7 users..."
  parent_user01 = User.new(
    first_name: "Raquel",
    last_name: "Graça",
    email: "raquel@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "parent",
    bio: "Mãe de coração.",
    )
  file = URI.open('https://res.cloudinary.com/dxvk3qixb/image/upload/v1583937288/1NtBUkgPbZQsuXyVj4GzfASm.jpg')
  parent_user01.avatar.attach(io: file, filename: "parent_photo.jpg", content_type: "image/jpg")
  parent_user01.save!

  parent_user02 = User.new(
    first_name: "Ivan",
    last_name: "Santos",
    email: "ivan@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "parent",
    bio: "Fui pai aos 18 anos e aprendi a ser homem.",
    )
  file = URI.open('https://res.cloudinary.com/dxvk3qixb/image/upload/v1583937288/1NtBUkgPbZQsuXyVj4GzfASm.jpg')
  parent_user02.avatar.attach(io: file, filename: "parent_photo.jpg", content_type: "image/jpg")
  parent_user02.save!

  parent_user03 = User.new(
    first_name: "Francisca",
    last_name: "Silva",
    email: "franca@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "parent",
    bio: "Tenho 2 filhos e acredito na pedagogia do afeto",
    )
  file = URI.open('https://res.cloudinary.com/dxvk3qixb/image/upload/v1583937288/1NtBUkgPbZQsuXyVj4GzfASm.jpg')
  parent_user03.avatar.attach(io: file, filename: "parent_photo.jpg", content_type: "image/jpg")
  parent_user03.save!

  worker_user02 = User.new(
    first_name: "Juana",
    last_name: "Miranda",
    email: "juana@email.com",
    password: "123456",
    password_confirmation: "123456",
    role: "recreation worker",
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
    bio: "Tenho 10 anos de experiência trabalhando com adolescentes e jovens de diversas comunidades do Rio de Janeiro.",
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
    bio: "Experiência em planejamento e instrução de programas pré-escolares e infantis. Treinamento / certificação formal em uma área relacionada um ativo. Habilidades em uma variedade de áreas, por exemplo, música, arte, esportes, jogos.",
    )
  file = URI.open('https://oficinadainteligencia.com.br/wp-content/uploads/2019/07/opulent-profile-square-04.jpg')
  worker_user06.avatar.attach(io: file, filename: "worker06_photo.jpg", content_type: "image/jpg")
  worker_user06.save!


  puts "Finished!==============================================="

PlaySpace.destroy_all
owner = User.find_by(role: "play space owner")

puts "Creating 8 Playspaces...+++++++++++++++++++++++++++++"
  play_space01 = PlaySpace.new(
    facilities: "Natural playground",
    user_id: owner.id
    )
  file = URI.open('https://media.timeout.com/images/105158871/750/422/image.jpg')
  file2 = URI.open('https://media.timeout.com/images/105158871/750/422/image.jpg')
  play_space01.photos.attach(io: file, filename: "space01_1.jpg", content_type: "image/jpg")
  play_space01.photos.attach(io: file2, filename: "space01_2.jpg", content_type: "image/jpg")
  play_space01.save!
  play_space01.address = Address.create(name: "Big and Tiny",
                                      street: "Ladeira da Glória",
                                      street_number: "26",
                                      neighbourhood: "Glória",
                                      city: "Rio de Janeiro",
                                      state:"RJ",
                                      zip_code: "22211-120")

  play_space02 = PlaySpace.new(
    facilities: "Special place for little kids",
    user_id: owner.id
    )
  file3 = URI.open('https://redtricom.files.wordpress.com/2017/11/img_0730.jpg?w=605&h=454')
  file4 = URI.open('https://redtricom.files.wordpress.com/2013/09/kids-island-sand.jpg')
  play_space02.photos.attach(io: file3, filename: "space02_1.jpg", content_type: "image/jpg")
  play_space02.photos.attach(io: file4, filename: "space02_2.jpg", content_type: "image/jpg")
  play_space02.save!
  play_space02.address = Address.create(name: "Kids Island",
                                      street: "Rua Ferreira Viana",
                                      street_number: "81",
                                      neighbourhood: "Flamengo",
                                      city: "Rio de Janeiro",
                                      state:"RJ",
                                      zip_code: "22210-040")

  play_space03 = PlaySpace.new(
    facilities: "Inclusive playspaces for children with disability",
    user_id: owner.id
    )
  file5 = URI.open('https://media.timeout.com/images/105158871/750/422/image.jpg')
  play_space03.photos.attach(io: file5, filename: "space03_1.jpg", content_type: "image/jpg")
  play_space03.save!
  play_space03.address = Address.create(name: "Fun Time",
                                      street: "Rua Conde de Baependi",
                                      street_number: "62",
                                      neighbourhood: "Laranjeiras",
                                      city: "Rio de Janeiro",
                                      state:"RJ",
                                      zip_code: "22231-140")

  play_space04 = PlaySpace.new(
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
  play_space04.address = Address.create(name: "Power Play Kids",
                                      street: "Avenida Infante Dom Henrique",
                                      street_number: "85",
                                      neighbourhood: "Parque do Flamengo",
                                      city: "Rio de Janeiro",
                                      state:"RJ",
                                      zip_code: "20021-140")

  play_space05 = PlaySpace.new(
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
  play_space05.address = Address.create(name: "Sky of diamonds",
                                      street: "Rua Voluntários da Pátria",
                                      street_number: "170",
                                      neighbourhood: "Botafogo",
                                      city: "Rio de Janeiro",
                                      state:"RJ",
                                      zip_code: "22270-000")

  play_space06 = PlaySpace.new(
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
  play_space06.address = Address.create(name: "Floresta Encantada",
                                      street: "R. Vinícius de Moraes",
                                      street_number: "49",
                                      neighbourhood: "Ipanema",
                                      city: "Rio de Janeiro",
                                      state:"RJ",
                                      zip_code: "22411-010")

  play_space07 = PlaySpace.new(
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
  play_space07.address = Address.create(name: "Trenzinho da Alegria",
                                    street: "Rua Itapera",
                                    street_number: "500",
                                    neighbourhood: "Irajá",
                                    city: "Rio de Janeiro",
                                    state:"RJ",
                                    zip_code: "21230-500")

  puts "Finished!========================================="

  Appointment.destroy_all

  time_1 = DateTime.new(2021,04,18,16,30,00)
  time_2 = DateTime.new(2021,04,18,18,30,00)
  time_3 = DateTime.new(2021,04,18,14,00,00)
  time_4 = DateTime.new(2021,04,18,16,00,00)
  time_5 = DateTime.new(2021,04,19,14,15,00)
  time_6 = DateTime.new(2021,04,20,16,15,00)
  time_7 = DateTime.new(2021,04,20,17,45,00)
  time_8 = DateTime.new(2021,04,20,20,45,00)
  time_9 = DateTime.new(2021,04,20,9,00,00)
  time_10 = DateTime.new(2021,04,20,11,00,00)
  time_11 = DateTime.new(2021,04,20,14,00,00)
  time_12 = DateTime.new(2021,04,20,16,00,00)
  time_13 = DateTime.new(2021,04,20,16,30,00)
  time_14 = DateTime.new(2021,04,20,18,30,00)

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
    name: "Contação de história com chá da tarde",
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
    name: "Natação divertida",
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
    name: "Sessão de criatividade",
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
    name: "Brinquedos e jogos da época da vovó",
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
    requirements: "Children aged between 8-16 and bring their own sports clothing, as well as towel. Please state any injuries or other physical limitations of your child in the comment section when making a booking.",
    worker_fee_per_kid_cents: 1100,
    user_id: worker_user06.id,
    status: "pending",
    appointment_id: appointment_5.id,
    )

  file13 = URI.open('https://res.cloudinary.com/dxvk3qixb/image/upload/v1583936835/oUGCDS3XsudgX31m3L4fPkmr.jpg')
  play_session06.photo.attach(io: file13, filename: "play_session04", content_type: "image/jpg")
  play_session06.save!

    play_session07 = PlaySession.new(
    name: "Pintura livre",
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
    name: "Aprendendo com as emoções",
    description: "Dar nome aos sentimentos demonstra que eles existem, que todos os sentem e que podem ser expressos, desde que da forma adequada. Participe dessa conversa leve e aberta sobre emoções com exercícios práticos e teatrais para adolescentes.",
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
    name: "Sessão Playground",
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
      content: "My child had an amazing time! The class was very organized and well-prepared.",
      stars: 5,
      reviewer_id: parent_user02.id,
      reviewee_id: worker_user06.id,
      )

    review02 = Review.create!(
      content: "He seems to connect with the kids. Jose returned home with a great mood. He Jose returned home. He deserves 5 stars!",
      stars: 5,
      reviewer_id: owner_user03.id,
      reviewee_id: worker_user06.id,
      )

    review03 = Review.create!(
      content: "He caught everyone's attention by telling incredible stories",
      stars: 4,
      reviewer_id: parent_user03.id,
      reviewee_id: worker_user06.id,
      )

    review04 = Review.create!(
      content: "Juan left a great impression. He certainly knows how to entertain the kids and keep them off their mobile phones.",
      stars: 5,
      reviewer_id: parent_user01.id,
      reviewee_id: worker_user06.id,
      )

  puts "Finished!================================"





