import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Image image = const Image(image: AppImages.logo);
    return Scaffold(
      drawer: CustomDrawerDS(
        userName: 'Beth Almeida',
        userLocation: 'Sao Paulo - SP',
        userImage: image.image,
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Beth Almeida',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'São Paulo - SP',
                  style: theme.textTheme.labelSmall?.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const Gap(23),
            Badge.count(
              backgroundColor: AppColors.primaryColor,
              count: 5,
              child: const CircleAvatar(
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BannerDs(
              backGroundImage: const DecorationImage(
                image: AppImages.homeBannerDog,
                fit: BoxFit.cover,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 22, left: 18),
                child: Text(
                  'Tudo para \no seu pet!',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 22.4,
                  ),
                ),
              ),
              subtitle: InkWell(
                onTap: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 0),
                  child: Text(
                    'Clique aqui',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 11.5,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
              ),
            ),
            const Gap(18),
            TextInputDs(
              label: 'Procure o seu bixinho',
              labelStyle: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w200,
                fontSize: 13,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: AppColors.secondaryColor,
              ),
            ),
            const Gap(18),
            HomeSliderDS(
              backGroundImage: AppImages.homeBannerDog,
              onPrevious: () {},
              onNext: () {},
              showNextButton: true,
              showPreviousButton: false,
              isFavorite: true,
            ),
          ],
        ),
      ),
    );
  }
}
