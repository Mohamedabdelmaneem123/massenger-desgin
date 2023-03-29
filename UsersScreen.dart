import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../models/user/users.dart';

   class user extends StatelessWidget
 {
   List<Usermodel> users =[
     Usermodel(
       id: 1,
       name: 'mohamed abdelmonem',
       phone: '+20104922590',
     ),
     Usermodel(
       id: 2,
       name: 'AMR abdelmonem',
       phone: '+20104922590',
     ),
     Usermodel(
       id: 3,
       name: 'mohamed Ahmed',
       phone: '+20104922590',
     ),
     Usermodel(
       id: 4,
       name: 'mohasen sayed',
       phone: '+20104922590',
     ),
     Usermodel(
       id: 1,
       name: 'mohamed abdelmonem',
       phone: '+20104922590',
     ),
     Usermodel(
       id: 2,
       name: 'AMR abdelmonem',
       phone: '+20104922590',
     ),
     Usermodel(
       id: 3,
       name: 'mohamed Ahmed',
       phone: '+20104922590',
     ),
     Usermodel(
       id: 4,
       name: 'mohasen sayed',
       phone: '+20104922590',
     ),
   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" User",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
            ),
          ),
          actions: [
            Icon(Icons.search,
              color: Colors.white,
              size: 30.0,
            ),
          ],
        ),

        body: ListView.separated(
            itemBuilder: (context, index) => builduserItem(users[index]),
            separatorBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 70.0),
                  child: Container(
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                ),
            itemCount: users.length)


    );
  }
      Widget builduserItem(Usermodel user) => Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.indigo,
                  child: Text('${user.id}',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500
                    ),
                  ),

                ),
                SizedBox(width: 15.0,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("${user.name}",
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      Text('${user.phone}',
                        style: TextStyle(
                          color: Colors.grey,

                        ),
                      )
                    ],

                  ),
                ),

              ],
            ),
          );

  }
