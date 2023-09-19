.DELETE_ON_ERROR:

ROM = samuraishodown.sfc
ASM = hack.asm
HACK = hack.sfc
SYM = hack.sym
OBJS = $(HACK) $(SYM)

AS = asar
ASFLAGS = --symbols=wla

$(HACK): $(ASM)
	cp $(ROM) $(HACK)
	$(AS) $(ASFLAGS) $(ASM) $(HACK)

.PHONY:
clean:
	rm -rf $(OBJS)
