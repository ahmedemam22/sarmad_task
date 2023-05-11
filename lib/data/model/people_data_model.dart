// To parse this JSON data, do
//
//     final peopleDataModel = peopleDataModelFromJson(jsonString);

import 'dart:convert';

PeopleDataModel peopleDataModelFromJson(String str) => PeopleDataModel.fromJson(json.decode(str));

String peopleDataModelToJson(PeopleDataModel data) => json.encode(data.toJson());

class PeopleDataModel {
  int threshold;
  String fname;
  String mname;
  String nat;
  String source;
  String queryId;
  String queryUuid;
  DateTime queryTime;
  String queryType;
  String queryStatus;
  DateTime resultTime;
  bool isBatchQuery;
  List<ScreenResult> screenResult;

  PeopleDataModel({
    required this.threshold,
    required this.fname,
    required this.mname,
    required this.nat,
    required this.source,
    required this.queryId,
    required this.queryUuid,
    required this.queryTime,
    required this.queryType,
    required this.queryStatus,
    required this.resultTime,
    required this.isBatchQuery,
    required this.screenResult,
  });

  factory PeopleDataModel.fromJson(Map<String, dynamic> json) => PeopleDataModel(
    threshold: json["threshold"],
    fname: json["fname"],
    mname: json["mname"]??'',
    nat: json["nat"]??'',
    source: json["source"],
    queryId: json["query_id"],
    queryUuid: json["query_uuid"],
    queryTime: DateTime.parse(json["query_time"]),
    queryType: json["query_type"],
    queryStatus: json["query_status"],
    resultTime: DateTime.parse(json["result_time"]),
    isBatchQuery: json["is_batch_query"],
    screenResult: List<ScreenResult>.from(json["screen_result"].map((x) => ScreenResult.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "threshold": threshold,
    "fname": fname,
    "mname": mname,
    "nat": nat,
    "source": source,
    "query_id": queryId,
    "query_uuid": queryUuid,
    "query_time": queryTime.toIso8601String(),
    "query_type": queryType,
    "query_status": queryStatus,
    "result_time": resultTime.toIso8601String(),
    "is_batch_query": isBatchQuery,
    "screen_result": List<dynamic>.from(screenResult.map((x) => x.toJson())),
  };
}

class ScreenResult {
  int score;
  bool isWhiteListed;
  bool isTruePositive;
  String name;
  List<String> aliases;
  WatchList watchList;
  String entityUuid;
  String listUuid;
  List<Address> addresses;
  List<List<dynamic>> associates;
  List<Association> associations;
  List<SearchType> searchTypes;
  List<SearchType> subcategories;
  String date;
  String pob;
  String nat;
  String iden;
  String entityType;
  String gender;
  String activeStatus;
  List<NameElement> names;
  List<DescriptionElement> descriptions;
  List<Occupation> occupations;
  List<Date> dates;
  List<String> placesOfBirth;
  List<SanctionListReference> sanctionListReferences;
  List<Country> countries;
  List<Identification> identifications;
  List<String> sourceNames;
  List<String> imageUrls;
  String profileNotes;
  String additionDate;
  String lastReviewedDate;

  ScreenResult({
    required this.score,
    required this.isWhiteListed,
    required this.isTruePositive,
    required this.name,
    required this.aliases,
    required this.watchList,
    required this.entityUuid,
    required this.listUuid,
    required this.addresses,
    required this.associates,
    required this.associations,
    required this.searchTypes,
    required this.subcategories,
    required this.date,
    required this.pob,
    required this.nat,
    required this.iden,
    required this.entityType,
    required this.gender,
    required this.activeStatus,
    required this.names,
    required this.descriptions,
    required this.occupations,
    required this.dates,
    required this.placesOfBirth,
    required this.sanctionListReferences,
    required this.countries,
    required this.identifications,
    required this.sourceNames,
    required this.imageUrls,
    required this.profileNotes,
    required this.additionDate,
    required this.lastReviewedDate,
  });

  factory ScreenResult.fromJson(Map<String, dynamic> json) => ScreenResult(
    score: json["score"],
    isWhiteListed: json["is_white_listed"],
    isTruePositive: json["is_true_positive"],
    name: json["name"],
    aliases: List<String>.from(json["aliases"].map((x) => x)),
    watchList: WatchList.fromJson(json["watch_list"]),
    entityUuid: json["entity_uuid"],
    listUuid: json["list_uuid"],
    addresses: List<Address>.from(json["addresses"].map((x) => Address.fromJson(x))),
    associates: List<List<dynamic>>.from(json["associates"].map((x) => List<dynamic>.from(x.map((x) => x)))),
    associations: List<Association>.from(json["associations"].map((x) => Association.fromJson(x))),
    searchTypes: List<SearchType>.from(json["search_types"].map((x) => SearchType.fromJson(x))),
    subcategories: List<SearchType>.from(json["subcategories"].map((x) => SearchType.fromJson(x))),
    date: json["date"],
    pob: json["pob"],
    nat: json["nat"],
    iden: json["iden"],
    entityType:json["entity_type"]??'',
    gender: json["gender"]??'',
    activeStatus:json["active_status"]??'',
    names: List<NameElement>.from(json["names"].map((x) => NameElement.fromJson(x))),
    descriptions: List<DescriptionElement>.from(json["descriptions"].map((x) => DescriptionElement.fromJson(x))),
    occupations: List<Occupation>.from(json["occupations"].map((x) => Occupation.fromJson(x))),
    dates: List<Date>.from(json["dates"].map((x) => Date.fromJson(x))),
    placesOfBirth: List<String>.from(json["places_of_birth"].map((x) => x)),
    sanctionListReferences: List<SanctionListReference>.from(json["sanction_list_references"].map((x) => SanctionListReference.fromJson(x))),
    countries: List<Country>.from(json["countries"].map((x) => Country.fromJson(x))),
    identifications: List<Identification>.from(json["identifications"].map((x) => Identification.fromJson(x))),
    sourceNames: List<String>.from(json["source_names"].map((x) => x)),
    imageUrls: List<String>.from(json["image_urls"].map((x) => x)),
    profileNotes: json["profile_notes"]??'',
    additionDate:json["addition_date"]??'',
    lastReviewedDate:json["last_reviewed_date"]??'',
  );

  Map<String, dynamic> toJson() => {
    "score": score,
    "is_white_listed": isWhiteListed,
    "is_true_positive": isTruePositive,
    "name": name,
    "aliases": List<dynamic>.from(aliases.map((x) => x)),
    "watch_list": watchList.toJson(),
    "entity_uuid": entityUuid,
    "list_uuid": listUuid,
    "addresses": List<dynamic>.from(addresses.map((x) => x.toJson())),
    "associates": List<dynamic>.from(associates.map((x) => List<dynamic>.from(x.map((x) => x)))),
    "associations": List<dynamic>.from(associations.map((x) => x.toJson())),
    "search_types": List<dynamic>.from(searchTypes.map((x) => x.toJson())),
    "subcategories": List<dynamic>.from(subcategories.map((x) => x.toJson())),
    "date": date,
    "pob": pob,
    "nat": nat,
    "iden": iden,
    "entity_type": entityType,
    "gender": gender,
    "active_status": activeStatus,
    "names": List<dynamic>.from(names.map((x) => x.toJson())),
    "descriptions": List<dynamic>.from(descriptions.map((x) => x.toJson())),
    "occupations": List<dynamic>.from(occupations.map((x) => x.toJson())),
    "dates": List<dynamic>.from(dates.map((x) => x.toJson())),
    "places_of_birth": List<dynamic>.from(placesOfBirth.map((x) => x)),
    "sanction_list_references": List<dynamic>.from(sanctionListReferences.map((x) => x.toJson())),
    "countries": List<dynamic>.from(countries.map((x) => x.toJson())),
    "identifications": List<dynamic>.from(identifications.map((x) => x.toJson())),
    "source_names": List<dynamic>.from(sourceNames.map((x) => x)),
    "image_urls": List<dynamic>.from(imageUrls.map((x) => x)),
    "profile_notes": profileNotes,
    "addition_date": "additionDate",
    "last_reviewed_date": "lastReviewedDate",
  };
}



class Address {
  String street;
  String city;
  String country;
  String url;

  Address({
    required this.street,
    required this.city,
    required this.country,
    required this.url,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json["street"],
    city: json["city"],
    country: json["country"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "street": street,
    "city": city,
    "country": country,
    "url": url,
  };
}

class Association {
  String associateEntityUuid;
  String name;
  String relationship;
  bool isEx;

  Association({
    required this.associateEntityUuid,
    required this.name,
    required this.relationship,
    required this.isEx,
  });

  factory Association.fromJson(Map<String, dynamic> json) => Association(
    associateEntityUuid: json["associate_entity_uuid"],
    name: json["name"],
    relationship: json["relationship"],
    isEx: json["is_ex"],
  );

  Map<String, dynamic> toJson() => {
    "associate_entity_uuid": associateEntityUuid,
    "name": name,
    "relationship": relationship,
    "is_ex": isEx,
  };
}

class Country {
  String type;
  String name;

  Country({
    required this.type,
    required this.name,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    type: json["type"]??'',
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "name": name,
  };
}


class Date {
  String type;
  String date;
  String notes;

  Date({
    required this.type,
    required this.date,
    required this.notes,
  });

  factory Date.fromJson(Map<String, dynamic> json) => Date(
    type: json["type"]??'',
    date: json["date"],
    notes: json["notes"]??'',
  );

  Map<String, dynamic> toJson() => {
    "type":type,
    "date": date,
    "notes": notes,
  };
}




class DescriptionElement {
  String description1;
  String description2;
  String description3;

  DescriptionElement({
    required this.description1,
    required this.description2,
    required this.description3,
  });

  factory DescriptionElement.fromJson(Map<String, dynamic> json) => DescriptionElement(
    description1:json["description1"]??'',
    description2: json["description2"]??'',
    description3: json["description3"]??'',
  );

  Map<String, dynamic> toJson() => {
    "description1":description1,
    "description2": description2,
    "description3": description3,
  };
}










class Identification {
  String type;
  String value;
  String notes;

  Identification({
    required this.type,
    required this.value,
    required this.notes,
  });

  factory Identification.fromJson(Map<String, dynamic> json) => Identification(
    type: json["type"],
    value: json["value"],
    notes: json["notes"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "value": value,
    "notes": notes,
  };
}

class NameElement {
  String type;
  String subType;
  String titleHonorific;
  String firstName;
  String middleName;
  String surname;
  String suffix;

  NameElement({
    required this.type,
    required this.subType,
    required this.titleHonorific,
    required this.firstName,
    required this.middleName,
    required this.surname,
    required this.suffix,
  });

  factory NameElement.fromJson(Map<String, dynamic> json) => NameElement(
    type:json["type"]??'',
    subType: json["sub_type"]??'',
    titleHonorific: json["title_honorific"]??'',
    firstName: json["first_name"],
    middleName: json["middle_name"]??'',
    surname: json["surname"]??'',
    suffix: json["suffix"]??'',
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "sub_type": subType,
    "title_honorific": titleHonorific,
    "first_name": firstName,
    "middle_name": middleName,
    "surname": surname,
    "suffix": suffix,
  };
}



class Occupation {
  String roleType;
  String category;
  String title;
  String sinceDate;
  String toDate;

  Occupation({
    required this.roleType,
    required this.category,
    required this.title,
    required this.sinceDate,
    required this.toDate,
  });

  factory Occupation.fromJson(Map<String, dynamic> json) => Occupation(
    roleType:json["role_type"]??'',
    category: json["category"]??'',
    title: json["title"]??'',
    sinceDate: json["since_date"]??'',
    toDate: json["to_date"]??'',
  );

  Map<String, dynamic> toJson() => {
    "role_type": roleType,
    "category": category,
    "title": title,
    "since_date": sinceDate,
    "to_date": toDate,
  };
}





class SanctionListReference {
  String reference;
  String sinceDate;
  String toDate;

  SanctionListReference({
    required this.reference,
    required this.sinceDate,
    required this.toDate,
  });

  factory SanctionListReference.fromJson(Map<String, dynamic> json) => SanctionListReference(
    reference: json["reference"],
    sinceDate: json["since_date"],
    toDate: json["to_date"],
  );

  Map<String, dynamic> toJson() => {
    "reference": reference,
    "since_date": sinceDate,
    "to_date": toDate,
  };
}

class SearchType {
  int id;
  String name;
  String description;

  SearchType({
    required this.id,
    required this.name,
    required this.description,
  });

  factory SearchType.fromJson(Map<String, dynamic> json) => SearchType(
    id: json["id"],
    name: json["name"],
    description:json["description"]??'',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description":description,
  };
}



class WatchList {
  String listUuid;
  String name;

  WatchList({
    required this.listUuid,
    required this.name,
  });

  factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
    listUuid: json["list_uuid"],
    name: json["name"]??'',
  );

  Map<String, dynamic> toJson() => {
    "list_uuid": listUuid,
    "name": name,
  };
}





