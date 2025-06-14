import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viewerx/components/icon_card.dart';
import 'package:viewerx/components/custom_body.dart';
import 'package:viewerx/core/ui_data.dart';
import 'package:viewerx/pages/ticket_page.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return CustomBody(
        child: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Historique",
              style: TextStyle(
                color: UIData.colors.darkMarronTxt,
                fontWeight: FontWeight.bold,
                fontSize: UIData.text.title,
              ),
            ),
            IconButton(
              onPressed: () {
                //
              },
              icon: getIconCard(
                minHeight: 38,
                minWidth: 38,
                icon: SizedBox(
                  height: 18,
                  width: 18,
                  child: Image.asset("assets/images/settings_icon.png"),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: UIData.spaces.big20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildCard(
                color: UIData.colors.green,
                bckColor: UIData.colors.bckGreen,
                amount: "12,750",
                nature: "Recharge",
                icon: Icon(
                  CupertinoIcons.arrow_up,
                  color: UIData.colors.green,
                ),
              ),
              SizedBox(width: UIData.spaces.medium15),
              _buildCard(
                color: UIData.colors.red,
                bckColor: UIData.colors.bckRed,
                amount: "12,750",
                nature: "Retrait",
                icon: Icon(
                  CupertinoIcons.arrow_up,
                  color: UIData.colors.green,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: UIData.spaces.big20),
        _buildSubTitle("Historique des solides en FCFA"),
        SizedBox(height: UIData.spaces.medium15),
        SizedBox(height: UIData.spaces.big20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildSubTitle("Historique de transactions"),
            TextButton(
              onPressed: () {
                //
              },
              child: Text(
                "Voir tout",
                style: TextStyle(
                  color: UIData.colors.marron2,
                  fontWeight: FontWeight.w500,
                  fontSize: UIData.text.subTitle,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
        SizedBox(width: UIData.spaces.big20),
        _buildTransaction(
          title: "Eneo",
          from: "Bae",
          initAmount: "50",
          tAmount: "5000",
          time: "time",
          status: "Succès",
          isDeposit: false,
          icon: Icon(
            CupertinoIcons.arrow_up,
            color: UIData.colors.marron2,
          ),
        ),
        SizedBox(height: UIData.spaces.medium15),
        _buildTransaction(
          title: "Bae",
          from: "Afriland Visa",
          initAmount: "0",
          tAmount: "5000",
          time: "time",
          status: "Succès",
          icon: Icon(
            CupertinoIcons.arrow_up_arrow_down,
            color: UIData.colors.marron2,
          ),
        ),
        SizedBox(width: UIData.spaces.medium15),
      ],
    ));
  }

  Widget _buildSubTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: UIData.colors.darkMarronTxt,
        fontWeight: FontWeight.bold,
        fontSize: UIData.text.subTitle,
      ),
    );
  }

  Widget _buildCard({
    required Color color,
    required Color bckColor,
    required String amount,
    required String nature,
    required Widget icon,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: UIData.sizes.hPadding10,
        vertical: UIData.sizes.vPadding16,
      ),
      decoration: BoxDecoration(
        color: UIData.colors.bckOrange,
        borderRadius: BorderRadius.circular(UIData.radius.rounded16),
      ),
      child: Row(
        children: [
          getIconCard(
            bckColor: bckColor,
            icon: icon,
          ),
          const SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: amount,
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: UIData.text.size18,
                      ),
                      children: const [
                    TextSpan(
                        text: "Fcfa",
                        style: TextStyle(
                            fontSize: 10,
                            fontFeatures: [FontFeature.superscripts()])),
                  ])),
              const SizedBox(height: 5),
              Text(
                nature,
                style: TextStyle(color: UIData.colors.lightMarronTxt),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTransaction({
    required String title,
    required String from,
    required String initAmount,
    required String tAmount,
    required String time,
    required String status,
    required Icon icon,
    bool isDeposit = true,
    bool succes = true,
  }) {
    {
      return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const TicketPage(),
          ));
        },
        child: Row(
          children: [
            getIconCard(
              icon: icon,
              bckColor: UIData.colors.bckOrange,
            ),
            SizedBox(width: UIData.spaces.small10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: UIData.colors.darkMarronTxt,
                          fontSize: UIData.text.size20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${isDeposit ? '+' : '-'}$tAmount / ${isDeposit ? '+' : '-'}$initAmount Fcfa",
                        style: TextStyle(
                          color: isDeposit
                              ? UIData.colors.green
                              : UIData.colors.red,
                          fontSize: UIData.text.size20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "De $from",
                        style: TextStyle(
                          color: UIData.colors.lightMarronTxt,
                        ),
                      ),
                      Text.rich(TextSpan(
                          text: "$time, ",
                          style: TextStyle(
                            color: UIData.colors.lightMarronTxt,
                          ),
                          children: [
                            TextSpan(
                              text: status,
                              style: TextStyle(
                                color: succes
                                    ? UIData.colors.green
                                    : UIData.colors.red,
                              ),
                            )
                          ]))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
