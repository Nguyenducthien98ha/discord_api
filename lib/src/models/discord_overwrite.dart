import 'package:discord_api/src/models/discord_snowflake.dart';

class DiscordOverwrite {
  final DiscordSnowflake id;

  /// 0 = role, 1 = member
  final int type;

  /// Permission bit set
  final String allow;

  /// Permission bit set
  final String deny;

  static const idEntry = 'id';
  static const typeEntry = 'type';
  static const allowEntry = 'allow';
  static const denyEntry = 'deny';

  DiscordOverwrite({
    required this.id,
    required this.type,
    required this.allow,
    required this.deny,
  });

  factory DiscordOverwrite.fromJson(Map<String, dynamic> json) =>
      DiscordOverwrite(
        id: DiscordSnowflake(json[idEntry]),
        type: json[typeEntry] as int,
        allow: json[allowEntry] as String,
        deny: json[denyEntry] as String,
      );
}
