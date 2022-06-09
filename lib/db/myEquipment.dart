class myEquipment {
  late String previous;
  late String next;
  late List<Results> results;

  myEquipment.fromJson(Map<String, dynamic> json) {
    previous = json['previous'];
    next = json['next'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

}

class Results {
  late String name;
  late String code;
  late String type;
  late String weight;
  late String size;
  late String color;
  late String buyingTime;
  late String usingStatus;
  late String previusCountDate;
  late String lastCountDate;
  late String kind;
  late String amount;
  late String tradeMark;
  late String id;


  Results.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    code = json['Code'];
    type = json['Type'];
    weight = json['Weight'];
    size = json['Size'];
    color = json['Color'];
    buyingTime = json['BuyingTime'];
    usingStatus = json['UsingStatus'];
    previusCountDate = json['PreviusCountDate'];
    lastCountDate = json['LastCountDate'];
    kind = json['Kind'];
    amount = json['Amount'];
    tradeMark = json['TradeMark'];
    id = json['Id'];
  }

}