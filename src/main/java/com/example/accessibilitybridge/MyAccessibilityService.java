package com.example.accessibilitybridge;

import android.accessibilityservice.AccessibilityService;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat; // <-- PERBAIKAN IMPORT
import android.util.Log;

public class MyAccessibilityService extends AccessibilityService {

    private static final String TAG = "MyAccessibilityService";

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        if (event.getSource() == null) {
            return;
        }

        // Gunakan wrap dari AndroidX
        AccessibilityNodeInfoCompat source = AccessibilityNodeInfoCompat.wrap(event.getSource());

        // Contoh: Mendapatkan teks dari node
        CharSequence text = source.getText();
        Log.d(TAG, "Accessibility Event: " + event.getEventType() + ", Text: " + text);

        // Penting untuk me-recycle node setelah selesai digunakan
        source.recycle();
    }

    @Override
    public void onInterrupt() {
        Log.d(TAG, "Accessibility service interrupted.");
    }

    @Override
    protected void onServiceConnected() {
        super.onServiceConnected();
        Log.d(TAG, "Accessibility service connected.");
    }
}
