# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
# Producer.destroy_all
# Product.destroy_all
Tag.destroy_all
Product.destroy_all
Producer.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all



puts "creating products and tags"

Tag.create(
  name: "Vegetables"
  )

Tag.create(
  name: "Fruit"
  )

Tag.create(
  name: "Fish"
  )

Tag.create(
  name: "Meat"
  )

Tag.create(
  name: "Honey"
  )

Tag.create(
  name: "Juice"
  )

Tag.create(
  name: "Cider"
  )

Tag.create(
  name: "Dairy product"
  )

Tag.create(
  name: "Wine"
  )

Tag.create(
  name: "Jam"
  )

Tag.create(
  name: "Oil"
  )

Tag.create(
  name: "Mushrooms"
  )


 # file = URI.open("")
 #  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
 #  file = URI.open("")
 #  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
 #  file = URI.open("")
 #  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
 #  file = URI.open("")
 #  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')


 #  banner_file = URI.open("")
 #  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')


user = User.create( email: "bla@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230034/Producers%20Photos%20for%20EatLocal/Profile%20pictures/man_prof5_ath58a.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  producer = Producer.create(
  name: 'Quinta da Bicuda',
  phone_number: 913689290,
  address: 'Rua da Bicuda Cascais, 2750-682 Cascais, Portugal',
  email: 'quinta@bicuda.com',
  description: 'Based in Cascais, Rob and Alec Mercer have established a high welfare free-range pork and poultry farm with a simple philosophy of what’s good for the animals and the land will naturally be good for all those that eat the meat. It’s this simple philosophy that has enabled Quinta da Bicuda to rear and produce the most succulent, richly flavoured meat. All of the meat from Quinta da Bicuda is free-range and RSPCA assured. It is also Red Tractor Farm Assured. Quinta da Bicuda are multi award winning. Just in the last few years they have scooped a Compassion In World Farming Good Pig award in 2012, multiple Great Taste Awards over the years including a star for their pork in 2014 and a LEAF (Linking Environment and Farming) award.',
  latitude: 38.72240025,
  longitude: -9.39690917,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Principe Real"
  )
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594231044/Producers%20Photos%20for%20EatLocal/Quinta%20da%20Bicuda/poultry_3_knttlh.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230981/Producers%20Photos%20for%20EatLocal/Quinta%20da%20Bicuda/poultry1_almiyj.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230981/Producers%20Photos%20for%20EatLocal/Quinta%20da%20Bicuda/pig1_dw2ewm.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230981/Producers%20Photos%20for%20EatLocal/Quinta%20da%20Bicuda/pig2_zboqhk.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230981/Producers%20Photos%20for%20EatLocal/Quinta%20da%20Bicuda/poultry2_sdmya6.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')

Product.create(
  name: 'Award-winning free-range pork meat',
  producer: Producer.find_by(name: 'Quinta da Bicuda'),
  )

ProductTag.create(
  product: Product.find_by(name: 'Award-winning free-range pork meat'),
  tag: Tag.find_by(name: "Meat"),
  )

ProducerNews.create(
  producer: Producer.find_by(name: 'Quinta da Bicuda'),
  title: "New kind of ham",
  description: "We are excited to announce that Quinta da Bicuda has started to produce a new kind of ham. Get in touch with us for more information."
  )

user = User.create( email: "bla25@bla.com", password: "123456")
file = URI.open('https://res.cloudinary.com/agon91/image/upload/v1594309280/Producers%20Photos%20for%20EatLocal/Profile%20pictures/profs9_u3rekz.jpg')
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Dunleavy Vineyards',
  phone_number: 94589032,
  address: 'Rua Primeiro de Maio, 2660-186 Loures, Portugal',
  email: 'dunleavy@vineyards.com',
  description: 'Combining passion, sustainable agricultural practices and the latest grape growing techniques, Dunleavy Vineyards produce fantastic rosé wine using their Pinot noir and Seyval grapes. Located in the heart of a beautiful Vale just outside Loures, Dunleavy Vineyards were first planted in 2008 by owner and manager Ingrid Bates. One of the youngest vineyard owners in Portugal, Ingrid began her viticultural career over 10 years ago when she took up a job maintaining a local vineyard. Having found her true vocation she planned and saved for her own vineyard which was planted just a few weeks before the birth of her first child. A few years down the line, and after much hard work, Dunleavy Vineyards released its first wine in 2013. The wine sold out in three days. The subsequent Pinot noir releases have proved to be just as popular winning ‘Best Local Wine’ at the Bristol Good Food Awards two years in a row, a bronze at the International Wine Challenge and countless smaller awards to boot.',
  latitude: 38.8308741,
  longitude: -9.1684512,
   user_id: user.id,
   status: 'accepted',
   selling_location: "Mercado Biologico do Principe Real"
  )

  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594231390/Producers%20Photos%20for%20EatLocal/Dunleavy%20Vineyards/vineyard1_b6yh5a.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594231390/Producers%20Photos%20for%20EatLocal/Dunleavy%20Vineyards/vineyard2_bhm115.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594231380/Producers%20Photos%20for%20EatLocal/Dunleavy%20Vineyards/vineyard5_quwgjm.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594231390/Producers%20Photos%20for%20EatLocal/Dunleavy%20Vineyards/vineyard3_tauyvz.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594231389/Producers%20Photos%20for%20EatLocal/Dunleavy%20Vineyards/vineyard4_jz0k6j.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')

