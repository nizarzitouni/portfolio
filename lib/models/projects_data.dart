import 'project_images.dart';
import 'project_model.dart';

abstract class ProjectData {
  static List<ProjectModel> mobileDevProjectList = [
    ProjectModel(
      slug: 'social-profile-prank',
      projectTitle: 'Social Profile Prank',
      tagline: 'Generate realistic fake social media profiles for harmless pranks.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.social_profile_prank.social_profile_prank',
      projectDescription:
          'Social Profile Prank is a Flutter app that generates realistic fake social media profiles for harmless pranking purposes. Create convincing Instagram, TikTok, Twitter/X, and YouTube profiles with customizable followers, posts, and profile details. The app features a freemium model with premium subscriptions, rewarded video ads for temporary feature unlocks, and high-quality screenshot export functionality. Built with Clean Architecture and BLoC pattern for robust state management.',
      techStacks: [
        'Flutter',
        'BLoC/Cubit',
        'Freezed',
        'Go Router',
        'RevenueCat (IAP)',
        'Google Mobile Ads',
        'Firebase Analytics',
        'Firebase Crashlytics',
        'Microsoft Clarity',
        'Image Picker/Cropper',
        'Screenshot',
        'Get It (DI)',
      ],
      role: 'Sole creator of the entire app - architecture, UI/UX design, monetization implementation, and deployment',
      projectImageModel: ProjectImages.socialProfilePrank,
      isLive: true,
      appScreens: ProjectImages.socialProfilePrankScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'mockly',
      projectTitle: 'Mockly',
      tagline: 'Create realistic fake social media posts and chat conversations in seconds.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.mockly',
      projectDescription:
          'Mockly is a Flutter app for creating realistic mock social media posts and chat conversations across 8 platforms: Instagram, X, LinkedIn and Facebook posts, plus WhatsApp, Telegram, Instagram DM and Messenger chats. Each platform has its own fields, like verified badges, job titles and page info. Chats support group conversations with up to 20 participants, drag-and-drop message reordering and read receipts. Exports are high-resolution, with an optional fake iOS/Android status bar. The app runs on a freemium model with RevenueCat subscriptions, AdMob with mediation, and rewarded video ads for temporary feature unlocks. Remote Config controls force updates and ads. Built with Clean Architecture, Cubit state management and Freezed models.',
      techStacks: [
        'Flutter',
        'BLoC/Cubit',
        'Freezed',
        'Go Router',
        'Get It (DI)',
        'RevenueCat (IAP)',
        'Google Mobile Ads',
        'Firebase Analytics',
        'Firebase Crashlytics',
        'Firebase Remote Config',
        'Microsoft Clarity',
        'Image Picker/Cropper',
        'Screenshot',
      ],
      role: 'Sole creator of the entire app - architecture, UI/UX design, monetization, ad policy compliance, and Play Store release',
      projectImageModel: ProjectImages.mockly,
      isLive: true,
      appScreens: ProjectImages.mocklyScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'daftari',
      projectTitle: 'Daftari',
      tagline: 'Offline invoicing for Algerian auto-entrepreneurs, from quote to paid.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.daftari',
      projectDescription:
          'Daftari is an offline invoicing app built for Algerian auto-entrepreneurs (Moukawil Dati). Users manage their clients and products, then build invoices with line items, sequential numbering and a saved signature and business stamp (with automatic background removal), and export them as professional French PDFs ready to share. Each invoice snapshots the business profile, so a PDF regenerates exactly as issued even after the profile or client changes. A paid-only dashboard shows yearly and monthly revenue per currency, and feeds the data for the annual G12 tax declaration. Everything stays on the device in a local SQLite database, with no account and no backend. The app is fully localized in Arabic (RTL), French and English, includes a bundled rules reference for the auto-entrepreneur status, and seeds example data on first launch so new users see a finished invoice right away. Monetized with AdMob, with Remote Config driving force updates. Built with a feature-first architecture, Cubit state management and Freezed states.',
      techStacks: [
        'Flutter',
        'BLoC/Cubit',
        'Freezed',
        'Go Router',
        'Get It (DI)',
        'Drift (SQLite)',
        'Syncfusion PDF',
        'Printing',
        'Localization (AR/FR/EN)',
        'Google Mobile Ads',
        'Firebase Crashlytics',
        'Firebase Remote Config',
        'Cloud Firestore',
        'Microsoft Clarity',
        'Image Picker/Cropper',
        'Signature',
      ],
      role:
          'Sole creator of the entire app - product research, architecture, UI/UX design, PDF generation, localization, monetization, and Play Store release',
      projectImageModel: ProjectImages.daftari,
      isLive: true,
      appScreens: ProjectImages.daftariScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'poseghost',
      projectTitle: 'PoseGhost',
      tagline: 'See the pose before you shoot, with a ghost guide right on your camera.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.poseghost',
      projectDescription:
          'PoseGhost is a Flutter camera app that places a semi-transparent pose silhouette on the live camera preview, so you line your body up with the ghost and shoot instead of memorizing a reference photo. The library holds 80 hand-drawn pose overlays across 6 categories: selfie, female, male, couple, wedding and friends/groups. The ghost can be scaled, dragged, mirrored, faded with an opacity slider and switched between white and black, while premium unlocks rotation, lock, tint colors and per-pose framing memory. The camera itself supports front/back switching, timer, grid and saving straight to the gallery. The app runs on a freemium model with RevenueCat subscriptions and AdMob with Unity and Liftoff mediation. Remote Config drives force updates and ads, and a Firestore-backed feedback flow collects user reports. Built with Clean Architecture, Cubit state management and Freezed models.',
      techStacks: [
        'Flutter',
        'BLoC/Cubit',
        'Freezed',
        'Go Router',
        'Get It (DI)',
        'Camera',
        'RevenueCat (IAP)',
        'Google Mobile Ads',
        'Firebase Analytics',
        'Firebase Crashlytics',
        'Firebase Remote Config',
        'Cloud Firestore',
        'Microsoft Clarity',
      ],
      role: 'Sole creator of the entire app - architecture, UI/UX design, pose library art direction, monetization, and Play Store release',
      projectImageModel: ProjectImages.poseGhost,
      isLive: true,
      appScreens: ProjectImages.poseGhostScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'dupli',
      projectTitle: 'DUPLI - Your AI Clone',
      tagline: 'Create an AI clone of yourself that chats and talks like you.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=com.techconsolidated.avatarcloneyourself',
      appStoreUrl: 'https://apps.apple.com/cm/app/dupli-your-ai-clone/id6740580236',
      projectDescription:
          'DUPLI is an innovative AI avatar cloning application that allows users to create digital versions of themselves. Built while working for a tech company, this app enables users to train AI with their unique information to replicate their communication style, voice, and personality. Features include text chat with avatars, voice call functionality, access to user-created clones, and personalized AI assistance. The app implements advanced machine learning models with a clean, intuitive interface designed for seamless user experience.',
      techStacks: [
        'Flutter',
        'BLoC Pattern',
        'Firebase',
        'Speech To Text ',
        'RESTful APIs',
        'RESTful APIs',
        'Cloud Functions',
        'Local Authentication',
      ],
      role:
          'Lead Flutter Developer responsible for app architecture, implementing real-time communication features, integrating AI models, and optimizing performance for resource-intensive operations',
      projectImageModel: ProjectImages.dupli,
      isLive: true,
      appScreens: ProjectImages.dupliScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'stretchy-v1',
      projectTitle: 'Stretchy (v1)',
      tagline: 'My first published app — timer-guided daily stretching routines.',
      liveUrl: 'https://www.appbrain.com/app/stretchy:-daily-stretches/nz.dev.stretchy',
      projectDescription:
          "The first version of Stretchy was inspired by the popular app 'Bend', created as a learning project to understand app development principles. This version offered daily stretching routines with timer-guided exercises designed for all experience levels. Featuring animated demonstrations and progress tracking, this initial release helped users improve mobility and flexibility through structured routines.",
      techStacks: ['Flutter', 'BLoC/Cubit', 'Firebase Remote Config', 'Shared Preferences'],
      role: 'Sole creator of the entire app',
      projectImageModel: ProjectImages.stretchyV1,
      isLive: true,
      appScreens: ProjectImages.stretchyV1Screens,
      carouselFullWidth: false,
    ),

    ProjectModel(
      slug: 'stretchy-v2',
      projectTitle: 'Stretchy (v2)',
      tagline: 'Redesigned stretching app with 10+ routines for mobility and posture.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.stretchyapp',
      appStoreUrl: 'https://apps.apple.com/us/app/stretchy-posture-exercises/id6757081350',
      projectDescription:
          'The completely redesigned version of Stretchy features an original UI/UX with enhanced functionality. This version offers 10+ specialized routines including morning stretches, desk breaks, posture correction, and targeted body workouts. With animated demonstrations, timer-guided sessions, and improved progress tracking, Stretchy v2 provides a comprehensive stretching experience for users of all fitness levels.',
      techStacks: ['Flutter', 'BLoC/Cubit', 'Firebase Remote Config', 'Firebase Analytics', 'Repository Pattern', 'Shared Preferences'],
      role: 'Sole creator of the entire app',
      projectImageModel: ProjectImages.stretchyV2,
      isLive: true,
      appScreens: ProjectImages.stretchyV2Screens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'workout-finder',
      projectTitle: 'Workout Finder',
      tagline: 'Pick exercises from a visual body map — 999+ moves with animated guides.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.workoutfinder',
      projectDescription:
          'Find exercises by body part with this visual body map trainer. Featuring 999+ exercises with guides, animated demonstrations, and step-by-step instructions. Build custom routines, track your workouts with a body heatmap, and analyze your training patterns. Perfect for both beginners and experienced lifters.',
      techStacks: ['Flutter', 'BLoC/Cubit', 'Firebase Remote Config', 'Firebase Analytics', 'Clean Architecture'],
      role: 'Sole creator of the entire app',
      projectImageModel: ProjectImages.workoutFinder,
      isLive: true,
      appScreens: ProjectImages.workoutFinderScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'wardrobe-snap',
      projectTitle: 'Wardrobe Snap',
      tagline: 'Snap your clothes, organize a digital closet, and plan outfits.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.wardrobesnap',
      appStoreUrl: 'https://apps.apple.com/us/app/wardrobe-snap-closet-outfit/id6770147139',
      projectDescription:
          'Wardrobe Snap is a Flutter app for building and organizing a digital closet. Snap photos of your clothes, sort them into categories, and keep an inventory of everything you own. Mix and match items to plan outfits, save your favorite looks, and decide what to wear without digging through your wardrobe. Built with Clean Architecture and the BLoC/Cubit pattern, with a freemium model powered by in-app purchases and rewarded ads.',
      techStacks: [
        'Flutter',
        'BLoC/Cubit',
        'Freezed',
        'Go Router',
        'RevenueCat (IAP)',
        'Google Mobile Ads',
        'Firebase Analytics',
        'Get It (DI)',
      ],
      role: 'Sole creator of the entire app - architecture, UI/UX design, monetization, and deployment',
      projectImageModel: ProjectImages.wardrobeSnap,
      isLive: true,
      appScreens: ProjectImages.wardrobeSnapScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'giggleclip',
      projectTitle: 'GiggleClip',
      tagline: 'Turn videos and photos into captioned, shareable GIFs.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.fliktag',
      projectDescription:
          'GiggleClip is a Flutter GIF maker that turns videos and photos into shareable GIFs. Trim clips, set speed and frame rate, add captions and stickers, then export and share anywhere. Built with Clean Architecture and the BLoC/Cubit pattern, with a freemium model powered by in-app purchases and rewarded ads.',
      techStacks: [
        'Flutter',
        'BLoC/Cubit',
        'Freezed',
        'Go Router',
        'RevenueCat (IAP)',
        'Google Mobile Ads',
        'Firebase Analytics',
        'Get It (DI)',
      ],
      role: 'Sole creator of the entire app - architecture, UI/UX design, monetization, and deployment',
      projectImageModel: ProjectImages.giggleClip,
      isLive: true,
      appScreens: ProjectImages.giggleClipScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'quran-reels-maker',
      projectTitle: 'Quran Reels Maker',
      tagline: 'Turn Quran verses into shareable vertical reels.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.quranreels',
      appStoreUrl: 'https://apps.apple.com/us/app/quran-reels-maker/id6760150215',
      projectDescription:
          'Quran Reels Maker is a Flutter app for creating short vertical videos with Quran verses. Pick a surah and ayah range, choose a reciter, set a background video, and overlay the Arabic text and translation, then export a ready-to-share reel for social media. Built with Clean Architecture and the BLoC/Cubit pattern, with a freemium model powered by in-app purchases and rewarded ads.',
      techStacks: [
        'Flutter',
        'BLoC/Cubit',
        'Freezed',
        'Go Router',
        'RevenueCat (IAP)',
        'Google Mobile Ads',
        'Firebase Analytics',
        'Get It (DI)',
      ],
      role: 'Sole creator of the entire app - architecture, UI/UX design, monetization, and deployment',
      projectImageModel: ProjectImages.quranReels,
      isLive: true,
      appScreens: ProjectImages.quranReelsScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'just-delete-me',
      projectTitle: 'Just Delete Me',
      tagline: 'A directory that cuts through dark patterns to help you delete online accounts.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=com.nizarztn.justdeleteme',
      projectDescription:
          '"JUST DELETE ME" is a directory simplifying the account deletion process by countering dark pattern techniques used by companies. With over 50k downloads on the store, this Flutter app has successfully provided users with a straightforward solution for managing their online presence.',
      techStacks: ['GetX', 'Shared Preferences'],
      role: 'Sole creator of the entire app',
      projectImageModel: ProjectImages.justDeleteMe,
      isLive: true,
      appScreens: ProjectImages.justDeleteMeScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'live-stream-simulator',
      projectTitle: 'Live Stream Simulator',
      tagline: 'Simulate a live stream — fake viewers, donations, and chat.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.slivestreamsimulator',
      projectDescription:
          'Live Stream Simulator is a feature-rich application designed to simulate live streaming experiences. With its powerful capabilities, users can:\n\n'
          '• Create virtual live streams with customizable settings\n'
          '• Manage simulated viewers and their interactions\n'
          '• Explore various monetization strategies, including virtual donations and subscriptions\n'
          '• Analyze stream analytics and viewer engagement metrics\n\n'
          'This app serves as an invaluable tool for content creators, streamers, and businesses looking to experiment with live streaming without the need for expensive equipment or setups.',
      techStacks: ['Cubit', 'Firebase', 'Amplitude SDK', 'RevenueCat SDK'],
      role: 'Sole creator of the entire app',
      projectImageModel: ProjectImages.liveStreamSimulator,
      isLive: true,
      appScreens: ProjectImages.liveStreamSimulatorScreens,
      carouselFullWidth: false,
    ),

    ProjectModel(
      slug: 'quick-qr-pro',
      projectTitle: 'Quick QR Pro',
      tagline: 'Scan QR codes and create custom branded ones with your logo.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=com.nizarztn.quickqrpro',
      projectDescription:
          'Quick QR Pro: The ultimate QR code app with easy scanning and custom code creation. Featuring logo integration, this app offers personalized and branded code experiences for various needs.\n\n\n'
          'Key Features:\n\n'
          '   ♦ Easy Scanning: Quickly scan QR codes to access information.\n'
          '   ♦ Custom Code Creation: Generate your own QR codes with the option to add your logo.\n'
          '   ♦ Brand Integration: Perfect for businesses aiming to promote their brand or individuals wanting a personal touch.\n',
      techStacks: ['GetX', 'SqLite', 'Storage'],
      role: 'Sole creator of the entire app',
      projectImageModel: ProjectImages.quickQrPro,
      isLive: true,
      appScreens: ProjectImages.quickQrProScreens,
      carouselFullWidth: false,
    ),

    ProjectModel(
      slug: 'speedy-invoice',
      projectTitle: 'Speedy Invoice',
      tagline: 'Create and send invoices and estimates straight from your phone.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=com.nizarztn.speedyInvoice',
      projectDescription:
          'Speedy Invoice: A streamlined mobile tool for swift bill and estimate creation. Ideal for small businesses and freelancers, offering efficient on-the-go billing management.\n\n\n'
          'Key Features:\n\n'
          '   ♦ Mobile Invoice Creation: Easily generate and send invoices from your phone.\n'
          '   ♦ Estimate Management: Provide estimates before billing, streamlining the payment process.\n'
          '   ♦ Efficient Billing Management: Manage all billing aspects on the go, ensuring timely payments.\n',
      techStacks: ['GetX', 'SqLite', 'Storage'],
      role: 'Sole creator of the entire app',
      projectImageModel: ProjectImages.speedyInvoice,
      isLive: true,
      appScreens: ProjectImages.speedyInvoiceScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'audio-libro',
      projectTitle: 'Audio Libro',
      tagline: 'A personalized audiobook player with background playback and bookmarks.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.audiolibro.client',
      projectDescription:
          'Developed Audio Libro, a personalized audiobook platform using Flutter for an immersive listening experience. Leveraged Firebase for efficient data management and user authentication.\n\n\n'
          'Key Features:\n\n'
          '   ♦ Seamless Background Playback: Enjoy uninterrupted listening across your day.\n'
          '   ♦ Convenient Bookmarking: Save your spot and return to your favorite stories anytime.\n'
          '   ♦ User-Friendly Interface: Navigate through a vast library of audiobooks effortlessly.\n',
      techStacks: ['Firebase', 'GetX', 'Rive Animations', 'Firebase Analyitics'],
      role: 'Sole developer for UI design and implementation',
      projectImageModel: ProjectImages.audioLibro,
      isLive: true,
      appScreens: ProjectImages.audioLibroScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'sa3arli',
      projectTitle: 'Sa3arli',
      tagline: 'Estimate car import costs to Algeria with up-to-date customs tariffs.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nx.nizarztn.carimp',
      projectDescription:
          'Facilitating car imports to Algeria Our Flutter app provides quick and accurate cost estimates, incorporating customs tariffs. Download now for confidence in your import decisions.\n\n\n'
          'Key Features:\n\n'
          '   ♦ Cost Estimation: Get a quick and accurate estimate of importation costs.\n'
          '   ♦ Customs Tariffs: Incorporates the latest customs tariffs applied by Algerian customs.\n'
          '   ♦ Regular Updates: Stay informed with the latest information about tariffs.\n',
      techStacks: ['Flutter', 'Bloc'],
      role: 'Sole creator of the entire app',
      projectImageModel: ProjectImages.sa3arli,
      isLive: true,
      appScreens: ProjectImages.sa3arliScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'tune-hub',
      projectTitle: 'Tune Hub',
      tagline: 'Browse, preview, and set custom ringtones.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.tunehub',
      isLive: true,
      projectDescription:
          'Developed Tune Hub, a personalized ringtone app using Flutter for a smooth user experience. Leveraged Supabase for efficient storage management.\n\n\n'
          'Key Features:\n\n'
          '   ♦ Effortless exploration of ringtones.\n'
          '   ♦ Seamless previewing functionality.\n'
          '   ♦ Easy customization of device sounds.\n',
      techStacks: ['Flutter', 'Supabase'],
      role: 'solo developer for UI design and implementation',
      appScreens: ProjectImages.tuneHubScreens,
      projectImageModel: ProjectImages.tuneHub,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'sneakers-shop',
      projectTitle: 'Sneakers Shop',
      tagline: 'Prototype storefront app for a local sneaker shop.',
      projectDescription:
          'Prototype app for a local peak sneakers store. Check out the code on GitHub for a glimpse into the development process.',
      techStacks: ['Flutter'],
      role: 'Sole developer for UI design and implementation',
      projectImageModel: ProjectImages.sneakersShop,
      isLive: false,
      githubUrl: 'https://github.com/nizarzitouni/sneakerzi',
      appScreens: ProjectImages.sneakersShopScreens,
      carouselFullWidth: false,
    ),
    ProjectModel(
      slug: 'anatomia',
      projectTitle: 'Anatomia',
      tagline: 'Explore 3D human organs, tap labelled structures, and quiz yourself.',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=nz.dev.anatomia',
      githubUrl: 'https://github.com/nizarzitouni/anatomia',
      projectDescription:
          'Anatomia is an interactive 3D human anatomy explorer. Rotate and zoom real-time models of the heart, brain, lungs, liver, kidneys, eyeball, intestine, pancreas and skin, tap hotspots on each organ to read about its structures, and browse microscopic, location and comparison illustrations. Two quiz modes test what you learned: find a named structure on the model, or name a highlighted one from multiple choices while the camera turns to face it, with best scores saved per organ. Rendered with flutter_scene on Flutter GPU and Impeller using meshopt-compressed GLB models, with hotspots projected onto the scene every frame, and fully localized in 12 languages including Arabic, Japanese, Hindi and Chinese.',
      techStacks: [
        'Flutter',
        'flutter_scene (Flutter GPU / Impeller)',
        '3D GLB Models',
        'BLoC/Cubit',
        'Freezed',
        'Go Router',
        'Get It (DI)',
        'RevenueCat (IAP)',
        'Microsoft Clarity',
        'Shared Preferences',
        'i18n (12 languages)',
      ],
      role: 'Sole creator of the entire app - 3D scene and camera system, quiz modes, UI/UX, localization, and deployment',
      projectImageModel: ProjectImages.anatomia,
      isLive: false,
      appScreens: ProjectImages.anatomiaScreens,
      carouselFullWidth: false,
    ),

    // ProjectModel(
    //   slug: 'tiktok-clone',
    //   projectTitle: "Tiktok Clone",
    //   liveUrl: null,
    //   projectDescription:
    //       "Developed a TikTok Clone using Flutter, GetX, Firebase, and Firestore DB. This app replicates the key functionalities of TikTok, allowing users to create, upload, and interact with short videos. As the sole creator, I implemented features such as video playback, user interactions, and seamless video uploads. Explore the source code on GitHub to understand the inner workings of this Flutter project.\n\n\n"
    //       "Key Features:\n\n"
    //       "   ♦ Video Playback: Experience TikTok's video content in a mobile-friendly format.\n"
    //       "   ♦ User Interactions: Engage with the community through likes, comments, and shares.\n"
    //       "   ♦ Seamless Video Uploads: Easily share your moments with the world.\n",
    //   techStacks: [
    //     "Flutter",
    //     "GetX",
    //     "Firebase",
    //     "Firestore DB",
    //   ],
    //   role: "Sole creator of the entire app",
    //   projectImageModel: ProjectImages.tiktokClone,
    //   isLive: false,
    //   githubUrl: "https://github.com/nizarzitouni/Tiktok-flutter-clone",
    //   appScreens: appScreensEmpty,
    //   carouselFullWidth: false,
    //   behanceLink: null,
    // ),
    // ProjectModel(
    //   slug: 'nx-shop',
    //   projectTitle: "NX Shop",
    //   liveUrl: null,
    //   projectDescription:
    //       "Developed a revolutionary E-commerce app with a dedicated admin companion. The client app ensures a seamless shopping experience, while the admin app empowers administrators with essential CRUD functionalities for efficient product management. Tech stack includes Flutter, Dio, GetX, SQLite, Shared Preferences, Firebase, and Firestore for dynamic data storage. As the sole creator, I led the development of both client and admin apps.",
    //   techStacks: [
    //     "Flutter",
    //     "GetX",
    //     "GetStorage",
    //     "SqlLite",
    //     "Shared Preferences",
    //     "Firebase",
    //     "Firestore",
    //   ],
    //   role: "Sole creator of both client and admin apps",
    //   projectImageModel: ProjectImages.nxShop,
    //   isLive: false,
    //   githubUrl: "https://github.com/nizarzitouni/NX-Shop",
    //   appScreens: ProjectImages.nxShopScreens,
    //   carouselFullWidth: false,
    //   behanceLink: null,
    // ),

    // ProjectModel(
    //   slug: 'food-app-ui',
    //   projectTitle: "Food App UI",
    //   liveUrl: null,
    //   projectDescription:
    //       "Created a Flutter UI project for a visually appealing food app. Explore my GitHub repository to witness my skills in crafting intuitive and aesthetically pleasing user interfaces.",
    //   techStacks: [
    //     "Flutter",
    //   ],
    //   role: "Sole developer for UI design and implementation",
    //   projectImageModel: ProjectImages.foodApp,
    //   isLive: false,
    //   githubUrl: "https://github.com/nizarzitouni/Food-Flutter-App-UI",
    //   appScreens: ProjectImages.foodAppScreens,
    //   carouselFullWidth: false,
    //   behanceLink: null,
    // ),
  ];

