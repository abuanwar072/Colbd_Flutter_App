import 'package:colbd_app/constant.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      bottomNavigationBar: defaultBottonNavBar(),
      body: Padding(
          padding: kPading,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "About Us".toUpperCase(),
                  style: Theme.of(context).textTheme.headline,
                ),
                kHightSmall,
                Text(
                  "COL deployed the largest fiber network all over the Metropolitan area, where massive physical connectivity with ring and mesh topology structured network serving uninterrupted Internet and data connection.We have maximum POP stations only in Chittagong Metropolitan Area that enable to connect user easily with low cost investment, Where Core fiber Network is fully Redundant.",
                ),
                kHight,
                ExpansionTile(
                  title: Text("Company Profile"),
                  children: <Widget>[
                    Text(
                      "Chittagong Online Limited (COL) - a registered trade name - is a Licensed ISP & IPTSP by Bangladesh Telecommunication Regulatory Commission providing Internet, Internet Telephony and many other IT related services and solutions. COL was formed in February 2002 and has since shown the fastest growth and attained a high level of customer confidence to become the preferred and the leading ISP in Chittagong. This milestone has been achieved through a focused and dedicated approach to provide an efficient and unmatched level of customer support. After that COL has introduced various services one after one which made COL is the most excellent IT enable service in Chittagong. COL is grateful and proud to serve its client by the first E1 Digital ISP for dial up here in Bangladesh. From the beginning COL introduced Internet Services by ensuring the state-of-the-art Servers, High Speed V-SAT Systems and 3rd Generation Networking Equipments since then we are expanding our network as our motto to provide the real zest of Internet today. COL has deployed a high quality Network infrastructure backbone that consists of a City Wide optical fiber and Wide Area Network (WAN) that can support a wide range of convergent services like fast broadband access, voice, video and data as well as various connectivity solutions such as Virtual Private Networks (VPN). This Network has constantly been improved and extended over the years to comply with our objective of extending our outreach and avail our services to clients situated at different strategic points.",
                    ),
                    kHight
                  ],
                ),
                ExpansionTile(
                  title: Text("Our Mission Vision and Values"),
                  children: <Widget>[
                    Text(
                      "Vision",
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    Text(
                        "Helping people communicate easily with technological excellence."),
                    Text(
                      "Mission",
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    Text(
                      "Committed to provide quality ICT services by implementing next generation technologies with the strongest network coverage & innovative team for ultimate customer satisfaction.",
                    ),
                    kHight,
                  ],
                ),
                ExpansionTile(
                  title: Text("Our Customers"),
                  children: <Widget>[
                    Text(
                      "COL is a customer focused Company. Our team, our services and all our activities focus on giving priority to our customers and making them feel special. Our clients’ confidence in us to provide them with the very best of service has always kept us abreast of all the competition and subsequently awarded us with opportunity to expand our client base all the time.",
                    ),
                    kHight,
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
