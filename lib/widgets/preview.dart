import 'package:admin_login_code_generator/extensions.dart';
import 'package:admin_login_code_generator/models/authentication_method.dart';
import 'package:admin_login_code_generator/models/form_parameters.dart';
import 'package:admin_login_code_generator/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:super_banners/super_banners.dart';

class AdminPreview extends StatelessWidget {
  const AdminPreview({Key? key, FormParameters? parameters})
      : parameters = parameters ??
            const FormParameters(
                title: "Login",
                brandColor: Color(0xFF6640B4),
                methods: AuthenticationMethod.values),
        super(key: key);

  final FormParameters parameters;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: buildTheme(
          colorScheme: ColorScheme.fromSeed(seedColor: parameters.brandColor)),
      child: Column(
        children: [
          Text(
            "Preview",
            style: context.textTheme.displayMedium,
          ),
          Stack(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: Text(
                          parameters.title,
                          style: context.textTheme.titleLarge,
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (parameters.methods
                                .contains(AuthenticationMethod.scanQr))
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: SvgPicture.asset(
                                      "assets/svgs/qr.svg",
                                      width: 196,
                                      colorFilter: ColorFilter.mode(
                                          parameters.brandColor,
                                          BlendMode.srcIn),
                                    ),
                                  ),
                                  Text(
                                    "SCAN",
                                    style: context.textTheme.titleLarge!
                                        .copyWith(color: parameters.brandColor),
                                  ),
                                ],
                              ),
                            if ((parameters.methods.contains(
                                        AuthenticationMethod
                                            .emailAndPassword) ||
                                    parameters.methods
                                        .contains(AuthenticationMethod.otp)) &&
                                parameters.methods
                                    .contains(AuthenticationMethod.scanQr))
                              Column(
                                children: [
                                  const SizedBox(
                                      height: 72, child: VerticalDivider()),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Text(
                                      "or",
                                      style: context.textTheme.titleMedium,
                                    ),
                                  ),
                                  const SizedBox(
                                      height: 72, child: VerticalDivider())
                                ],
                              ),
                            if (parameters.methods.contains(
                                    AuthenticationMethod.emailAndPassword) ||
                                parameters.methods
                                    .contains(AuthenticationMethod.otp))
                              Expanded(
                                child: Column(
                                  children: [
                                    if (parameters.methods.contains(
                                            AuthenticationMethod
                                                .emailAndPassword) ==
                                        true)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelText: "Email",
                                              suffixIcon: parameters.methods
                                                      .contains(
                                                          AuthenticationMethod
                                                              .push)
                                                  ? Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 16),
                                                      child: SvgPicture.asset(
                                                        "assets/svgs/push.svg",
                                                        colorFilter:
                                                            ColorFilter.mode(
                                                                parameters
                                                                    .brandColor,
                                                                BlendMode
                                                                    .srcIn),
                                                        width: 24,
                                                      ),
                                                    )
                                                  : null),
                                        ),
                                      ),
                                    if (parameters.methods.contains(
                                            AuthenticationMethod
                                                .emailAndPassword) ==
                                        true)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            labelText: "Password",
                                          ),
                                        ),
                                      ),
                                    if (parameters.methods
                                        .contains(AuthenticationMethod.otp))
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            labelText: "OTP",
                                          ),
                                        ),
                                      ),
                                    const Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: null,
                                              child: Text("LOGIN")),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                          ]),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 4,
                right: 4,
                child: CornerBanner(
                    bannerPosition: CornerBannerPosition.topRight,
                    bannerColor: const Color(0xFFCCCCCC),
                    child: Text(
                      "Preview",
                      style: context.textTheme.titleLarge,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
