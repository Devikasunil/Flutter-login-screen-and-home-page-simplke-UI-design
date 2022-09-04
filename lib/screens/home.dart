import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/screens/login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Home Screen',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Open Sans',
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.redAccent,
          actions: [
            IconButton(
              onPressed: () {
                Signout(context);
              },
              icon: Icon(Icons.exit_to_app_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.image_rounded),
            ),
          ],
        ),
        body: ListView(
          children: [
            Image(
                image: NetworkImage(
                    'https://static.toiimg.com/thumb/msid-72091883,width-400,resizemode-4/72091883.jpg'),),
            SizedBox(
              height: 10,
            ),
            Text(
              '''An art gallery is a room or a building in which visual art is displayed. In Western cultures from the mid-15th century, a gallery was any long, narrow covered passage along a wall, first used in the sense of a place for art in the 1590s. The long gallery in Elizabethan and Jacobean houses served many purposes including the display of art. Historically, art is displayed as evidence of status and wealth, and for religious art as objects of ritual or the depiction of narratives. The first galleries were in the palaces of the aristocracy, or in churches. As art collections grew, buildings became dedicated to art, becoming the first art museums.

Among the modern reasons art may be displayed are aesthetic enjoyment, education, historic preservation, or for marketing purposes. The term is used to refer to establishments with distinct social and economic functions, both public and private. Institutions that preserve a permanent collection may be called either "gallery of art" or "museum of art". If the latter, the rooms where art is displayed within the museum building are called galleries. Art galleries that do not maintain a collection are either commercial enterprises for the sale of artworks, or similar spaces operated by art cooperatives or non-profit organizations. As part of the art world, art galleries play an important role in maintaining the network of connections between artists, collectors, and art experts that define fine art.Types of galleries
Galleries may deal in the primary market of new works by living artists, or the secondary markets for works from prior periods owned by collectors, estates, or museums. The periods represented include Old Masters, Modern (1900-1950), and contemporary (1950–present). Modern and contemporary may be combined in the category of Post-war art; while contemporary may be limited to the 21st century or "emerging artists".

Contemporary galleries
Further information: Contemporary art gallery
An enduring model for contemporary galleries was set by Leo Castelli. Rather than simply being the broker for sales, Castelli became actively involved in the discovery and development of new artists, while expecting to remain an exclusive agent for their work. However he also focused exclusively on new works, not participating in the resale of older work by the same artists.

Secondary market
All art sales after the first are part of the secondary market, in which the artist and the original dealer are not involved. Many of these sales occur privately between collectors, or works are sold at auctions. However some galleries participate in the secondary market depending upon the market conditions. As with any market, the major conditions are supply and demand. Because art is a unique commodity, the artist has a monopoly on production, which ceases when the artist either dies or stops working.

Outside the art world
Some businesses operate as vanity galleries, charging artists a fee to exhibit their work. Lacking a selection process to assure the quality of the artworks, and having little incentive to promote sales, vanity galleries are avoided as unprofessional.
            ''',
              style: TextStyle(
                  color: Colors.blueGrey[800],
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Signout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => ScreenLogin()), (route) => false);
  }
}
