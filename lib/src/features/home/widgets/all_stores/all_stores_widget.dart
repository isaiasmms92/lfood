import 'package:flutter/material.dart';
import 'package:pepperoni/pepperoni.dart';

class AllStoresWidget extends StatefulWidget {
  final TabController tabController;
  const AllStoresWidget({super.key, required this.tabController});

  @override
  State<AllStoresWidget> createState() => _AllStoresWidgetState();
}

class _AllStoresWidgetState extends State<AllStoresWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CategoryListWidget(
            items: [
              CategoryListItem(
                label: 'Restaurantes',
                imageUrl:
                    'https://www.pngarts.com/files/3/McDonalds-Burger-Transparent-Background-PNG.png',
                onTap: (item) {
                  widget.tabController.animateTo(1);
                },
              ),
              CategoryListItem(
                label: 'Mercados',
                imageUrl:
                    'https://www.pngarts.com/files/3/Shopping-Cart-PNG-Image-Background.png',
                onTap: (item) {
                  widget.tabController.animateTo(2);
                },
              ),
              CategoryListItem(
                label: 'Bebidas',
                imageUrl:
                    'https://www.pngarts.com/files/8/Ice-Drink-PNG-Download-Image.png',
                onTap: (item) {
                  widget.tabController.animateTo(3);
                },
              ),
              CategoryListItem(
                label: 'Farmácias',
                imageUrl:
                    'https://www.pngall.com/wp-content/uploads/12/Pills-Medicine-PNG-Image.png',
                onTap: (item) {
                  widget.tabController.animateTo(4);
                },
              ),
              CategoryListItem(
                label: 'Pet',
                imageUrl:
                    'https://images.vexels.com/media/users/3/223316/isolated/lists/c42d98f6c7dd63ba9ca673d20a0492ce-edificio-de-loja-de-animais-de-estimacao.png',
                onTap: (item) {
                  widget.tabController.animateTo(5);
                },
              ),
              CategoryListItem(
                label: 'Clube LFood',
                imageUrl:
                    'https://cdn-icons-png.flaticon.com/512/1041/1041885.png',
                onTap: (item) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Container(
                        color: Colors.red,
                      ),
                    ),
                  );
                },
              ),
              CategoryListItem(
                label: 'Feed',
                imageUrl:
                    'https://i.pinimg.com/564x/38/67/b4/3867b40285f6a8bff1a394803138a9c2.jpg',
                onTap: (item) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Container(
                        color: Colors.blue,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          const CouponsAndNewWidget(
            imageList: [
              'https://1.bp.blogspot.com/-mTwYwCRVKfM/YE-WAnvbzrI/AAAAAAAADSE/I847wTuHpCoE_FujeSX2TTJqKv6ibndogCLcBGAsYHQ/s900/Promo%25C3%25A7%25C3%25A3o-Ifood-Tudo-Por-Apenas-0%252C99.webp',
              'https://blogger.googleusercontent.com/img/a/AVvXsEgMDQI2e-CrBwhy0N93ruXpb5gnSYEpK89QnQutagr7GAmI4xcFxKl8e7PcCRmt6SNqqtAD9Bkc3whoIjRj01OHQy_rZbwe2r8w0MBrGOM9IB-rpo7285vNZhkts7iCi6NjeUVjB2EY1qnLBGYw4TvuXn_2I-6teEqSJq5zfR0g2-mSgO0Kt8Xu05-tmA=s1056',
              'https://news.ifood.com.br/_next/image/?url=https%3A%2F%2Fd23vje10llbspb.cloudfront.net%2Fuploads%2F2022%2F03%2F0296a691b84b4d14881d1846e520de39_cms-1646689926357-whatsapp-image-2022-03-04-at-115958jpeg.jpeg&w=1024&q=75',
              'https://1.bp.blogspot.com/-mTwYwCRVKfM/YE-WAnvbzrI/AAAAAAAADSE/I847wTuHpCoE_FujeSX2TTJqKv6ibndogCLcBGAsYHQ/s900/Promo%25C3%25A7%25C3%25A3o-Ifood-Tudo-Por-Apenas-0%252C99.webp',
              'https://blogger.googleusercontent.com/img/a/AVvXsEgMDQI2e-CrBwhy0N93ruXpb5gnSYEpK89QnQutagr7GAmI4xcFxKl8e7PcCRmt6SNqqtAD9Bkc3whoIjRj01OHQy_rZbwe2r8w0MBrGOM9IB-rpo7285vNZhkts7iCi6NjeUVjB2EY1qnLBGYw4TvuXn_2I-6teEqSJq5zfR0g2-mSgO0Kt8Xu05-tmA=s1056',
              'https://news.ifood.com.br/_next/image/?url=https%3A%2F%2Fd23vje10llbspb.cloudfront.net%2Fuploads%2F2022%2F03%2F0296a691b84b4d14881d1846e520de39_cms-1646689926357-whatsapp-image-2022-03-04-at-115958jpeg.jpeg&w=1024&q=75',
            ],
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
