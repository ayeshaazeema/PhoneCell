import 'package:flutter/material.dart';

class Phone {
  int phoneId;
  String phoneName;
  int phonePrice;
  String phoneDescription;
  String phoneImage;
  String phoneBrand;
  Color phoneColor;

  Phone(
      {required this.phoneId,
      required this.phoneName,
      required this.phonePrice,
      required this.phoneDescription,
      required this.phoneImage,
      required this.phoneBrand,
      required this.phoneColor});
}

var phoneList = [
  Phone(
      phoneId: 1,
      phoneName: 'Galaxy Z Fold3 5G',
      phonePrice: 26999000,
      phoneDescription:
          'This is everything you’d want in a premium, durable, 5G smartphone. Then we made it unfold — revealing a massive screen so you can watch, work and play like never before.',
      phoneImage:
          'https://images.samsung.com/is/image/samsung/p6pim/id/2108/gallery/id-galaxy-z-fold3-f926-5g-sm-f926bzkdxid-thumb-474133426?216_216_PNG',
      phoneBrand: 'Samsung',
      phoneColor: Color.fromARGB(100, 56, 101, 100)),
  Phone(
      phoneId: 2,
      phoneName: 'Galaxy Z Flip3 5G',
      phonePrice: 15999000,
      phoneDescription:
          'Folds into your pocket. Tucks into your purse. Slips into your skinniest jeans. Then you can take it out and it flips open into a full-screened 5G smartphone and flexes to your favorite angles.',
      phoneImage:
          'https://images.samsung.com/is/image/samsung/p6pim/id/2108/gallery/id-galaxy-z-flip3-f711-5g-sm-f711bzeaxid-thumb-474118036?216_216_PNG',
      phoneBrand: 'Samsung',
      phoneColor: Color.fromARGB(1000, 227, 232, 192)),
  Phone(
      phoneId: 3,
      phoneName: 'Galaxy S21+ 5G',
      phonePrice: 16999000,
      phoneDescription:
          'Never miss that perfect shot again. Meet Galaxy S21+ 5G. Designed to revolutionize video and photography, with beyond cinematic 8K resolution so you can snap epic photos right out of video. It has it all in two sizes: 64MP, our fastest chipset and a massive all-day battery. Things just got epic.',
      phoneImage:
          'https://images.samsung.com/is/image/samsung/p6pim/id/galaxy-s21/gallery/id-galaxy-s21-5g-g996-sm-g996bzvdxid-thumb-368318440?216_216_PNG',
      phoneBrand: 'Samsung',
      phoneColor: Color.fromARGB(100, 13, 70, 149)),
  Phone(
      phoneId: 4,
      phoneName: 'Galaxy S21 Ultra 5G',
      phonePrice: 18999000,
      phoneDescription:
          'Introducing Galaxy S21 Ultra 5G. Designed with a unique contour-cut camera to create a revolution in photography — letting you capture cinematic 8K video and snap epic stills, all in one go. And with Galaxy’s fastest chipset, strongest glass, 5G and an all-day battery, Ultra easily lives up to its name.',
      phoneImage:
          'https://images.samsung.com/is/image/samsung/p6pim/id/galaxy-s21/gallery/id-galaxy-s21-ultra-5g-g988-sm-g998bzkgxid-thumb-368319398?216_216_PNG',
      phoneBrand: 'Samsung',
      phoneColor: Color.fromARGB(1000, 223, 223, 207)),
  Phone(
      phoneId: 5,
      phoneName: 'Galaxy Note20 Ultra',
      phonePrice: 18999000,
      phoneDescription:
          'The first to merge a pen with a phone, Note put a whole new world in your pocket. As we face a new normal, life demands a new kind of device. This is not a smartphone as you know it. This is a computer suite in your pocket. This is next-level gaming on mobile. This is a pro-grade 8K camera and editing suite. This is the power phone that forever changes how you work and play.',
      phoneImage:
          'https://images.samsung.com/is/image/samsung/id-galaxy-note20-ultra-n985-sm-n985fzngxid-frontmysticbronze-thumb-320106144?216_216_PNG',
      phoneBrand: 'Samsung',
      phoneColor: Color.fromARGB(1000, 223, 223, 207)),
  Phone(
      phoneId: 6,
      phoneName: 'Galaxy Note20',
      phonePrice: 13499000,
      phoneDescription:
          'The Xtrada 7 is designed for riders who want to ride on a wide variety of terrain. The ALX super light 6061 hydro formed aluminum frame uses heat treated, hydro formed and butted tubing to give an optimal strength to weight ratio. The tapered head tube provides stable, front-end precision and the new Boost hub spacing on this frame allows for a stiffer wheel with more tyre clearance. The Boost system has also allowed for shorter chain stays, which makes the back of the bike a lot easier to flick around corners.The Xtrada 7 utilises Polygon’s new Wheel Fit Size System whereby each frame size is paired with the wheel size that best fits the rider and sets them up for optimal efficiency and power transfer. Frame S, M, L feature 27.5” wheels and frame M, L, XL come with 29” wheels. The Xtrada 7 is a true cross country mountain bike with a geometry built for speed and stability coupled with tough, trail-ready components. It is perfect for hitting the local single track or an all-day mountain adventure.',
      phoneImage:
          'https://images.samsung.com/is/image/samsung/id-galaxy-note20-n980-sm-n980fzggxid-frontmysticgreen-thumb-320105988?216_216_PNG',
      phoneBrand: 'Samsung',
      phoneColor: Color.fromARGB(1000, 222, 188, 48)),
  Phone(
      phoneId: 7,
      phoneName: 'Galaxy A52',
      phonePrice: 4999000,
      phoneDescription:
          'Feast your eyes on vibrant details with the FHD+ Super AMOLED display, reaching 800 nits for clarity even in bright daylight. Eye Comfort Shield lowers blue light, and Real Smooth keeps the view smooth, whether you’re gaming or scrolling. All on the expansive 6.5-inch Infinity-O Display.',
      phoneImage:
          'https://images.samsung.com/is/image/samsung/p6pim/id/galaxy-a52/gallery/id-galaxy-a52-a525-sm-a525fzkhxid-thumb-397262071?216_216_PNG',
      phoneBrand: 'Samsung',
      phoneColor: Color.fromARGB(1000, 128, 128, 128)),
  Phone(
      phoneId: 8,
      phoneName: 'Galaxy A32',
      phonePrice: 3599000,
      phoneDescription:
          'Wrap your hands around the elegant soft edge design on the stunning Galaxy A32. With the iconic camera design and glossy finish on the back, this phone not only stands out — it sets a new standard. Choose from four eye-catching colors: Awesome Black, Awesome White, Awesome Blue and Awesome Violet.',
      phoneImage:
          'https://images.samsung.com/is/image/samsung/p6pim/id/sm-a325fzwhxid/gallery/id-galaxy-a32-a325-sm-a325fzwhxid-thumb-405046313?216_216_PNG',
      phoneBrand: 'Samsung',
      phoneColor: Color.fromARGB(100, 255, 255, 0)),
  Phone(
      phoneId: 9,
      phoneName: 'Galaxy A32 5G',
      phonePrice: 22500000,
      phoneDescription:
          'On the next-generation mobile data network, the power of 5G fast speeds change the way you experience and share content—from super smooth gaming and streaming, to ultra fast sharing and downloading. Upgrade to the Galaxy A32 5G and speed up your smartphone experience.',
      phoneImage:
          'https://images.samsung.com/is/image/samsung/p6pim/id/sm-a326bzkhxid/gallery/id-galaxy-a32-5g-a326-sm-a326bzkhxid-thumb-440302657?216_216_PNG',
      phoneBrand: 'Samsung',
      phoneColor: Color.fromARGB(1000, 170, 170, 170)),
  Phone(
      phoneId: 10,
      phoneName: 'Galaxy A72',
      phonePrice: 5999000,
      phoneDescription:
          'Galaxy A72’s 32MP front camera snaps clear, high-resolution selfies throughout the day. And with bokeh effect to gently blur the background, your face becomes the star.',
      phoneImage:
          'https://images.samsung.com/is/image/samsung/p6pim/id/galaxy-a52/gallery/id-galaxy-a72-a725-sm-a725fzkgxid-thumb-397263665?216_216_PNG',
      phoneBrand: 'Samsung',
      phoneColor: Color.fromARGB(100, 128, 0, 0)),
];
