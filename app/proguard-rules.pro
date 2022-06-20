# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /home/arjan/Android/Sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Crashlytics suggestion: to allow for meaningful crash reports
-keepattributes *Annotation*,EnclosingMethod,Signature,SourceFile,LineNumberTable

# Crashlytics suggestion: custom exceptions should be be skipped during obfuscation
-keep public class * extends java.lang.Exception

# The following two lines are required for https://github.com/FasterXML/jackson-module-kotlin to work properly
-keep class kotlin.Metadata { *; }
-keep class kotlin.reflect.** { *; }

# We need to keep the method names of all getters and setters to allow Jackson to find them.
-keep class com.oxygenupdater.models.** { *; }

# Removing this results in `java.lang.ClassNotFoundException: Didn't find class "com.oxygenupdater.internal.settings.SettingsManager"`
-keepnames class com.oxygenupdater.internal.settings.SettingsManager

# Disable the annoying "Parameter specified as non-null is null" exceptions
-assumenosideeffects class kotlin.jvm.internal.Intrinsics {
    static void checkParameterIsNotNull(java.lang.Object, java.lang.String);
}

# Auto-generated by the Android Gradle plugin in `app/build/outputs/mapping/release/missing_rules.txt`:
-dontwarn com.google.firebase.messaging.TopicOperation$TopicOperations
-dontwarn java.beans.ConstructorProperties
-dontwarn java.beans.Transient
-dontwarn org.bouncycastle.jsse.BCSSLParameters
-dontwarn org.bouncycastle.jsse.BCSSLSocket
-dontwarn org.bouncycastle.jsse.provider.BouncyCastleJsseProvider
-dontwarn org.conscrypt.Conscrypt$Version
-dontwarn org.conscrypt.Conscrypt
-dontwarn org.conscrypt.ConscryptHostnameVerifier
-dontwarn org.openjsse.javax.net.ssl.SSLParameters
-dontwarn org.openjsse.javax.net.ssl.SSLSocket
-dontwarn org.openjsse.net.ssl.OpenJSSE
