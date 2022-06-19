import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.launch),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          AccountInfo(title: 'USD Account', amount: '180,970.83'),
          TransactionHistory(),
          ListTitle(
            title: 'Yesterday',
          ),
          ListItem(
            amount: -5531,
            title: 'Pret A Manger',
            image: 'https://logo.clearbit.com/pret.com',
          ),
          ListItem(
            amount: 13031,
            title: 'Darren Hodgkin',
          ),
          ListItem(
            amount: -5531,
            title: 'McDonalds',
            image: 'https://logo.clearbit.com/mcdonalds.com',
          ),
          ListItem(
            amount: -5531,
            title: 'Starbucks',
            image: 'https://logo.clearbit.com/starbucks.com',
          ),
          ListItem(
            amount: -30000,
            title: 'Dave Winklevoss',
          ),
          ListTitle(
            title: 'Sat, Dec 11',
          ),
          ListItem(
            amount: -50031,
            title: 'Virgin Megastore',
            image: 'https://logo.clearbit.com/virginmegastore.ae',
          ),
          ListItem(
            amount: -50031,
            title: 'Nike',
            image: 'https://logo.clearbit.com/nike.com',
          ),
          ListTitle(
            title: 'Thurs, Dec 9',
          ),
          ListItem(
            amount: -50031,
            title: 'Louis Vuitton',
            image: 'https://logo.clearbit.com/louisvuitton.com',
          ),
          ListItem(
            amount: -50031,
            title: 'Carrefour',
            image: 'https://logo.clearbit.com/carrefour.com',
          ),
          SizedBox(height: 56),
        ],
      ),
    );
  }
}

class AccountInfo extends StatelessWidget {
  final String title;
  final String amount;

  const AccountInfo({
    Key? key,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 14),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 182),
              child: Text(
                '\$',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 14,
                  height: 26 / 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            children: [
              const SizedBox(height: 52),
              const CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1280px-Flag_of_the_United_States.svg.png',
                ),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0x80FFFFFF),
                  height: 25 / 14,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 22,
                  height: 30 / 22,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 138),
              alignment: Alignment.topRight,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: const Size(56, 32),
                  side: const BorderSide(width: 1, color: Color(0xFF333333)),
                ),
                child: const Text(
                  'Hide',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 14),
        ],
      ),
    );
  }
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0E0E10),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 26, bottom: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TransactionHistoryTitle(title: 'Transactions History'),
          const SizedBox(height: 14),
          const TransactionHistoryButtonDropdown(title: 'USD Dollar'),
          const SizedBox(height: 14),
          Row(
            children: [
              const Expanded(
                child: TransactionHistoryButtonDropdown(title: 'All'),
              ),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.zero,
                  fixedSize: const Size(50, 50),
                  side: const BorderSide(width: 1, color: Color(0xFF333333)),
                ),
                child: const SizedBox(
                  width: 20,
                  height: 20,
                  child: Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TransactionHistoryTitle extends StatelessWidget {
  final String title;

  const TransactionHistoryTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    );
  }
}

class TransactionHistoryButtonDropdown extends StatelessWidget {
  final String title;

  const TransactionHistoryButtonDropdown({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: const Size(double.infinity, 50),
        side: const BorderSide(width: 1, color: Color(0xFF333333)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          const Icon(Icons.keyboard_arrow_down, size: 16, color: Colors.white),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final String time;
  final int amount;
  final String? image;

  const ListItem({
    Key? key,
    required this.title,
    this.time = '12:23',
    required this.amount,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xFFE0E0E0)))),
      padding: const EdgeInsets.only(left: 16, right: 14, top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListItemIcon(
            imageUrl: image,
            income: amount > 0,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ListItemTitle(
              title: title,
              time: time,
            ),
          ),
          const SizedBox(width: 10),
          ListIconAmount(amount: amount),
        ],
      ),
    );
  }
}

class ListItemTitle extends StatelessWidget {
  final String title;
  final String time;

  const ListItemTitle({
    Key? key,
    required this.title,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
        const SizedBox(height: 14),
        Text(
          time,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 8, color: Color(0xFF828282)),
        ),
      ],
    );
  }
}

class ListIconAmount extends StatelessWidget {
  final int amount;

  const ListIconAmount({
    Key? key,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sign = amount < 0 ? '-' : '+';
    final dollars = amount.abs() ~/ 100;
    final cents = (amount.abs() % 100).toString().padLeft(2, '0');
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Text(
        '$sign \$$dollars.$cents',
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
      ),
    );
  }
}

// 30x30
class ListItemIcon extends StatelessWidget {
  final String? imageUrl;
  final bool income;

  const ListItemIcon({
    Key? key,
    required this.imageUrl,
    required this.income,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decoration = imageUrl != null
        ? BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFE0E0E0), width: 2),
            image: DecorationImage(
              image: NetworkImage(imageUrl!),
              fit: BoxFit.fill,
            ),
          )
        : BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 2),
          );
    final icon = income
        ? const Icon(Icons.arrow_back, size: 20, color: Colors.black)
        : const Icon(Icons.arrow_forward, size: 20, color: Colors.black);
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: decoration,
      child: imageUrl != null ? null : icon,
    );
  }
}

class ListTitle extends StatelessWidget {
  final String title;

  const ListTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: 50,
      padding: const EdgeInsets.only(left: 20, bottom: 24),
      color: const Color(0xFFCCCCCC),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
      ),
    );
  }
}
