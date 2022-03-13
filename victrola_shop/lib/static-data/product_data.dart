
import '../models/product.dart';


const BASE_PRODUCT_LINE = [
  Product(
    id: 'vc1',
    productName: 'The Navigator',
    description: 'The Victrola 8-in-1 Wood Record Player combines modern technology with a classic nostalgic design. Perfect for vinyl lovers with its 3-speed turntable, but also features a CD player, cassette players and radio. Stream music from your tablet or MP3 using Bluetooth, or record from vinyl to Mp3 (Mac/PC software and USB cable included). Designed with real wood construction.',
    imageUrls: [
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-600B-ESP_2001643e-6e66-4c92-bc0b-36fb2bab0274_700x700.jpg?v=1641588112',
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-600B-BLK_700x700.jpg?v=1641588112',
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-600B_MAH_700x700.jpg?v=1641588112',
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-600B-WHT_700x700.jpg?v=1570545988'
    ],
    price: 169.99,
    colorOptions: ['Dark Oak', 'Mahogany', 'Black', 'Almond'],
    hasColorOptions: true,
    isAccessory: false
  ),
  Product(
    id: 'vc2',
    productName: 'The Aviator',
    description: 'The Victrola Aviator 8-in-1 turntable combines a classic look with high-tech features! With a 3-speed turntable, you also have the ability to record vinyl straight to MP3! That\'s just one of many awesome features, such as CD, cassette, and USB player, as well as FM radio and Bluetooth compatibility that allow you to wirelessly stream your favorite music. The Aviator includes built in speakers, a 3.5mm aux-in, RCA jack, and headphone jack, so you can listen to your music anyway you\'d like. Measures 21\' x 15" x 12.9".',
    imageUrls: [
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-750B-PC_ESP_1_75x75.jpg?v=1600454520',
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-750B-PC-MAH_700x700.jpg?v=1612454751'
    ],
    price: 199.99,
    colorOptions: ['Dark Oak', 'Light Oak'],
    hasColorOptions: true,
    isAccessory: false
  ),
  Product(
    id: 'vc3',
    productName: '6-in-1 Nostalgic Bluetooth® Record Player',
    description: 'Our Victrola 6-in-1 Bluetooth Record Player combines all the latest technology at an incredible value. Stream your music, or play your favorite CD, Cassette, Vinyl Record or Radio Station. Belt driven, 3-speed turntable (33 1/3, 45, 78 RPM) plays all of your favorite vinyl records and albums. Wirelessly stream music from your Bluetooth enabled device, up to 33 feet away. FM Radio with nostalgic rotary dial. 3.5mm Aux-In and headphone jack for music from any non-Bluetooth device (cable included).',
    imageUrls: [
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-200B_1_700x700.jpg?v=1643661913',
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-200B_GRY_1_700x700.jpg?v=1643661913',
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-200B_ESP_700x700.jpg?v=1643661913'
    ],
    price: 129.99,
    colorOptions: ['Mahogany', 'Black', 'Dark Oak'],
    hasColorOptions: true,
    isAccessory: false
  ),
  Product(
    id: 'vc4',
    productName: 'The Hawthorne',
    description: 'The Victrola Hawthorne Bluetooth record player combines a classic look with a ton of awesome features, perfect for any music lover\'s home. Its 3-speed, belt driven turntable is designed to reduce vibration for a crystal clear listening experience, while wireless Bluetooth connectivity allows you to seamlessly sync your smart device to listen from up to 33 feet away. Use the CD and cassette player to listen to all your vintage discs and tapes, and even record your favorite records to MP3 for easy listening!\n The first Victrola was introduced in 1906, and we are carrying on that legacy of making lifelong music memories in every home. Over a century later, the Victrola name is still synonymous with precision, quality, and innovation. Our products are designed to transcend time, from the classic sound of vintage record players to sleek, modern audio systems.',
    imageUrls: [
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-205B-MAH-4_700x700.jpg?v=1619181990'
    ],
    price: 139.99,
    colorOptions: [],
    hasColorOptions: false,
    isAccessory: false
  ),
  Product(
    id: 'vc5',
    productName: 'The Empire',
    description: 'The Victrola Empire 6-in-1 Bluetooth Record Player is perfect for vinyl lovers with its 3-Speed Turntable and Mid-century modern look. Stream your music via Bluetooth, or play your favorite tunes on the FM Radio, from the CD Player, or through the 3.5mm Auxiliary input! Features an analog radio dial with beautiful "around the dial" LED lighting and gold accents.',
    imageUrls: [
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-270B-FNT_1_700x700.jpg?v=1645821314',
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-270B-GRY_700x700.jpg?v=1641574996',
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-270B-ESPMain_700x700.jpg?v=1645821314'
    ],
    price: 149.99,
    colorOptions: ['Gold', 'Black', 'Dark Wood'],
    hasColorOptions: true, 
    isAccessory: false
  ),
  Product(
    id: 'vc6',
    productName: 'The Eastwood',
    description: 'The Victrola Eastwood hybrid turntable features a sleek, classic design, molding upgraded features with classic Victrola sound. This 3-speed record player plays all your favorite 33 1/3, 45, and 78 RPM records, and Dual-Bluetooth connectivty allows you to stream music from your smart device, or play your records through any external Bluetooth speaker. Modern finish brightens up the room and makes the Eastwood the focal point of any listening space.',
    imageUrls: [
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-72_BAM_1_700x700.jpg?v=1644598891',
      'https://cdn.shopify.com/s/files/1/2245/0063/products/VTA-72_ESP_1_700x700.jpg?v=1644598891'
    ],
    price: 99.99,
    colorOptions: ['Yellow & Black', 'Dark Oak'],
    hasColorOptions: true,
    isAccessory: false
  ),
];

