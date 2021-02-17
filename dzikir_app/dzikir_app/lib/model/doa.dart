class Doa {
  String title, arab, latinArab, translate;

  Doa({this.title, this.arab, this.latinArab, this.translate});
}

var dataListDoa = [
  Doa(
    title: 'Doa Sebelum Makan',
    arab:
        'اَللّٰهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ',
    latinArab: "Alloohumma barik lanaa fiimaa razatanaa waqinaa 'adzaa bannar",
    translate:
        '"Ya Allah, berkahilah kami dalam rezeki yang telah Engkau berikan kepada kami dan peliharalah kami dari siksa api neraka"',
  ),
  Doa(
    title: 'Doa Sesudah Makan',
    arab:
        'اَلْحَمْدُ ِللهِ الَّذِىْ اَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِيْنَ',
    latinArab:
        "Alhamdu lillaahil ladzii ath'amanaa wa saqoonaa wa ja'alnaa muslimiin",
    translate:
        '"Segala puji bagi Allah yang telah memberi makan kami dan minuman kami, serta menjadikan kami sebagai orang-orang islam"',
  ),
  Doa(
    title: 'Doa Sesudah Minum',
    arab:
        'اَلْحَمْدُ ِللهِ الَّذِىْ جَعَلَهُ عَذْبًا فُرَاتًا بِرَحْمَتِهِ وَلَمْ يَجْعَلْهُ مِلْحًا اُجَاجًا بِذُنُوْبِنَا',
    latinArab:
        "Alhamdu lillaahil ladzi ja'alahuu 'adzbam furootam birohmatihii wa lamyaj'alhu milhan ujaajam bidzunuubinaa",
    translate:
        '"Segala puji bagi Allah yang telah menjadikan air ini (minuman) segar dan menggiatkan dengan rahmat-Nya dan tidak menjadikan air ini (minuman) asin lagi pahit karena dosa-dosa kami"',
  ),
  Doa(
    title: 'Doa Ketika Makan Lupa Membaca Doa',
    arab: 'بِسْمِ اللهِ فِىِ أَوَّلِهِ وَآخِرِهِ',
    latinArab: "Bismillaahi fii awwalihi wa aakhirihi",
    translate: '"Dengan menyebut nama Allah pada awal dan akhirnya"',
  ),
  Doa(
    title: 'Doa Sebelum Tidur',
    arab: 'بِسْمِكَ االلّٰهُمَّ اَحْيَا وَبِاسْمِكَ اَمُوْتُ',
    latinArab: "Bismikallaahuma ahyaa wa bismika amuutu",
    translate:
        '"Dengan menyebut nama-Mu, Ya Allah, aku hidup dan dengan menyebut nama-Mu aku mati"',
  ),
  Doa(
    title: 'Doa Ketika Mimpi Buruk',
    arab:
        'اَللّٰهُمَّ إِنّىِ أَعُوْذُ بِكَ مِنْ عَمَلِ الشَّيْطَانِ وَسَيِّئاَتِ اْلأَحْلاَمِ',
    latinArab:
        "Allaahumma innii a'uudzubika min 'amalisy syaithaani wa sayyiaatil ahlami",
    translate:
        '"Ya Allah, sesungguhnya aku mohon perlindungan kepada Engkau dari perbuatan setan dan dari mimpi-mimpi yang buruk"',
  ),
  Doa(
    title: 'Doa Ketika Mendapat Mimpi Baik',
    arab: 'اَلْحَمْدُ ِللهِ الَّذِيْ قَطْلَ الْحَاجَتِ',
    latinArab: "Alhamdulillahil ladzii qodzoo haajaati",
    translate: '"Segala puji bagi Allah yang telah memberi hajatku"',
  ),
  Doa(
    title: 'Doa Bangun Tidur',
    arab:
        'اَلْحَمْدُ ِللهِ الَّذِىْ اَحْيَانَا بَعْدَمَآ اَمَاتَنَا وَاِلَيْهِ النُّشُوْرُ',
    latinArab:
        "Alhamdu lillahil ladzii ahyaanaa ba'da maa amaa tanaa wa ilahin nusyuuru",
    translate:
        '"Segala puji bagi Allah yang telah menghidupkan kami sesudah kami mati (membangunkan dari tidur) dan hanya kepada-Nya kami dikembalikan"',
  ),
  Doa(
    title: 'Doa Masuk Toilet',
    arab: 'اَللّٰهُمَّ اِنّىْ اَعُوْذُبِكَ مِنَ الْخُبُثِ وَالْخَبَآئِثِ',
    latinArab: "Alloohumma Innii a'uudzubika minal khubutsi wal khoaaitsi",
    translate:
        '"Ya Allah, aku berlindung pada-Mu dari godaan syetan  laki-laki dan setan perempuan"',
  ),
  Doa(
    title: 'Doa Istinja',
    arab:
        'اَللّٰهُمَّ حَسِّنْ فَرْجِىْ مِنَ الْفَوَاخِشِ وَظَهِّرْ قَلْبِيْ مِنَ النِّفَاقِ',
    latinArab:
        "Alloohumma thahhir qolbii minan nifaaqi wa hashshin fajrii minal fawaahisyi",
    translate:
        '"Wahai Tuhanku, sucikanlah hatiku dari sifat kepura-puraan (munafiq) serta peliharalah kemaluanku dari perbuatan keji"',
  ),
  Doa(
    title: 'Doa Menjelang Sholat Subuh',
    arab:
        'اَللّٰهُمَّ اِنِّى اَعُوْذُ بِكَ مِنْ ضِيْقِ الدُّنْيَا وَضِيْقِ يَوْمِ الْقِيَامَةِ',
    latinArab:
        "Alloohumma inni a'udzubika min dzhiiqid-dunyaa wa dzhiiqi yaumal-qiyaamati",
    translate:
        '"Ya Allah! Sesungguhnya aku berlindung kepada-Mu dari kesempitan dunia dan kesempitan hari kiamat"',
  ),
  Doa(
    title: 'Doa Menyambut Pagi Hari',
    arab:
        'اَللّٰهُمَّ بِكَ اَصْبَحْنَا وَبِكَ اَمْسَيْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوْتُ وَاِلَيْكَ النُّشُوْرُ',
    latinArab:
        "Alloohumma bika ashbahnaa wa bika amsainaa wa bika nahyaa wa bika namuutu wa ilaikan nusyuuru",
    translate:
        '"Ya Allah, karena Engkau kami mengalami waktu pagi dan waktu petang, dan karena Engkau kami hidup dan mati dan kepada-Mu juga kami akan kembali."',
  ),
  Doa(
    title: 'Doa Menyambut Sore Hari',
    arab:
        'اَللّٰهُمَّ بِكَ اَمْسَيْنَا وَبِكَ اَصْبَحْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوْتُ وَاِلَيْكَ الْمَصِيْرُ',
    latinArab:
        "Alloohumma bika amsainaa wa bika ashbahnaa wa bika nahyaa wa bika namuutu wa ilaikal mashiir",
    translate:
        '"Ya Allah, karena Engkau kami mengalami waktu petang dan waktu pagi, karena Engkau kami hidup dan mati dan kepada-Mu juga kami akan kembali."',
  ),
  Doa(
    title: 'Doa Ketika Bercermin',
    arab: 'اَلْحَمْدُ ِللهِ كَمَا حَسَّنْتَ خَلْقِىْ  فَحَسِّـنْ خُلُقِىْ',
    latinArab: "Alhamdulillaahi kamaa hassanta kholqii fahassin khuluqii",
    translate:
        '"Segala puji bagi Allah, baguskanlah budi pekertiku sebagaimana Engkau telah membaguskan rupa wajahku"',
  ),
  Doa(
    title: 'Doa Masuk Rumah',
    arab:
        'اَللّٰهُمَّ اِنّىْ اَسْأَلُكَ خَيْرَالْمَوْلِجِ وَخَيْرَالْمَخْرَجِ بِسْمِ اللهِ وَلَجْنَا وَبِسْمِ اللهِ خَرَجْنَا وَعَلَى اللهِ رَبّنَا تَوَكَّلْنَا',
    latinArab:
        "Allahumma innii as-aluka khoirol mauliji wa khoirol makhroji bismillaahi wa lajnaa wa bismillaahi khorojnaa wa'alallohi robbina tawakkalnaa",
    translate:
        '"Ya Allah, sesungguhnya aku mohon kepada-Mu baiknya tempat masuk dan baiknya tempat keluar dengan menyebut nama Allah kami masuk, dan dengan menyebut nama Allah kami keluar dan kepada Allah Tuhan kami, kami bertawakkal"',
  ),
  Doa(
    title: 'Doa Keluar Rumah',
    arab:
        'بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ لاَحَوْلَ وَلاَقُوَّةَ اِلاَّ بِالله',
    latinArab:
        "Bismillaahi tawakkaltu 'alalloohi laa hawlaa walaa quwwata illaa bilaahi",
    translate:
        'Dengan menyebut nama Allah aku bertawakal kepada Allah, tiada daya kekuatan melainkan dengan pertologan Allah."',
  ),
  Doa(
    title: 'Doa Memakai Pakaian',
    arab:
        'بِسْمِ اللهِ اَللّٰهُمَّ اِنِّى اَسْأَلُكَ مِنْ خَيْرِهِ وَخَيْرِ مَاهُوَ لَهُ وَاَعُوْذُبِكَ مِنْ شَرِّهِ وَشَرِّمَا هُوَلَهُ',
    latinArab:
        "Bismillaahi, Alloohumma innii as-aluka min khoirihi wa khoiri maa huwa lahuu wa'a'uu dzubika min syarrihi wa syarri maa huwa lahuu",
    translate:
        '"Dengan nama-Mu yaa Allah akku minta kepada Engkau kebaikan pakaian ini dan kebaikan apa yang ada padanya, dan aku berlindung kepada Engkau dari kejahatan pakaian ini dan kejahatan yang ada padanya"',
  ),
  Doa(
    title: 'Doa Melepas Pakaian',
    arab: 'بِسْمِ اللهِ الَّذِيْ لاَ إِلَهَ إِلَّا هُوَ',
    latinArab: "Bismillaahil ladzii laa ilaaha illaa huwa",
    translate: '"Dengan nama Allah yang tiada Tuhan selain-Nya"',
  ),
  Doa(
    title: 'Doa Memohon Ilmu Yang Bermanfaat',
    arab:
        'اَللّٰهُمَّ اِنِّى اَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا طَيِّبًا وَعَمَلاً مُتَقَبَّلاً',
    latinArab:
        "Alloohumma innii as-aluka 'ilmaan naafi'aan wa rizqoon thoyyibaan wa 'amalaan mutaqobbalaan",
    translate:
        '"Ya Allah, sesungguhnya aku mohon kepada-Mu ilmu yang berguna, rezki yang baik dan amal yang baik Diterima. (H.R. Ibnu Majah)"',
  ),
  Doa(
    title: 'Doa Sebelum Belajar',
    arab: 'يَارَبِّ زِدْنِىْ عِلْمًا وَارْزُقْنِىْ فَهْمًا',
    latinArab: "Yaa robbi zidnii 'ilman warzuqnii fahmaa",
    translate:
        ' "Ya Allah, tambahkanlah aku ilmu dan berikanlah aku rizqi akan kepahaman"',
  ),
  Doa(
    title: 'Doa Sesudah Belajar',
    arab:
        'اَللّٰهُمَّ اِنِّى اِسْتَوْدِعُكَ مَاعَلَّمْتَنِيْهِ فَارْدُدْهُ اِلَىَّ عِنْدَ حَاجَتِىْ وَلاَ تَنْسَنِيْهِ يَارَبَّ الْعَالَمِيْنَ',
    latinArab:
        "Allaahumma innii astaudi'uka maa 'allamtaniihi fardud-hu ilayya 'inda haajatii wa laa tansaniihi yaa robbal 'alamiin",
    translate:
        '"Ya Allah, sesungguhnya aku menitipkan kepada Engkau ilmu-ilmu yang telah Engkau ajarkan kepadaku, dan kembalikanlah kepadaku sewaktu aku butuh kembali dan janganlah Engkau lupakan aku kepada ilmu itu wahai Tuhan seru sekalian alam."',
  ),
];
