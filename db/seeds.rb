# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# get last category.id to be able to pass value and properly assign links to 'new' categories'
category_count = Category.last.id
puts category_count

# destroy all links and categories
Link.destroy_all
Category.destroy_all

# recreate categories
category_names = ["Essential", "Travel", "PVE", "PvP", "Market, P.I. and Production", "General", "Exploration", "Wormholes", "TEST"]
category_names.each { |info| Category.create!(name: info) }


# recreate links
links_attributes = [
  {
    name: "zkillboard",
    url: "https://zkillboard.com/",
    category_id: category_count + 1
  },
  {
    name: "Thera Map",
    url: "https://www.eve-scout.com/thera/map/",
    category_id: category_count + 2
  },
  {
    name: "10/10 Hilarious Tengu Guide Video",
    url: "https://www.youtube.com/watch?v=1yOcts5GJ3I&t=46s",
    category_id: category_count + 3
  },
  {
    name: "Eve Market Data",
    url: "https://eve-marketdata.com/",
    category_id: category_count + 5
  },
  {
    name: "Combat Sites (Eve Wiki)",
    url: "https://wiki.eveuniversity.org/Combat_sites",
    category_id: category_count + 3
  },
  {
    name: "Tips and Tricks (Eve Wiki)",
    url: "https://wiki.eveuniversity.org/Tips_and_Tricks",
    category_id: category_count + 1
  },
  {
    name: "NPC Damage Types",
    url: "https://wiki.eveuniversity.org/NPC_Damage_Types",
    category_id: category_count + 3
  },
  {
    name: "Standard Sleeper Cache in an Astero",
    url: "https://www.reddit.com/r/Eve/comments/3o1q1m/standard_sleeper_cache_guide_in_an_astero/?depth=1",
    category_id: category_count + 7
  },
  {
    name: "Superior Sleeper Cache in a Frigate",
    url: "https://www.youtube.com/watch?v=HvxZAQ51P8Q",
    category_id: category_count + 7
  },
  {
    name: "T3 Cruisers Subsystem Tool",
    url: "http://www.ellahta.com/eve/T3.asp",
    category_id: category_count + 4
  },
  {
    name: "Wormhole Attributes",
    url: "https://wiki.eveuniversity.org/Wormhole_Information",
    category_id: category_count + 8
  },
  {
    name: "P.I. Tool",
    url: "https://hanns.io/pi/",
    category_id: category_count + 5
  },
  {
    name: "Eve Gatecamp Check",
    url: "http://eve-gatecheck.space/eve/",
    category_id: category_count + 2
  },
  {
    name: "WH Combat Site Info",
    url: "https://docs.google.com/spreadsheets/d/17cNu8hxqJKqkkPnhDlIuJY-IT6ps7kTNCd3BEz0Bvqs/pubhtml#",
    category_id: category_count + 8
  },
  {
    name: "Booster Production Guide",
    url: "https://eve-files.com/media/corp/jowen/ATAP_booster_production_v1.2.pdf",
    category_id: category_count + 5
  },
  {
    name: "Living Solo in a Wormhole",
    url: "https://www.youtube.com/watch?v=nIGpQrz5l1Y",
    category_id: category_count + 7
  },
  {
    name: "T2 Invention Guide",
    url: "http://nevillesmit.com/blog/2013/5/24/tech-ii-invention-guide",
    category_id: category_count + 5
  },
  {
    name: "LP Store Guide",
    url: "https://www.fuzzwork.co.uk/lpstore",
    category_id: category_count + 6
  },
  {
    name: "Boosters Guide",
    url: "https://wiki.eveuniversity.org/Medical_boosters",
    category_id: category_count + 6
  },
  {
    name: "LP Rewards",
    url: "http://www.ellatha.com/eve/news/516/Loyalty-Points-DB-Update---Militia-Corps-Added",
    category_id: category_count + 6
  },
  {
    name: "Gas ISK/m3 Guide",
    url: "https://www.fuzzwork.co.uk/ore/gas.html",
    category_id: category_count + 3
  },
  {
    name: "Eve Survival",
    url: "https://eve-survival.org/wikka.php?wakka=HomePage",
    category_id: category_count + 3
  },
  {
    name: "WH Classification Guide",
    url: "http://anoik.is/wormholes",
    category_id: category_count + 8
  },
  {
    name: "Abyssal Filament Cheat Sheet",
    url: "https://imgur.com/a/unnuE0T",
    category_id: category_count + 3
  },
  {
    name: "n00b FC Guide",
    url: "https://docs.google.com/document/d/1uQgqZioGx-dAfA6spswU3_Tr_puvuzUU7NGZEr1UV4Y/edit",
    category_id: category_count + 4
  },
  {
    name: "BC Torpedo Fit BS PvP Video",
    url: "https://www.youtube.com/watch?v=q51vswj18f0",
    category_id: category_count + 4
  },
  {
    name: "Bombers Bar HomePage",
    url: "http://www.bombersbar.org/",
    category_id: category_count + 4
  },
  {
    name: "Eve Overmind - PvP Simulator",
    url: "https://www.eveovermind.com/solokills.php",
    category_id: category_count + 4
  },
  {
    name: "DED Sites Guide",
    url: "http://wiki.eve-inspiracy.com/index.php?title=DED_Complex_List",
    category_id: category_count + 3
  },
  {
    name: "Solo Camping with a Sabre",
    url: "http://failheap-challenge.com/showthread.php?16825-TMA-Life-Inside-the-Bubble-How-to-solo-camp-with-a-Sabre",
    category_id: category_count + 4
  },
  {
    name: "DED Sites Guide",
    url: "https://www.fuzzwork.co.uk/evelopedia/index.php/DED_Complex_List",
    category_id: category_count + 3
  },
  {
    name: "T3Cs in DED Sites After Changes",
    url: "https://forums.eveonline.com/t/combat-and-ded-sites-fits-for-t3c-after-changes/9615/29",
    category_id: category_count + 3
  },
  {
    name: "Cloaky Bastard Blog - A solo WH Hunter",
    url: "http://cloakybastard.blogspot.com/",
    category_id: category_count + 4
  },
  {
    name: "Tengu 10/10 Serpentis",
    url: "https://www.reddit.com/r/fittings/comments/7w6cus/r_tengu_for_serpentis_1010/?depth=1",
    category_id: category_count + 3
  },
  {
    name: "Loki 10/10 Sansha",
    url: "https://www.reddit.com/r/fittings/comments/6ppsvd/f_loki_1010_sansha/?depth=1",
    category_id: category_count + 3
  },
  {
    name: "Eve Turrets Ammo Full Guide",
    url: "https://imgur.com/a/KSxbcAJ#XGPoocQ",
    category_id: category_count + 1
  },
  {
    name: "Abyssal NPC Effects Guids",
    url: "https://i.imgur.com/wnA9Ou5.jpg",
    category_id: category_count + 3
  },
  {
    name: "Abyssal Sites Guide",
    url: "https://forums.eveonline.com/t/garrys-great-abyssal-guide-solved-ships-fits-to-run-l5-abyssal-sites/80214",
    category_id: category_count + 3
  },
  {
    name: "Dotlan",
    url: "http://evemaps.dotlan.net/",
    category_id: category_count + 1
  },
  {
    name: "Dotlan Routes",
    url: "http://evemaps.dotlan.net/route",
    category_id: category_count + 2
  },
  {
    name: "Eve Info: News Resources",
    url: "https://eveinfo.com/",
    category_id: category_count + 6
  },
  {
    name: "OC Tripwire Map",
    url: "https://tripwire.eve-apps.com/?system=J163923",
    category_id: category_count + 1
  },
  {
    name: "AUTH Profile",
    url: "https://auth.pleaseignore.com/login/?next=/profile/",
    category_id: category_count + 9
  },
  {
    name: "Doctrines",
    url: "https://wiki.pleaseignore.com/military:doctrines:start",
    category_id: category_count + 9
  },
  {
    name: "Deepsafe - Eso Sigs Tracker",
    url: "https://deepsafe.xyz/login",
    category_id: category_count + 9
  },
  {
    name: "Good Member Guide",
    url: "https://forum.pleaseignore.com/topic/97205-some-tips-on-how-to-be-a-good-member-of-test/",
    category_id: category_count + 9
  },
  {
    name: "SRP",
    url: "https://reimbursement.pleaseignore.com/login/?next=%2Frequest%2Fpersonal%2F",
    category_id: category_count + 9
  },
  {
    name: "Forums",
    url: "https://forum.pleaseignore.com/",
    category_id: category_count + 9
  }
]

# categories_attributes.each { |params| Category.create!(params) }
links_attributes.each { |params| Link.create!(params) }

