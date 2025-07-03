README’de tanımladığım yapıya göre SwiftUI tabanlı bir Xcode projesi oluştur. Projenin adı “CarkApp”.

1. `CarkAppApp.swift` içinde @main App struct’u yaz.
2. “Views”, “ViewModels”, “Models”, “Services” klasörlerini oluştur.
3. Giriş ekranı (Google Sign-In), kullanıcı adı alma ekranı ve Firestore’a kullanıcı verisi kaydeden kodları yaz.
4. FirebaseManager.swift içinde Firebase konfigürasyonunu yap.
5. MVVM mimarisine uygun yapıda yaz.
6. Kullanıcı giriş yaptıktan sonra kullanıcı adı sorulmalı ve Firestore’daki `users` koleksiyonuna `{ uid, username }` şeklinde kaydedilmeli.

Kodları dosya bazlı oluştur ve hazır olduğunda diğer ekranlara geç.
