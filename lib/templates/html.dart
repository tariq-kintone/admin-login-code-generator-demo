import 'dart:ui';

import 'package:admin_login_code_generator/models/authentication_method.dart';

String buildHtml(
    {required Color brandColor,
    required String title,
    required List<AuthenticationMethod> methods}) {
  final hexString = "#${brandColor.red.toRadixString(16).padLeft(2, '0')}"
      "${brandColor.green.toRadixString(16).padLeft(2, '0')}"
      "${brandColor.blue.toRadixString(16).padLeft(2, '0')}";
  String template = _htmlTemplate;

  if (methods.contains(AuthenticationMethod.scanQr)) {
    template = template.replaceAll(
        "<!--{{AUTHENTICATION_METHOD.QR}}-->", '''<div class="col s4 form-row-item" style="flex: 4">
              <div class="row center-align">
                <svg enable-background="new 0 0 65 65" height="65px" id="Layer_1" version="1.1" viewBox="0 0 65 65" width="65px"
                     xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.6" x="26"/>
                    <polygon fill="{{BRAND_COLOR}}"
                            points="36.399,0 39,0 39,2.6 41.6,2.6 41.6,5.2 36.399,5.2 36.399,7.8 33.8,7.8 33.8,10.4 36.399,10.4 36.399,7.8 39,7.8   39,10.4 41.6,10.4 41.6,13 39,13 39,18.2 41.6,18.2 41.6,13 44.2,13 44.2,20.8 46.8,20.8 46.8,23.4 49.4,23.4 49.4,26 54.6,26   54.6,28.6 49.4,28.6 49.4,33.8 52,33.8 52,36.4 54.6,36.4 54.6,39 46.8,39 46.8,36.4 44.2,36.4 44.2,33.8 39,33.8 39,36.4   33.8,36.4 33.8,33.8 36.399,33.8 36.399,31.2 46.8,31.2 46.8,28.6 44.2,28.6 44.2,23.4 41.6,23.4 41.6,20.8 39,20.8 39,23.4   33.8,23.4 33.8,20.8 36.399,20.8 36.399,13 28.6,13 28.6,10.4 31.2,10.4 31.2,2.6 36.399,2.6 "/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.601" x="41.6"/>
                    <path fill="{{BRAND_COLOR}}" d="M0,0v18.2h18.2V0H0z M15.6,15.6h-13v-13h13V15.6z"/>
                    <polygon fill="{{BRAND_COLOR}}" points="20.8,2.6 23.4,2.6 23.4,5.2 26,5.2 26,13 23.4,13 23.4,18.2 20.8,18.2 "/>
                    <path fill="{{BRAND_COLOR}}" d="M46.8,0v18.2H65V0H46.8z M62.4,15.6h-13v-13h13V15.6z"/>
                    <rect fill="{{BRAND_COLOR}}" height="7.8" width="7.8" x="5.2" y="5.2"/>
                    <rect fill="{{BRAND_COLOR}}" height="5.2" width="2.601" x="41.6" y="5.2"/>
                    <rect fill="{{BRAND_COLOR}}" height="7.8" width="7.8" x="52" y="5.2"/>
                    <rect fill="{{BRAND_COLOR}}" height="5.2" width="2.6" x="26" y="13"/>
                    <rect fill="{{BRAND_COLOR}}" height="5.2" width="2.6" x="31.2" y="15.6"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.6" x="5.2" y="20.8"/>
                    <polygon
                            fill="{{BRAND_COLOR}}" points="13,20.8 23.4,20.8 23.4,23.4 20.8,23.4 20.8,26 23.4,26 23.4,31.2 18.2,31.2 18.2,28.6 15.6,28.6 15.6,26 18.2,26   18.2,23.4 13,23.4 "/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="5.2" x="26" y="20.8"/>
                    <polygon fill="{{BRAND_COLOR}}" points="49.4,20.8 62.4,20.8 62.4,23.4 65,23.4 65,28.6 62.4,28.6 62.4,26 59.8,26 59.8,23.4 49.4,23.4 "/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.6" y="23.4"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.6" x="7.8" y="23.4"/>
                    <polygon
                            fill="{{BRAND_COLOR}}" points="31.2,23.4 33.8,23.4 33.8,26 39,26 39,23.4 41.6,23.4 41.6,28.6 33.8,28.6 33.8,33.8 31.2,33.8 31.2,28.6 26,28.6   26,26 31.2,26 "/>
                    <rect fill="{{BRAND_COLOR}}" height="5.2" width="2.6" y="28.6"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.6" x="5.2" y="28.6"/>
                    <polygon
                            fill="{{BRAND_COLOR}}" points="10.4,28.6 15.6,28.6 15.6,31.2 13,31.2 13,33.8 10.4,33.8 10.4,41.6 7.8,41.6 7.8,44.2 0,44.2 0,41.6 5.2,41.6   5.2,39 0,39 0,36.4 2.6,36.4 2.6,33.8 5.2,33.8 5.2,36.4 7.8,36.4 7.8,31.2 10.4,31.2 "/>
                    <rect fill="{{BRAND_COLOR}}" height="5.2" width="2.601" x="54.6" y="28.6"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.601" x="59.8" y="28.6"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.6" x="15.6" y="31.2"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.6" x="23.4" y="31.2"/>
                    <rect fill="{{BRAND_COLOR}}" height="7.8" width="2.6" x="62.4" y="31.2"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.601" width="2.6" x="13" y="33.8"/>
                    <rect fill="{{BRAND_COLOR}}" height="5.2" width="2.6" x="57.2" y="33.8"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.6" x="15.6" y="36.4"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.6" x="23.4" y="36.4"/>
                    <rect fill="{{BRAND_COLOR}}" height="5.199" width="2.601" x="28.6" y="36.4"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.601" x="36.399" y="39"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.601" width="2.6" x="10.4" y="41.6"/>
                    <polygon
                            fill="{{BRAND_COLOR}}" points="15.6,41.6 28.6,41.6 28.6,46.8 26,46.8 26,44.2 23.4,44.2 23.4,46.8 26,46.8 26,49.4 23.4,49.4 23.4,52 20.8,52   20.8,44.2 15.6,44.2 "/>
                    <polygon fill="{{BRAND_COLOR}}" points="33.8,41.6 36.399,41.6 36.399,44.2 39,44.2 39,46.8 33.8,46.8 "/>
                    <rect fill="{{BRAND_COLOR}}" height="10.4" width="2.6" x="62.4" y="41.6"/>
                    <path fill="{{BRAND_COLOR}}" d="M59.8,57.2V54.6h-2.6V49.4H54.6V46.8H57.2V39H54.6v2.6h-7.8V39h-2.6v-2.6H39V39h2.6v2.6H39V44.2h2.6V52H39v-2.6h-2.601V52  h-2.6v-5.2h-5.2v7.8H23.4V57.2H20.8v2.6H26V62.4h2.6v-5.2H31.2V54.6h2.6V57.2h2.6V65H39v-7.8h7.8V54.6H49.4V57.2H52v2.6h2.6V62.4H52  V59.8h-2.6V62.4H46.8V59.8h-5.2V65h18.2v-2.6h-2.6v-5.2H59.8z M52,52h-7.8v-7.8H52V52z"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.601" width="2.601" x="46.8" y="46.8"/>
                    <path fill="{{BRAND_COLOR}}" d="M0,46.8V65h18.2V46.8H0z M15.6,62.4h-13v-13h13V62.4z"/>
                    <rect fill="{{BRAND_COLOR}}" height="7.8" width="7.8" x="5.2" y="52"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="5.2" x="59.8" y="57.2"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="5.2" x="28.6" y="62.4"/>
                    <rect fill="{{BRAND_COLOR}}" height="2.6" width="2.6" x="62.4" y="62.4"/>
                </svg>              
              </div>
              <div class="row center-align" style="margin-bottom: 0">
                <p id="qr-label">SCAN</p>
              </div>
            </div>
    ''');
  }

  if (methods.contains(AuthenticationMethod.scanQr) &&
      (methods.contains(AuthenticationMethod.emailAndPassword) ||
          methods.contains(AuthenticationMethod.otp))) {
    template = template.replaceAll("<!--{{VERTICAL_DIVIDER}}-->", '''
            <div class="col s1 center-align form-row-item" style="flex: 1">
              <div class="vertical-divider-container">
                <div class="vertical-divider center-align"></div>
              </div>
              <p class="vertical-divider-text">or</p>
              <div class="vertical-divider"></div>
            </div>
    ''');
  }

  if (methods.contains(AuthenticationMethod.emailAndPassword) ||
      methods.contains(AuthenticationMethod.otp)) {
    template = template
        .replaceAll("<!--{{AUTHENTICATION_METHOD.EMAIL_PASSWORD_OTP}}-->", '''
    <div class="col s7 form-row-item" style="flex: 7">
      <!--{{AUTHENTICATION_METHOD.EMAIL_PASSWORD}}-->
      <!--{{AUTHENTICATION_METHOD.OTP}}-->
      <div id="login-btn-row" class="row">
        <div class="col s12">
          <a class="waves-effect waves-light btn">LOGIN</a>
        </div>
      </div>
    </div>
    ''');
  }

  if(methods.contains(AuthenticationMethod.emailAndPassword)){
    template = template.replaceAll("<!--{{AUTHENTICATION_METHOD.EMAIL_PASSWORD}}-->", '''
      <div class="row input-row">
        <div class="input-field col s12 input-outlined">
          <input id="email" type="email" class="validate">
          <label for="email">Email</label>
          <!--{{AUTHENTICATION_METHOD.PUSH}}-->
        </div>
      </div>
      <div class="row input-row">
        <div class="input-field col s12 input-outlined">
          <input id="password" type="password" class="validate">
          <label for="password">Password</label>
        </div>
      </div>
    ''');
  }

  if (methods.contains(AuthenticationMethod.push)) {
    template = template.replaceAll("<!--{{AUTHENTICATION_METHOD.PUSH}}-->",
        '<i class="material-icons prefix">notifications</i>');
  }

  if (methods.contains(AuthenticationMethod.otp)) {
    template = template.replaceAll("<!--{{AUTHENTICATION_METHOD.OTP}}-->", '''
    <div class="row input-row">
      <div class="input-field col s12 input-outlined">
        <input id="otp" type="password" class="validate">
        <label for="otp">OTP</label>
      </div>
    </div>
    ''');
  }

  return template
      .replaceAll("{{BRAND_COLOR}}", hexString)
      .replaceAll("{{TITLE}}", title);
}

const _htmlTemplate = """
  <div id='login-card-container' class="row">
    <div class="col s12">
      <div id="login-card" class="card darken-1">
        <div id="login-card-content" class="card-content">
          <span id="login-title" class="card-title">{{TITLE}}</span>
          <div class="row form-row">
            <!--{{AUTHENTICATION_METHOD.QR}}-->
            <!--{{VERTICAL_DIVIDER}}-->
            <!--{{AUTHENTICATION_METHOD.EMAIL_PASSWORD_OTP}}-->
          </div>
      </div>
    </div>
  </div>
</div>
""";
