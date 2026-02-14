import 'package:flutter/material.dart';

// Entry point of the application
void main() {
  runApp(const EPayApp());
}

// The root widget for the application
class EPayApp extends StatelessWidget {
  const EPayApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp is a top-level widget that provides navigation and themes
    return const MaterialApp(
      home: EPayHomePage(),
    );
  }
}

// The home page of the app that will display the main content
class EPayHomePage extends StatelessWidget {
  const EPayHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // background color of the page
      backgroundColor: Colors.green,
      // The app bar at the top of the screen
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Welcome to ePay',
          style: TextStyle(color: Colors.white), // Title text style
        ),
        // Close button in the app bar's leading position
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () {}, // Define action for the close button
        ),
      ),
      // Main body of the home page
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center content vertically
            children: [
              // A container with a dollar icon inside a white circle
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle, // Makes the container a circle
                ),
                child: const Center(
                  child: Icon(
                    Icons.attach_money,
                    size: 100, // Large dollar icon
                    color: Colors.green, // Green color for the icon
                  ),
                ),
              ),
              const SizedBox(height: 20), // Adds spacing between elements
              // Subtitle text
              const Text(
                'More Money in Your Pocket',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold, // Bold text style
                ),
              ),
              const SizedBox(height: 40), // Adds more spacing

              // Main Menu Button Container
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 250, // Fixed width for the button
                height: 50, // Fixed height for the button
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0), // No rounded corners
                ),
                // ElevatedButton with text and an icon
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Black background
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(0), // No rounded corners
                    ),
                  ),
                  onPressed: () {
                    // Navigate to MainMenuScreen when button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainMenuScreen()),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Spacing between text and icon
                    children: [
                      Text(
                        'Main Menu',
                        style: TextStyle(
                            color: Colors.white, fontSize: 16), // White text
                      ),
                      Icon(
                        Icons.arrow_forward, // Forward arrow icon
                        color: Colors.green, // Green icon color
                      ),
                    ],
                  ),
                ),
              ),

              // Check Rates Button Container (Similar structure to the Main Menu button)
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  onPressed: () {
                    // Define your action or navigate to another screen
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Check Rates',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),

              // WhatsApp ePay Button Container
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  onPressed: () {
                    // Define your action or navigate to another screen
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'WhatsApp ePay',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30), // Spacing below the buttons
              // Forgot your pin section with text
              const Text(
                'Forgot Your Pin?\nDial *134*542# to Reset it',
                textAlign: TextAlign.center, // Center text
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14, // Smaller font for the instructions
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// The Main Menu screen that the user can navigate to
class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with a title and back button
      appBar: AppBar(
        title:
            const Text('ePay Main Menu', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.cyan,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      // List of options in the main menu
      body: ListView(
        padding: const EdgeInsets.all(8.0), // Padding around the list
        children: [
          // Container for the "Recipients" option
          Container(
            padding: const EdgeInsets.symmetric(
                vertical: 8.0), // Spacing between tiles
            decoration: BoxDecoration(
              color: Colors.white, // Background color for each item
              borderRadius: BorderRadius.circular(10), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow effect
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              leading:
                  const Icon(Icons.people, color: Colors.green), // Leading icon
              title: const Text('Recipients',
                  style: TextStyle(color: Colors.black)),
              trailing: const Icon(Icons.arrow_forward,
                  color: Colors.green), // Trailing icon
              onTap: () {
                // Navigate to RecipientsScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipientsScreen()),
                );
              },
            ),
          ),
          const SizedBox(height: 20), // Space between items

          // Similar structure for "My Profile" option
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              leading: const Icon(Icons.person, color: Colors.green),
              title: const Text('My Profile',
                  style: TextStyle(color: Colors.black)),
              trailing: const Icon(Icons.arrow_forward, color: Colors.green),
              onTap: () {
                // Define navigation to My Profile screen
              },
            ),
          ),
          const SizedBox(height: 20),

          // Similar structure for "Contact ePay" option
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              leading: const Icon(Icons.call, color: Colors.green),
              title: const Text('Contact ePay',
                  style: TextStyle(color: Colors.black)),
              trailing: const Icon(Icons.arrow_forward, color: Colors.green),
              onTap: () {
                // Define navigation to Contact ePay screen
              },
            ),
          ),
          const SizedBox(height: 20),

          // Similar structure for "Sign Out" option
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              leading: const Icon(Icons.exit_to_app, color: Colors.green),
              title:
                  const Text('Sign Out', style: TextStyle(color: Colors.black)),
              trailing: const Icon(Icons.arrow_forward, color: Colors.green),
              onTap: () {
                // Define sign-out operation
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Screen displaying a list of recipients
class RecipientsScreen extends StatelessWidget {
  RecipientsScreen({super.key});

  // List of recipients with name and phone number
  final List<Map<String, String>> recipients = [
    {'name': 'John', 'phone': '078654323'},
    {'name': 'Mary', 'phone': '074654313'},
    {'name': 'Smith', 'phone': '068654323'},
    {'name': 'Johnson', 'phone': '079654323'},
    {'name': 'Phillip', 'phone': '075654323'},
    {'name': 'George', 'phone': '078654323'},
    {'name': 'Gerry', 'phone': '078654323'},
    {'name': 'Jane', 'phone': '076 4548 1223'},
    {'name': 'Promise', 'phone': '074 033 8553'},
    {'name': 'Story', 'phone': '084 256 1001'},
    {'name': 'Greene', 'phone': '064 154 4471'},
    {'name': 'Tod', 'phone': '062 014 2415'},
    {'name': 'Kevin', 'phone': '063 487 4457'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar for the recipient list screen
      appBar: AppBar(
        title: const Text('List of Recipients',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.cyan,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop(); // Go back to previous screen
          },
        ),
      ),
      // List view displaying recipients
      body: ListView.builder(
        itemCount: recipients.length, // Number of items in the list
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading:
                    const Icon(Icons.person, size: 40), // Medium-sized icon
                title: Text(recipients[index]['name']!), // Recipient name
                subtitle:
                    Text(recipients[index]['phone']!), // Recipient phone number
                trailing: TextButton(
                  onPressed: () {},
                  child: const Text('Send Money',
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              const Divider(
                thickness: 0.5, // Thinner divider line
                color:
                    Colors.black, // Optional: adjust the color of the divider
              ),
            ],
          );
        },
      ),
    );
  }
}
