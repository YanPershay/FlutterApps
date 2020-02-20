

class Music{

    String trackName;
    int trackLength;
    String authorName;
    static int authorAge;

    Music(String name, int length){
      trackName = name;
      trackLength = length;
    }

    Music.authorInfo(String author, int age){
      authorName = author;
      authorAge = age;
    }

    bool get isLongTrack => trackLength > 5;

    int get birthYear => (DateTime.now().year - authorAge);
        set birthYear(int val) => authorAge = (DateTime.now().year - val);

        static String returnName(authorName) => authorName;

        var musicGenres = ["Rap", "Juzz", "Rock"];
        showMusic(){
          print(list is List);
        }

        List<int> list = [10, 20, 30];


}











