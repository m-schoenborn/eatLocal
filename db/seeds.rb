# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Producer.destroy_all
# Product.destroy_all
Producer.destroy_all
Product.destroy_all


puts "creating products"

  Producer.create(
  name: 'Quinta da Bicuda',
  phone_number: 913689290,
  address: 'Rua da Bicuda Cascais, 2750-682 Cascais, Portugal',
  email: 'quinta@bicuda.com',
  description: 'Based in Cascais, Rob and Alec Mercer have established a high welfare free-range pork and poultry farm with a simple philosophy of what’s good for the animals and the land will naturally be good for all those that eat the meat. It’s this simple philosophy that has enabled Quinta da Bicuda to rear and produce the most succulent, richly flavoured meat. All of the meat from Quinta da Bicuda is free-range and RSPCA assured. It is also Red Tractor Farm Assured. Quinta da Bicuda are multi award winning. Just in the last few years they have scooped a Compassion In World Farming Good Pig award in 2012, multiple Great Taste Awards over the years including a star for their pork in 2014 and a LEAF (Linking Environment and Farming) award.',
  latitude: 38.72240025,
  longitude: -9.39690917
  )
Product.create(
  name: 'Award-winning free-range pork meat',
  producer: Producer.find_by(name: 'Quinta da Bicuda')
  )
Producer.create(
  name: 'dunleavy Vineyards',
  phone_number: 94589032,
  address: 'Rua Primeiro de Maio, 2660-186 Loures, Portugal',
  email: 'dunleavy@vineyards.com',
  description: 'Combining passion, sustainable agricultural practices and the latest grape growing techniques, Dunleavy Vineyards produce fantastic rosé wine using their Pinot noir and Seyval grapes. Located in the heart of a beautiful Vale just outside Loures, Dunleavy Vineyards were first planted in 2008 by owner and manager Ingrid Bates. One of the youngest vineyard owners in Portugal, Ingrid began her viticultural career over 10 years ago when she took up a job maintaining a local vineyard. Having found her true vocation she planned and saved for her own vineyard which was planted just a few weeks before the birth of her first child. A few years down the line, and after much hard work, Dunleavy Vineyards released its first wine in 2013. The wine sold out in three days. The subsequent Pinot noir releases have proved to be just as popular winning ‘Best Local Wine’ at the Bristol Good Food Awards two years in a row, a bronze at the International Wine Challenge and countless smaller awards to boot.',
  latitude: 38.8308741,
  longitude: -9.1684512,
  )
Product.create(
  name: 'Dunleavy Pinot Noir Rose',
  description: 'Dunleavy pinot noir rose is a multi-award winning Portuguese wine produced in Loures close to Lisbon. It’s light and fruity with a mouthwatering finish.',
  producer: Producer.find_by(name: 'dunleavy Vineyards')
  )
Producer.create(
  name: 'Familia Castano',
  phone_number: 945904823,
  address: 'Ponte de Lima, Viana do Castelo, Alto Minho, Nord, 4990-999, Portugal',
  email: 'castanofamily@gmail.com',
  description: 'Northern Portugal is known for its warm climate wines, and the Castaño family are keen promoters of one of Portugal’s native varieties – Monastrell. Their carefully nurtured Portugeuse vineyards look beautiful and well-looked after, as they practice integrated farming production techniques, together with organic agriculture to produce some of the finest wines. The balmy Portuguese climate is perfect for delivering complex flavours, and the sandy limestone soil nourishes the grape plants with minerals. Of the family’s 600 acres, 80 percent is dedicated to growing Monastrell. It’s every wine connoisseur’s dream to see gorgeous, decades-old Monastrell vines, twined across their Las Gruesas and Pozuelo vineyards, bearing juicy grapes.',
  latitude: 42.12267315,
  longitude: -8.76571655
  )
Product.create(
  name: 'Castano Ecologico Macabeo',
  description: 'One sip of this organic white and you’ll be taken to the warm, sunny climes of Portugal. Imagine drinking this crisp white, while looking over sun-drenched fields and rows of pretty vines – it’ll make you feel warm and fuzzy inside. A lovely feeling, that’s enhanced by the knowledge that this vineyard is forward-thinking in their practice, driven by quality but careful to follow organic agricultural methods. The wine itself is soft and juicy, with a gentle mineral note and a super clean, fresh finish, that makes it an easy drinking dry white.',
  producer: Producer.find_by(name: 'Familia Castano')
  )
