class ApiService {
  static Future<Map<String, dynamic>> login(
      String email, String password) async {

    await Future.delayed(const Duration(seconds: 1));

    // TEMP MOCK (replace with Flask call later)
    if (email == 'admin@smartwaste.com') {
      return {'success': true, 'role': 'admin'};
    }

    if (email == 'collector@smartwaste.com') {
      return {'success': true, 'role': 'collector'};
    }

    if (email.isNotEmpty && password.isNotEmpty) {
      return {'success': true, 'role': 'resident'};
    }

    return {'success': false, 'message': 'Invalid login credentials'};
  }
}