Product.create(
  name: 'Dunleavy Pinot Noir Rose',
  description: 'Dunleavy pinot noir rose is a multi-award winning Portuguese wine produced in Loures close to Lisbon. It’s light and fruity with a mouthwatering finish.',
  producer: Producer.find_by(name: 'Dunleavy Vineyards')
  )

ProductTag.create(
  product: Product.find_by(name: 'Dunleavy Pinot Noir Rose'),
  tag: Tag.find_by(name: 'Wine')
  )

ProducerNews.create(
  producer: Producer.find_by(name: "Dunleavy Vineyards"),
  title: "Harvest",
  description: "We are happy that the harvest was successful and are excited to start producing this year's wine."
  )

user = User.create( email: "bla2@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230034/Producers%20Photos%20for%20EatLocal/Profile%20pictures/man_prof2_anr8v5.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Familia Castano',
  phone_number: 945904823,
  address: 'Ponte de Lima, Viana do Castelo, Alto Minho, Nord, 4990-999, Portugal',
  email: 'castanofamily@gmail.com',
  description: 'Northern Portugal is known for its warm climate wines, and the Castaño family are keen promoters of one of Portugal’s native varieties – Monastrell. Their carefully nurtured Portuguese vineyards look beautiful and well-looked after, as they practice integrated farming production techniques, together with organic agriculture to produce some of the finest wines. The balmy Portuguese climate is perfect for delivering complex flavours, and the sandy limestone soil nourishes the grape plants with minerals. Of the family’s 600 acres, 80 percent is dedicated to growing Monastrell. It’s every wine connoisseur’s dream to see gorgeous, decades-old Monastrell vines, twined across their Las Gruesas and Pozuelo vineyards, bearing juicy grapes.',
  latitude: 42.12267315,
  longitude: -8.76571655,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Beira-Rio, Mercado do Livramento"
  )

 file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594245398/Producers%20Photos%20for%20EatLocal/Familia%20Castano/cast5_wvjbvj.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594245401/Producers%20Photos%20for%20EatLocal/Familia%20Castano/cast4_grbpiu.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594245400/Producers%20Photos%20for%20EatLocal/Familia%20Castano/cast3_pga6uw.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594245389/Producers%20Photos%20for%20EatLocal/Familia%20Castano/cast1_gtnzt5.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594245399/Producers%20Photos%20for%20EatLocal/Familia%20Castano/cast2_xynmyj.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')


Product.create(
  name: 'Castano Ecologico Macabeo',
  description: 'One sip of this organic white and you’ll be taken to the warm, sunny climes of Portugal. Imagine drinking this crisp white, while looking over sun-drenched fields and rows of pretty vines – it’ll make you feel warm and fuzzy inside. A lovely feeling, that’s enhanced by the knowledge that this vineyard is forward-thinking in their practice, driven by quality but careful to follow organic agricultural methods. The wine itself is soft and juicy, with a gentle mineral note and a super clean, fresh finish, that makes it an easy drinking dry white.',
  producer: Producer.find_by(name: 'Familia Castano')
  )

ProductTag.create(
  product: Product.find_by(name: 'Castano Ecologico Macabeo'),
  tag: Tag.find_by(name: 'Wine')
  )

ProducerNews.create(
  producer: Producer.find_by(name: "Familia Castano"),
  title: "Harvest",
  description: "We are happy that the harvest was successful and are excited to start producing this year's wine."
  )

ProducerNews.create(
  producer: Producer.find_by(name: "Familia Castano"),
  title: "Introduction of new watering system",
  description: "We have introduced a new way of watering our wine plants. Have a look, and feel free to take some inspiration from it."
  )

user = User.create( email: "bla3@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230034/Producers%20Photos%20for%20EatLocal/Profile%20pictures/girl_profile_xugrax.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Cobrey Farm',
  phone_number: 93759923,
  address: 'Vila do Conde, Porto, Área Metropolitana do Porto, Nord, Portugal',
  email: 'cobrey@family.com',
  description: 'Cobrey Farm is home to Wye Valley Produce. The farm is owned by the Chinn family, fourth-generation farmers that have been growing asparagus since 2003. The perfect conditions of the Wye Valley with the south-facing slopes and sandy soil, enables produce to grow early in the spring. They have invested strongly in research in order to develop new crops and new growing techniques. The harvest is picked by hand during two periods; March to July, and September to October. Within 30 minutes the asparagus are hydro-cooled down to 2°C for packing. The result is the freshest and sweetest asparagus possible unless you grow it yourself and pick straight from the plant. Fancy a visit? They host regular visits from school children and are members of the Open Farm Sunday Scheme.',
  latitude: 41.3406144,
  longitude: -8.68709311,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Principe Real"

  )
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594245855/Producers%20Photos%20for%20EatLocal/Cobrey%20Farm/cob5_cp3chu.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594245858/Producers%20Photos%20for%20EatLocal/Cobrey%20Farm/cob1_fyuf1x.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594245855/Producers%20Photos%20for%20EatLocal/Cobrey%20Farm/cob3_rphpww.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594245855/Producers%20Photos%20for%20EatLocal/Cobrey%20Farm/cob4_uz0yqv.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594245855/Producers%20Photos%20for%20EatLocal/Cobrey%20Farm/cob2_bhbxmn.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')


