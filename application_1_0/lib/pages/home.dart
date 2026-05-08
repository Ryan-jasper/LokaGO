import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color bgColor = Color(0xFFF4F4F4);
  static const Color primaryCoral = Color(0xFFE2775B);
  static const Color softCoral = Color(0xFFF2C3B8);
  static const Color primaryGreen = Color(0xFF69C3A8);
  static const Color darkGreen = Color(0xFF0F9D6C);
  static const Color textDark = Color(0xFF232248);
  static const Color mutedText = Color(0xFF9A9A9A);
  static const Color pathGrey = Color(0xFFD8D8D8);
  static const Color lockedGrey = Color(0xFFD9D9D9);
  static const Color gold = Color(0xFFF4B11A);
  static const Color goldDark = Color(0xFFE5A400);

  @override
  Widget build(BuildContext context) {
    final String userName = 'Bubi';
    final int hearts = 15;
    final int streak = 4;

    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: const _HomeBottomNav(),
      body: SafeArea(
        child: Column(
          children: [
            _buildTopHeader(
              userName: userName,
              hearts: hearts,
              streak: streak,
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 6),
                    _buildContinueCard(),
                    const SizedBox(height: 14),
                    const _LearningPathSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopHeader({
    required String userName,
    required int hearts,
    required int streak,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 18, 22, 8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xFFD9D9D9),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              userName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                '$hearts',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFD6372A),
                ),
              ),
              const SizedBox(width: 6),
              const Icon(
                Icons.favorite_border_rounded,
                color: Color(0xFFD6372A),
                size: 34,
              ),
            ],
          ),
          const SizedBox(width: 24),
          Row(
            children: [
              Text(
                '$streak',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: gold,
                ),
              ),
              const SizedBox(width: 6),
              const Icon(
                Icons.local_fire_department_outlined,
                color: gold,
                size: 34,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContinueCard() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.fromLTRB(22, 22, 22, 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFE2775B),
            Color(0xFFE38A75),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lanjut Kelas',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Bahasa Sunda:\nPerkenalan',
                      style: TextStyle(
                        fontSize: 26,
                        height: 1.15,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              SizedBox(
                width: 90,
                height: 90,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 72,
                      height: 72,
                      child: CircularProgressIndicator(
                        value: 0.65,
                        strokeWidth: 8,
                        backgroundColor: Colors.white24,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          Colors.white,
                        ),
                        strokeCap: StrokeCap.round,
                      ),
                    ),
                    const Text(
                      '65%',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Container(
            width: double.infinity,
            height: 62,
            decoration: BoxDecoration(
              color: const Color(0xFFF2DFD8),
              borderRadius: BorderRadius.circular(31),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_arrow_rounded,
                  color: primaryCoral,
                  size: 34,
                ),
                SizedBox(width: 8),
                Text(
                  'Lanjut Belajar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: primaryCoral,
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

class _LearningPathSection extends StatelessWidget {
  const _LearningPathSection();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 980,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;

          final points = <Offset>[
            Offset(w * 0.58, 60),   // coin
            Offset(w * 0.70, 210),  // step 1
            Offset(w * 0.76, 380),  // step 2
            Offset(w * 0.70, 560),  // step 3
            Offset(w * 0.58, 720),  // step 4
            Offset(w * 0.45, 880),  // step 5
          ];

          return Stack(
            children: [
              // garis utama meliuk
              CustomPaint(
                size: Size(w, 980),
                painter: _LearningPathPainter(points: points),
              ),

              // gradient bawah
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: IgnorePointer(
                  child: Container(
                    height: 190,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x00D9F0EA),
                          Color(0x80D9F0EA),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ),

              // coin / reward
              Positioned(
                left: points[0].dx - 35,
                top: points[0].dy - 35,
                child: const _RewardCoin(),
              ),

              // maskot + bubble
              Positioned(
                left: 28,
                top: 430,
                child: Column(
                  children: [
                    _SpeechBubble(
                      text: 'Semangat!',
                      width: 140,
                    ),
                    const SizedBox(height: 16),
                    Image.asset(
                      'assets/images/signup/loka.png',
                      width: 130,
                    ),
                  ],
                ),
              ),

              // step nodes
              Positioned(
                left: points[1].dx - 36,
                top: points[1].dy - 36,
                child: const _StepNode(
                  number: 1,
                  status: StepStatus.done,
                ),
              ),
              Positioned(
                left: points[2].dx - 36,
                top: points[2].dy - 36,
                child: const _StepNode(
                  number: 2,
                  status: StepStatus.done,
                ),
              ),
              Positioned(
                left: points[3].dx - 44,
                top: points[3].dy - 44,
                child: const _StepNode(
                  number: 3,
                  status: StepStatus.current,
                ),
              ),
              Positioned(
                left: points[4].dx - 36,
                top: points[4].dy - 36,
                child: const _StepNode(
                  number: 4,
                  status: StepStatus.locked,
                ),
              ),
              Positioned(
                left: points[5].dx - 36,
                top: points[5].dy - 36,
                child: const _StepNode(
                  number: 5,
                  status: StepStatus.locked,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

enum StepStatus { done, current, locked }

class _StepNode extends StatelessWidget {
  final int number;
  final StepStatus status;

  const _StepNode({
    required this.number,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    Color topColor;
    Color bottomColor;
    Color textColor;
    double size;
    Widget child;

    switch (status) {
      case StepStatus.done:
        topColor = const Color(0xFF72C8AD);
        bottomColor = const Color(0xFF0F9D6C);
        textColor = Colors.white;
        size = 72;
        child = Text(
          '$number',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: textColor,
          ),
        );
        break;
      case StepStatus.current:
        topColor = const Color(0xFFF6B9AA);
        bottomColor = const Color(0xFFFF775A);
        textColor = Colors.white;
        size = 88;
        child = Text(
          '$number',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            color: textColor,
          ),
        );
        break;
      case StepStatus.locked:
        topColor = const Color(0xFFDADADA);
        bottomColor = const Color(0xFFBDBDBD);
        textColor = const Color(0xFFAFAFAF);
        size = 72;
        child = Text(
          '$number',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: textColor,
          ),
        );
        break;
    }

    final bool isCurrent = status == StepStatus.current;

    return Column(
      children: [
        if (isCurrent)
          Container(
            width: 96,
            height: 96,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFD5D5D5),
                width: 8,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEEB7AB),
              ),
              alignment: Alignment.center,
              child: child,
            ),
          )
        else
          Column(
            children: [
              Container(
                width: size,
                height: 12,
                decoration: BoxDecoration(
                  color: bottomColor,
                  borderRadius: BorderRadius.circular(999),
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -8),
                child: Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: topColor,
                  ),
                  alignment: Alignment.center,
                  child: child,
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class _RewardCoin extends StatelessWidget {
  const _RewardCoin();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 72,
          height: 14,
          decoration: BoxDecoration(
            color: const Color(0xFFE5A400),
            borderRadius: BorderRadius.circular(999),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -8),
          child: Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF4B11A),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 54,
                  height: 54,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF8D27A),
                  ),
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Colors.white,
                  size: 34,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SpeechBubble extends StatelessWidget {
  final String text;
  final double width;

  const _SpeechBubble({
    required this.text,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFD9D4D6),
              width: 2,
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF4E4E4E),
            ),
          ),
        ),
        Positioned(
          left: 16,
          bottom: -10,
          child: Transform.rotate(
            angle: 0.78,
            child: Container(
              width: 18,
              height: 18,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  right: BorderSide(
                    color: Color(0xFFD9D4D6),
                    width: 2,
                  ),
                  bottom: BorderSide(
                    color: Color(0xFFD9D4D6),
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _LearningPathPainter extends CustomPainter {
  final List<Offset> points;

  const _LearningPathPainter({
    required this.points,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paintLine = Paint()
      ..color = const Color(0xFFD9D9D9)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();

    path.moveTo(points[0].dx, points[0].dy);

    for (int i = 1; i < points.length; i++) {
      final previous = points[i - 1];
      final current = points[i];

      final controlY = (previous.dy + current.dy) / 2;

      path.cubicTo(
        previous.dx,
        controlY,
        current.dx,
        controlY,
        current.dx,
        current.dy,
      );
    }

    canvas.drawPath(path, paintLine);
  }

  @override
  bool shouldRepaint(covariant _LearningPathPainter oldDelegate) => false;
}

class _HomeBottomNav extends StatelessWidget {
  const _HomeBottomNav();

  // static const Color activeColor = Color(0xFF69C3A8);
  // static const Color inactiveColor = Color(0xFF8EA0B8);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      decoration: const BoxDecoration(
        color: Color(0xFFF4F4F4),
        border: Border(
          top: BorderSide(
            color: Color(0xFFE0E0E0),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _BottomNavItem(
            icon: Icons.home_outlined,
            label: 'Home',
            active: true,
          ),
          _BottomNavItem(
            icon: Icons.local_fire_department_outlined,
            label: 'Streak',
            active: false,
          ),
          _BottomNavItem(
            icon: Icons.map_outlined,
            label: 'Peta',
            active: false,
          ),
          _BottomNavItem(
            icon: Icons.person_outline,
            label: 'Profil',
            active: false,
          ),
        ],
      ),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const _BottomNavItem({
    required this.icon,
    required this.label,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    final color = active
        ? const Color(0xFF69C3A8)
        : const Color(0xFF8EA0B8);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: 30),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
      ],
    );
  }
}