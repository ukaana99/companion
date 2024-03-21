plugins {
  id("com.android.application")
  id("com.google.gms.google-services")
}

dependencies {
  implementation(platform("com.google.firebase:firebase-bom:32.7.4"))
  implementation("com.google.firebase:firebase-analytics")
}