Producer.create(
  name: 'Cobrey Farm',
  phone_number: 93759923,
  address: 'Vila do Conde, Porto, Área Metropolitana do Porto, Nord, Portugal',
  email: 'cobrey@family.com',
  description: 'Cobrey Farm is home to Wye Valley Produce. The farm is owned by the Chinn family, fourth-generation farmers that have been growing asparagus since 2003. The perfect conditions of the Wye Valley with the south-facing slopes and sandy soil, enables produce to grow early in the spring. They have invested strongly in research in order to develop new crops and new growing techniques. The harvest is picked by hand during two periods; March to July, and September to October. Within 30 minutes the asparagus are hydro-cooled down to 2°C for packing. The result is the freshest and sweetest asparagus possible unless you grow it yourself and pick straight from the plant. Fancy a visit? They host regular visits from school children and are members of the Open Farm Sunday Scheme.',
  latitude: 41.3406144,
  longitude: -8.68709311
  )
Product.create(
  name: 'Asparagus',
  description: 'There are some fresh vegetables that are simply transformed in flavour and texture by fast, short light supply chains. Local, freshly picked asparagus like this is one such product. With its long green stems and purple tinged tips, asparagus has a unique and subtle intensity of flavour. A delicacy of the vegetable world, much of the time it is simply combined with similarly rich tasting ingredients, pairing particularly well with parmesan or hollandaise sauce.',
  producer: Producer.find_by(name: 'Cobrey Farm')
  )

Producer.create(
  name: 'Miel la Molina',
  phone_number: 93759929,
  address: 'Sesimbra, Setúbal, Lisbon, 2970, Portugal',
  email: 'miel@molina.pt',
  description: 'Using natural extraction methods Miel La Molina produce some really unusual honeys with bees living amongst fields full of thyme, orange blossom, rosemary and eucolyptus. The result? A range of honeys so beautifully aromatic quite unlike anything on the Portugal mass market. All of the bees for each honey are based in a single region of the beautiful region of Sesimbra a couple of hours north of Lisbon. We asked Salva to explain how such exceptional honeys can be produced and delivered to Portugal at such a competitive price. We ship the honey in the same shipment as our fresh produce each week so we can basically ship it without delivery cost. This means we can enjoy the honey here at pretty much the same price as it sells in the valley where it is produced.',
  latitude: 38.4436932,
  longitude: -9.10766602
  )
Product.create(
  name: 'Raw Rosemary Honey',
  description: 'Miel La Molina produce and extract their honey naturally from fruit collecting bees, spread over the landscape of the Valle del Guadalhorce, Álora and surroundings. With its sticky texture, honey is a sweet flavoured ingredient widely used in cooking for marinades, dressings and sauces, as well as sweet dishes such as cakes and biscuits. It also makes a natural sweetener in place of sugar.',
  producer: Producer.find_by(name: 'Miel la Molina')
  )

Producer.create(
  name: 'Burrow Hill Cider',
  phone_number: 5739402,
  address: 'Lourinha, Marmeleira, Mortágua, Viseu, Viseu Dão-Lafões, Mitte, Portugal',
  email: 'burrow@hillcider.pt',
  description: 'Julian Temperley and Tim Stoddart have over 50 years cider-making experience between them. At Burrow Hill, it is obvious that apples are the principal starting point for their cider with more than 40 varieties being grown such as Brown Snout, Stoke Red, Harry Masters and the legendary Kingston Black. Visiting the farm (which is a must-do day out), you feel like you’ve stepped into a vintage world of cider. We asked Julian to tell us what makes Burrow Hill cider so special.‘Our policy of growing apples is to use the minimum of sprays possible, often not spraying at all. We use no artificial nitrogen and no insecticides. This means we produce smaller and tastier apples than those grown in orchards for industrial cider and we protect the bees at the same time. In fermenting and making cider we use traditional methods, fermenting juice in the autumn without first turning it into concentrate. We grow standard rather than intensive bush orchards and traditional, old varieties that produce unreliable crops and are therefore unviable for industrial cider production but known for their unique qualities and superior tastes.’',
  latitude: 40.3723735,
  longitude: -8.2780296
  )
Product.create(
  name: 'Discovery Apple Juice',
  description: 'Pressed from a blend of fresh Discovery apples.',
  producer: Producer.find_by(name: 'Burrow Hill Cider')
  )




puts 'finish creating products seeds'