const VINYL_ALBUMS = [
  Product(
    id: 'va1',
    productName: 'Michael Jackson: Thriller: 25th Anniversary Edition',
    description: 'Two vinyl LP pressing of the 25th anniversary edition of Michael Jacksons Thriller celebrates the groundbreaking album with eight bonus tracks five of them previously unreleased. The new tracks include remixes from Kanye West Akon and will. I. am as well as For All Time a previously unreleased track from the Thriller sessions that has been newly mixed and mastered by Michael Jackson. 2008.',
    imageUrls: [
      'https://cdn.shopify.com/s/files/1/2245/0063/products/1140077-2529152_700x700.jpg?v=1638993269'
    ],
    price: 34.98,
    colorOptions: [],
    hasColorOptions: false,
    isAccessory: true
  ),
  Product(
    id: 'va2',
    productName: 'Boston: Boston',
    description: 'Limited 180gm blue colored vinyl LP pressing housed in a gatefold sleeve. Its been over 40 years since Bostons self-titled opus first hit the airwaves and turned the world on to a new kind of sonic experience. The masterful album was a full-blown once-in-a-lifetime event in the right place at the right time as an alternative to the disco and nascent punk-rock movements of 1976. Spearheaded by MIT graduate and studio enthusiast Tom Scholz Boston almost single-handedly created arena rock here. The album soars on the strength of reflective lyrics contagious melodies towering vocals and one choice hook after another. With over 17 million copies sold Boston generated such hits as More Than a Feeling Peace of Mind Foreplay/Long Time and Smokin rock staples that are still in heavy rotation today.',
    imageUrls: [
      'https://cdn.shopify.com/s/files/1/2245/0063/products/3734183_b9fbbb6a-519b-4b4f-acc7-2a3cd4d2e578_700x700.jpg?v=1638998454'
    ],
    price: 35.05,
    colorOptions: [],
    hasColorOptions: false,
    isAccessory: true
  ),
  Product(
    id: 'va3',
    productName: 'Journey: Greatest Hits 1', 
    description: 'Limited edition 180gm vinyl LP pressing of this classic album. Music on Vinyl.',
    imageUrls: [
      'https://cdn.shopify.com/s/files/1/2245/0063/products/1793127_700x700.jpg?v=1639051099'
    ],
    price: 44.09,
    colorOptions: [],
    hasColorOptions: false,
    isAccessory: true
  )
];

const OTHER_ACCESSORIES = [

];