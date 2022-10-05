import 'package:flutter/material.dart';
import "dart:html" as html;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xffa18cd1), Color(0xfffbc2eb)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HeaderText(header: "My Github Profile"),
              const LinkButton(
                  url: "https://github.com/mrydev",
                  name: "_blank",
                  text: "Github Profile"),
              const HeaderText(header: "My Website's"),
              const LinkButton(
                  url: "https://emreyavuz.live",
                  name: "_blank",
                  text: "Main Website"),
              const LinkButton(
                  url: "https://old.emreyavuz.live/",
                  name: "_blank",
                  text: "Old Website"),
              const LinkButton(
                  url: "https://khapnols-libreddit.herokuapp.com/",
                  name: "_blank",
                  text: "Libreddit"),
              const HeaderText(header: "Follow me!"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: IconButton(
                      onPressed: () {
                        html.window
                            .open("https://instagram.com/mrydev", "_blank");
                      },
                      icon: const Icon(FontAwesomeIcons.instagram),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: IconButton(
                      onPressed: () {
                        html.window
                            .open("https://twitter.com/silozanx", "_blank");
                      },
                      icon: const Icon(FontAwesomeIcons.twitter),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: IconButton(
                      onPressed: () {
                        html.window.open(
                            "https://www.youtube.com/channel/UCsAgW2H9untfs7r6CKM4aXQ",
                            "_blank");
                      },
                      icon: const Icon(FontAwesomeIcons.youtube),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: IconButton(
                      onPressed: () {
                        html.window.open(
                            "https://open.spotify.com/user/31dbqjq4jcr63vlwjnpgvemh2rb4",
                            "_blank");
                      },
                      icon: const Icon(FontAwesomeIcons.spotify),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
    required this.header,
  }) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        header,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  const LinkButton({
    Key? key,
    required this.url,
    required this.name,
    required this.text,
  }) : super(key: key);

  final String url;
  final String name;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)))),
            onPressed: () {
              html.window.open(url, name);
            },
            child: Text(text)),
      ),
    );
  }
}
