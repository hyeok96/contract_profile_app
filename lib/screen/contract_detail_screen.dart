import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/model/profile_model.dart';

class ContractDetailScreen extends StatelessWidget {
  const ContractDetailScreen({super.key, required this.profile});
  final ProfileModel profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          profile.name,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.network(
                "https://xsgames.co/randomusers/assets/avatars/male/${profile.id}.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 320,
                colorBlendMode: BlendMode.darken,
                color: Colors.black45,
              ),
              Positioned(
                bottom: -48,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage(
                      "https://xsgames.co/randomusers/assets/avatars/male/${profile.id}.jpg",
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 56,
          ),
          Padding(
            padding: const EdgeInsets.all(
              8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeIn(
                  delay: const Duration(milliseconds: 200),
                  child: Text(
                    profile.name,
                    style: const TextStyle(
                      fontSize: 32,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Divider(
                  height: 60,
                ),
                FadeIn(
                  delay: const Duration(
                    milliseconds: 400,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Information",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            profile.phone,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.email),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            profile.website,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.map),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            profile.address.street,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 60,
                ),
                FadeIn(
                  delay: const Duration(
                    milliseconds: 600,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Company",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        profile.company.name,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        profile.company.catchPhrase,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        profile.company.bs,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
