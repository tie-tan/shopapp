import 'package:app_shop/model/CartProduct.dart';
import 'package:app_shop/model/Medicine.dart';
import 'package:app_shop/model/Product.dart';
import 'package:uuid/uuid.dart';

import 'model/Shop.dart';

class Demo {
  static List<Medicine> medicines = [
    Medicine(
      id: const Uuid().v4(),
      name: "Medicine2",
      price: 10,
      image: "assets/images/paracetamol.jpg",
      description:
          "Medicine2 is a pain reliever and a fever reducer. It is used to reduce fever and relieve pain. It is used to treat many conditions such as headache, muscle aches, arthritis, back pain, toothaches, colds, and many other conditions.",
    ),
    Medicine(
      id: const Uuid().v4(),
      name: "Medicine1",
      price: 20,
      image: "assets/images/aspirin.jpg",
      description:
          "Medicine1 is a pain reliever and a fever reducer. It is used to reduce fever and relieve pain. It is used to treat many conditions such as headache, muscle aches, arthritis, back pain, toothaches, colds, and many other conditions.",
    ),
    Medicine(
      id: const Uuid().v4(),
      name: "Medicine2",
      price: 10,
      image: "assets/images/paracetamol.jpg",
      description:
          "Medicine2 is a pain reliever and a fever reducer. It is used to reduce fever and relieve pain. It is used to treat many conditions such as headache, muscle aches, arthritis, back pain, toothaches, colds, and many other conditions.",
    ),
    Medicine(
      id: const Uuid().v4(),
      name: "Medicine1",
      price: 20,
      image: "assets/images/aspirin.jpg",
      description:
          "Medicine1 is a pain reliever and a fever reducer. It is used to reduce fever and relieve pain. It is used to treat many conditions such as headache, muscle aches, arthritis, back pain, toothaches, colds, and many other conditions.",
    ),
    Medicine(
      id: const Uuid().v4(),
      name: "Medicine2",
      price: 10,
      image: "assets/images/paracetamol.jpg",
      description:
          "Medicine2 is a pain reliever and a fever reducer. It is used to reduce fever and relieve pain. It is used to treat many conditions such as headache, muscle aches, arthritis, back pain, toothaches, colds, and many other conditions.",
    ),
    Medicine(
      id: const Uuid().v4(),
      name: "Medicine1",
      price: 20,
      image: "assets/images/aspirin.jpg",
      description:
          "Medicine1 is a pain reliever and a fever reducer. It is used to reduce fever and relieve pain. It is used to treat many conditions such as headache, muscle aches, arthritis, back pain, toothaches, colds, and many other conditions.",
    ),
    Medicine(
      id: const Uuid().v4(),
      name: "Medicine2",
      price: 10,
      image: "assets/images/paracetamol.jpg",
      description:
          "Medicine2 is a pain reliever and a fever reducer. It is used to reduce fever and relieve pain. It is used to treat many conditions such as headache, muscle aches, arthritis, back pain, toothaches, colds, and many other conditions.",
    ),
    Medicine(
      id: const Uuid().v4(),
      name: "Medicine1",
      price: 20,
      image: "assets/images/aspirin.jpg",
      description:
          "Medicine1 is a pain reliever and a fever reducer. It is used to reduce fever and relieve pain. It is used to treat many conditions such as headache, muscle aches, arthritis, back pain, toothaches, colds, and many other conditions.",
    ),
  ];
  static List<Shop> shops = [
    Shop(
      address: 'Address no. 1',
      name: 'Shop name 1',
      imageUrl:
          'https://images.unsplash.com/photo-1585518419759-7fe2e0fbf8a6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1924&q=80',
    ),
    Shop(
      address: 'Address no. 2',
      name: 'Shop name 2',
      imageUrl:
          'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    ),
    Shop(
      address: 'Address no. 3',
      name: 'Shop name 3',
      imageUrl:
          'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80',
    ),
    Shop(
      address: 'Address no. 4',
      name: 'Shop name 4',
      imageUrl:
          'https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80',
    ),
    Shop(
      address: 'Address no. 5',
      name: 'Shop name 5',
      imageUrl:
          'https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=774&q=80',
    ),
    Shop(
      address: 'Address no. 1',
      name: 'Shop name 1',
      imageUrl:
          'https://images.unsplash.com/photo-1585518419759-7fe2e0fbf8a6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1924&q=80',
    ),
    Shop(
      address: 'Address no. 2',
      name: 'Shop name 2',
      imageUrl:
          'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    ),
    Shop(
      address: 'Address no. 3',
      name: 'Shop name 3',
      imageUrl:
          'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80',
    ),
    Shop(
      address: 'Address no. 4',
      name: 'Shop name 4',
      imageUrl:
          'https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80',
    ),
    Shop(
      address: 'Address no. 5',
      name: 'Shop name 5',
      imageUrl:
          'https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=774&q=80',
    ),
  ];
  static List<Product> products = [
    Product(
      title: 'Pizza',
      imageUrl:
          'https://media.istockphoto.com/photos/pizza-pepperoni-with-black-olives-picture-id960004202',
      price: 200,
      id: const Uuid().v4(),
      description: 'DjadlfjalfjHgj',
    ),
    Product(
      title: 'Sweets',
      imageUrl:
          'https://images.unsplash.com/photo-1605194000384-439c3ced8d15?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
      price: 40,
      id: const Uuid().v4(),
      description:
          'DjadlfjalfjHgjLKJLdjdlakjflkajflkadjflkanf lnalk jflaj flakj lakjflj lkja',
    ),
    Product(
      title: 'Dosa',
      imageUrl:
          'https://media.istockphoto.com/photos/masala-sin-picture-id481750586?s=612x612',
      price: 50,
      id: const Uuid().v4(),
      description:
          'DjadlfjalfjHgjLKJLdjdlakjflkajflkadjflkanf lnalk jflaj flakj lakjflj lkja',
    ),
    Product(
      title: 'Noodles',
      imageUrl:
          'https://media.istockphoto.com/photos/nepali-chinese-chowmein-picture-id1195969549?s=612x612',
      price: 50,
      id: const Uuid().v4(),
      description:
          'DjadlfjalfjHgjLKJLdjdlakjflkajflkadjflkanf lnalk jflaj flakj lakjflj lkja',
    ),
    Product(
      title: 'Momos',
      imageUrl:
          'https://media.istockphoto.com/photos/japanese-dumplings-gyoza-with-pork-meat-and-vegetables-picture-id1133151212?s=612x612',
      price: 30,
      id: const Uuid().v4(),
      description:
          'DjadlfjalfjHgjLKJLdjdlakjflkajflkadjflkanf lnalk jflaj flakj lakjflj lkja',
    ),
    Product(
      title: 'Biryani',
      imageUrl:
          'https://media.istockphoto.com/photos/chicken-biryani-picture-id1058029096?s=612x612',
      price: 90,
      id: const Uuid().v4(),
      description:
          'DjadlfjalfjHgjLKJLdjdlakjflkajflkadjflkanf lnalk jflaj flakj lakjflj lkja',
    ),
    Product(
      title: 'Burger',
      imageUrl:
          'https://media.istockphoto.com/photos/burger-with-beef-and-bacon-picture-id1166797165?s=612x612',
      price: 50,
      id: const Uuid().v4(),
      description:
          'DjadlfjalfjHgjLKJLdjdlakjflkajflkadjflkanf lnalk jflaj flakj lakjflj lkja',
    ),
  ];

  List<CartProduct> cartProduct = [
    CartProduct(
      title: 'Pizza',
      imageUrl:
          'https://media.istockphoto.com/photos/pizza-pepperoni-with-black-olives-picture-id960004202',
      price: 200,
      id: const Uuid().v4(),
    ),
    CartProduct(
      title: 'Sweets',
      imageUrl:
          'https://images.unsplash.com/photo-1605194000384-439c3ced8d15?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
      price: 30,
      id: const Uuid().v4(),
    ),
    CartProduct(
      title: 'Dosa',
      imageUrl:
          'https://media.istockphoto.com/photos/masala-sin-picture-id481750586?s=612x612',
      price: 50,
      id: const Uuid().v4(),
    ),
    CartProduct(
      title: 'Noodles',
      imageUrl:
          'https://media.istockphoto.com/photos/nepali-chinese-chowmein-picture-id1195969549?s=612x612',
      price: 50,
      id: const Uuid().v4(),
    ),
    CartProduct(
      title: 'Momos',
      imageUrl:
          'https://media.istockphoto.com/photos/japanese-dumplings-gyoza-with-pork-meat-and-vegetables-picture-id1133151212?s=612x612',
      price: 30,
      id: const Uuid().v4(),
    ),
    CartProduct(
      title: 'Biryani',
      imageUrl:
          'https://media.istockphoto.com/photos/chicken-biryani-picture-id1058029096?s=612x612',
      price: 90,
      id: const Uuid().v4(),
    ),
    CartProduct(
      title: 'Burger',
      imageUrl:
          'https://media.istockphoto.com/photos/burger-with-beef-and-bacon-picture-id1166797165?s=612x612',
      price: 50,
      id: const Uuid().v4(),
    ),
  ];
}
