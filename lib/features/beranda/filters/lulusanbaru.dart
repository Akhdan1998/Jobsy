part of '../../../pages.dart';

class LulusanBaru extends StatefulWidget {
  const LulusanBaru({super.key});

  @override
  State<LulusanBaru> createState() => _LulusanBaruState();
}

class _LulusanBaruState extends State<LulusanBaru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSkin,
      body: Column(
        children: [
          _buildCard(
            context: context,
            boxShadow: [
              const BoxShadow(
                color: transparentColor,
                spreadRadius: 0,
                blurRadius: 0,
              ),
            ],
            color: transparentColor,
            borderRadius: BorderRadius.circular(0),
            margin: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Waiter',
                      style: Poppins(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Rp. 150-200 ribu /hari',
                      style: Poppins(
                        fontWeight: FontWeight.w500,
                        color: deepBlue,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kopitagram',
                      style: Poppins(fontWeight: FontWeight.w300),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 14,
                        ),
                        Text(
                          'Ampera Raya',
                          style: Poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Dibutuhkan pada tanggal 29 Juli sampai 5 Agustus 2025.',
                  style: Poppins(
                    color: redBull,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: [
                      _buildCard(
                        context: context,
                        color: neutralGrey.withOpacity(0.1),
                        padding: const EdgeInsets.only(
                            left: 10, top: 5, right: 10, bottom: 5),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          const BoxShadow(
                            color: transparentColor,
                            spreadRadius: 0,
                            blurRadius: 0,
                          ),
                        ],
                        child: Text(
                          'Paruh waktu',
                          style: Poppins(
                            fontWeight: FontWeight.w400,
                            color: neutralGrey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      _buildCard(
                        context: context,
                        color: neutralGrey.withOpacity(0.1),
                        padding: const EdgeInsets.only(
                            left: 10, top: 5, right: 10, bottom: 5),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          const BoxShadow(
                            color: transparentColor,
                            spreadRadius: 0,
                            blurRadius: 0,
                          ),
                        ],
                        child: Text(
                          'Kerja sama tim',
                          style: Poppins(
                            fontWeight: FontWeight.w400,
                            color: neutralGrey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _buildCard(
            context: context,
            boxShadow: [
              const BoxShadow(
                color: transparentColor,
                spreadRadius: 0,
                blurRadius: 0,
              ),
            ],
            color: neutralGrey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(0),
            margin: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Waiter',
                      style: Poppins(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Rp. 150-200 ribu /hari',
                      style: Poppins(
                        fontWeight: FontWeight.w500,
                        color: deepBlue,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kopitagram',
                      style: Poppins(fontWeight: FontWeight.w300),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 14,
                        ),
                        Text(
                          'Ampera Raya',
                          style: Poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Dibutuhkan pada tanggal 29 Juli sampai 5 Agustus 2025.',
                  style: Poppins(
                    color: redBull,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: [
                      _buildCard(
                        context: context,
                        color: neutralGrey.withOpacity(0.1),
                        padding: const EdgeInsets.only(
                            left: 10, top: 5, right: 10, bottom: 5),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          const BoxShadow(
                            color: transparentColor,
                            spreadRadius: 0,
                            blurRadius: 0,
                          ),
                        ],
                        child: Text(
                          'Paruh waktu',
                          style: Poppins(
                            fontWeight: FontWeight.w400,
                            color: neutralGrey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      _buildCard(
                        context: context,
                        color: neutralGrey.withOpacity(0.1),
                        padding: const EdgeInsets.only(
                            left: 10, top: 5, right: 10, bottom: 5),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          const BoxShadow(
                            color: transparentColor,
                            spreadRadius: 0,
                            blurRadius: 0,
                          ),
                        ],
                        child: Text(
                          'Kerja sama tim',
                          style: Poppins(
                            fontWeight: FontWeight.w400,
                            color: neutralGrey,
                            fontSize: 12,
                          ),
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
