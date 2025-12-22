part of '../../../pages.dart';

class Draf extends StatefulWidget {
  const Draf({super.key});

  @override
  State<Draf> createState() => _DrafState();
}

class _DrafState extends State<Draf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSkin,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: neutralGrey.withOpacity(0.1),
        ),
        child: Column(
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Waiter',
                        style: Poppins(fontWeight: FontWeight.w500),
                      ),
                      _buildCard(
                        context: context,
                        color: redBull.withOpacity(0.2),
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
                          'Draf',
                          style: Poppins(
                            fontWeight: FontWeight.w400,
                            color: redBull,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.access_time_outlined, color: pureBlack, size: 15,),
                              const SizedBox(width: 10),
                              Text(
                                'Magang',
                                style: Poppins(fontSize: 13, fontWeight: FontWeight.w300,),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: pureBlack, size: 15,),
                              const SizedBox(width: 10),
                              Text(
                                'Jakarta Selatan, Indonesia',
                                style: Poppins(fontSize: 13, fontWeight: FontWeight.w300,),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.date_range_rounded, color: pureBlack, size: 15,),
                              const SizedBox(width: 10),
                              Text(
                                'Dibuat pada: 16 Juli 2025',
                                style: Poppins(fontSize: 13, fontWeight: FontWeight.w300,),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios, color: neutralGrey,),
                    ],
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
              borderRadius: BorderRadius.circular(0),
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pramuniaga',
                        style: Poppins(fontWeight: FontWeight.w500),
                      ),
                      _buildCard(
                        context: context,
                        color: redBull.withOpacity(0.2),
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
                          'Draf',
                          style: Poppins(
                            fontWeight: FontWeight.w400,
                            color: redBull,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.access_time_outlined, color: pureBlack, size: 15,),
                              const SizedBox(width: 10),
                              Text(
                                'Part Time',
                                style: Poppins(fontSize: 13, fontWeight: FontWeight.w300,),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: pureBlack, size: 15,),
                              const SizedBox(width: 10),
                              Text(
                                'Jakarta Timur, Indonesia',
                                style: Poppins(fontSize: 13, fontWeight: FontWeight.w300,),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.date_range_rounded, color: pureBlack, size: 15,),
                              const SizedBox(width: 10),
                              Text(
                                'Dibuat pada: 21 September 2025',
                                style: Poppins(fontSize: 13, fontWeight: FontWeight.w300,),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios, color: neutralGrey,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
