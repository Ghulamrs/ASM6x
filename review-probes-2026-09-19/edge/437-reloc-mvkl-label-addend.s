	.ref ext
	.text
back:
	MVKL fwd+0x10000, A0
	MVKH fwd-8, A0
	MVKL ext+0x7FFFFFFF, A0
fwd:
	NOP
