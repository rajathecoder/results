import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:results/designs/designs.dart';
import 'package:results/pages/arts_page.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtsPage extends StatefulWidget {
  const ArtsPage({Key? key}) : super(key: key);

  @override
  State<ArtsPage> createState() => _ArtsPageState();
}
final Uri _url2 = Uri.parse("http://results.worldcolleges.info/ethirajresults/apr2022/index.php");
Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2,mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $_url2';
  }
}
final Uri _url3 = Uri.parse("https://www.bdu.ac.in/examinations/results/");
Future<void> _launchUrl3() async {
  if (!await launchUrl(_url3,mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $_url3';
  }
}
final Uri _url4 = Uri.parse("https://laudea.psgcas.ac.in/exams/result.html#!/get_result");
Future<void> _launchUrl4() async {
  if (!await launchUrl(_url4,mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $_url4';
  }
}
final Uri _url5 = Uri.parse("http://www.gascgobi.ac.in/results.asp");
Future<void> _launchUrl5() async {
  if (!await launchUrl(_url5,mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $_url5';
  }
}


class _ArtsPageState extends State<ArtsPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initBannerAd();
    initIntersititalAd();
  }

  late BannerAd bannerAd;
  late InterstitialAd interstitialAd;
  bool isAdLoaded = false;
  var adUnit = "ca-app-pub-3535338281965315/6773237424";
  var adUnite = "ca-app-pub-3535338281965315/4179180901";


  initIntersititalAd(){
    InterstitialAd.load(
        adUnitId: adUnite,
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: (ad){
              interstitialAd = ad;
              setState(() {
                isAdLoaded = true;
              });
              interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
                  onAdDismissedFullScreenContent: (ad){
                    ad.dispose();
                    setState(() {
                      isAdLoaded = false;
                    });
                  },
                  onAdFailedToShowFullScreenContent: (ad, error){
                    ad.dispose();
                  }
              );
            },
            onAdFailedToLoad: ((error){
              interstitialAd.dispose();
            }))
    );
  }

  initBannerAd(){
    bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: adUnit,
        listener: BannerAdListener(
            onAdLoaded: (ad){
              setState(() {
                isAdLoaded = true;
              });
            },
            onAdFailedToLoad: (ad, error){
              ad.dispose();
              print(error);
            }
        ),
        request: AdRequest()
    );
    bannerAd.load();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("University & Colleges"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(95, 49, 125, 2),
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("03075c"),
              hexStringToColor("032f5c"),
              hexStringToColor("1f1732")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration: PrimaryRoundBox(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: sHeight(3, context),
                      ),
                      Text("Bharathiyar University",style: MainStyleFont(),),
                    ],
                  ),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => bharatharts()));
                },
              ),
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration: PrimaryRoundBox(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: sHeight(3, context),
                      ),
                      Text("Bharathidasan University",style: MainStyleFont(),),
                    ],
                  ),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  _launchUrl3();
                },
              ),
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration: PrimaryRoundBox(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: sHeight(3, context),
                      ),
                      Text("Loyola College",style: MainStyleFont(),),
                    ],
                  ),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoyolaArts()));

                },
              ),
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration: PrimaryRoundBox(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: sHeight(3, context),
                      ),
                      Text("Madras University",style: MainStyleFont(),),
                    ],
                  ),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Madrasuni()));
                },
              ),
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration: PrimaryRoundBox(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: sHeight(3, context),
                      ),
                      Text("Ethiraj College For Women",style: MainStyleFont(),),
                    ],
                  ),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  _launchUrl2();
                },
              ),
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration: PrimaryRoundBox(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: sHeight(3, context),
                      ),
                      Text("PSG College of Arts & Science",style: MainStyleFont(),),
                    ],
                  ),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  _launchUrl4();
                },
              ),
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration: PrimaryRoundBox(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: sHeight(3, context),
                      ),
                      Text("Gobi Arts and Science College",style: MainStyleFont(),),
                    ],
                  ),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  _launchUrl5();
                },
              ),
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration: PrimaryRoundBox(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: sHeight(3, context),
                      ),
                      Text("Sastra Arts and Science College",style: MainStyleFont(),),
                    ],
                  ),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Sastra()));
                },
              ),
            ],
          ),
        ),),
        bottomNavigationBar: isAdLoaded ?
        SizedBox(
          height: bannerAd.size.height.toDouble(),
          width:  bannerAd.size.width.toDouble(),
          child: AdWidget(ad: bannerAd,),
        ):
        SizedBox() ,
    );
  }
}
