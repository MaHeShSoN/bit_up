import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  print('Starting Firestore population script...');
  
  try {
    // Initialize Firebase
    await Firebase.initializeApp();
    print('Firebase initialized successfully');
    
    final firestore = FirebaseFirestore.instance;
    
    // Sample events data with public image URLs
    final events = [
      {
        'eventId': 'event_001',
        'title': 'Street Food Festival',
        'description': 'Join us for an amazing street food festival featuring vendors from around the world. Experience authentic flavors, live cooking demonstrations, and meet fellow food enthusiasts! This is a family-friendly event with activities for all ages.',
        'date': DateTime.now().add(const Duration(days: 5)).toIso8601String(),
        'location': 'Central Park, New York',
        'imageUrl': 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user1', 'user2', 'user3'],
      },
      {
        'eventId': 'event_002',
        'title': 'Italian Cooking Workshop',
        'description': 'Learn to make authentic Italian pasta from scratch with our professional chef. All ingredients provided. Perfect for beginners and food lovers!',
        'date': DateTime.now().add(const Duration(days: 10)).toIso8601String(),
        'location': 'Culinary Arts Center, Brooklyn',
        'imageUrl': 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user1', 'user4'],
      },
      {
        'eventId': 'event_003',
        'title': 'Food Truck Rally',
        'description': 'The biggest food truck rally of the year! Over 50 food trucks serving everything from gourmet burgers to authentic tacos. Live music and family-friendly activities.',
        'date': DateTime.now().add(const Duration(days: 15)).toIso8601String(),
        'location': 'Brooklyn Bridge Park',
        'imageUrl': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user1', 'user2', 'user3', 'user4', 'user5'],
      },
      {
        'eventId': 'event_004',
        'title': 'Sushi Making Class',
        'description': 'Master the art of sushi making with our expert chef. Learn traditional techniques and create beautiful, delicious sushi rolls. All materials included.',
        'date': DateTime.now().add(const Duration(days: 20)).toIso8601String(),
        'location': 'Tokyo Kitchen Studio, Manhattan',
        'imageUrl': 'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user2', 'user6'],
      },
      {
        'eventId': 'event_005',
        'title': 'BBQ & Beer Tasting',
        'description': 'Join us for an evening of delicious BBQ and craft beer tasting. Learn about different beer styles and perfect BBQ techniques from our experts.',
        'date': DateTime.now().add(const Duration(days: 25)).toIso8601String(),
        'location': 'Smokehouse Grill, Queens',
        'imageUrl': 'https://images.unsplash.com/photo-1544025162-d766942659418?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user1', 'user3', 'user7'],
      },
      {
        'eventId': 'event_006',
        'title': 'Farmers Market Tour',
        'description': 'Explore the best local farmers markets in the city. Meet local producers, taste fresh produce, and learn about sustainable farming practices.',
        'date': DateTime.now().add(const Duration(days: 30)).toIso8601String(),
        'location': 'Union Square Greenmarket',
        'imageUrl': 'https://images.unsplash.com/photo-1488459716781-31db52582fe9?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user4', 'user8'],
      },
      {
        'eventId': 'event_007',
        'title': 'Dessert Workshop',
        'description': 'Create stunning desserts with our pastry chef. Learn to make macarons, chocolate truffles, and beautiful cake decorations.',
        'date': DateTime.now().add(const Duration(days: 35)).toIso8601String(),
        'location': 'Sweet Dreams Bakery, Brooklyn',
        'imageUrl': 'https://images.unsplash.com/photo-1551024506-0bccd828d307?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user2', 'user5', 'user9'],
      },
      {
        'eventId': 'event_008',
        'title': 'Wine & Cheese Pairing',
        'description': 'Discover the perfect combinations of wine and cheese. Learn about different wine regions and cheese varieties from around the world.',
        'date': DateTime.now().add(const Duration(days: 40)).toIso8601String(),
        'location': 'Vintage Cellars, Manhattan',
        'imageUrl': 'https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user1', 'user6', 'user10'],
      },
      {
        'eventId': 'event_009',
        'title': 'Coffee Roasting Experience',
        'description': 'Learn about coffee from bean to cup. Roast your own coffee beans and taste different brewing methods with our coffee experts.',
        'date': DateTime.now().add(const Duration(days: 45)).toIso8601String(),
        'location': 'Artisan Coffee Roasters, Brooklyn',
        'imageUrl': 'https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user3', 'user7'],
      },
      {
        'eventId': 'event_010',
        'title': 'Seafood Cooking Masterclass',
        'description': 'Master the art of cooking seafood with our professional chef. Learn to prepare fish, shellfish, and create restaurant-quality dishes.',
        'date': DateTime.now().add(const Duration(days: 50)).toIso8601String(),
        'location': 'Ocean Breeze Kitchen, Manhattan',
        'imageUrl': 'https://images.unsplash.com/photo-1551218808-94e220e084d2?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user4', 'user8', 'user11'],
      },
      {
        'eventId': 'event_011',
        'title': 'Vegan Cooking Workshop',
        'description': 'Explore plant-based cooking with creative and delicious vegan recipes. Learn about nutrition and sustainable eating habits.',
        'date': DateTime.now().add(const Duration(days: 55)).toIso8601String(),
        'location': 'Green Kitchen Studio, Brooklyn',
        'imageUrl': 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user5', 'user9'],
      },
      {
        'eventId': 'event_012',
        'title': 'Bread Baking Workshop',
        'description': 'Learn the art of bread making from scratch. Create sourdough, baguettes, and artisan breads with traditional techniques.',
        'date': DateTime.now().add(const Duration(days: 60)).toIso8601String(),
        'location': 'Flour Power Bakery, Queens',
        'imageUrl': 'https://images.unsplash.com/photo-1509440159596-0249088772ff?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user6', 'user10', 'user12'],
      },
      {
        'eventId': 'event_013',
        'title': 'Spice Market Tour',
        'description': 'Explore exotic spices and learn about their origins and uses. Visit local spice markets and discover new flavors for your cooking.',
        'date': DateTime.now().add(const Duration(days: 65)).toIso8601String(),
        'location': 'Spice Bazaar, Manhattan',
        'imageUrl': 'https://images.unsplash.com/photo-1596040033229-a9821ebd058d?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user7', 'user11'],
      },
      {
        'eventId': 'event_014',
        'title': 'Cocktail Mixing Class',
        'description': 'Learn to craft perfect cocktails with professional bartenders. Master classic recipes and create your own signature drinks.',
        'date': DateTime.now().add(const Duration(days: 70)).toIso8601String(),
        'location': 'Mixology Bar, Brooklyn',
        'imageUrl': 'https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user8', 'user12', 'user13'],
      },
      {
        'eventId': 'event_015',
        'title': 'Food Photography Workshop',
        'description': 'Learn to capture stunning food photos with professional techniques. Master lighting, composition, and styling for social media.',
        'date': DateTime.now().add(const Duration(days: 75)).toIso8601String(),
        'location': 'Creative Studio, Manhattan',
        'imageUrl': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',
        'createdBy': 'admin',
        'rsvps': ['user9', 'user14'],
      },
    ];

    print('Starting to populate Firestore with ${events.length} events...');

    // Add each event to Firestore
    for (final event in events) {
      await firestore.collection('events').doc(event['eventId'] as String?).set(event);
      print('✓ Added event: ${event['title']}');
    }
    
    print('\n🎉 Successfully populated Firestore with ${events.length} events!');
    print('You can now run your Flutter app to see the real data.');
    
  } catch (e) {
    print('❌ Error populating Firestore: $e');
    exit(1);
  }
}
