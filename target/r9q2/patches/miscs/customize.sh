echo "- Fixing up /product/etc/build.prop"
# Sprawdzenie czy plik istnieje, aby uniknąć błędu krytycznego
if [ -f "$WORK_DIR/product/etc/build.prop" ]; then
    sed -i "/# Removed by /d" "$WORK_DIR/product/etc/build.prop"
    sed -i "s/#bluetooth./bluetooth./g" "$WORK_DIR/product/etc/build.prop"
    sed -i "s/?=/=/g" "$WORK_DIR/product/etc/build.prop"
    # Ta komenda jest ryzykowna, dodano "|| true" aby nie przerywała kompilacji w razie błędu
    sed -i "$(sed -n "/provisioning.hostname/=" "$WORK_DIR/product/etc/build.prop" | sed "2p;d")d" "$WORK_DIR/product/etc/build.prop" || true
fi

echo "- Enabling adaptive FPS"
SET_PROP "vendor" "ro.surface_flinger.use_content_detection_for_refresh_rate" "true"

echo "- Fixing DPI"
SET_PROP "vendor" "ro.sf.init.lcd_density" "480"

# Ta sekcja była zakomentowana i tak ma zostać (nie ruszać)
# echo "- Fixing Bluetooth.."
# ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib64/libbluetooth_jni.so"

# Dodawanie timerów do default.prop (z zabezpieczeniem czy plik istnieje)
if [ -f "$WORK_DIR/vendor/default.prop" ]; then
    sed -i "/use_content_detection/a ro.surface_flinger.set_idle_timer_ms=3000\nro.surface_flinger.set_touch_timer_ms=500\nro.surface_flinger.set_display_power_timer_ms=1000" "$WORK_DIR/vendor/default.prop"
fi
