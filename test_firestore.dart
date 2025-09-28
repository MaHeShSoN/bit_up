import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  print('🔍 Testing Firestore connection...');
  
  try {
    // Initialize Firebase
    await Firebase.initializeApp();
    print('✅ Firebase initialized');
    
    final firestore = FirebaseFirestore.instance;
    
    // Test connection
    print('🔍 Testing Firestore connection...');
    final testDoc = await firestore.collection('test').doc('connection').get();
    print('✅ Firestore connection successful');
    
    // Check events collection
    print('🔍 Checking events collection...');
    final eventsSnapshot = await firestore.collection('events').get();
    print('📊 Found ${eventsSnapshot.docs.length} events in Firestore');
    
    if (eventsSnapshot.docs.isNotEmpty) {
      print('📋 First event data:');
      final firstEvent = eventsSnapshot.docs.first;
      print('   ID: ${firstEvent.id}');
      print('   Data: ${firstEvent.data()}');
    } else {
      print('❌ No events found in Firestore!');
      print('💡 Run: dart run scripts/run_populate.dart');
    }
    
  } catch (e) {
    print('❌ Error: $e');
  }
}
