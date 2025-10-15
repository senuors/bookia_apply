/// data : {"products":[{"id":22,"name":"The Clean Coder","description":"<p>The Clean Coder</p>","price":"209.00","discount":35,"price_after_discount":135.85,"stock":28,"best_seller":72,"image":"https://codingarabic.online/storage/product/pdfciAUTe7iDSrHjebvnUIlV2D7pbzBBmJhqXAHF.jpg","category":"Software"},{"id":47,"name":"Head First Data Analysis.2","description":"<p>Today, interpreting data is a critical decision-making factor for businesses and organizations. If your job requires you to manage and analyze all kinds of data, turn to&nbsp;Head First Data Analysis, where you’ll quickly learn how to collect and organize data, sort the distractions from the truth, find meaningful patterns, draw conclusions, predict the future, and present your findings to others.</p>","price":"309.00","discount":45,"price_after_discount":169.95,"stock":52,"best_seller":48,"image":"https://codingarabic.online/storage/product/dMGLIAoMgUr8T6QzQszM1QgTYBCHBavPSmT60N8w.jpg","category":"AI & Data Science"},{"id":15,"name":"The Object-Oriented Thought Process","description":"<p>The Object-Oriented Thought Process</p>","price":"209.00","discount":35,"price_after_discount":135.85,"stock":70,"best_seller":30,"image":"https://codingarabic.online/storage/product/l0kkykSGLKfrE90Vkah6LD8briUKwp0V5nvPvEI1.jpg","category":"Software"},{"id":21,"name":"Introduction to Algorithms","description":"<p>Introduction to Algorithms</p>","price":"669.00","discount":50,"price_after_discount":334.5,"stock":73,"best_seller":27,"image":"https://codingarabic.online/storage/product/PMN7ycgJIo64ZX4DAXJJMBANA8RVCMJnBo3xw5C9.jpg","category":"Software"},{"id":16,"name":"Refactoring","description":"<p>For more than twenty years, experienced programmers worldwide have relied on Martin Fowler’s Refactoring to improve the design of existing code and to enhance software maintainability, as well as to make existing code easier to understand. This eagerly awaited new edition has been fully updated to reflect crucial changes in the programming landscape. Refactoring, Second Edition, features an updated catalog of refactoring’s and includes JavaScript code examples, as well as new functional examples that demonstrate refactoring without classes.</p>","price":"289.00","discount":40,"price_after_discount":173.4,"stock":77,"best_seller":23,"image":"https://codingarabic.online/storage/product/KVDGvRjmcn7Epi4Xcx6d5mu6Ayw6x6ad3H20TSga.jpg","category":"Software"},{"id":46,"name":"Practical Statistics for Data Scientists.2","description":"<p>Statistical methods are a key part of data science, yet few data scientists have formal statistical training. Courses and books on basic statistics rarely cover the topic from a data science perspective. The second edition of this popular guide adds comprehensive examples in Python, provides practical guidance on applying statistical methods to data science, tells you how to avoid their misuse, and gives you advice on what’s important and what’s not.</p>","price":"259.00","discount":35,"price_after_discount":168.35,"stock":86,"best_seller":14,"image":"https://codingarabic.online/storage/product/ODp66DZJ9YWCMYOPujTwayuZXu1Mkvq7gY3PLbkG.jpg","category":"AI & Data Science"}]}
/// message : ""
/// error : []
/// status : 200

class BestSellerResponse {
  BestSellerResponse({
    Data? data,
    String? message,
    List<dynamic>? error,
    num? status,
  }) {
    _data = data;
    _message = message;
    _error = error;
    _status = status;
  }

  BestSellerResponse.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];

    _status = json['status'];
  }
  Data? _data;
  String? _message;
  List<dynamic>? _error;
  num? _status;
  BestSellerResponse copyWith({
    Data? data,
    String? message,
    List<dynamic>? error,
    num? status,
  }) => BestSellerResponse(
    data: data ?? _data,
    message: message ?? _message,
    error: error ?? _error,
    status: status ?? _status,
  );
  Data? get data => _data;
  String? get message => _message;
  List<dynamic>? get error => _error;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['message'] = _message;
    if (_error != null) {
      map['error'] = _error?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    return map;
  }
}