Product.create(
  name: 'Asparagus',
  description: 'There are some fresh vegetables that are simply transformed in flavour and texture by fast, short light supply chains. Local, freshly picked asparagus like this is one such product. With its long green stems and purple tinged tips, asparagus has a unique and subtle intensity of flavour. A delicacy of the vegetable world, much of the time it is simply combined with similarly rich tasting ingredients, pairing particularly well with parmesan or hollandaise sauce.',
  producer: Producer.find_by(name: 'Cobrey Farm')
  )

ProductTag.create(
  product: Product.find_by(name: 'Asparagus'),
  tag: Tag.find_by(name: 'Vegetables')
  )

ProducerNews.create(
  producer: Producer.find_by(name: "Cobrey Farm"),
  title: "Artichokes production",
  description: "We are happy to announce that we will be producing Artichokes from next season on. Find us on the Farmers Market in Porto to hear more about it."
  )

user = User.create( email: "bla4@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230033/Producers%20Photos%20for%20EatLocal/Profile%20pictures/man_prof6_vmkxsj.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Miel la Molina',
  phone_number: 93759929,
  address: 'Sesimbra, Setúbal, Lisbon, 2970, Portugal',
  email: 'miel@molina.pt',
  description: 'Using natural extraction methods Miel La Molina produce some really unusual honeys with bees living amongst fields full of thyme, orange blossom, rosemary and eucolyptus. The result? A range of honeys so beautifully aromatic quite unlike anything on the Portugal mass market. All of the bees for each honey are based in a single region of the beautiful region of Sesimbra a couple of hours north of Lisbon. We asked Salva to explain how such exceptional honeys can be produced and delivered to Portugal at such a competitive price. We ship the honey in the same shipment as our fresh produce each week so we can basically ship it without delivery cost. This means we can enjoy the honey here at pretty much the same price as it sells in the valley where it is produced.',
  latitude: 38.4436932,
  longitude: -9.10766602,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Principe Real"
  )

  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230593/Producers%20Photos%20for%20EatLocal/Miel%20La%20Molina/bee5_gityrk.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230370/Producers%20Photos%20for%20EatLocal/Miel%20La%20Molina/bee3_nfwmwj.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230370/Producers%20Photos%20for%20EatLocal/Miel%20La%20Molina/bee1_rnpz1k.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230370/Producers%20Photos%20for%20EatLocal/Miel%20La%20Molina/bee4_yxfxhc.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230370/Producers%20Photos%20for%20EatLocal/Miel%20La%20Molina/bee2_evg7ig.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')

Product.create(
  name: 'Raw Rosemary Honey',
  description: 'Miel La Molina produce and extract their honey naturally from fruit collecting bees, spread over the landscape of the Valle del Guadalhorce, Álora and surroundings. With its sticky texture, honey is a sweet flavoured ingredient widely used in cooking for marinades, dressings and sauces, as well as sweet dishes such as cakes and biscuits. It also makes a natural sweetener in place of sugar.',
  producer: Producer.find_by(name: 'Miel la Molina')
  )

ProductTag.create(
  product: Product.find_by(name: 'Raw Rosemary Honey'),
  tag: Tag.find_by(name: 'Honey')
  )

user = User.create( email: "bla5@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594302346/Producers%20Photos%20for%20EatLocal/Profile%20pictures/profs_khnnej.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Burrow Hill Cider',
  phone_number: 5739402,
  address: 'Lourinha, Marmeleira, Mortágua, Viseu, Viseu Dão-Lafões, Mitte, Portugal',
  email: 'burrow@hillcider.pt',
  description: 'Julian Temperley and Tim Stoddart have over 50 years cider-making experience between them. At Burrow Hill, it is obvious that apples are the principal starting point for their cider with more than 40 varieties being grown such as Brown Snout, Stoke Red, Harry Masters and the legendary Kingston Black. Visiting the farm (which is a must-do day out), you feel like you’ve stepped into a vintage world of cider. We asked Julian to tell us what makes Burrow Hill cider so special.‘Our policy of growing apples is to use the minimum of sprays possible, often not spraying at all. We use no artificial nitrogen and no insecticides. This means we produce smaller and tastier apples than those grown in orchards for industrial cider and we protect the bees at the same time. In fermenting and making cider we use traditional methods, fermenting juice in the autumn without first turning it into concentrate. We grow standard rather than intensive bush orchards and traditional, old varieties that produce unreliable crops and are therefore unviable for industrial cider production but known for their unique qualities and superior tastes.’',
  latitude: 40.3723735,
  longitude: -8.2780296,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )

  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594246163/Producers%20Photos%20for%20EatLocal/Burrow%20Hill%20Cider/bur1_mnmekq.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594246164/Producers%20Photos%20for%20EatLocal/Burrow%20Hill%20Cider/bur2_gowdzf.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594246164/Producers%20Photos%20for%20EatLocal/Burrow%20Hill%20Cider/bur4_aqs0ig.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594246214/Producers%20Photos%20for%20EatLocal/Burrow%20Hill%20Cider/bur5_jfrogh.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594246164/Producers%20Photos%20for%20EatLocal/Burrow%20Hill%20Cider/bur3_p3no6y.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')

