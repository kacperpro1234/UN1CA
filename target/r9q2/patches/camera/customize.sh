# ==========================================
# S21 FE (r9q) - ImageTagger & Polarr Blobs
# ==========================================

# Add ImageTagger blobs (Rozpoznawanie obiektów/scen)
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libImageTagger.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"

# Add Polarr blobs (Silnik edycji/remasteringu)
# Konfiguracja bibliotek publicznych
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/etc/public.libraries-polarr.txt" 0 0 644 "u:object_r:system_file:s0"

# Biblioteki dynamiczne Polarr
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libBestComposition.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libFeature.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libPolarrSnap.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libTracking.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libYuv.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"

# Opcjonalnie: Często wymagane dla funkcji gumki (Object Eraser), jeśli nie są obecne
# Odkomentuj poniższe linie, jeśli funkcje usuwania obiektów nie działają:
# ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libInpainting.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
# ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libObjectRemoval.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
