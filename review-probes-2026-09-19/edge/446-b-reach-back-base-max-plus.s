; B one word past the packet base that is exactly -2^20 words away: still in reach, as
; TI's asm6x agrees - the displacement is measured from the fetch packet's base.
	.text
fwd:
	NOP
	.space 0x400004
	B fwd
