import 'package:flutter/material.dart';

class massanger extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleSpacing: 20.0,

          title:

          Row(

            children: [

              CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(

                    'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/240651816_1256162988151559_3190978109833366454_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeGsolqWMRAwFGg1CPw80lfD-hQQfFnWmHD6FBB8WdaYcEJgpWcpuNbcV9AVBxb4qkgBVUeC5mukXVrrenyBMuB8&_nc_ohc=FXFTTjZxlAwAX_bhnF4&_nc_oc=AQmk_FP7pAnTzQlEOlOnXArFdcALOFFiWo8UloSw5ElO9rppsQ7PAhEFxM_rU57wW2k&tn=05tf5FUhEGIJTJ8o&_nc_ht=scontent.fcai20-3.fna&oh=00_AfCK_YC-r7F9zZMtO8MOwi7_Hx8q-S4K5I53_dsJqzolRw&oe=6370005A'
                ),
              ),
              SizedBox(width: 10.0,),
              Text(
                " chats",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(onPressed: () {

            }, icon: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 15.0,
              child: Icon(Icons.camera_alt,
                size: 16.0,
                color: Colors.black,

              ),


            ),

            ),
            IconButton(onPressed: () {

            }, icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(Icons.edit,
                  size: 16.0,
                  color: Colors.black,


                )
            ),
            )
          ],

        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey[300],

                    ),
                    child:
                    Row(

                      children: [
                        Padding(padding: EdgeInsets.all(10.0),),

                        IconButton(onPressed: () {

                        },
                            icon: Icon(Icons.search)
                        ),
                        SizedBox(width: 15.0,),
                        Text("search",
                          style: TextStyle(
                            color: Colors.black,

                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Container(
                    height: 100,

                    child: ListView.separated(

                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildstoryItem(),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 20.0),
                      itemCount: 10,

                    ),

                  ),
                  SizedBox(height: 30.0,),
                  SingleChildScrollView(

                    child: Container(
                      height: 3000,

                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => buildchatItem(),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 20.0),
                        itemCount: 13,

                      ),
                    ),
                  ),

                ],
              ),
            )
        )
    );
  }
  Widget buildstoryItem() => Row(
    children: [
      Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/240651816_1256162988151559_3190978109833366454_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeGsolqWMRAwFGg1CPw80lfD-hQQfFnWmHD6FBB8WdaYcEJgpWcpuNbcV9AVBxb4qkgBVUeC5mukXVrrenyBMuB8&_nc_ohc=FXFTTjZxlAwAX_bhnF4&_nc_oc=AQmk_FP7pAnTzQlEOlOnXArFdcALOFFiWo8UloSw5ElO9rppsQ7PAhEFxM_rU57wW2k&tn=05tf5FUhEGIJTJ8o&_nc_ht=scontent.fcai20-3.fna&oh=00_AfCK_YC-r7F9zZMtO8MOwi7_Hx8q-S4K5I53_dsJqzolRw&oe=6370005A'

                  ),
                ),
                Padding(padding: const EdgeInsetsDirectional.only(
                  end: 5.0,
                  bottom: 5.0
                )
                ),
                CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 6.0,),
            Text("mohamed abdel monem ahmed",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,



            ),

          ],
        ),
      )
    ],

  );
  Widget buildchatItem() => Container(

    child:
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/240651816_1256162988151559_3190978109833366454_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeGsolqWMRAwFGg1CPw80lfD-hQQfFnWmHD6FBB8WdaYcEJgpWcpuNbcV9AVBxb4qkgBVUeC5mukXVrrenyBMuB8&_nc_ohc=FXFTTjZxlAwAX_bhnF4&_nc_oc=AQmk_FP7pAnTzQlEOlOnXArFdcALOFFiWo8UloSw5ElO9rppsQ7PAhEFxM_rU57wW2k&tn=05tf5FUhEGIJTJ8o&_nc_ht=scontent.fcai20-3.fna&oh=00_AfCK_YC-r7F9zZMtO8MOwi7_Hx8q-S4K5I53_dsJqzolRw&oe=6370005A'

                    ),
                  ),
                  Padding(padding: const EdgeInsetsDirectional.only(
                      end: 5.0,
                      bottom: 5.0
                  )
                  ),
                  CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              SizedBox(width: 15.0,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("mohamed abdel monem ahmed",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text("hello mohamed with you ahmed",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(width: 3),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(width: 7.0,
                          height: 7.0,
                            decoration: BoxDecoration(
                                color:Colors.blue,
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Text("02:33",
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(width: 8.0,),
                        Expanded(
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 13.0,
                                backgroundColor: Colors.blue,
                                child: Text("10",
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                              ),

                            ],
                          ),
                        )

                      ],
                    ),
                  ],
                ),
              )
            ],
          ),

        ],
      ),
    ),


  );
}