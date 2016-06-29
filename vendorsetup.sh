for device in $(cat vendor/aokp/aokp.devices)
do
add_lunch_combo task650_$device-userdebug
done
