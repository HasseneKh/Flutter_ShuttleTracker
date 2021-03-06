import 'package:flutter/material.dart';

import '../../../blocs/theme/theme_bloc.dart';

class AboutSettings extends StatefulWidget {
  final ThemeState theme;
  AboutSettings({this.theme});

  @override
  _AboutSettingsState createState() => _AboutSettingsState();
}

class _AboutSettingsState extends State<AboutSettings> {
  @override
  Widget build(BuildContext context) {
    var aboutSettingsList = <Widget>[
      ListTile(
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'FAQ',
              style: TextStyle(
                  color: widget.theme.getTheme.hoverColor, fontSize: 16),
            ),
            Text(
              'View frequently asked questions',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
      ListTile(
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'GitHub Repo',
              style: TextStyle(
                  color: widget.theme.getTheme.hoverColor, fontSize: 16),
            ),
            Text(
              'Interested in contributing? Check out our repo!',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
      ListTile(
        dense: true,
        leading: Text(
          'Privacy Policy',
          style:
              TextStyle(color: widget.theme.getTheme.hoverColor, fontSize: 16),
        ),
      ),
      ListTile(
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Version',
              style: TextStyle(
                  color: widget.theme.getTheme.hoverColor, fontSize: 16),
            ),
            Text(
              '1.0.0',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
    ];
    return Column(
      children: <Widget>[
        ListTile(
          dense: true,
          leading: Text(
            'About',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
          ),
        ),
        NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowGlow();
            return null;
          },
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: aboutSettingsList.length,
            itemBuilder: (context, index) => aboutSettingsList[index],
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey[600],
                height: 4,
              );
            },
          ),
        )
      ],
    );
  }
}
