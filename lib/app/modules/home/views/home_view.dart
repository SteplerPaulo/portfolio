import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
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
            appBar: AppBar(
              actions: [socialMedia()],
            ),
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
        sectionTitle(
            title: "Tools & Technology",
            subtitle:
                "A tech stack is the set of technologies used to develop an application, including programming languages, frameworks, databases, front-end and back-end tools, and APIs"),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 6,
          crossAxisSpacing: 98,
          mainAxisSpacing: 32,
          children: [
            techStackCard(image: "assets/ts-flutter.svg"),
            techStackCard(image: "assets/ts-dart.svg"),
            techStackCard(image: "assets/ts-html.svg"),
            techStackCard(image: "assets/ts-css.svg"),
            techStackCard(image: "assets/ts-js.svg"),
            techStackCard(image: "assets/ts-react.svg"),
            techStackCard(image: "assets/ts-mui.svg"),
            techStackCard(image: "assets/ts-bootstrap.svg"),
            techStackCard(image: "assets/ts-tailwind.svg"),
            techStackCard(image: "assets/ts-sass.svg"),
            techStackCard(image: "assets/ts-mysql.svg"),
            techStackCard(image: "assets/ts-git.svg"),
            techStackCard(image: "assets/ts-vscode.svg"),
            techStackCard(image: "assets/ts-github.svg"),
            techStackCard(image: "assets/ts-gitlab.svg"),
            techStackCard(image: "assets/ts-postgresql.svg"),
            techStackCard(image: "assets/ts-aws.svg"),
            techStackCard(image: "assets/ts-nestjs.svg"),
          ],
        ),
        const SizedBox(height: 48),
        sectionTitle(
            title: "Software projects",
            subtitle: "Including private & public repository"),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: [
            projectCard(image: "assets/akin.png", title: "AKIN"),
            projectCard(image: "assets/biddit.jpg", title: "Biddit"),
            projectCard(image: "assets/commisari.png", title: "Commisari"),
            projectCard(
                image: "assets/ser.png", title: "Simplified Recordbook"),
            projectCard(
                image: "assets/project-5.png",
                title: "Electronic Enrollment System"),
            projectCard(image: "assets/project-6.png", title: "Balloonation"),
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
        sectionTitle(
            title: "My tech stack",
            subtitle:
                "A tech stack is the set of technologies used to develop an application, including programming languages, frameworks, databases, front-end and back-end tools, and APIs"),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 5,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            techStackCard(image: "assets/ts-flutter.svg"),
            techStackCard(image: "assets/ts-dart.svg"),
            techStackCard(image: "assets/ts-html.svg"),
            techStackCard(image: "assets/ts-css.svg"),
            techStackCard(image: "assets/ts-js.svg"),
            techStackCard(image: "assets/ts-react.svg"),
            techStackCard(image: "assets/ts-mui.svg"),
            techStackCard(image: "assets/ts-bootstrap.svg"),
            techStackCard(image: "assets/ts-tailwind.svg"),
            techStackCard(image: "assets/ts-sass.svg"),
            techStackCard(image: "assets/ts-mysql.svg"),
            techStackCard(image: "assets/ts-git.svg"),
            techStackCard(image: "assets/ts-vscode.svg"),
            techStackCard(image: "assets/ts-github.svg"),
            techStackCard(image: "assets/ts-gitlab.svg"),
            techStackCard(image: "assets/ts-postgresql.svg"),
            techStackCard(image: "assets/ts-aws.svg"),
            techStackCard(image: "assets/ts-nestjs.svg"),
          ],
        ),
        const SizedBox(height: 12),
        sectionTitle(
            title: "Software projects",
            subtitle: "Including private & public repository"),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 1,
          crossAxisSpacing: 0,
          mainAxisSpacing: 8,
          children: [
            projectCard(image: "assets/project.png", title: "AKIN"),
            projectCard(image: "assets/project-2.png", title: "Biddit"),
            projectCard(image: "assets/project-3.png", title: "Commisari"),
            projectCard(
                image: "assets/project-4.png",
                title: "Simplified Electronic Recordbook"),
            projectCard(
                image: "assets/project-5.png",
                title: "Electronic Enrollment System"),
            projectCard(image: "assets/project-6.png", title: "Balloonation"),
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
        // const Text('Paulo Biscocho'),
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
            Text(
              'Paulo Biscocho',
              style: Get.textTheme.titleMedium?.copyWith(
                foreground: Paint()
                  ..shader = const LinearGradient(
                    //colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
                    colors: <Color>[Color(0xFFF45050), Color(0xFF3C486B)],
                  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
              ),
            ),
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
          'Paulo Biscocho',
          style: Get.textTheme.headlineMedium?.copyWith(
            foreground: Paint()
              ..shader = const LinearGradient(
                //colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
                colors: <Color>[Color(0xFFF45050), Color(0xFF3C486B)],
              ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
          ),
        ),
        Text(
          "Senior Software Engineer",
          style: Get.textTheme.labelLarge,
        ),
        const SizedBox(height: 12),
        Text(
          "A seasoned software engineer with over a decade of experience. Expert in developing and maintaining top-notch software solutions. With a passion for innovation and a dedication to excellence, I am always seeking new opportunities to apply my skills and drive meaningful results.",
          style: Get.textTheme.labelMedium,
        ),
      ],
    );
  }

  Widget profilePhoto() {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: const EdgeInsets.all(5), // Border width
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFF45050), Color(0xFF3C486B)],
        ),
      ),
      child: ClipOval(
        child: Image.asset(
          "assets/pau.jpg",
          fit: BoxFit.contain,
          width: 260,
          height: 260,
          // width: 260,
        ),
      ),
    );
  }

  Widget sectionTitle({title, subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: Get.textTheme.headlineSmall,
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: Get.textTheme.bodySmall,
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget techStackCard({image}) {
    return SvgPicture.asset(image);
  }

  Widget projectCard({image, title}) {
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
              title,
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
                    colorFilter: ColorFilter.mode(
                      Get.theme.colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: const Text("Live Preview"),
                ),
                TextButton.icon(
                  onPressed: () {},
                  // icon: SvgPicture.asset(
                  //   "assets/github.svg",
                  //   width: 15,
                  //   height: 15,
                  //   colorFilter: ColorFilter.mode(
                  //     Get.theme.colorScheme.primary,
                  //     BlendMode.srcIn,
                  //   ),
                  // ),
                  icon: const Icon(Icons.lock),
                  label: const Text("Private"),
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
          onPressed: () {
            launchUrl(Uri.parse("https://github.com/SteplerPaulo"));
          },
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
          onPressed: () {
            launchUrl(Uri.parse("https://www.codewars.com/users/steplerpaulo"));
          },
          style: TextButton.styleFrom(
              shape: const CircleBorder(), minimumSize: const Size(40, 40)),
          child: SvgPicture.asset(
            "assets/codewars.svg",
            width: 20,
            height: 20,
            colorFilter: ColorFilter.mode(
              Get.theme.colorScheme.primary,
              BlendMode.srcIn,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            launchUrl(Uri.parse("https://www.linkedin.com/in/paulo-biscocho/"));
          },
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
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/pau.jpg"),
            ),
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
