import 'package:flutter/material.dart';
import 'package:newsapp/config/netwok/network_page.dart';

class SportsNews extends StatefulWidget {
  const SportsNews({super.key});

  @override
  State<SportsNews> createState() => _SportsNewsState();
}

class _SportsNewsState extends State<SportsNews> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      body: RefreshIndicator(
        onRefresh: () async{
          NetworkRequest.getSportNews();
        },
        child: ListView(
          shrinkWrap: true,
          children: [

            FutureBuilder(
                future: NetworkRequest.getSportNews(),
                builder: (context , snapshot){

                  if(snapshot.hasData){

                    return ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (context , index){
                        var news = snapshot.data?[index];

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Column(
                                children: [
                                  Text(news?.title ?? ''),
                                  Image.network(news?.urlToImage ?? ''),
                                  Text(news?. description ?? ''),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(news?.author ?? ''),
                                      Text(news?.publishedAt ?? ''),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );

                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return  Divider();
                      },
                    );


                  }
                  else if(snapshot.hasError){
                    return Center(child: Text('Error: ${snapshot.error}'),);

                  }
                  else{

                    return const Center(child: CircularProgressIndicator());
                  }

                }
            )

          ],
        ),
      ),
    );
  }
}
