class GameImage {
  String url;
  String title;

  GameImage(this.url, this.title);
}

class Game {
  String title;
  GameImage coverImage;
  List<GameImage>? images;
  String description;
  String studio;

  Game(this.title, this.coverImage, this.description, this.studio);
}

List<Game> games = [
  Game(
    "Horizon Zero Dawn",
    GameImage(
        "https://www.wallpaperflare.com/static/734/272/885/horizon-zero-dawn-playstation-4-logo-aloy-horizon-zero-dawn-wallpaper.jpg",
        ""),
    "",
    "Guerrilla Games",
  ),
  Game(
    "Metro Exodus",
    GameImage(
        "https://cdn.cloudflare.steamstatic.com/steam/apps/412020/header.jpg?t=1669390585",
        ""),
    "",
    "4A Games",
  ),
  Game(
    "Tom Clancy's The Division 2",
    GameImage(
        "https://upload.wikimedia.org/wikipedia/en/a/af/The_Division_2_art.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Resident Evil 2",
    GameImage(
        "https://media.playstation.com/is/image/SCEA/resident-evil-2-box-art-01-ps4-us-12dec18?\$native_nt\$",
        ""),
    "",
    "Capcom",
  ),
];

List<Game> games2 = [
  Game(
    "Grand Theft Auto V",
    GameImage(
        "https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png",
        ""),
    "",
    "Rockstar Games",
  ),
  Game(
    "The Last of Us Part II",
    GameImage(
        "https://upload.wikimedia.org/wikipedia/en/4/4f/TLOU_P2_Box_Art_2.png",
        ""),
    "",
    "Naughty Dog",
  ),
  Game(
    "Sekiro: Shadows Die Twice",
    GameImage(
        "https://cdn.cloudflare.steamstatic.com/steam/apps/814380/header.jpg?t=1678991267",
        ""),
    "",
    "From Software",
  ),
  Game(
    "Just Cause 4",
    GameImage(
        "https://upload.wikimedia.org/wikipedia/en/0/0f/Just_Cause_4_cover.jpg",
        ""),
    "",
    "Avalanche Studios",
  ),
];

List<Game> featuredGames = [
  Game(
    "Total War: Three Kingdoms",
    GameImage(
        "https://content.totalwar.com/total-war/com.totalwar.www2019/uploads/2019/03/08145252/2.jpg",
        ""),
    "",
    "Feral Interactive",
  ),
  Game(
    "Call of Duty: Modern Warfare",
    GameImage(
        "https://images.hdqwalls.com/download/call-of-duty-modern-warfare-2019-4k-cb-1920x1080.jpg",
        ""),
    "",
    "Infinity Ward",
  ),
  Game(
    "Left For Dead",
    GameImage(
        "https://www.dexerto.com/cdn-cgi/image/width=828,quality=75,format=auto/https://editors.dexerto.com/wp-content/uploads/2020/09/left-4-dead-2-the-last-stand-release-date-mutations-achievements.jpg",
        ""),
    "",
    "Valve",
  ),
  Game(
    "Mortal Kombat 11",
    GameImage(
        "https://static.trueachievements.com/customimages/093902.jpg", ""),
    "",
    "NetherRealm Studios",
  )
];
