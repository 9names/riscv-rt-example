MEMORY
{
  IMEM : ORIGIN = 0x80000000, LENGTH = 1024K
  DMEM : ORIGIN = 0x10000000, LENGTH = 256K
}

REGION_ALIAS("REGION_TEXT", IMEM);
REGION_ALIAS("REGION_RODATA", DMEM);
REGION_ALIAS("REGION_DATA", DMEM);
REGION_ALIAS("REGION_BSS", DMEM);
REGION_ALIAS("REGION_HEAP", DMEM);
REGION_ALIAS("REGION_STACK", DMEM);