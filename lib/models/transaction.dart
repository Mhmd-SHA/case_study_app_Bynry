class Transactions {
  String uid;
  String title;

  String description;
  String transactionId;
  String amount;
  DateTime date;
  String category;

  Transactions({
    required this.uid,
    required this.title,
    required this.description,
    required this.transactionId,
    required this.amount,
    required this.date,
    required this.category,
  });
}

List<Transactions> transactions = [
  Transactions(
      uid: "1",
      title: "Bank Transfer",
      description: "description",
      transactionId: "156165105646",
      amount: "350",
      date: DateTime.now(),
      category: "category"),
  Transactions(
      uid: "2",
      title: "Amazon",
      description: "description",
      transactionId: "849845164566",
      amount: "156",
      date: DateTime.now(),
      category: "category"),
  Transactions(
      uid: "3",
      title: "Amazon",
      description: "description",
      transactionId: "849845164566",
      amount: "156",
      date: DateTime.now(),
      category: "category"),
  Transactions(
      uid: "4",
      title: "Amazon",
      description: "description",
      transactionId: "849845164566",
      amount: "156",
      date: DateTime.now(),
      category: "category"),
  Transactions(
      uid: "5",
      title: "Amazon",
      description: "description",
      transactionId: "849845164566",
      amount: "156",
      date: DateTime.now(),
      category: "category"),
  Transactions(
    uid: "6",
    title: "Amazon",
    description: "description",
    transactionId: "849845164566",
    amount: "156",
    date: DateTime.now(),
    category: "category",
  ),
];
