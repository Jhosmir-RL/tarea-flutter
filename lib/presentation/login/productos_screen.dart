import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF4169E1),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 80.0),
                  child: Text(
                    'Products',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: Offset(0, -5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                _buildCategoryChip('All products'),
                                _buildCategoryChip('Clothes'),
                                _buildCategoryChip('Systems'),
                                _buildCategoryChip('Le grand'),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: GridView.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                              childAspectRatio: 0.85,
                              children: [
                                _buildProductCard('Ship', '\$14.99'),
                                _buildProductCard('T-Shirt', '\$24.99'),
                                _buildProductCard('Perfume', '\$34.99'),
                                _buildProductCard('Glasses', '\$19.99'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavIcon(Icons.shopping_cart_outlined),
                  _buildNavIcon(Icons.search),
                  _buildNavIcon(Icons.home),
                  _buildNavIcon(Icons.person_outline),
                  _buildNavIcon(Icons.menu),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavIcon(IconData icon) {
    return Icon(
      icon,
      size: 58,
      color: Colors.blue,
    );
  }

  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            color: Color(0xFF4169E1),
            fontSize: 14,
          ),
        ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Color(0xFF4169E1)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    );
  }

  Widget _buildProductCard(String name, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFE3F2FD),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            name == 'Ship' ? Icons.directions_boat :
            name == 'T-Shirt' ? Icons.checkroom :
            name == 'Perfume' ? Icons.local_drink :
            Icons.visibility,
            size: 74,
            color: Color(0xFF4169E1),
          ),
          const SizedBox(height: 12),
          Text(
            name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF4169E1),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              5,
                  (index) => Icon(
                Icons.star,
                size: 16,
                color: index < 4 ? Color(0xFF4169E1) : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}