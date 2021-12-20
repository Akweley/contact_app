import 'package:contact_app/Views/contact_details_view.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:contact_app/Views/new.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final List<Map<String, String>> data = [
    {
      "avatar":
          "https://media.istockphoto.com/photos/cheesy-pepperoni-pizza-picture-id938742222?b=1&k=20&m=938742222&s=170667a&w=0&h=HyfY78AeiQM8vZbIea-iiGmNxHHuHD-PVVuHRvrCIj4=",
      "name": "Akuokor",
      "phone": "0239393939",
      "email": "akuokor@gmail.com",
      "country": "Ghana",
      "region": "Eastern"
    },
    {
      "avatar":
          "https://images.unsplash.com/photo-1604382355076-af4b0eb60143?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHBpenphfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Belinda",
      "phone": "0203939393",
      "email": "belinda@gmail.com",
      "country": "Ghana",
      "region": "Greater-Accra"
    },
    {
      "avatar":
          "https://media.istockphoto.com/photos/delicious-homemade-hamburger-and-french-fries-picture-id1254672762?b=1&k=20&m=1254672762&s=170667a&w=0&h=nKrG40G2jj9O8wzJ8wDD2zmUKNp00mcdVWK_f_zixug=",
      "name": "Prof Wilson",
      "phone": "0546745957",
      "email": "profwilson@yahoo.com",
      "country": "Ghana",
      "region": "Greater-Accra"
    },
    {
      "avatar":
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Sharon",
      "phone": "0503294847",
      "email": "sharon@gmail.com",
      "country": "Ghana",
      "region": "Ashanti"
    },
    {
      "avatar":
          "https://images.unsplash.com/photo-1603064752734-4c48eff53d05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Yaa GTL",
      "phone": "0206743271",
      "email": "yaa@gtl.com",
      "country": "Ghana",
      "region": "Ashanti"
    },
    {
      "avatar":
          "https://images.unsplash.com/photo-1582196016295-f8c8bd4b3a99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJ1cmdlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Fafa",
      "phone": "0241136033",
      "email": "nutifafa@gmail.com",
      "country": "Ghana",
      "region": "Volta"
    },
    {
      "avatar":
          "https://media.istockphoto.com/photos/grilled-vegan-burger-patties-meat-alternative-picture-id1279349939?b=1&k=20&m=1279349939&s=170667a&w=0&h=1KnKWHmSoGB5MHbFnoZZYyom-OESHVkZD6SnV9p0Nuc=",
      "name": "Kekeli",
      "phone": "0248713241",
      "email": "kekeli@gmail.com",
      "country": "Ghana",
      "region": "Oti"
    },
    {
      "avatar":
          "https://images.unsplash.com/photo-1556761223-4c4282c73f77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFzdGF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      "name": "William",
      "phone": "0548197163",
      "email": "william@yahoo.com",
      "country": "Ghana",
      "region": "Eastern"
    },
    {
      "avatar":
          "https://images.unsplash.com/photo-1570700258112-e259d3dbafb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGFzdGF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      "name": "Asantewaa",
      "phone": "0246905206",
      "email": "asantewaa@gmail.com",
      "country": "Ghana",
      "region": "Ashanti"
    },
    {
      "avatar":
          "https://images.unsplash.com/photo-1608897013039-887f21d8c804?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=392&q=80",
      "name": "Ayeley Ayettey",
      "phone": "0242223332",
      "email": "ayettey474@gmail.com",
      "country": "Ghana",
      "region": "Greater-Accra"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Contacts',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 8.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: 'Search name here...',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Recents',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/photos/have-a-slice-picture-id1290513456?b=1&k=20&m=1290513456&s=170667a&w=0&h=YaVCU4RDMjOU8Bh5E7Ga6fzYc_XS2HZUdRjtxuQWyKw='),
                  ),
                  title: Text("Naa"),
                  subtitle: Text('0242223332'),
                  trailing: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.call_made),
                      color: Colors.blue),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(indent: 25, thickness: 2);
              },
              itemCount: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'My Contacts',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          GroupedListView<Map<String, String>, String>(
            shrinkWrap: true,
            elements: data,
            groupBy: (element) => element['name'].toString().substring(0, 1),
            groupSeparatorBuilder: (String groupByValue) => SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  groupByValue.substring(0, 1),
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
            itemBuilder: (context, Map<String, String> element) {
              return Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ContactDetailsView(
                                contactDetailsView: element);
                          },
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('${element['avatar']}'),
                    ),
                    title: Text(
                      '${element['name']}',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text('${element['phone']}'),
                    trailing: const IconButton(
                        onPressed: null, icon: Icon(Icons.more_horiz)),
                  ),
                  const Divider(
                    indent: 25,
                    thickness: 2,
                  )
                ],
              );
            },
            itemComparator: (item1, item2) =>
                item1['name']!.compareTo(item2['name']!),
            useStickyGroupSeparators: true,
            floatingHeader: true,
            order: GroupedListOrder.ASC,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return New(
                  key: key,
                );
              },
            ),
          );
        },
        child: Icon(
          Icons.person_add,
        ),
      ),
    );
  }
}
