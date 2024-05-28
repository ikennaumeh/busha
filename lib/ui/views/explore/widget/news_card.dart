import 'package:busha_test/models/news.dart';
import 'package:busha_test/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final News news;
  final int index;
  final VoidCallback? onTap;
  const NewsCard({
    super.key,
    required this.news,
    required this.index,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Ink(
            padding: screenPadding.add(
              const EdgeInsets.only(
                top: 12,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 166,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Image.asset(
                    news.image,
                    fit: BoxFit.fill,
                  ),
                ),
                verticalSpace(16),
                Text(
                  news.headline,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                verticalSpace(8),
                RichText(
                  text: TextSpan(
                    text: news.company,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff9BA0A5),
                    ),
                    children: [
                      const TextSpan(text: ' '),
                      const TextSpan(text: '•'),
                      const TextSpan(text: ' '),
                      TextSpan(text: news.timeAgo)
                    ],
                  ),
                ),
                spacedDivider,
              ],
            ),
          ),
        ),
      );
    }
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          padding: screenPadding.add(const EdgeInsets.only(
            top: 12,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 73,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Image.asset(
                      news.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          news.headline,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        verticalSpace(8),
                        RichText(
                          text: TextSpan(
                            text: news.company,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff9BA0A5),
                            ),
                            children: [
                              const TextSpan(text: ' '),
                              const TextSpan(text: '•'),
                              const TextSpan(text: ' '),
                              TextSpan(text: news.timeAgo)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              spacedDivider,
            ],
          ),
        ),
      ),
    );
  }
}
