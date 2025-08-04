package com.snapvids.threads.video.downloader

import android.content.Context
import android.view.LayoutInflater
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import com.google.android.gms.ads.nativead.MediaView
import com.google.android.gms.ads.nativead.NativeAd
import com.google.android.gms.ads.nativead.NativeAdView
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin.NativeAdFactory

class CustomNativeAdFactory(private val context: Context) : NativeAdFactory {
    override fun createNativeAd(
        nativeAd: NativeAd,
        customOptions: MutableMap<String, Any>?
    ): NativeAdView {
        val adView = LayoutInflater.from(context)
            .inflate(R.layout.native_ad_layout, null) as NativeAdView

        // Media
        val mediaView = adView.findViewById<MediaView>(R.id.ad_media)
        adView.mediaView = mediaView

        // Headline
        val headlineView = adView.findViewById<TextView>(R.id.ad_headline)
        headlineView.text = nativeAd.headline
        adView.headlineView = headlineView

        // Body
        val bodyView = adView.findViewById<TextView>(R.id.ad_body)
        bodyView.text = nativeAd.body ?: ""
        adView.bodyView = bodyView

        // Badge
        val badgeView = adView.findViewById<TextView>(R.id.ad_badge)
        badgeView.text = "Ad"

        // Icon (check null để tránh crash)
        val iconView = adView.findViewById<ImageView>(R.id.ad_app_icon)
        if (iconView != null && nativeAd.icon != null) {
            iconView.setImageDrawable(nativeAd.icon?.drawable)
            iconView.visibility = ImageView.VISIBLE
        } else {
            iconView?.visibility = ImageView.GONE
        }
        adView.iconView = iconView

        // CTA
        val ctaView = adView.findViewById<Button>(R.id.ad_call_to_action)
        ctaView.text = nativeAd.callToAction ?: "Install"
        adView.callToActionView = ctaView

        // Bind ad
        adView.setNativeAd(nativeAd)

        return adView
    }
}