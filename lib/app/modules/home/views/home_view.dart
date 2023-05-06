import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1280) {
          return Scaffold(body: largeScreen());
        } else {
          return Scaffold(
            appBar: AppBar(),
            drawer: sidebar(),
            body: smallScreen(),
          );
        }
      },
    );
  }

  Widget largeScreen() {
    return ListView(
      padding: const EdgeInsets.fromLTRB(150, 24, 150, 24),
      children: [
        navbarWeb(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 96, 0, 96),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 2, child: profileInfo()),
              const Spacer(),
              profilePhoto(),
            ],
          ),
        ),
        const SizedBox(height: 48),
        sectionTitle(title: "My Tech Stack", subtitle: ""),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 6,
          crossAxisSpacing: 98,
          mainAxisSpacing: 32,
          children: [
            techStackCard(image: "assets/ts-html.svg"),
            techStackCard(image: "assets/ts-css.svg"),
            techStackCard(image: "assets/ts-js.svg"),
            techStackCard(image: "assets/ts-react.svg"),
            techStackCard(image: "assets/ts-redux.svg"),
            techStackCard(image: "assets/ts-bootstrap.svg"),
            techStackCard(image: "assets/ts-tailwind.svg"),
            techStackCard(image: "assets/ts-sass.svg"),
            techStackCard(image: "assets/ts-git.svg"),
            techStackCard(image: "assets/ts-vscode.svg"),
            techStackCard(image: "assets/ts-github.svg"),
          ],
        ),
        const SizedBox(height: 48),
        sectionTitle(title: "Personal Projects", subtitle: ""),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: [
            projectCard(image: "assets/project.png"),
            projectCard(image: "assets/project-2.png"),
            projectCard(image: "assets/project-3.png"),
            projectCard(image: "assets/project-4.png"),
            projectCard(image: "assets/project-5.png"),
            projectCard(image: "assets/project-6.png"),
          ],
        ),
        const SizedBox(height: 48),
        footerWeb(),
      ],
    );
  }

  Widget smallScreen() {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        profilePhoto(),
        profileInfo(),
        const SizedBox(height: 12),
        sectionTitle(title: "My Tech Stack", subtitle: ""),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 6,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            techStackCard(image: "assets/ts-html.svg"),
            techStackCard(image: "assets/ts-css.svg"),
            techStackCard(image: "assets/ts-js.svg"),
            techStackCard(image: "assets/ts-react.svg"),
            techStackCard(image: "assets/ts-redux.svg"),
            techStackCard(image: "assets/ts-bootstrap.svg"),
            techStackCard(image: "assets/ts-tailwind.svg"),
            techStackCard(image: "assets/ts-sass.svg"),
            techStackCard(image: "assets/ts-git.svg"),
            techStackCard(image: "assets/ts-vscode.svg"),
            techStackCard(image: "assets/ts-github.svg"),
          ],
        ),
        const SizedBox(height: 12),
        sectionTitle(title: "Personal Projects", subtitle: ""),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 1,
          crossAxisSpacing: 0,
          mainAxisSpacing: 8,
          children: [
            projectCard(image: "assets/project.png"),
            projectCard(image: "assets/project-2.png"),
            projectCard(image: "assets/project-3.png"),
            projectCard(image: "assets/project-4.png"),
            projectCard(image: "assets/project-5.png"),
            projectCard(image: "assets/project-6.png"),
          ],
        ),
        const Divider(),
        contactInfo(),
        socialMedia(),
      ],
    );
  }

  Widget navbarWeb() {
    return Row(
      children: [
        const Text('Paulo Biscocho'),
        const Spacer(),
        pagesButton(),
        socialMedia(),
      ],
    );
  }

  Widget footerWeb() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            contactInfo(),
            const SizedBox(width: 24),
            socialMedia(),
          ],
        ),
        const Divider(),
        const SizedBox(height: 12),
        Row(
          children: [
            pagesButton(),
            const Spacer(),
            const Text("Designed and built by Paulo Biscocho with Love & Cofee")
          ],
        ),
      ],
    );
  }

  Widget profileInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Paulo Biscocho",
          style: Get.textTheme.headlineMedium,
        ),
        Text(
          "Senior Software Engineer",
          style: Get.textTheme.labelMedium,
        ),
        const SizedBox(height: 12),
        Text(
          "As a seasoned software engineer with over a decade of experience, I bring a wealth of expertise in developing and maintaining top-notch software solutions. My skills in creating scalable and maintainable source code have led to successful enterprise-level releases, and my proficiency in relational databases and version control tools allow me to produce reliable and efficient software services. With a passion for innovation and a dedication to excellence, I am always seeking new opportunities to apply my skills and drive meaningful results.",
          style: Get.textTheme.labelLarge,
        ),
      ],
    );
  }

  Widget profilePhoto() {
    return CircleAvatar(
      radius: 120,
      backgroundColor: Get.theme.colorScheme.secondary,
      child: const CircleAvatar(
        backgroundImage: AssetImage("assets/profile.jpg"),
        radius: 110,
      ),
    );
  }

  Widget sectionTitle({title, subtitle}) {
    return Column(
      children: [
        Text(
          title,
          style: Get.textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Text(
          subtitle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget techStackCard({image}) {
    return SvgPicture.asset(image);
  }

  Widget projectCard({image}) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: Get.width,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Project name goes here...",
              style: Get.textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            Text(
              "This is sample project description random things are here in description This is sample project lorem ipsum generator for dummy content",
              style: Get.theme.textTheme.bodySmall,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 12),
            Text(
              "Tech stack:",
              style: Get.textTheme.titleSmall,
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/link.svg",
                    width: 15,
                    height: 15,
                  ),
                  label: const Text("Live Preview"),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/github.svg",
                    width: 15,
                    height: 15,
                  ),
                  label: const Text("View Code"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget pagesButton() {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: const Text("Home"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("About"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Tech Stack"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Projects"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Contact"),
        ),
      ],
    );
  }

  Widget socialMedia() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              shape: const CircleBorder(), minimumSize: const Size(40, 40)),
          child: SvgPicture.asset(
            "assets/github.svg",
            width: 20,
            height: 20,
            colorFilter: ColorFilter.mode(
              Get.theme.colorScheme.primary,
              BlendMode.srcIn,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              shape: const CircleBorder(), minimumSize: const Size(40, 40)),
          child: SvgPicture.asset(
            "assets/twitter.svg",
            width: 20,
            height: 20,
            colorFilter: ColorFilter.mode(
              Get.theme.colorScheme.primary,
              BlendMode.srcIn,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              shape: const CircleBorder(), minimumSize: const Size(40, 40)),
          child: SvgPicture.asset(
            "assets/linkedin.svg",
            width: 20,
            height: 20,
            colorFilter: ColorFilter.mode(
              Get.theme.colorScheme.primary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }

  Widget contactInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("+63977-823-0820"),
        TextButton(
          onPressed: () {},
          child: const Text("paulobiscocho@gmail.com"),
        ),
      ],
    );
  }

  Widget sidebar() {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            title: Text("Paulo Biscocho"),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text("Home"),
          ),
          ListTile(
            onTap: () {},
            title: const Text("About"),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Tech Stack"),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Projects"),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Contact"),
          ),
        ],
      ),
    );
  }
}