  static List<ProjectModel> threeDProjectList = [
    ProjectModel(
      slug: 'double-jump',
      projectTitle: 'Double Jump',
      tagline: 'Level design for a published mobile platformer, built in Unity and Blender.',
      liveUrl: 'https://www.doublejump.wtf/',
      projectDescription:
          "As a Level Designer at Blank Labs Gaming Studio, I've played a pivotal role in bringing the creative visions of game designers to life. My primary responsibilities involve utilizing the powerful combination of Blender and Unity to craft immersive game scenes that resonate with the intended user experience.\n\n"
          'Key Contributions:\n\n'
          '♦ Creative Implementation: Translated game designer concepts into tangible game scenes, showcasing a diverse range of game types such as platformers, royal games, hybrid puzzles, and easy-to-play games.\n'
          '♦ Collaborative Development: Fostered effective communication with developers, leveraging my background in software engineering to ensure seamless collaboration within the team. Embraced Agile methodology for testing and refining early versions of game levels.\n'
          '♦ Project Management: Utilized Jira within an Agile framework for streamlined collaboration and organized project management. This involved tasks such as receiving final art from 3D artists and personally implementing it into the game scenes.\n'
          '♦ Visual Integration: Ensured a visually appealing and seamless integration of final art received from 3D artists into the game scenes, contributing to the overall aesthetic quality of the gaming experience.\n\n'
          'My journey at Blank Labs has been marked by a commitment to excellence, creativity, and effective teamwork. I take pride in contributing to the development of captivating games that engage and entertain users.\n',
      techStacks: ['Unity', 'Blender 3D'],
      role: 'Level Designer in a team of 20',
      projectImageModel: ProjectImages.doubleJump,
      isLive: true,
      appScreens: ProjectImages.doubleJumpScreens,
      carouselFullWidth: true,
      behanceLink: 'https://www.behance.net/gallery/191290675/Double-Jump-Level-Design-Showcase',
    ),
    ProjectModel(
      slug: 'polytown',
      projectTitle: 'PolyTown',
      tagline: 'An epic low-poly asset pack: buildings, characters, props, vehicles, environments.',
      isLive: true,
      liveUrl: 'https://sketchfab.com/3d-models/polytown-low-poly-city-pack-699546b57f3e4b38986061e995ac20ad',
      projectDescription:
          'An Epic Low Poly asset pack of Buildings, Characters, Props, Viehcules and Environment assets to create a low poly themed polygonal style game',
      techStacks: ['Unity', 'Blender'],
      role: 'I was the creator of the whole app',
      projectImageModel: ProjectImages.polyTown,
      appScreens: ProjectImages.polyTownScreens,
      carouselFullWidth: true,
    ),
    ProjectModel(
      slug: 'medieval-pack',
      projectTitle: 'Medieval Pack',
      tagline: '100+ modular assets for building medieval interiors in Unity.',
      isLive: true,
      liveUrl: 'https://assetstore.unity.com/packages/3d/environments/historic/medieval-indoor-kit-3d-224308',
      projectDescription:
          'Introducing my latest creation: a comprehensive asset pack tailored for game developers seeking to infuse their projects with the allure of medieval interiors. With over 100 meticulously crafted assets including modular walls, floors, and props, this pack offers boundless opportunities for creating immersive game environments.\n',
      techStacks: ['Unity', 'Blender', 'Gimp'],
      role: 'I was the creator of the whole app',
      projectImageModel: ProjectImages.medievalPack,
      appScreens: ProjectImages.medievalPackScreens,
      carouselFullWidth: true,
      behanceLink: 'https://www.behance.net/gallery/190658551/Level-Desing-Medieval-Indoor-Kit-3D',
    ),
    // ProjectModel(
    //   slug: 'blaster-pranks',
    //   projectTitle: "Blaster Pranks - Epic Toys",
    //   liveUrl: "https://apkcombo.com/blaster-pranks-epic-toys/com.blaster.prank.epic.toys.blast/",
    //   projectDescription:
    //       "As the Game Level Designer at Blaster Pranks - Epic Toys in 2018, I spearheaded the entire level design process, showcasing my proficiency in greyboxing, asset creation, and character design. My commitment to crafting engaging gaming experiences resulted in the successful creation and implementation of over 90 unique game levels.\n\n"
    //       "Key Achievements:\n\n"
    //       "♦ End-to-End Design Responsibility: Held complete responsibility for the level design process, from conceptualization through greyboxing to the final touches of asset creation and character design.\n"
    //       "♦ Quantifiable Impact: Contributed to the success of the project by creating and implementing a substantial number of 90+ game levels, each designed to captivate and challenge players.\n"
    //       "♦ Quantifiable Impact: Contributed to the success of the project by creating and implementing a substantial number of 90+ game levels, each designed to captivate and challenge players.\n\n"
    //       "My tenure at Blaster Pranks - Epic Toys was characterized by a commitment to delivering exceptional gaming content and a passion for pushing creative boundaries within the field of game design.\n",
    //   techStacks: [
    //     "Unity",
    //     "Blender",
    //   ],
    //   role: "I was the creator of the whole app",
    //   projectImageModel: ProjectImages.blasterPranks,
    //   isLive: true,
    //   githubUrl: null,
    //   appScreens: ProjectImages.blasterPranksScreens,
    //   carouselFullWidth: false,
    //   behanceLink: null,
    // ),
  ];

  static List<ProjectModel> listContaining(String slug) =>
      mobileDevProjectList.any((p) => p.slug == slug) ? mobileDevProjectList : threeDProjectList;
}