Product.create(
  name: 'Discovery Apple Juice',
  description: 'Pressed from a blend of fresh Discovery apples.',
  producer: Producer.find_by(name: 'Burrow Hill Cider')
  )

ProductTag.create(
  product: Product.find_by(name: 'Discovery Apple Juice'),
  tag: Tag.find_by(name: 'Juice')
  )

user = User.create( email: "bla6@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594303465/Producers%20Photos%20for%20EatLocal/Profile%20pictures/profs3_g2znqr.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Alquimia dos Sabores',
  phone_number: 936050601,
  address: 'Rua Augusto Barba Santa, CCI - 23304, 2965 - 291 Poceirão, Palmela',
  email: 'geral@alquimia-sabores.com',
  description: 'Everything has changed in a year of great zucchini production in which we have embraced the challenge of also taking advantage of the excess vegetables, turning them into delicious jams that have become our best bet to enter the market.
  Combining the experience and craft method of the older with the knowledge of chemistry of the younger, new combinations of textures and flavors were born and finally led to the birth in 2011 of the brand Alquimia dos Sabores, totally dedicated to the production of jams and jellies combinated with different raw materials such as flowers and herbs, and also to the creation of unlikely combinations of fruits and vegetables.
  The project Alquimia dos Sabores is the result of a special relationship with nature and its motivation to always produce “products with love” is due to the fact that this project reflects the lifestyle of this Portuguese family and its traditions.',
  latitude: 38.718542,
  longitude: -8.750787,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )

 file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594303264/Producers%20Photos%20for%20EatLocal/Alquimia%20dos%20Sabores/alq2_c8hnje.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594303254/Producers%20Photos%20for%20EatLocal/Alquimia%20dos%20Sabores/alq5_ua8mmr.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594303256/Producers%20Photos%20for%20EatLocal/Alquimia%20dos%20Sabores/alq4_kqr09q.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594303261/Producers%20Photos%20for%20EatLocal/Alquimia%20dos%20Sabores/alq3_ddyvrs.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594303268/Producers%20Photos%20for%20EatLocal/Alquimia%20dos%20Sabores/alq1_pofzre.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')

Product.create(
  name: 'Pumpkin & Spices Jam',
  description: 'Ingredients: Pumpkin, Brown Sugar, and various Spices. Prepared with 70.7g of pumpkin, 29g of sugar and 0.3g of spices per 100g.',
  producer: Producer.find_by(name: 'Alquimia dos Sabores')
  )

ProductTag.create(
  product: Product.find_by(name: 'Pumpkin & Spices Jam'),
  tag: Tag.find_by(name: 'Jam')
  )
Product.create(
  name: 'Rock Pear with Moscatel Wine Jam',
  description: 'Ingredients: Rock Pear, Sugar and “Moscatel” Wine. Prepared with 62g of pear, 34g of sugar and 4g of ‘’Moscatel’’ per 100g.',
  producer: Producer.find_by(name: 'Alquimia dos Sabores')
  )
ProductTag.create(
  product: Product.find_by(name: 'Rock Pear with Moscatel Wine Jam'),
  tag: Tag.find_by(name: 'Jam')
  )
Product.create(
  name: 'Marmalade With Coconut Sugar',
  description: 'Ingredients: Quince, Coconut Sugar, Lemon Zest and Cinnamon Stick. Prepared with 80 g of fruit and 20 g of sugar per 100g.',
  producer: Producer.find_by(name: 'Alquimia dos Sabores')
  )

ProductTag.create(
   product: Product.find_by(name: 'Marmalade With Coconut Sugar'),
   tag: Tag.find_by(name: 'Jam')
  )

user = User.create( email: "bla7@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594307434/Producers%20Photos%20for%20EatLocal/Profile%20pictures/profs8_ci6ci5.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Quinta do Olival da Murta',
  phone_number: 916471885,
  address: 'Quinta do Olival da Murta , 2550-451 Cadaval - Portugal',
  email: 'geral@quintadoolivaldamurta.pt',
  description: 'Quinta do Olival da Murta is a traditional agricultural structure of family nature, developed over four generations. It is located 80 km from Lisbon, next to the Serra de Montejunto.
  As is typical of these rural areas, around the main grape and wine production, a wide variety of complementary activities have emerged over time that, in an organic way, integrate a diverse unit rich in traditional histories and knowledge. A story that teaches us again to respect nature and to value the use of environmentally sustainable production methods.',
  latitude: 39.2406945,
  longitude: -9.0866073,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )


  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594304526/Producers%20Photos%20for%20EatLocal/Quinta%20do%20Olival%20da%20Murta/ol2_c86ktl.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594304531/Producers%20Photos%20for%20EatLocal/Quinta%20do%20Olival%20da%20Murta/ol1_ww446f.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594304518/Producers%20Photos%20for%20EatLocal/Quinta%20do%20Olival%20da%20Murta/olv4_es7mf5.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594304651/Producers%20Photos%20for%20EatLocal/Quinta%20do%20Olival%20da%20Murta/olv6_ic0dm4.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594304522/Producers%20Photos%20for%20EatLocal/Quinta%20do%20Olival%20da%20Murta/ol3_lyhnfn.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')




