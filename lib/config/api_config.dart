class Config {
  static const String appName = "petapp";
  static const String apiURL = '192.168.10.7:4000';
  // static const String apiURL = '192.168.214.19:4000'; //PROD_URL
  static const loginAPI = "$apiURL/users/login";
  static const registerAPI = "$apiURL/users/register";
  // static const userProfileAPI = "/users/user-Profile";
}
