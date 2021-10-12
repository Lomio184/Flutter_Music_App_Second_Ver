import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:mytimeproject/model/common.dart';
import 'package:mytimeproject/model/model.dart';
import 'package:mytimeproject/screens/play/play_screens.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({
    Key ? key
  }): super(key: key);

  @override
  _SaveScreenState createState() => _SaveScreenState();
}

class _SaveScreenState extends State < SaveScreen > {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: sideInsets,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MyTime',
                  style: headTextStyle
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white
                  )
                )
              ],
            ),
            Padding(
              padding: upInsets,
              child: Container(
                height: size.height * .415,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Activity',
                          style: headTextStyle.copyWith(fontSize: 20)
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20
                          )
                        )
                      ],
                    ),
                    Padding(
                      padding: upInsets,
                      child: Container(
                        height: size.height * .35,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, int index) {
                            return buildSaveCard(context, size, musicAlbum, index);
                          },
                        )
                      )
                    )
                  ],
                )
              )
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),
            buildSaveTap(Icon(
              CommunityMaterialIcons.thumb_up_outline,
              color: Colors.white,
              size: 25
            ),'Like', '5'),
            buildSaveTap(Icon(
              CommunityMaterialIcons.playlist_music_outline,
              color: Colors.white,
              size: 25
            ),'My Playlist', '4'),
            buildSaveTap(Icon(
              CommunityMaterialIcons.play_network,
              color: Colors.white,
              size: 25
            ),'Most Played', '3'),
            buildSaveTap(Icon(
              CommunityMaterialIcons.play,
              color: Colors.white,
              size: 25
            ),'Song', '3'),
            buildSaveTap(Icon(
              CommunityMaterialIcons.face_agent,
              color: Colors.white,
              size: 25
            ),'My Artist', '4'),
            buildSaveTap(Icon(
              CommunityMaterialIcons.download,
              color: Colors.white,
              size: 25
            ),'Save Content', '4'),
            Container(
                  margin: upInsets.copyWith(top:40),
                  child : Center(
                    child : Text(
                      "MyTime copyright",
                      style : defaultTextStyle
                    )
                  )
                )
          ],
        ),
      )
    );
  }

  InkWell buildSaveTap(Icon icon , String title, String number) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: upInsets,
        child: Row(
          children: [
            icon,
            SizedBox(width: 5),
            Text(
              title,
              style: defaultTextStyle.copyWith(fontSize: 25, fontWeight: FontWeight.w300)
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  '+${number}',
                  style: defaultTextStyle.copyWith(fontSize: 25)
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white
                    )
                )
              ],
            )
          ],
        )
      ),
    );
  }
}

Widget buildSaveCard(BuildContext context, Size size, List < CardInfo > musicAlbum, int index) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: sideInsets,
            height: size.height * .25,
            width: size.width * .5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  musicAlbum[index].imgSrc
                ),
                fit: BoxFit.cover,
              )
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => PlayScreen(currentMusic: musicAlbum[index])
              ));
            },
            child: Icon(
              CommunityMaterialIcons.play,
              size: 70,
              color: Colors.white.withOpacity(.8),
            )
          )
        ],
      ),
      Padding(
        padding: sideInsets.copyWith(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              musicAlbum[index].title,
              style: defaultTextStyle.copyWith(fontWeight: FontWeight.bold)
            ),
            Text(
              'No CopyRight',
              style: defaultTextStyle.copyWith(fontWeight: FontWeight.w100)
            )
          ],
        )
      )
    ],
  );
}