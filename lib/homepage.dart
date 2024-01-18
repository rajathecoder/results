import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:results/designs/designs.dart';
import 'package:results/drawer.dart';
import 'package:results/resultpages/arts_result_page.dart';
import 'package:results/resultpages/cbsc_result_page.dart';
import 'package:results/resultpages/college_result_page.dart';
import 'package:results/resultpages/poly_result_page.dart';
import 'package:results/resultpages/school_result_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
        request: const AdRequest(),
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
        request: const AdRequest()
    );
    bannerAd.load();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: const MenuBar(),
          appBar: AppBar(
        title: const Text("Results"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(95, 49, 125, 2),
      ),
      body: SingleChildScrollView(
        child: Container(
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
              SizedBox(height: sHeight(5, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration:  BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                         BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            offset: Offset(0, 0)),],
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image:  ExactAssetImage("images/tn stateboard.png"),
                        fit: BoxFit.fill,)),
                  ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SchoolPage() ));
                },
              ),
              SizedBox(height: sHeight(2, context),),
              Text("School Results",style: MainStyleFont(),),
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration:  BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                        const BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            offset: Offset(0, 0)),],
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image:  ExactAssetImage("images/cbsc.jpg"),
                        scale: 200,
                        fit: BoxFit.fill,)),
                  ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CbscPage() ));
                },
              ),
              SizedBox(height: sHeight(2, context),),
              Text("CBSC Results",style: MainStyleFont(),),
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                        const BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            offset: Offset(0, 0)),],
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image:  ExactAssetImage("images/annauniv.jpg"),
                        scale: 200,
                        fit: BoxFit.fill,)),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CollegePage() ));
                },
              ),
              SizedBox(height: sHeight(2, context),),
              Text("Engineering Results",style: MainStyleFont(),),
              SizedBox(height: sHeight(5, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration:  BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                        const BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            offset: Offset(0, 0)),],
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image:  ExactAssetImage("images/artscollege.jpg"),
                        fit: BoxFit.fill,)),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ArtsPage() ));
                },
              ),
              SizedBox(height: sHeight(2, context),),
              Text("Arts Colleges",style: MainStyleFont(),),
              SizedBox(height: sHeight(3, context),),
              InkWell(
                child: Container(
                  height: sHeight(10, context),
                  width: sWidth(90, context),
                  decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                        const BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            offset: Offset(0, 0)),],
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image:  ExactAssetImage("images/poly.jpg"),
                        scale: 200,
                        fit: BoxFit.fill,)),
                ),
                onTap: (){
                  if(isAdLoaded){
                    interstitialAd.show();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PolyPage() ));
                },
              ),
              SizedBox(height: sHeight(2, context),),
              Column(
                children: [
                  Text("Polytechnic Colleges",style: MainStyleFont(),),
                ],
              ),
            ],
          ),
        ),
      ),
          bottomNavigationBar: isAdLoaded ?
          SizedBox(
            height: bannerAd.size.height.toDouble(),
            width:  bannerAd.size.width.toDouble(),
            child: AdWidget(ad: bannerAd,),
          ):
          const SizedBox() ,
    ));
  }
}



