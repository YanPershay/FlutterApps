

  class Music implements Comparable<Music>{

    String name;
    Music(this.name);
    void display(){
      print("Name: $name");
    }

    String getName(){
      return name;
    }

  @override
  int compareTo(Music m) {
    return name.compareTo(m.getName());
  }

  }

  class Rap{
    String title;
    void play(){
      print("Track: $title");
    }
  }

  class Raper extends Music with Rap {
    Raper(name, tit) : super(name) {
      title = tit;
    }
  }

  class RapTrack {
    String name;
    String raper;

    RapTrack(this.name, this.raper);

    RapTrack.fromJson(Map<String, dynamic> json) {
      name = json['name'];
      raper = json['raper'];
    }

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['name'] = this.name;
      data['raper'] = this.raper;
      return data;
    }
  }