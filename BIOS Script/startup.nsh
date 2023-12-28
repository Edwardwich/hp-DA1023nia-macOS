# Disable command printing
@echo -off

echo "BIOS OFFSETs MACOS REQ"
echo "This will undervolt i5-8265u"

echo "CFG Lock (disable)"
setup_var.efi 0x3E 0x0 -n CpuSetup

echo "DVMT Pre-Allocated (64M)"
setup_var.efi 0x107 0x2 -n SaSetup

echo "DVMT Total Gfx Mem (MAX)"
setup_var.efi 0x108 0x3 -n SaSetup

echo "SATA Mode Selection (AHCI)"
setup_var.efi 0x44 0x0 -n PchSetup
