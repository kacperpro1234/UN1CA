# Usuwanie plików optymalizacji (to jest bezpieczne i czyści śmieci)
DELETE_FROM_WORK_DIR "system" "system/priv-app/SamsungCamera/oat"
DELETE_FROM_WORK_DIR "system" "system/priv-app/SamsungCamera/SamsungCamera.apk.prof"

# Poniższa linia została zakomentowana, ponieważ folder "r9qxxx" nie istnieje.
# Odkomentuj ją tylko wtedy, gdy dodasz własny plik SamsungCamera.apk do folderu patches/stock_cam/
# ADD_TO_WORK_DIR "r9qxxx" "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" 0 0 644 "u:object_r:system_file:s0"
