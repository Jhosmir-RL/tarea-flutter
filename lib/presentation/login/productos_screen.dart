import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        "name": "Zapatillas",
        "price": "129.99",
        "image":
        "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,e_sharpen:95,w_2000,h_2000/global/395205/02/sv01/fnd/PER/fmt/png/Zapatillas-Suede-XL-unisex",
      },
      {
        "name": "Camiseta",
        "price": "59.99",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwdXtmHFhYlmOvXXQzOWCYPq_7x_LdW7clmA&s",
      },
      {
        "name": "Botella",
        "price": "39.99",
        "image":
        "https://wecool.pe/wp-content/uploads/2024/05/1litroazu.jpg",
      },
      {
        "name": "Gafas",
        "price": "79.99",
        "image":
        "https://goeteyewear.com/cdn/shop/files/NIXMBLKBLU__GOET_NIX-S-MBLKBLU-56-15-135__2500x1400-Quarter.jpg?v=1701726632&width=533",
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F6),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3B82F6),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            "Productos",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Filtro de categorías
          Container(
            color: const Color(0xFF3B82F6),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryButton(text: "Zapatillas"),
                categoryButton(text: "Camisetas"),
                categoryButton(text: "Botellas"),
                categoryButton(text: "Gafas"),
              ],
            ),
          ),
          // Lista de productos
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                  child: Column(
                    children: [
                      // Imagen del producto
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.network(
                            product["image"]!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      // Información del producto
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product["name"]!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "S/. ${product["price"]}",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF3B82F6),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrito',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  Widget categoryButton({required String text}) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
