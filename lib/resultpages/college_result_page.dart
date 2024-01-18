import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:results/designs/designs.dart';
import 'package:results/pages/engineer_page.dart';

class CollegePage extends StatefulWidget {
  const CollegePage({Key? key}) : super(key: key);

  @override
  State<CollegePage> createState() => _CollegePageState();
}

class _CollegePageState extends State<CollegePage> {

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
        child: Column(
          children: [
            SizedBox(height: sHeight(3, context),),
            InkWell(
              child: Container(
                height: sHeight(18, context),
                width: sWidth(90, context),
                decoration: PrimaryRoundBox(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: sHeight(3, context),
                    ),
                    Text("Anna University",style: MainStyleFont(),),
                  ],
                ),
              ),
              onTap: (){
                if(isAdLoaded){
                  interstitialAd.show();
                }
                Navigator.push(context, MaterialPageRoute(builder: (context) => EngiResult()));
              },
            ),
          ],
        ),
      ),
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
