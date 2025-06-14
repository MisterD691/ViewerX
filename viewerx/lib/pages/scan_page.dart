import 'package:flutter/material.dart';
import 'package:viewerx/components/custom_body.dart';
import 'package:viewerx/core/ui_data.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return CustomBody(
        bckColor: UIData.colors.bckYellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCircleButton(
                icon: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: UIData.colors.darkMarronTxt,
                    )),
                onTap: () {
                  Navigator.of(context).pop();
                }),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  "Scannez votre carte bancaire",
                  style: TextStyle(
                    color: UIData.colors.darkMarronTxt,
                    fontSize: UIData.text.title,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Scannez le recto de votre carte bancaire",
                  style: TextStyle(
                    color: UIData.colors.lightMarronTxt,
                  ),
                ),
                SizedBox(height: UIData.spaces.big20),
                Column(
                  children: [
                    Container(
                      height: 225,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                          horizontal: UIData.spaces.medium15),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(
                          UIData.radius.rounded16,
                        ),
                      ),
                    ),
                    SizedBox(height: UIData.spaces.big20),
                    Text(
                      "Recto de la carte",
                      style: TextStyle(
                        color: UIData.colors.darkMarronTxt,
                        fontSize: UIData.text.size20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        "Positionner de manière précise les 04 coins de l'avant dans le cadre",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: UIData.colors.lightMarronTxt,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircleButton(
                    icon: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.flash_off_sharp,
                          color: Colors.black,
                        )),
                    onTap: () {
                      //
                    }),
                _buildCircleButton(
                    icon: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: UIData.colors.yellowBtn,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                    onTap: () {
                      //
                    }),
                _buildCircleButton(
                    icon: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        )),
                    onTap: () {
                      //
                    }),
              ],
            )
          ],
        ));
  }

  _buildCircleButton({required Widget icon, required Function() onTap}) {
    return IconButton(
      onPressed: () {
        //
      },
      icon: icon,
    );
  }
}