/// products : [{"id":22,"name":"The Clean Coder","description":"<p>The Clean Coder</p>","price":"209.00","discount":35,"price_after_discount":135.85,"stock":28,"best_seller":72,"image":"https://codingarabic.online/storage/product/pdfciAUTe7iDSrHjebvnUIlV2D7pbzBBmJhqXAHF.jpg","category":"Software"},{"id":47,"name":"Head First Data Analysis.2","description":"<p>Today, interpreting data is a critical decision-making factor for businesses and organizations. If your job requires you to manage and analyze all kinds of data, turn to&nbsp;Head First Data Analysis, where you’ll quickly learn how to collect and organize data, sort the distractions from the truth, find meaningful patterns, draw conclusions, predict the future, and present your findings to others.</p>","price":"309.00","discount":45,"price_after_discount":169.95,"stock":52,"best_seller":48,"image":"https://codingarabic.online/storage/product/dMGLIAoMgUr8T6QzQszM1QgTYBCHBavPSmT60N8w.jpg","category":"AI & Data Science"},{"id":15,"name":"The Object-Oriented Thought Process","description":"<p>The Object-Oriented Thought Process</p>","price":"209.00","discount":35,"price_after_discount":135.85,"stock":70,"best_seller":30,"image":"https://codingarabic.online/storage/product/l0kkykSGLKfrE90Vkah6LD8briUKwp0V5nvPvEI1.jpg","category":"Software"},{"id":21,"name":"Introduction to Algorithms","description":"<p>Introduction to Algorithms</p>","price":"669.00","discount":50,"price_after_discount":334.5,"stock":73,"best_seller":27,"image":"https://codingarabic.online/storage/product/PMN7ycgJIo64ZX4DAXJJMBANA8RVCMJnBo3xw5C9.jpg","category":"Software"},{"id":16,"name":"Refactoring","description":"<p>For more than twenty years, experienced programmers worldwide have relied on Martin Fowler’s Refactoring to improve the design of existing code and to enhance software maintainability, as well as to make existing code easier to understand. This eagerly awaited new edition has been fully updated to reflect crucial changes in the programming landscape. Refactoring, Second Edition, features an updated catalog of refactoring’s and includes JavaScript code examples, as well as new functional examples that demonstrate refactoring without classes.</p>","price":"289.00","discount":40,"price_after_discount":173.4,"stock":77,"best_seller":23,"image":"https://codingarabic.online/storage/product/KVDGvRjmcn7Epi4Xcx6d5mu6Ayw6x6ad3H20TSga.jpg","category":"Software"},{"id":46,"name":"Practical Statistics for Data Scientists.2","description":"<p>Statistical methods are a key part of data science, yet few data scientists have formal statistical training. Courses and books on basic statistics rarely cover the topic from a data science perspective. The second edition of this popular guide adds comprehensive examples in Python, provides practical guidance on applying statistical methods to data science, tells you how to avoid their misuse, and gives you advice on what’s important and what’s not.</p>","price":"259.00","discount":35,"price_after_discount":168.35,"stock":86,"best_seller":14,"image":"https://codingarabic.online/storage/product/ODp66DZJ9YWCMYOPujTwayuZXu1Mkvq7gY3PLbkG.jpg","category":"AI & Data Science"}]

class Data {
  Data({List<Products>? products}) {
    _products = products;
  }

  Data.fromJson(dynamic json) {
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
  }
  List<Products>? _products;
  Data copyWith({List<Products>? products}) =>
      Data(products: products ?? _products);
  List<Products>? get products => _products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 22
/// name : "The Clean Coder"
/// description : "<p>The Clean Coder</p>"
/// price : "209.00"
/// discount : 35
/// price_after_discount : 135.85
/// stock : 28
/// best_seller : 72
/// image : "https://codingarabic.online/storage/product/pdfciAUTe7iDSrHjebvnUIlV2D7pbzBBmJhqXAHF.jpg"
/// category : "Software"

class Products {
  Products({
    num? id,
    String? name,
    String? description,
    String? price,
    num? discount,
    num? priceAfterDiscount,
    num? stock,
    num? bestSeller,
    String? image,
    String? category,
  }) {
    _id = id;
    _name = name;
    _description = description;
    _price = price;
    _discount = discount;
    _priceAfterDiscount = priceAfterDiscount;
    _stock = stock;
    _bestSeller = bestSeller;
    _image = image;
    _category = category;
  }

  Products.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _price = json['price'];
    _discount = json['discount'];
    _priceAfterDiscount = json['price_after_discount'];
    _stock = json['stock'];
    _bestSeller = json['best_seller'];
    _image = json['image'];
    _category = json['category'];
  }
  num? _id;
  String? _name;
  String? _description;
  String? _price;
  num? _discount;
  num? _priceAfterDiscount;
  num? _stock;
  num? _bestSeller;
  String? _image;
  String? _category;
  Products copyWith({
    num? id,
    String? name,
    String? description,
    String? price,
    num? discount,
    num? priceAfterDiscount,
    num? stock,
    num? bestSeller,
    String? image,
    String? category,
  }) => Products(
    id: id ?? _id,
    name: name ?? _name,
    description: description ?? _description,
    price: price ?? _price,
    discount: discount ?? _discount,
    priceAfterDiscount: priceAfterDiscount ?? _priceAfterDiscount,
    stock: stock ?? _stock,
    bestSeller: bestSeller ?? _bestSeller,
    image: image ?? _image,
    category: category ?? _category,
  );
  num? get id => _id;
  String? get name => _name;
  String? get description => _description;
  String? get price => _price;
  num? get discount => _discount;
  num? get priceAfterDiscount => _priceAfterDiscount;
  num? get stock => _stock;
  num? get bestSeller => _bestSeller;
  String? get image => _image;
  String? get category => _category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['description'] = _description;
    map['price'] = _price;
    map['discount'] = _discount;
    map['price_after_discount'] = _priceAfterDiscount;
    map['stock'] = _stock;
    map['best_seller'] = _bestSeller;
    map['image'] = _image;
    map['category'] = _category;
    return map;
  }
}
