enum AuthenticationMethod {
  emailAndPassword,
  otp,
  push,
  scanQr;

  @override
  String toString() {
    switch (this) {
      case AuthenticationMethod.emailAndPassword:
        return "Email and Password";
      case AuthenticationMethod.otp:
        return "OTP";
      case AuthenticationMethod.push:
        return "Push";
      case AuthenticationMethod.scanQr:
        return "Scan QR";
    }
  }
}
