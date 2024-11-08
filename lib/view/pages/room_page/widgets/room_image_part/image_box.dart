import 'package:flutter/material.dart';

class RoomImageBox extends StatefulWidget {
  final List<String> images;
  const RoomImageBox({
    super.key,
    required this.images,
  });

  @override
  State<RoomImageBox> createState() => _RoomImageBoxState();
}

class _RoomImageBoxState extends State<RoomImageBox> {
  int index = 0;
  late final controller = PageController();
  @override
  void initState() {
    controller.addListener(() {
      if (index != controller.page!.round()) {
        index = controller.page!.round();
        if (mounted) setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 343 / 257,
      child: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: widget.images.length, // hotels.length
            itemBuilder: (context, index) {
              final image = widget.images[index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  image,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) => const SizedBox(
                    child: ColoredBox(color: Colors.lightGreen),
                  ),
                ),
              );
            },
          ),
          Positioned(
              bottom: 10,
              width: width,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < widget.images.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 3, left: 3),
                          child: CircleAvatar(
                              radius: 6,
                              backgroundColor:
                                  index == i ? Colors.black : Colors.grey[20]),
                        )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
