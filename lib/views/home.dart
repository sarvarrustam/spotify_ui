import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_ui/views/album_view.dart';
import 'package:spotify_ui/widgets/album_card.dart';
import 'package:spotify_ui/widgets/song_cards.dart';

class HomeView extends StatefulWidget {
  static const id = "/home wiew";
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(color: Color(0xFf1C7A74)),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Played",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(width: 20),
                          Row(
                            children: const [
                              Icon(Icons.history),
                              SizedBox(width: 16),
                              Icon(Icons.settings),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: const [
                          AlbumCard(
                            label: "Club Hits",
                            image: AssetImage("assets/images/album3.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top 50-Global",
                            image: AssetImage("assets/images/top50.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Power Gaming",
                            image: AssetImage("assets/images/album6.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Motivation Mix",
                            image: AssetImage("assets/images/album7.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Solo Mix",
                            image: AssetImage("assets/images/album10.jpg"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Good evening",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: const [
                              RowAlbumCard(
                                lable: "Sad Songs",
                                image: AssetImage("assets/images/album1.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                lable: "Pop Mix",
                                image: AssetImage("assets/images/album2.jpg"),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: const [
                              RowAlbumCard(
                                lable: "Movie Mix",
                                image: AssetImage("assets/images/album4.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                lable: "All Out",
                                image: AssetImage("assets/images/album5.jpg"),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: const [
                              RowAlbumCard(
                                lable: "Chill Hits",
                                image: AssetImage("assets/images/album8.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                lable: "Mega Hit Mix",
                                image: AssetImage("assets/images/album9.jpg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Based on your recent listening",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: const [
                              SongCard(
                                image: AssetImage("assets/images/album13.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album12.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album11.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album10.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album9.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album1.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Recommended radio",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: const [
                              SongCard(
                                image: AssetImage("assets/images/album2.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album4.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album5.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album6.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album7.jpg"),
                                lable: "Bad Buny, Justin Bieber, Ed Shrean",
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album8.jpg"),
                                lable:
                                    "Bad Buny, Justin Bieber, Taylor Swift, Ed Shrean",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String lable;
  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AlbumView(
                      image: image,
                      lable: lable,
                    )),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white10, borderRadius: BorderRadius.circular(4)),
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              Image(
                image: image,
                height: 48,
                width: 48,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              Text(lable),
            ],
          ),
        ),
      ),
    );
  }
}
