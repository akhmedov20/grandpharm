package uz.robocode.grandpharm

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("6f02c3da-9da5-4bcc-88b7-d95eed4887a6") // Your generated API key
        super.configureFlutterEngine(flutterEngine)
    }
}