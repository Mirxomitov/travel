class ChipsData {
  final String name;
  bool isChosen;

  ChipsData({
    required this.name,
    this.isChosen = false,
  });
}

class ItemData {
  final String imagePath;
  final String location;
  final String description;
  final String title;
  final double rate;
  final List<String> categories;

  const ItemData({
    required this.imagePath,
    required this.title,
    required this.location,
    required this.description,
    required this.rate,
    required this.categories,
  });
}

final chips = [
  ChipsData(name: 'Barchasi'),
  ChipsData(name: "Tog'"),
  ChipsData(name: 'Dacha'),
  ChipsData(name: 'Shahar'),
];

final dataList = <ItemData>[
  ItemData(
    imagePath: 'assets/info/tashkent.jpg',
    title: 'Toshkent',
    location: 'Zamonaviy megapolis',
    description: """
        Eng mashhur diqqatga sazovor joylar
Toshkentda tashrif uchun bir necha kun kerak bo‘ladigan diqqatga sazovor joylarning ro‘yxati juda katta.

✔️ sayr qilish uchun keng va yashil xiyobonlar,   favvoralar va ekologik bog‘lar;

✔️ Shahardagi ko‘plab muzeylarda O‘rta Osiyo xalqlari tarixi va madaniyati haqidagi noyob asarlar;

✔️Buyuk me'moriy ansambllar, masjidlar va minoralar;

✔️ Har didga mos teatr va galereyalar.

Bu yerda har kim shaharning eng diqqatga sazovor joylarini ko‘rish uchun o‘z yo‘nalishini yaratishi mumkin!

Iqlim 🌡
Toshkentda yozning katta qismi jazirama bo‘ladi, shuning uchun quyosh kremi va bosh kiyimini unutmang! Qish asosan yumshoq va qorsiz, lekin issiq kiyimlarni eʼtiborsiz qoldirmang, kechqurunlari shunday sovuq bo‘ladiki, sharf kiyishni istab qolasiz!

Toshkent ko‘chalarida sayr qilib, mayda bezaklardan tortib ulkan esdalik sovg‘alarga qadar ko‘plab sovg‘alarni topishingiz mumkin. Esdalik sovg‘alari bilan savdo qiladigan ustaxonalarning aksariyati eski madrasalarda va Chorsu bozorida joylashgan. U yerda siz deyarli hamma narsani topishingiz mumkin! Yog‘ochdan o‘yilgan mahsulotlar, kulolchilik buyumlari, milliy kiyimlar va hatto mahalliy temirchilik ustaxonalarida tayyorlangan pichoq va xanjarlar shular jumlasidandir!
        """,
    rate: 4.7,
    categories: <String>[chips[0].name, chips[3].name],
  ),
  ItemData(
    imagePath: 'assets/info/samarkand.png',
    title: 'Samarkand',
    location: 'Madaniyatlar chorrahasi',
    description: """
        Samarqand - Madaniyatlar chorrahasi
Samarqandni chinakam noyob shahar, deb atash mumkin!
Samarqandning madaniy merosi juda katta. Аsrlar davomida bu shahar Buyuk Ipak yo'lining asosiy markazi bo'lib kelgan.

XXI asr boshlarida shahar YuNESKOning Umumjahon merosi ro'yxatiga "Samarqand - madaniyatlar chorrahasi" nomi bilan kiritildi!

Shaharni ziyorat qilsangiz, siz bu yerda joylashgan tarixiy obidalarning sonidan hayratda qolasiz, ammo biz sizga albatta ko'rishga arziydigan eng mashhur diqqatga sazovor joylarni ko'rsatishga harakat qilamiz!

Iqlim 🌡
Samarqand iqlimiga aniq fasllarga bo‘linish xos. Qish odatda yumshoq va harorat 0 ° S dan pastga juda kam hollarda tushadi. To‘satdan sovuq bo‘lishi juda kam uchraydi, va asosan kechalari tushishi mumkin. Bu yerda yoz juda issiq, shuning uchun siz o‘zingiz bilan bosh kiyim va quyoshdan himoya qilish uchun ko‘zoynak olib kelishni unutmang.

Sovg'alar va suvenirlar 🛍
Samarqand suvenir do‘konlari yog‘ochdan, matodan va boshqa materiallardan yasalgan hunarmandchilik mahsulotlarining ishqibozlarini xursand qilishi mumkin. Anʼanaga ko‘ra, ustaxonalarning aksariyati eski madrasalarda bo‘lib, barcha hunarmandchilik mahsulotlari mahalliy hunarmandlar tomonidan qo‘lda yasalgan. Ammo Samarqandda odatiy suvenirlardan tashqari, siz mamlakatning boshqa hududlarida topa olmaydigan yana bir nechta xususiyatlarni ko‘rishingiz mumkin. Avvalo, sizga Bibixonim masjidi yonida joylashgan, eski Samarqandning markazida bo‘lgan Siyob bozoriga tashrif buyurishingizni maslahat beramiz. Ushbu bozorda siz juda ko‘p miqdorda quritilgan mevalar, yong‘oqlar va shirinliklarni topishingiz mumkin .Yuqorida sanab o‘tilgan narsalar qatorida Samarqand kulchasi va Samarqand holvasini alohida ajratib ko‘rsatish mumkin. Shuningdek, Samarqand viloyatida “Meros” nomli qog‘oz fabrikasi ham mavjud. Uning ustalari tut po‘stlog‘idan qog‘oz tayyorlash usulini saqlab qolishgan. Ushbu usul X-XI asrda paydo bo‘lib o‘zining bardoshliligi bilan ajralib turgan. Ushbu fabrikada siz shahar rasmi tasvirlangan otkritkalar, yon daftarlar, niqoblar va hatto noodatiy qog‘ozli ko‘ylaklar, qo‘g‘irchoqlar va sumkalar kabi buyumlarni sotib olishingiz mumkin.
        """,
    rate: 4.8,
    categories: [chips[0].name, chips[3].name],
  ),
  ItemData(
    imagePath: 'assets/info/bukhara.png',
    title: 'Buxoro',
    location: 'Islom madaniyatining poytaxti',
    description: """
    Eng mashhur diqqatga sazovor joylar
Qadimiy sharqona ertakning muhitiga tushib qolishni istasangiz, Buxoroning eng diqqatga sazovor joylarini ziyorat qiling:

✔️Poi-Kalon meʼmoriy yodgorlik, (Shanxay Hamkorlik Tashkiloti tomonidan "sakkizinchi mo''jiza" sifatida tan olingan);

✔️Ark qalʼasi;

✔️ Somoniylar maqbarasi;

✔️ Chashmai Ayub maqbarasi;

✔️ Magaki-Attari masjidi.

✔️ Mirzo Ulug‘bek madrasasi,

✔️ Miri-Arab madrasasi,

✔️ Lyabi-Xauz ansambli va boshqalar.

Buxoro - Islom madaniyati poytaxti
Muqaddas Buxoro O‘zbekistonning sayyohlik durdonalaridan biridir.  Tarixiy shahar markazi YUNESKOning Butunjahon merosi ro‘yxatiga kiritilgan. Shaharning yoshi  2500 yildan  oshgan.



Bilingki, Buxoroda bo‘lmaganlar ko‘p narsani yo‘qotdilar.

Eng mashhur diqqatga sazovor joylar
Qadimiy sharqona ertakning muhitiga tushib qolishni istasangiz, Buxoroning eng diqqatga sazovor joylarini ziyorat qiling:

✔️Poi-Kalon meʼmoriy yodgorlik, (Shanxay Hamkorlik Tashkiloti tomonidan "sakkizinchi mo''jiza" sifatida tan olingan);

✔️Ark qalʼasi;

✔️ Somoniylar maqbarasi;

✔️ Chashmai Ayub maqbarasi;

✔️ Magaki-Attari masjidi.

✔️ Mirzo Ulug‘bek madrasasi,

✔️ Miri-Arab madrasasi,

✔️ Lyabi-Xauz ansambli va boshqalar.

  Eʼtiborga molik joylarni, insonlar hayoti va hodisalar to‘g‘risida eng qiziqarli maʼlumotlarni siz fotogalereyamizdan topishingiz mumkin!
Shaharning barcha rasmlari
Foto 360Iqlim 🌡
Bu yerdagi yozni issiq va qurg‘oq deb taʼriflash mumkin, shuning uchun yilning bu faslida Buxoroga sayohat qilganda o‘zingiz bilan soyabon va quyosh nuridan saqlovchi krem olishni unutmang. Buxoroda qish juda yumshoq, ammo iliq narsalarni ham eʼtibordan chetda qoldirmang.

Sovg'alar va suvenirlar 🛍
Buxoro ko‘chalarida ko‘plab turli xil esdalik do‘konlarini va ustaxonalarini topishingiz mumkin. Baʼzida barcha suvenirlar bir xil bo‘lib tuyuladi, ammo bu shunday emas! Har bir sotuvchida sizni ajablantiradigan narsa bo‘ladi! Buxoro – O‘zbekistonning to‘quv poytaxti! Agar siz zamonaviy va didli, hamda milliy kiyim-kechaklar olishni istasangiz, unda, albatta, Buxoroga tashrif buyurishingiz lozim! Do‘konlarning aksariyati Labi-Hovuz oldida va mashhur Poi Kalon ansambli yonidagi savdo toqlarda joylashgan. Tayyor kiyimlar bilan bir qatorda siz iqat matosini o‘zini ham xarid qilishingiz mumkin. Bunday matoni Armani savdo uyi o‘z kolleksiyasida ham ishlatgan. U arzon emas albatta, lekin o‘z narxiga arziydi. Buxoro gilamlari bilan ham mashhur. Gilamlarning sifati Hindiston, Pokiston va Eronnikidan kam emas va baʼzan ulardan ham yaxshiroq! Ekzotika shinavandalari uchun Buxoro maxsus mahorat bilan yasaladigan cholg‘u asboblari yoki qo‘lda yasalgan pichoqlarni taklif qilishi mumkin.""",
    rate: 4.8,
    categories: [chips[0].name, chips[3].name],
  ),
  ItemData(
    imagePath: 'assets/info/moynak.png',
    title: '''Mo'ynoq''',
    location: 'Orol sahrosi',
    description: """
    Mo'ynoq - Orol dengizidagi cho'l
Mo‘ynoq O‘rta Osiyodagi eng yirik baliq ovlash shaharlaridan biri edi.Bu yerda toza suv bilan daryo baliqlari, ko‘plab dam olish joylari bo‘lgan ajoyib plyajlar bor edi.

Eng mashhur diqqatga sazovor joylar
Yo‘qotilgan shon-sharafiga qaramay, shahar sayyohlar va dengiz tubini o‘rganuvchilar uchun qiziqish uyg‘otadigan joy bo‘lib qolmoqda. U yerda siz ko‘rishingiz va tashrif buyurishingiz mumkin:

✔️ kemalar qabristoni;

✔️ “Mo‘ynoq” o‘tovlar lageri;

✔️ Aralkum cho‘li;

✔️ Ustyurt platosi;

✔️ Mo‘ynoq tarixiy-o‘lkashunoslik muzeyi;

✔️Ekstremal poyga.

Mo'ynoq - Orol dengizidagi cho'l
Mo‘ynoq O‘rta Osiyodagi eng yirik baliq ovlash shaharlaridan biri edi.Bu yerda toza suv bilan daryo baliqlari, ko‘plab dam olish joylari bo‘lgan ajoyib plyajlar bor edi.Qachondir shaharga faqat dengiz yoki samolyot orqali yetib borish mumkin edi, bugun esa shahar quruq dengiz oldida joylashgan.

Eng mashhur diqqatga sazovor joylar
Yo‘qotilgan shon-sharafiga qaramay, shahar sayyohlar va dengiz tubini o‘rganuvchilar uchun qiziqish uyg‘otadigan joy bo‘lib qolmoqda. U yerda siz ko‘rishingiz va tashrif buyurishingiz mumkin:

✔️ kemalar qabristoni;

✔️ “Mo‘ynoq” o‘tovlar lageri;

✔️ Aralkum cho‘li;

✔️ Ustyurt platosi;

✔️ Mo‘ynoq tarixiy-o‘lkashunoslik muzeyi;

✔️Ekstremal poyga.
  
VideoIqlim 🌡
Mo‘ynoq iqlimining namligi baland emas, shu sababli yomg‘irli ham emas. Qishda juda shamolli va sovuq bo‘lishi mumkin, chunki so‘nggi yillarda sodir bo‘lgan iqlim o‘zgarishlari tufayli shahar atrofi cho‘lga aylanib bormoqda. Yoz issiq va qurg‘oqchil, lekin baʼzida kechqurun mintaqaga xos bo‘lgan salqinlik sizni issiq kiyim kiyishga majbur qiladi.

Sovg'alar va suvenirlar 🛍
Mo‘ynoqda suvenirlarni asosan shahar markazidan topish mumkin. Ko‘pincha bu tikuvchilik sanʼati asarlari, jumladan, milliy naqshlar tushirilgan do‘ppi, hamyon, sumka va sharflardir. Hozirgi vaqtda dengizga oid suvenir ishlab chiqarishni yo‘lga qo‘yish uchun keng ko‘lamli tayyorgarlik ishlari olib borilmoqda.
    """,
    rate: 4.9,
    categories: [chips[0].name],
  ),
  ItemData(
    imagePath: 'assets/info/zomin.png',
    title: '''Zomin''',
    location: '''O'zbek Shvetsariyasi''',
    description: """Zomin-O‘zbek Shveytsariyasi
Ajoyib landshaftlar va toza tog‘ havosi, flora va faunaning  xilma-xilligi, qadimiy ziyoratgohlar va noyob milliy sihatgoh - bularning barchasi Zomin.
Eng mashhur diqqatga sazovor joylar
Zominda nimani ko‘rish mumkin?

✔️ Katta hududda joylashgan Zomin davlat tog‘ archa qo‘riqxonasi va uning tarkibiga kiradigan Baxmal o‘rmon xo‘jaligi, Zomin o‘rmon xo‘jaligi, umumiy maydoni 26840 ga. teng bo‘lgan Zomin milliy tabiiy bog‘i;

✔️ Kristall ko‘llar

Nurota tizmalari o‘zining janubiy, qisman g‘arbiy va vohasining bir qismini o‘rab, moʻtadil iqlimni taʼminlaydi, shuningdek, mintaqaning shimolidagi Aydar-Arnasay ko‘llar tizimiga relyef va tabiiy go‘zallikning o‘ziga xosligini beradi;

✔️ Milliy sihatgoh - "Zomin" sanatoriysi

Zomin milliy bog‘ida dengiz sathidan 2 ming metr balandlikda “Zomin” sihatgohi joylashgan.

Eng toza havo, tog‘li landshaftlar, ignabargli o‘simliklar - bularning barchasi kattalar va bolalarga tibbiy muolajalar o‘tqazish uchun eng yaxshi sharoit hisoblanadi.

✔️ Qadimiy ziyoratgohlar va Parpi Oyim majmuasi.

Iqlim 🌡
Mahalliy nabotot tufayli yozda bu ajoyib joyda havo harorati qo‘shni mintaqalarga qaraganda ancha past. Ammo shuni yodda tutingki, kunduzgi harorat kechki haroratdan keskin farq qiladi. Shuning uchun, eng issiq oyda ham siz o‘zingiz bilan issiq kiyim olishni unutmang! Bu yerdagi qish O‘zbekistonning boshqa hududlaridagi qishdan juda farq qiladi. Qishda kuchli yog‘ingarchilik, haroratning juda tez o‘zgarishi va o‘ta manfiy haroratlar sizni kutmoqda, ammo siz bu yerda ko‘radigan go‘zallik bunga arziydi!

Sovg'alar va suvenirlar 🛍
Zomin hududida esdalik sovg‘alari orasida asosan mahalliy diqqatga sazovor joylarning tasviri bilan magnitlarni ajratib ko‘rsatish mumkin. Shuningdek, mahalliy hunarmandlar yog‘och va loydan tayyorlangan hunarmandchilik buyumlari bilan sizni hayratda qoldirishga tayyor. Asosan bu sirli qulfli o‘yma sandiqchalar, dekorativ laganlar va boshqa ko‘plab qiziqarli narsalar. Kulollar sizni noyob mahalliy naqshlar bilan bo‘yalgan idish-tovoqlar bilan xursand qilishadi.
""",
    rate: 4.9,
    categories: [
      chips[0].name,
      chips[1].name,
      chips[2].name,
    ],
  ),
];
