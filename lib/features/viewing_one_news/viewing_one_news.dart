import 'package:flutter/material.dart';

import '../viewing_news/viewing_news.dart';

class ViewingOneNews extends StatelessWidget {
  const ViewingOneNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 495.0,
            floating: false,
            pinned: true,
            elevation: 4.0,
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20.0),
              ),
              child: FlexibleSpaceBar(
                title: const Text("We are processing your request..."),
                background: Image.network(
                  "https://sun9-55.userapi.com/impf/c840323/v840323735/2f571/6oSVyE3YDh0.jpg?size=640x427&quality=96&sign=65c4194fc1327a0493c0d3956fcf32b2&c_uniq_tag=JJEe1ENSEIGGBM54tluYSglYYIHC_uN90wrqlX7wtb0&type=album",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Proin ac purus quis metus rutrum pharetra. Nam in lorem nec ex feugiat vehicula eu eget lacus.'
                ' Donec vitae ipsum in eros accumsan dignissim. Suspendisse ac luctus lacus. Proin eleifend erat augue, ac accumsan augue volutpat et. '
                'Donec porta quis purus ac faucibus. Nunc at varius enim.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: NetworkImage(
                      'https://www.empowersuite.com/hubfs/Marketing/Website/Social%20sharing%20images/getstarted_header.jpg'),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Proin ac purus quis metus rutrum pharetra. Nam in lorem nec ex feugiat vehicula eu eget lacus.'
                    ' Donec vitae ipsum in eros accumsan dignissim. Suspendisse ac luctus lacus. Proin eleifend erat augue, ac accumsan augue volutpat et. '
                    'Donec porta quis purus ac faucibus. Nunc at varius enim.'
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Proin ac purus quis metus rutrum pharetra. Nam in lorem nec ex feugiat vehicula eu eget lacus.'
                    ' Donec vitae ipsum in eros accumsan dignissim. Suspendisse ac luctus lacus. Proin eleifend erat augue, ac accumsan augue volutpat et. '
                    'Donec porta quis purus ac faucibus. Nunc at varius enim.'
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Proin ac purus quis metus rutrum pharetra. Nam in lorem nec ex feugiat vehicula eu eget lacus.'
                    ' Donec vitae ipsum in eros accumsan dignissim. Suspendisse ac luctus lacus. Proin eleifend erat augue, ac accumsan augue volutpat et. '
                    'Donec porta quis purus ac faucibus. Nunc at varius enim.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
