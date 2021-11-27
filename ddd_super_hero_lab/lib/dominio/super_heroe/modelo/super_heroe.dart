// To parse this JSON data, do
//
//     final superHeroe = superHeroeFromJson(jsonString);

class SuperHeroe {
  SuperHeroe({
    this.id,
    this.name,
    this.slug,
    this.powerstats,
    this.appearance,
    this.biography,
    this.work,
    this.connections,
    this.images,
  });

  final int? id;
  final String? name;
  final String? slug;
  final Powerstats? powerstats;
  final Appearance? appearance;
  final Biography? biography;
  final Work? work;
  final Connections? connections;
  final Images? images;

  factory SuperHeroe.fromJson(Map<String, dynamic> json) => SuperHeroe(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        powerstats: Powerstats.fromJson(json["powerstats"]),
        appearance: Appearance.fromJson(json["appearance"]),
        biography: Biography.fromJson(json["biography"]),
        work: Work.fromJson(json["work"]),
        connections: Connections.fromJson(json["connections"]),
        images: Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "powerstats": powerstats!.toJson(),
        "appearance": appearance!.toJson(),
        "biography": biography!.toJson(),
        "work": work!.toJson(),
        "connections": connections!.toJson(),
        "images": images!.toJson(),
      };
}

class Appearance {
  Appearance({
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  });

  final Gender? gender;
  final String? race;
  final List<String>? height;
  final List<String>? weight;
  final String? eyeColor;
  final String? hairColor;

  factory Appearance.fromJson(Map<String, dynamic> json) => Appearance(
        gender: genderValues.map![json["gender"]],
        race: json["race"] == null ? null : json["race"],
        height: List<String>.from(json["height"].map((x) => x)),
        weight: List<String>.from(json["weight"].map((x) => x)),
        eyeColor: json["eyeColor"],
        hairColor: json["hairColor"],
      );

  Map<String, dynamic> toJson() => {
        "gender": genderValues.reverse[gender],
        "race": race == null ? null : race,
        "height": List<dynamic>.from(height!.map((x) => x)),
        "weight": List<dynamic>.from(weight!.map((x) => x)),
        "eyeColor": eyeColor,
        "hairColor": hairColor,
      };
}

enum Gender { MALE, FEMALE, EMPTY }

final genderValues = EnumValues(
    {"-": Gender.EMPTY, "Female": Gender.FEMALE, "Male": Gender.MALE});

class Biography {
  Biography({
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  final String? fullName;
  final String? alterEgos;
  final List<String>? aliases;
  final String? placeOfBirth;
  final String? firstAppearance;
  final String? publisher;
  final Alignment? alignment;

  factory Biography.fromJson(Map<String, dynamic> json) => Biography(
        fullName: json["fullName"],
        alterEgos: json["alterEgos"],
        aliases: List<String>.from(json["aliases"].map((x) => x)),
        placeOfBirth: json["placeOfBirth"],
        firstAppearance: json["firstAppearance"],
        publisher: json["publisher"] == null ? null : json["publisher"],
        alignment: alignmentValues.map![json["alignment"]],
      );

  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "alterEgos": alterEgos,
        "aliases": List<dynamic>.from(aliases ?? [].map((x) => x)),
        "placeOfBirth": placeOfBirth,
        "firstAppearance": firstAppearance,
        "publisher": publisher == null ? null : publisher,
        "alignment": alignmentValues.reverse[alignment],
      };
}

enum Alignment { GOOD, BAD, EMPTY, NEUTRAL }

final alignmentValues = EnumValues({
  "bad": Alignment.BAD,
  "-": Alignment.EMPTY,
  "good": Alignment.GOOD,
  "neutral": Alignment.NEUTRAL
});

class Connections {
  Connections({
    this.groupAffiliation,
    this.relatives,
  });

  final String? groupAffiliation;
  final String? relatives;

  factory Connections.fromJson(Map<String, dynamic> json) => Connections(
        groupAffiliation: json["groupAffiliation"],
        relatives: json["relatives"],
      );

  Map<String, dynamic> toJson() => {
        "groupAffiliation": groupAffiliation,
        "relatives": relatives,
      };
}

class Images {
  Images({
    this.xs,
    this.sm,
    this.md,
    this.lg,
  });

  final String? xs;
  final String? sm;
  final String? md;
  final String? lg;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        xs: json["xs"],
        sm: json["sm"],
        md: json["md"],
        lg: json["lg"],
      );

  Map<String, dynamic> toJson() => {
        "xs": xs,
        "sm": sm,
        "md": md,
        "lg": lg,
      };
}

class Powerstats {
  Powerstats({
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  });

  final int? intelligence;
  final int? strength;
  final int? speed;
  final int? durability;
  final int? power;
  final int? combat;

  factory Powerstats.fromJson(Map<String, dynamic> json) => Powerstats(
        intelligence: json["intelligence"],
        strength: json["strength"],
        speed: json["speed"],
        durability: json["durability"],
        power: json["power"],
        combat: json["combat"],
      );

  Map<String, dynamic> toJson() => {
        "intelligence": intelligence,
        "strength": strength,
        "speed": speed,
        "durability": durability,
        "power": power,
        "combat": combat,
      };
}

class Work {
  Work({
    this.occupation,
    this.base,
  });

  final String? occupation;
  final String? base;

  factory Work.fromJson(Map<String, dynamic> json) => Work(
        occupation: json["occupation"],
        base: json["base"],
      );

  Map<String, dynamic> toJson() => {
        "occupation": occupation,
        "base": base,
      };
}

class EnumValues<T> {
  Map<String?, T?>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v!, k!));
    }
    return reverseMap!;
  }
}
