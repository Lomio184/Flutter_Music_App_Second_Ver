import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:mytimeproject/model/common.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key ? key
  }): super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State < ProfileScreen > {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: sideInsets.copyWith(top: 20),
        child: Column(
          children: [
            buildProfileCard(size),
            buildSectionTap(size),
            Container(
              height: size.height * .14,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Colors.black54,
                            BlendMode.darken
                          ),
                          image: AssetImage(
                            'assets/images/side1.png'
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Padding(
                        padding: sideInsets.copyWith(top: 20, left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildCardTap(Icon(CommunityMaterialIcons.music_note_outline, size: 55, color: Colors.white), "Find"),
                            VerticalDivider(thickness: 1, color: Colors.grey[500], endIndent: 20),
                            buildCardTap(Icon(CommunityMaterialIcons.find_replace, size: 55, color: Colors.white), "F5"),
                          ],
                        ),
                      )
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.lightGreenAccent
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                            child: buildCardTap(Icon(CommunityMaterialIcons.radio,
                              color: Colors.white, size: 55), "Radio+")
                        )
                    )
                  )
                ]
              ),
            ),
            Container(
              margin: upInsets.copyWith(top: 40),
              child: Center(
                child: Text(
                  "MyTime copyright",
                  style: defaultTextStyle
                )
              )
            )
          ],
        )
      )
    );
  }

  Container buildSectionTap(Size size) {
    return Container(
      margin: upInsets,
      height: size.height * .125,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: sideInsets.copyWith(top: 20, left: 25, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildCardTap(Icon(CommunityMaterialIcons.wallet_outline,
              color: Colors.grey[600], size: 55), "Point"),
            VerticalDivider(thickness: 1, color: Colors.grey[500], endIndent: 20, ),
            buildCardTap(Icon(CommunityMaterialIcons.plus_box_outline,
              color: Colors.grey[600], size: 55), "Invite"),
            VerticalDivider(thickness: 1, color: Colors.grey[500], endIndent: 20, ),
            buildCardTap(Icon(CommunityMaterialIcons.instagram,
              color: Colors.grey[600], size: 55), "Insta"),
          ],
        ),
      )
    );
  }

  Container buildProfileCard(Size size) {
    return Container(
      padding: sideInsets,
      height: size.height * .3,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blueGrey
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 15),
                  width: size.width * .15,
                  height: size.height * .155,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                    border: Border.all(width: 2, color: Colors.yellow)
                  ),
                  child: Center(
                    child: Icon(
                      CommunityMaterialIcons.face,
                      color: Colors.grey[400],
                      size: 40
                    )
                  )
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Lomio\n',
                      style: profileTextStyle.copyWith(fontSize: 25)
                    ),
                    TextSpan(
                      text: 'ExampleEmail@Example.com\n',
                      style: profileTextStyle.copyWith(fontSize: 13)
                    )
                  ]
                )
              )
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildCardTap(Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ), 'Friends'),
              buildCardTap(Icon(
                CommunityMaterialIcons.gift,
                size: 40,
                color: Colors.white,
              ), 'GiftBox'),
              buildCardTap(Icon(
                Icons.dock,
                size: 40,
                color: Colors.white,
              ), 'Member'),
              buildCardTap(Icon(
                CommunityMaterialIcons.cart,
                size: 40,
                color: Colors.white,
              ), 'Cart'),
            ],
          )
        ],
      )
    );
  }

  Column buildCardTap(Icon icon, String title) {
    return Column(
      children: [
        icon,
        Text(
          title,
          style: profileTextStyle.copyWith(color: Colors.grey[400])
        )
      ],
    );
  }
}