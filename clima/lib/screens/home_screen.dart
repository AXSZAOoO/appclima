import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const HomeScreen({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DetailScreen()),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),

      body: Container(
        // Fondo degradado moderno
        decoration: BoxDecoration(
          gradient: isDarkMode
              ? const LinearGradient(
                  colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : const LinearGradient(
                  colors: [Color(0xFF89F7FE), Color(0xFF66A6FF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
        ),

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //////////////////////////////////////////////////////
                // BOTÓN MODO OSCURO
                //////////////////////////////////////////////////////
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(
                      isDarkMode ? Icons.light_mode : Icons.dark_mode,
                      color: Colors.white,
                    ),
                    onPressed: onToggleTheme,
                  ),
                ),

                const SizedBox(height: 20),

                //////////////////////////////////////////////////////
                // ESPACIO LOGO
                //////////////////////////////////////////////////////
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text("LOGO", style: TextStyle(color: Colors.white)),
                  ),
                ),

                const SizedBox(height: 40),

                //////////////////////////////////////////////////////
                // CIUDAD
                //////////////////////////////////////////////////////
                const Text(
                  "Quito",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Clima actual",
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),

                const SizedBox(height: 40),

                //////////////////////////////////////////////////////
                // TARJETA PRINCIPAL
                //////////////////////////////////////////////////////
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(25),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.wb_sunny_rounded,
                          size: 100,
                          color: Colors.amber,
                        ),

                        SizedBox(height: 20),

                        Text(
                          "22°C",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Soleado",
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
