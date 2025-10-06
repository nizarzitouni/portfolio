import 'experience_item.dart';
import 'project_keypoint.dart';

final List<ExperienceItem> experienceItems = [
  const ExperienceItem(
    companyName: 'Fynd',
    companyWebUrl: 'https://www.fynd.com/',
    position: 'SDE-2',
    companyTimeSpan: 'April 2021 - Present',
    projectKeyPoints: [
      ProjectKeyPoint(
        projectName: 'Tira',
        projectUrl: 'https://play.google.com/store/apps/details?id=com.ril.tira&hl=en-IN',
        keyPoints: [
          'Created App from scratch and also lead a Android Team of 7 people for this project.',
          'Implemented Clean Architecture with Jetpack components, Dagger-2 for DI and other third party SDKs like ModiFace for VTO and JusPay payment SDK.',
          'Implemented Kotlin Coroutine and Flow APIs for feature polishing and performance improvement.',
          'Used Mobsf, Appteam, MoEngage and Appsflyer like tools.',
        ],
      ),
      ProjectKeyPoint(
        projectName: 'AJIO',
        projectUrl: 'https://play.google.com/store/apps/details?id=com.ril.ajio&hl=en-IN',
        keyPoints: [
          'Redesign whole Order Modules with latest clean architecture.',
          'Optimised App performance using Kotlin coroutines and refactored architecture.',
          'Review teammates codes and help them to improve codebase.',
        ],
      ),
      ProjectKeyPoint(
        projectName: 'StoreOS',
        projectUrl: 'https://play.google.com/store/apps/details?id=com.fynd.pos&hl=en-IN',
        keyPoints: [
          'Worked with Jetpack compose and implemented Product variants for PLP and PDP pages.',
        ],
      ),
      ProjectKeyPoint(
        projectName: 'GoFynd',
        projectUrl: 'https://play.google.com/store/apps/details?id=co.go.fynd&hl=en-IN',
        keyPoints: [
          'Refactored Codebase with latest MVVM architecture and Android jetpack components.',
          'Updated with new Fynd Development Kit in Cart, Auth, PLP and Order Module and fixed function issues.',
          'Worked with constraint layouts, Dagger-2, MVVM, Kotlin Coroutines in this project.',
        ],
      ),
      ProjectKeyPoint(
        projectName: 'PixelBin',
        projectUrl: 'https://www.pixelbin.io/',
        keyPoints: [
          'Flutter App in Android and iOS for image processing like remove background, AI background generator, watermark remover and other image processing feature.',
          'Implemented isolates and compute for improving app feature performance.',
          'Worked with image editor for image filtering like grayscale, tint, blur and other features.',
        ],
      ),
    ],
  ),
  const ExperienceItem(
    companyName: 'Recrosoft',
    companyWebUrl: 'https://recro.io/',
    position: 'Senior Android Developer',
    companyTimeSpan: 'Aug 2020 - March 2021',
    projectKeyPoints: [
      ProjectKeyPoint(
        projectName: 'DealerSocket',
        projectUrl: 'https://play.google.com/store/apps/details?id=com.dealersocket.crm&hl=en-IN',
        keyPoints: [
          'Optimized token expire flow using kotlin function ordering.',
          'Implemented unit and instrumentation test cases using Junit, koin and mockito.',
          'Implemented Kotlin coroutine and RxJava operators for feature polishing and performance improvement.',
        ],
      ),
      ProjectKeyPoint(
        projectName: 'Udaan',
        projectUrl: 'https://play.google.com/store/apps/details?id=com.udaan.android&hl=en-IN',
        keyPoints: [
          'Worked as a solo developer for cheque manager application.',
          'Design UI with Jetpack Compose and implemented MVVM and Kotlin Flow APIs.',
          'Implemented Algolia for search optimisation.',
        ],
      ),
    ],
  ),
  const ExperienceItem(
    companyName: 'Inexture',
    companyWebUrl: 'https://www.inexture.com/',
    position: 'Android Developer',
    companyTimeSpan: 'Aug 2016 - Jul 2020',
    projectKeyPoints: [
      ProjectKeyPoint(
        projectName: 'Helpr',
        projectUrl: 'https://play.google.com/store/apps/details?id=com.helprapp.android&hl=en-IN',
        keyPoints: [
          'Used shared ViewModel for making its data cached throughout the session and reduce API calls.',
          'Design app using constraint layouts with data binding and used coroutine with a retrofit for API integration.',
        ],
      ),
      ProjectKeyPoint(
        projectName: 'ProTeen',
        projectUrl: 'https://play.google.com/store/apps/details?id=com.proteen.mycareer&hl=en-IN',
        keyPoints: [
          'Implemented advanced recycler view library for design puzzle levels.',
          'Used timers for quiz time and used exoplayer for audio and video players.',
        ],
      ),
      ProjectKeyPoint(
        projectName: 'Peoplenect',
        keyPoints: [
          'Implemented Google Map API with clustering for handle jobs in same locations.',
          'Implemented internationalization and multilingual.',
        ],
      ),
    ],
  ),
];
