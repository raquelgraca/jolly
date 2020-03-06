require "open-uri"

User.destroy_all

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
    zip_code: "21200021",
    bio: "I love to be a mother",
    )
  file = URI.open('https://i2.wp.com/www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/Square-Profile-Pic-1-1.jpg')
  parent_user01.avatar.attach(io: file, filename: "parent_photo.jpg", content_type: "image/jpg")
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
    neighbourhood: "São Cristóvão",
    city: "Rio de Janeiro",
    state: "RJ",
    zip_code: "21999001",
    bio: "I've been a recreation worker since 2015. I studied Terapeutic art and I'm also a professional actor.",
    )
  file = URI.open('https://oficinadainteligencia.com.br/wp-content/uploads/2019/07/opulent-profile-square-07.jpg')
  worker_user03.avatar.attach(io: file, filename: "worker_photo.jpg", content_type: "image/jpg")
  worker_user03.save!

  puts "Finished!"

PlaySpace.destroy_all

owner = User.find_by(role: "play space owner")

puts "Creating 4 Playspaces..."
  play_space01 = PlaySpace.new(
    name: "Big and Tiny",
    street: "Rua da diversão",
    street_number: "46",
    neighbourhood: "Barra da Tijuca",
    city: "Campo Grande",
    state: "Rio de Janeiro",
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
    neighbourhood: "Jardim Gramacho",
    city: "Duque de Caxias",
    state: "Rio de Janeiro",
    zip_code: "99008675",
    facilities: "Special place for little kids",
    user_id: owner.id
    )
  file3 = URI.open('https://redtricom.files.wordpress.com/2017/11/img_0730.jpg?w=605&h=454')
  file4 = URI.open('https://redtricom.files.wordpress.com/2013/09/kids-island-sand.jpg')
  play_space01.photos.attach(io: file3, filename: "space02_1.jpg", content_type: "image/jpg")
  play_space01.photos.attach(io: file4, filename: "space02_2.jpg", content_type: "image/jpg")
  play_space01.save!

  play_space03 = PlaySpace.new(
    name: "Fun Time",
    street: "Rua da Felicidade",
    street_number: "22",
    neighbourhood: "Méier",
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