Product.create(
  name: 'Serra Oca Wines',
  description: 'Serra Oca wines are produced from Portuguese grape varieties, with a non-intensive viticulture and without the use of synthetic chemicals.',
  producer: Producer.find_by(name: 'Quinta do Olival da Murta')
  )

ProductTag.create(
   product: Product.find_by(name: 'Serra Oca Wines'),
   tag: Tag.find_by(name: 'Wine')
  )

user = User.create( email: "bla8@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594305642/Producers%20Photos%20for%20EatLocal/Profile%20pictures/profs4_lm0nfo.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')


producer = Producer.create(
  name: 'Mestre Henriques',
  phone_number: 243992404,
  address: 'Henricarnes, Lda. Zona Industrial de Rio Maior, 2040-357 Rio Maior - Portugal',
  email: 'comercial@henricarnes.com',
  description: 'Mestre Henriques is a family company established in 1978. Dedicated to the production of fine smoked sausages, manufactured according to the rich and authentic Portuguese traditions, strictly following the highest quality standards and satisfying the most demanding tastes.',
  latitude: 39.316331,
  longitude: -8.917514,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )

 file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594305387/Producers%20Photos%20for%20EatLocal/Mestre%20Henriques/mes3_wib4so.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594305322/Producers%20Photos%20for%20EatLocal/Mestre%20Henriques/mes4_oj2lv9.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594305324/Producers%20Photos%20for%20EatLocal/Mestre%20Henriques/mes2_sku924.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594305328/Producers%20Photos%20for%20EatLocal/Mestre%20Henriques/mes1_s40cbx.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')

Product.create(
  name: 'Flour & Pork sausage',
  description: 'Pork Meat and Fat, Corn and Wheat Flour, Red Capsicum Paste, Salt, Spices (Paprika, Piri-piri Sauce, Cloves, Garlic).',
  producer: Producer.find_by(name: 'Mestre Henriques')
  )

ProductTag.create(
   product: Product.find_by(name: 'Flour & Pork sausage'),
   tag: Tag.find_by(name: 'Meat')
  )

Product.create(
  name: 'Extra Spicy chouriço',
  description: 'Pork Meat, Red Capsicum Paste, Salt, Spices (Paprika, Piri-piri Sauce, Cloves, Garlic), Red Wine and White Pepper.',
  producer: Producer.find_by(name: 'Mestre Henriques')
  )

ProductTag.create(
   product: Product.find_by(name: 'Extra Spicy chouriço'),
   tag: Tag.find_by(name: 'Meat')
  )

Product.create(
  name: 'Paiola',
  description: 'Pork Meat, Red Capsicum Paste, Salt, Spices (Paprika, White Pepper, Piri-piri Sauce, Cloves, Garlic) and Red Wine.',
  producer: Producer.find_by(name: 'Mestre Henriques')
  )

ProductTag.create(
   product: Product.find_by(name: 'Paiola'),
   tag: Tag.find_by(name: 'Meat')
  )

user = User.create( email: "bla9@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594306447/Producers%20Photos%20for%20EatLocal/Profile%20pictures/profs5_izrn1u.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')


producer = producer = Producer.create(
  name: 'Vumba Organic Farm',
  phone_number: 914093739,
  address: 'Rua da Teixugueira, 3300-367 São Martinho da Cortiça',
  email: 'joana.linhares@vumba.pt',
  description: 'Vumba produces genuinely local, high quality products and services, while at the same time preserving and improving the environment. We do so because we believe that this is the only way to contribute effectively to the
  sustained development of our neighborhood. Vumba’s products are manually processed and most of the raw materials are from our own farm. We take care of our land with much pride and a high respect for both flora and fauna. As result of these practices, Vumba’s farm has a license for organic farming attributed by Sativa.',
  latitude: 40.273371,
  longitude: -8.151597,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594305986/Producers%20Photos%20for%20EatLocal/Vumba%20Organic%20Farm/vum4_sxdwiz.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594305990/Producers%20Photos%20for%20EatLocal/Vumba%20Organic%20Farm/vum3_vq3tuq.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594305994/Producers%20Photos%20for%20EatLocal/Vumba%20Organic%20Farm/vum2_rhbsct.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594305983/Producers%20Photos%20for%20EatLocal/Vumba%20Organic%20Farm/vum5_etqndv.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594305998/Producers%20Photos%20for%20EatLocal/Vumba%20Organic%20Farm/vum1_pap5we.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')

Product.create(
  name: 'Quinta do Carapinhal cheese - Traditional Maturation',
  description: 'Our cheese’s traditional maturation period is around 45 days. The cheese is normally sold cut into halves (estimated weight: 420 grams) and packed in vacuum. According to its tradition, we also sell the cheese whole and wrapped in a white band (weight between 800 and 900 grams).',
  producer: Producer.find_by(name: 'Vumba Organic Farm')
  )

ProductTag.create(
   product: Product.find_by(name: 'Quinta do Carapinhal cheese - Traditional Maturation'),
   tag: Tag.find_by(name: 'Dairy product')
  )

Product.create(
  name: 'Quinta do Carapinhal cheese - Long Maturation',
  description: 'For strong flavor cheese lovers we have the “Quinta do Carapinhal – Long maturation”. As a result of the long maturation period the cheese gains a drier texture and a more intense flavor.',
  producer: Producer.find_by(name: 'Vumba Organic Farm')
  )

ProductTag.create(
   product: Product.find_by(name: 'Quinta do Carapinhal cheese - Long Maturation'),
   tag: Tag.find_by(name: 'Dairy product')
  )

user = User.create( email: "bla10@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230034/Producers%20Photos%20for%20EatLocal/Profile%20pictures/woman_prof1_yjl6m3.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Queijaria Flor da Beira',
  phone_number: 232960220,
  address: 'Parque Industrial, Lote 5, 3430-132 Carregal do Sal, PORTUGAL',
  email: 'geral@queijariaflordabeira.com',
  description: 'Este processo acontecia devido à enzima digestiva, extraída do estômago dos animais, denominada coalho, elemento de extrema importância no processo de fabricação do queijo.
  Durante séculos, a elaboração do queijo tem-se modiﬁcado e reﬁnado. A elaboração de queijos manteve-se uma actividade artesanal até à aplicação das bases cientíﬁcas, com início no começo de século XX, permitindo às fabricas produzi-los em grande escala.',
  latitude: 40.425709,
  longitude: -8.022512,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )

  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218261/Producers%20Photos%20for%20EatLocal/Queijaria%20Flor%20da%20Beira/amanteigado5a_zpn3sj.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218262/Producers%20Photos%20for%20EatLocal/Queijaria%20Flor%20da%20Beira/pastor_i9fzyp.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218261/Producers%20Photos%20for%20EatLocal/Queijaria%20Flor%20da%20Beira/amanteigado2_cqzxhw.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218261/Producers%20Photos%20for%20EatLocal/Queijaria%20Flor%20da%20Beira/amanteigado5_dmnxsp.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218261/Producers%20Photos%20for%20EatLocal/Queijaria%20Flor%20da%20Beira/amanteigado1_uj3bes.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')


Product.create(
  name: 'Buttery Ripened cheese',
  description: 'Cheese with a sheep’s typical aroma, ripened in a controlled environment and slightly acidulous taste, presenting in its interior a soft paste with little or no eye, buttery kind with a white ivory colour and a thin straw yellow crust.',
  producer: Producer.find_by(name: 'Queijaria Flor da Beira')
  )

ProductTag.create(
   product: Product.find_by(name: 'Buttery Ripened cheese'),
   tag: Tag.find_by(name: 'Dairy product')
  )

Product.create(
  name: 'Flor da Beira Tradição',
  description: 'Our best milk and "know" comes Cheese Flower Border Traditional.
  This cheese is obtained by a very strict control on the selection of our best producers of sheep Bordaleira Serra da Estrela milk, meeting the expectations of our most discerning consumer and connoisseur of traditional products.',
  producer: Producer.find_by(name: 'Queijaria Flor da Beira')
  )

ProductTag.create(
   product: Product.find_by(name: 'Flor da Beira Tradição'),
   tag: Tag.find_by(name: 'Dairy product')
  )

user = User.create( email: "bla11@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230034/Producers%20Photos%20for%20EatLocal/Profile%20pictures/man_prof_wadeiz.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Spiracol',
  phone_number: 917395604,
  address: 'Estrada M509, Nº000, 4540-378 Fermedo',
  email: 'spiracol@gmail.com',
  description: 'Spiracol is a young and dynamic company in Arouca, Portugal. It has been actively working in the heliciculture sector since 2015. The companys activity is diverse, exploring all the stages of snails cycle, from breeding to commercialization.',
  latitude: 40.963127,
  longitude: -8.421260,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )

  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218262/Producers%20Photos%20for%20EatLocal/Spiracol/s2_lzelvj.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218263/Producers%20Photos%20for%20EatLocal/Spiracol/p5_bu8fs7.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218263/Producers%20Photos%20for%20EatLocal/Spiracol/p7_zacin0.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218262/Producers%20Photos%20for%20EatLocal/Spiracol/p2_f0vaej.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218262/Producers%20Photos%20for%20EatLocal/Spiracol/s3_hhd664.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')


Product.create(
  name: 'Snails',
  description: 'We focus primarily in the production of snails for commercialization for food industry',
  producer: Producer.find_by(name: 'Spiracol')
  )

ProductTag.create(
   product: Product.find_by(name: 'Snails'),
   tag: Tag.find_by(name: 'Meat'),
  )

user = User.create( email: "bla12@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594307218/Producers%20Photos%20for%20EatLocal/Profile%20pictures/profs6_ldnllh.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Casa Anadia Olive Oils',
  phone_number: 932951119,
  address: 'Quinta do Bom Sucesso, 2200-484 Alferrarede, Abrantes',
  email: 'info@casaanadia.pt',
  description: 'Casa Anadia olive oil, is heir to an ancient tradition that dates back to at least the 17th century, when the ancient Manor House with a chapel were built, nowadays part of the Bom Sucesso Estate in Alferrarede. The olive groves on the Estate occupy an area of 100ha, having traditional groves and also intense olive groves, with Galega and Cobrançosa as well as Picual, Arbequina among other International varieties, the estate produces quality Protected Designation of Origin (P.D.O.) Olive Oils. Also used in the production are olives from the Estate’s centuries-old olive trees.
  Casa Anadia olive oils are the result of three different terroirs in Alferrarede, with clay, chalky and shale soils to the north. The result is single olive oil lots, a perfect alchemy of varieties and the corresponding soil.',
  latitude: 39.483291,
  longitude: -8.171802,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )

  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218259/Producers%20Photos%20for%20EatLocal/Casa%20Anadia%20Olive%20Oils/img-2599_relx4d.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218259/Producers%20Photos%20for%20EatLocal/Casa%20Anadia%20Olive%20Oils/olivais-casa-anadia_l0yqet.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218259/Producers%20Photos%20for%20EatLocal/Casa%20Anadia%20Olive%20Oils/dsc-0340_aodbsd.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218258/Producers%20Photos%20for%20EatLocal/Casa%20Anadia%20Olive%20Oils/azeitonas_aulsps.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218258/Producers%20Photos%20for%20EatLocal/Casa%20Anadia%20Olive%20Oils/foto3_epktoh.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')

Product.create(
  name: 'Private Collection Olive Oil',
  description: 'The most exquisite and balanced blend between the best olives, the best varieties, from our best olive trees.',
  producer: Producer.find_by(name: 'Casa Anadia Olive Oils')
  )

ProductTag.create(
   product: Product.find_by(name: 'Private Collection Olive Oil'),
   tag: Tag.find_by(name: 'Oil')
  )

Product.create(
  name: 'POD Ribatejo Olive Oil',
  description: 'The most complex fusion between our Portuguese varieties, Galega and Cobrançosa.',
  producer: Producer.find_by(name: 'Casa Anadia Olive Oils')
  )

ProductTag.create(
   product: Product.find_by(name: 'POD Ribatejo Olive Oil'),
   tag: Tag.find_by(name: 'Oil')
  )

user = User.create( email: "bla20@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594306756/Producers%20Photos%20for%20EatLocal/Profile%20pictures/profs7_mgdx3j.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Hipólito - Tudo o Que a Terra Dá',
  phone_number: 249106007,
  address: 'Rua da Caniceira, nº105-A, 2140-416, Vale de Cavalos, Chamusca, Santarém',
  email: 'tudoqueaterrada@sapo.pt',
  description: 'A company that dedicates itself to the production and commercialisation of wild products with environmental sustainability natural.
  Production and commercialisation of mushrooms and wild products; Since the production and commercialisations and the harvest of the best wild mushrooms, our company wants to acquire the status of wild company.
  Meet our products and delight in your own home, a wonderful walk through the forest!!! ',
  latitude: 39.283583726688704,
  longitude: -8.510584821794609,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )

 file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594247042/Producers%20Photos%20for%20EatLocal/Hip%C3%B3lito/hip4_x2ug1q.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594247040/Producers%20Photos%20for%20EatLocal/Hip%C3%B3lito/hip2_jhb6cd.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594247040/Producers%20Photos%20for%20EatLocal/Hip%C3%B3lito/hip5_jpxwlm.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594247040/Producers%20Photos%20for%20EatLocal/Hip%C3%B3lito/hip1_ohbied.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594247041/Producers%20Photos%20for%20EatLocal/Hip%C3%B3lito/hip3_zbhopt.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')


Product.create(
  name: 'Exotic Mushrooms',
  description: 'Mushrooms from all over the world can be found here.',
  producer: Producer.find_by(name: 'Hipólito - Tudo o Que a Terra Dá')
  )

ProductTag.create(
   product: Product.find_by(name: 'Exotic Mushrooms'),
   tag: Tag.find_by(name: 'Mushrooms')
  )

user = User.create( email: "bla13@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230034/Producers%20Photos%20for%20EatLocal/Profile%20pictures/girl_prof2_ebcute.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Visionagro',
  phone_number: 925377129,
  address: 'Estr. Rural A7 nº 22, 2090-066 Alpiarça',
  email: 'info@vivionagro.pt',
  description: 'VISIONAGRO LDA, has been founded in 2017 by 2 agricultural enthusiasts. This region is the most intensive agricultural region in Portugal with abundance of high quality ground water, acid and sandy soils. Region is well developed to support farming companies and has abundance of human resources to support blueberry business.',
  latitude: 39.252941,
  longitude: -8.547074,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
   )

  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218264/Producers%20Photos%20for%20EatLocal/Visionagro/%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5_viber_2020-06-29_19-59-14-2-400x267_kuea02.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218264/Producers%20Photos%20for%20EatLocal/Visionagro/%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5_viber_2020-06-29_19-59-14-1-400x267_nzdraj.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218264/Producers%20Photos%20for%20EatLocal/Visionagro/%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5_viber_2020-06-29_19-59-13-400x267_hdkgdc.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594218264/Producers%20Photos%20for%20EatLocal/Visionagro/%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5_viber_2020-06-29_19-59-12-1200x800_z162p5.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')


Product.create(
  name: 'Blueberries',
  description: 'Blueberries remain one of the most nutricious, antioxidant-rich types of fruit in the world and have been shown to do everything from enhance brain health to keep your heart strong.',
  producer: Producer.find_by(name: 'Visionagro')
  )

ProductTag.create(
   product: Product.find_by(name: 'Blueberries'),
   tag: Tag.find_by(name: 'Fruit')
  )

user = User.create( email: "bla14@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230034/Producers%20Photos%20for%20EatLocal/Profile%20pictures/man_prof3_cfj9i3.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Pepe Aromas',
  phone_number: 963453763,
  address: 'Quinta de São Miguel, 7005-127 Azaruja - PORTUGAL',
  email: 'nuno.mendes@pepearomas.com',
  description: 'Pepe Aromas is a family agro-business set up in 2013 as a sustainable organic farming operation employing sound environmental farming practices.
  We produce and market prickly pears - Opuntia ficus-indica, also known as the prickly pear, Indian fig or Barbary fig, among other names - and its by-products. Our growth strategy is based on the continuous improvement of production and harvesting processes as well as research and the quest for new uses and sources of potential for the fruit and by-products. Committed to diversification and sustainability, we aim to create a citrus orchard and harness the potential of our cork- and holm-oak montado/dehesa for the  production of acorns.',
  latitude: 38.74000562683715,
  longitude: -7.815030812780606,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )

  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594297108/Producers%20Photos%20for%20EatLocal/Pepe%20Aromas/pepe3_dcrbpo.webp")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594297108/Producers%20Photos%20for%20EatLocal/Pepe%20Aromas/pepe2_rvw5wn.webp")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594297108/Producers%20Photos%20for%20EatLocal/Pepe%20Aromas/pepe4_m8kcpc.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594297108/Producers%20Photos%20for%20EatLocal/Pepe%20Aromas/pepe1_wosslj.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')

Product.create(
  name: 'Prickly Pears',
  description: 'Cactus and their fruits are a large part of Mexican cuisine. The wide, flat cactus pads ("nopales") are used in many Mexican main dishes such as salads, eggs and as a filling for other dishes. The cactus fruit, sometimes called a "Prickly Pears" are very sweet and can be eaten raw, right off of the plant. Depending on the level of ripeness, they can range from slightly sweet to syrupy sweet.',
  producer: Producer.find_by(name: 'Pepe Aromas')
  )

ProductTag.create(
   product: Product.find_by(name: 'Prickly Pears'),
   tag: Tag.find_by(name: 'Fruit')
  )

user = User.create( email: "bla15@bla.com", password: "123456")
file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594230034/Producers%20Photos%20for%20EatLocal/Profile%20pictures/man_prof7_rrmp4y.jpg")
user.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

producer = Producer.create(
  name: 'Fumeiro da Gardunha',
  phone_number: 217750680,
  address: 'Zona Industrial do Fundão, lot 106-108',
  email: 'loja@dagardunha.pt',
  description: 'Founded in 1982, the company created by José and Isabel Carlos, has become a reference in the production and marketing of hams and sausages in the Beira Baixa region. The business expanded in the 1970s, in the Fundão market, giving rise to the growing demand for hams and sausages produced by the family. José Carlos and his wife Isabel Carlos with their knowledge acquired by both from previous generations, in the art of making sausages and hams, created the Salsicharia da Gardunha in 1982.
  The factory is located in Beira Baixa, facing the Serra da Estrela, and maintains the tradition and familiar knowledge in making the regions sausages and hams. It uses current technologies for its production and an FSSC22000 certified management system.',
  latitude: 40.175872,
  longitude: -7.492009,
  user_id: user.id,
  status: 'accepted',
  selling_location: "Mercado Biologico do Arroios"
  )

 file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594247686/Producers%20Photos%20for%20EatLocal/Fumeiro%20da%20Gardunha/fum2_vddqt2.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594247685/Producers%20Photos%20for%20EatLocal/Fumeiro%20da%20Gardunha/fum3_n4vqid.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')
  file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594247685/Producers%20Photos%20for%20EatLocal/Fumeiro%20da%20Gardunha/fum4_ljkvwa.jpg")
  producer.photos.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

  banner_file = URI.open("https://res.cloudinary.com/agon91/image/upload/v1594247686/Producers%20Photos%20for%20EatLocal/Fumeiro%20da%20Gardunha/fum1_y0wz8u.jpg")
  producer.banner.attach(io: banner_file, filename: 'producer.jpg', content_type: 'image/jpg')

 product = Product.create(
  name: 'Ready to Cut Selction Ham',
  description: '1 Whole Ham Curing 12 months',
  producer: Producer.find_by(name: 'Fumeiro da Gardunha')
  )
 # file = URI.open("")
 # product.photo.attach(io: file, filename: 'producer.jpg', content_type: 'image/jpg')

ProductTag.create(
   product: Product.find_by(name: 'Ready to Cut Selction Ham'),
   tag: Tag.find_by(name: 'Meat')
  )

p "product photos"


puts 'finish creating products seeds'




