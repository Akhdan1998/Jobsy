part of '../../../pages.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSkin,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.zero,
          color: whiteSkin,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(Detail());
              },
              child: _buildCard(
                context: context,
                boxShadow: [
                  const BoxShadow(
                    color: transparentColor,
                    spreadRadius: 0,
                    blurRadius: 0,
                  ),
                ],
                color: transparentColor,
                borderRadius: BorderRadius.zero,
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
                          color: 'FBE8C7'.toColor(),
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
                            'Dalam Review',
                            style: Poppins(
                              fontWeight: FontWeight.w400,
                              color: 'EE6D02'.toColor(),
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
              borderRadius: BorderRadius.zero,
              margin: EdgeInsets.zero,
              color: neutralGrey.withOpacity(0.2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Admin',
                        style: Poppins(fontWeight: FontWeight.w500),
                      ),
                      _buildCard(
                        context: context,
                        color: 'FBE8C7'.toColor(),
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
                          'Dalam Review',
                          style: Poppins(
                            fontWeight: FontWeight.w400,
                            color: 'EE6D02'.toColor(),
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
                                'Jakarta Barat, Indonesia',
                                style: Poppins(fontSize: 13, fontWeight: FontWeight.w300,),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.date_range_rounded, color: pureBlack, size: 15,),
                              const SizedBox(width: 10),
                              Text(
                                'Dibuat pada: 5 Agustus 2025',
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
