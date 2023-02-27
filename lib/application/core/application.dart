class Application {
  final String accessToken;

  Application(this.accessToken);
  Map<String, String> getHeader() {
    return {
      "Content-Type": "application/json",
      'Accept': 'application/json',
      "Authorization": "Bearer $accessToken"
    };
  }
}
