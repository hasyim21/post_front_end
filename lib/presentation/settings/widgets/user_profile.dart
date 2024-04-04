import 'package:flutter/material.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/services/shared_prefs_service.dart';
import '../../../data/models/response/auth_response_model.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AuthResponseModel>(
      future: SharedPrefsService.getAuthData(),
      builder: (context, snapshot) {
        return Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            border: Border.all(
              width: 1.0,
              color: AppColors.border,
            ),
          ),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 24.0,
                child: Icon(
                  Icons.person,
                  size: 25.0,
                ),
              ),
              const SpaceWidth(12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    snapshot.data?.user.name ?? '-',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SpaceHeight(height: 4.0),
                  Text(
                    snapshot.data?.user.email ?? '-',
                    style: const TextStyle(
                      fontSize: 12.0,
                      // color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
