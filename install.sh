SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=false
REPLACE_EXAMPLE="
"
REPLACE="
"
on_install() {
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  rm -rf /data/system/package_cache/*
}
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
