
AUTOMOUNT=true

PROPFILE=false

POSTFSDATA=false

LATESTARTSERVICE=false

print_modname() {
  ui_print "*******************************"
  ui_print "*       CN     Optimized      *"
  ui_print "*       GPS File Replacer     *"
  ui_print "*                             *"
  ui_print "* author: ianhughes74, SLKun  *"
  ui_print "* module by: uvera00          *"
  ui_print "*******************************"
  ui_print "               _             "
  ui_print "              (_)            "
  ui_print "     ___ _ __  _  ___  _   _ "
  ui_print "    / _ \ '_ \| |/ _ \| | | |"
  ui_print "   |  __/ | | | | (_) | |_| |"
  ui_print "    \___|_| |_| |\___/ \__, |"
  ui_print "             _/ |       __/ |"
  ui_print "            |__/       |___/ "
  ui_print "                             "
}
REPLACE="
"

set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644
}
