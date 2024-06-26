part of 'models.dart';

class Fake {
  static final profile = SupabaseProfile(
    id: "292=120-23-12391-293-213",
    firstName: "Test user",
    lastName: "Last",
    userId: "2330-912-213-2132",
    avatarUrl: "https://avatars.githubusercontent.com/u/44116043?v=4",
    username: "testuser",
  );

  static final connection = SupabaseConnection(
    id: "id",
    createdAt: DateTime.now(),
    pioneerId: "pioneer",
    recipientId: "recipient",
    pioneer: profile,
    recipient: profile,
    status: SupabaseConnectionStatus.pending,
  );
}
