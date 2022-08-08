class Config {
  static const bool debug = true;

  static String serverIp() {
    if (debug) {
      return "91.218.212.108:6060";
    }
    return "91.218.212.108:6060";
  }

  static const String versionAPI = "v1";
}
