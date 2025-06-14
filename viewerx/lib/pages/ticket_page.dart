import 'package:flutter/material.dart';
import 'package:viewerx/components/custom_body.dart';
import 'package:viewerx/components/custom_wave_clipper.dart';
import 'package:viewerx/components/input_button.dart';
import 'package:viewerx/core/ui_data.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return CustomBody(
        bckColor: UIData.colors.bckDark,
        child: ClipPath(
          clipper: CustomWaveClipper(),
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: UIData.colors.bckOrange,
              borderRadius: BorderRadius.circular(UIData.radius.rounded16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 119,
                  height: 56,
                  decoration: BoxDecoration(
                      color: UIData.colors.orange,
                      borderRadius:
                          BorderRadius.circular(UIData.radius.rounded16)),
                ),
                SizedBox(height: UIData.spaces.small10),
                Text(
                  "Bae",
                  style: TextStyle(
                    color: UIData.colors.darkMarronTxt,
                    fontSize: UIData.text.size20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Transféré le 02 Février 2025",
                  style: TextStyle(
                    color: UIData.colors.lightMarronTxt,
                  ),
                ),
                SizedBox(height: UIData.spaces.medium15),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(
                        UIData.radius.rounded16,
                      )),
                  child: Text.rich(TextSpan(
                    text: "Etat des transactions: ",
                    children: [
                      TextSpan(
                        text: "Payé",
                        style: TextStyle(
                          color: UIData.colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
                ),
                SizedBox(height: UIData.spaces.big20),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(UIData.radius.rounded16),
                      border: Border.all(
                        color: UIData.colors.darkMarronTxt.withOpacity(0.1),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Source",
                        style: TextStyle(color: UIData.colors.lightMarronTxt),
                      ),
                      SizedBox(height: UIData.spaces.small10),
                      Row(
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: UIData.colors.darkGrey,
                              borderRadius: BorderRadius.circular(48),
                            ),
                          ),
                          SizedBox(width: UIData.spaces.small10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mastercard",
                                style: TextStyle(
                                  color: UIData.colors.darkMarronTxt,
                                  fontSize: UIData.text.size20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Débit *8490",
                                style: TextStyle(
                                  color: UIData.colors.lightMarronTxt,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Divider(
                            color:
                                UIData.colors.darkMarronTxt.withOpacity(0.1)),
                      ),
                      Text(
                        "Résumé de paiement",
                        style: TextStyle(color: UIData.colors.lightMarronTxt),
                      ),
                      SizedBox(height: UIData.spaces.small10),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: UIData.colors.darkMarronTxt.withOpacity(0.1),
                            borderRadius:
                                BorderRadius.circular(UIData.radius.rounded16)),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Montant",
                                    style: TextStyle(
                                        color: UIData.colors.lightMarronTxt),
                                  ),
                                  Text(
                                    "10.000 FCFA",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: UIData.colors.darkMarronTxt,
                                    ),
                                  ),
                                ]),
                            SizedBox(height: UIData.spaces.medium15),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Frais de transfert",
                                    style: TextStyle(
                                        color: UIData.colors.lightMarronTxt),
                                  ),
                                  Text(
                                    "100 FCFA",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: UIData.colors.darkMarronTxt,
                                    ),
                                  ),
                                ]),
                            SizedBox(height: UIData.spaces.medium15),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                      color: UIData.colors.darkMarronTxt,
                                    ),
                                  ),
                                  Text(
                                    "10.100 FCFA",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: UIData.colors.orange,
                                      fontSize: UIData.text.size18,
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: UIData.spaces.medium15),
                InputButton(
                  onPressed: () {
                    //
                  },
                  text: "Quitter",
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: UIData.text.size20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: UIData.spaces.medium15),
                InputButton(
                  onPressed: () {
                    //
                  },
                  text: "Transférer de nouveau",
                  outlined: true,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: UIData.text.size20,
                    color: UIData.colors.orange,
                  ),
                ),
                SizedBox(height: UIData.spaces.medium15),
              ],
            ),
          ),
        ));
  }
}
