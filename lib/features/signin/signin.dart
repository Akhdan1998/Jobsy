part of '../../pages.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isPersonTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSkin,
      body: Column(
        children: [
          Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                height: isPersonTileExpanded ? 456 : 550,
                decoration: BoxDecoration(
                  color: skyBlue,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                top: 260,
                left: -150,
                child: Image.asset('assets/images/efek1.png'),
              ),
              Positioned(
                top: 0,
                child: Image.asset('assets/images/efek2.png'),
              ),
              Positioned.fill(
                child: Center(
                  child: Text(
                    'Part Time\nInternship\nJob Search',
                    style: Poppins(
                      color: whiteSkin,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 20,
                right: 280,
                child: ReusableExpansionTile<Language>(
                  titleAlignment: Alignment.centerLeft,
                  leadingIcon: null,
                  dividerColor: whiteSkin,
                  trailingColor: whiteSkin,
                  onExpansionChanged: (isExpanded) {},
                  title: '\u{1F310}',
                  items: languageList,
                  itemBuilder: (item) => Text(
                    item.bahasa,
                    style: Poppins(color: whiteSkin),
                  ),
                  itemLabelBuilder: (item) => item.bahasa,
                  onItemPressed: (item) {
                    debugPrint(
                        'Bahasa yang dipilih: ${item.bahasa} (${item.id})');
                  },
                  textColor: whiteSkin,
                  borderColor: whiteSkin,
                  iconColor: whiteSkin,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        String? selectedUserRole = prefs.getString('selectedUserRole');

                        if (selectedUserRole == null) {
                          showToast(
                            'Pilih Peran Terlebih Dahulu',
                            Icons.warning_amber,
                            orangeWarning,
                          );
                          return;
                        }

                        Get.to(Whatsapp());
                      },
                      child: _buildCard(
                        context: context,
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          'assets/images/wa.png',
                          scale: 40,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () async {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        String? selectedUserRole = prefs.getString('selectedUserRole');

                        if (selectedUserRole == null) {
                          showToast(
                            'Pilih Peran Terlebih Dahulu',
                            Icons.warning_amber,
                            orangeWarning,
                          );
                          return;
                        }


                        // AuthController.to.signInWithGoogle();
                      },
                      child: _buildCard(
                        context: context,
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          'assets/images/google.png',
                          scale: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ReusableExpansionTile<Person>(
                  leadingIcon:
                      const Icon(Icons.person, color: transparentColor),
                  dividerColor: skyBlue,
                  trailingColor: skyBlue,
                  title: 'Masuk sebagai',
                  items: personList,
                  itemBuilder: (item) => Text(
                    item.pengguna,
                    style: Poppins(color: skyBlue),
                  ),
                  onExpansionChanged: (isExpanded) {
                    setState(() {
                      isPersonTileExpanded = isExpanded;
                    });
                  },
                  itemLabelBuilder: (item) => item.pengguna,
                  onItemPressed: (item) async {
                    debugPrint(
                        'Pengguna yang dipilih: ${item.pengguna} (${item.id})');

                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setString('selectedUserId', item.id);
                    await prefs.setString('selectedUserRole', item.pengguna);
                  },
                  textColor: skyBlue,
                  borderColor: skyBlue,
                  iconColor: skyBlue,
                ),
                const SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Poppins(),
                    children: [
                      TextSpan(
                        text:
                            'Dengan melanjutkan, kamu telah membaca dan menyetujui',
                        style: Poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: ' Kebijakan Pengguna',
                        style: Poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            debugPrint('Kebijakan Pengguna diklik');
                          },
                      ),
                      TextSpan(
                        text: ' dan',
                        style: Poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: ' Kebijakan Privasi',
                        style: Poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            debugPrint('Kebijakan Privasi diklik');
                          },
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