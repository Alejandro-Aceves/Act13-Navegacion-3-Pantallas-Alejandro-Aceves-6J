import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new, size: 28, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 35, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'Hola, bienvenido de\nnuevo',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A2A3A),
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      'Correo Electrónico',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    _buildFieldButton('Dirección de correo electrónico'),
                    const SizedBox(height: 35),
                    const Text(
                      'Contraseña',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    _buildFieldButton('Contraseña'),
                    const SizedBox(height: 60),
                    Center(
                      child: SizedBox(
                        width: 280,
                        height: 65,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/tercera');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFC2D2E9),
                            foregroundColor: Colors.black,
                            elevation: 1,
                            shape: const StadiumBorder(),
                            side: const BorderSide(color: Colors.black12),
                          ),
                          child: const Text(
                            'Comencemos',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF1A2A3A),
        unselectedItemColor: Colors.black45,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: 3,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 28), label: 'EXPLORAR'),
          BottomNavigationBarItem(icon: Icon(Icons.near_me_outlined, size: 28), label: 'TOURS'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline, size: 28), label: 'RESEÑAS'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle, size: 30), label: 'CUENTA'),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              break;
            case 2:
              Navigator.pushNamed(context, '/tercera');
              break;
            case 3:
              break;
          }
        },
      ),
    );
  }

  Widget _buildFieldButton(String label) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFDDEEEA),
          foregroundColor: Colors.black54,
          elevation: 0,
          alignment: Alignment.centerLeft,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: const BorderSide(color: Colors.black12),
          ),
        ),
        child: Text(label, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}