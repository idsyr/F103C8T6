
build/1st.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       0000010c  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000014ac  0800010c  0800010c  0001010c  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000180  080015b8  080015b8  000115b8  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08001738  08001738  00011738  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08001740  08001740  00011740  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000438  20000000  08001744  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000034  20000438  08001b7c  00020438  2**2  ALLOC
  7 ._user_heap_stack 00000604  2000046c  08001b7c  0002046c  2**0  ALLOC
  8 .ARM.attributes   00000029  00000000  00000000  00020438  2**0  CONTENTS, READONLY
  9 .comment          00000033  00000000  00000000  00020461  2**0  CONTENTS, READONLY
 10 .debug_info       00002033  00000000  00000000  00020494  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_abbrev     000008fb  00000000  00000000  000224c7  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_loc        0000043d  00000000  00000000  00022dc2  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_aranges    000000c0  00000000  00000000  000231ff  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000812  00000000  00000000  000232bf  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000812  00000000  00000000  00023ad1  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .debug_frame      000000fc  00000000  00000000  000242e4  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS
 17 .debug_ranges     00000050  00000000  00000000  000243e0  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS

Disassembly of section .text:

0800010c <deregister_tm_clones>:
 800010c:	4803      	ldr	r0, [pc, #12]	; (800011c <deregister_tm_clones+0x10>)
 800010e:	4b04      	ldr	r3, [pc, #16]	; (8000120 <deregister_tm_clones+0x14>)
 8000110:	4283      	cmp	r3, r0
 8000112:	d002      	beq.n	800011a <deregister_tm_clones+0xe>
 8000114:	4b03      	ldr	r3, [pc, #12]	; (8000124 <deregister_tm_clones+0x18>)
 8000116:	b103      	cbz	r3, 800011a <deregister_tm_clones+0xe>
 8000118:	4718      	bx	r3
 800011a:	4770      	bx	lr
 800011c:	20000438 	.word	0x20000438
 8000120:	20000438 	.word	0x20000438
 8000124:	00000000 	.word	0x00000000

08000128 <register_tm_clones>:
 8000128:	4805      	ldr	r0, [pc, #20]	; (8000140 <register_tm_clones+0x18>)
 800012a:	4906      	ldr	r1, [pc, #24]	; (8000144 <register_tm_clones+0x1c>)
 800012c:	1a0b      	subs	r3, r1, r0
 800012e:	0fd9      	lsrs	r1, r3, #31
 8000130:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 8000134:	1049      	asrs	r1, r1, #1
 8000136:	d002      	beq.n	800013e <register_tm_clones+0x16>
 8000138:	4b03      	ldr	r3, [pc, #12]	; (8000148 <register_tm_clones+0x20>)
 800013a:	b103      	cbz	r3, 800013e <register_tm_clones+0x16>
 800013c:	4718      	bx	r3
 800013e:	4770      	bx	lr
 8000140:	20000438 	.word	0x20000438
 8000144:	20000438 	.word	0x20000438
 8000148:	00000000 	.word	0x00000000

0800014c <__do_global_dtors_aux>:
 800014c:	b510      	push	{r4, lr}
 800014e:	4c06      	ldr	r4, [pc, #24]	; (8000168 <__do_global_dtors_aux+0x1c>)
 8000150:	7823      	ldrb	r3, [r4, #0]
 8000152:	b943      	cbnz	r3, 8000166 <__do_global_dtors_aux+0x1a>
 8000154:	f7ff ffda 	bl	800010c <deregister_tm_clones>
 8000158:	4b04      	ldr	r3, [pc, #16]	; (800016c <__do_global_dtors_aux+0x20>)
 800015a:	b113      	cbz	r3, 8000162 <__do_global_dtors_aux+0x16>
 800015c:	4804      	ldr	r0, [pc, #16]	; (8000170 <__do_global_dtors_aux+0x24>)
 800015e:	f3af 8000 	nop.w
 8000162:	2301      	movs	r3, #1
 8000164:	7023      	strb	r3, [r4, #0]
 8000166:	bd10      	pop	{r4, pc}
 8000168:	20000438 	.word	0x20000438
 800016c:	00000000 	.word	0x00000000
 8000170:	080015a0 	.word	0x080015a0

08000174 <frame_dummy>:
 8000174:	b508      	push	{r3, lr}
 8000176:	4b04      	ldr	r3, [pc, #16]	; (8000188 <frame_dummy+0x14>)
 8000178:	b11b      	cbz	r3, 8000182 <frame_dummy+0xe>
 800017a:	4904      	ldr	r1, [pc, #16]	; (800018c <frame_dummy+0x18>)
 800017c:	4804      	ldr	r0, [pc, #16]	; (8000190 <frame_dummy+0x1c>)
 800017e:	f3af 8000 	nop.w
 8000182:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000186:	e7cf      	b.n	8000128 <register_tm_clones>
 8000188:	00000000 	.word	0x00000000
 800018c:	2000043c 	.word	0x2000043c
 8000190:	080015a0 	.word	0x080015a0

08000194 <config_gpio>:
 8000194:	b480      	push	{r7}
 8000196:	af00      	add	r7, sp, #0
 8000198:	4b10      	ldr	r3, [pc, #64]	; (80001dc <config_gpio+0x48>)
 800019a:	699b      	ldr	r3, [r3, #24]
 800019c:	4a0f      	ldr	r2, [pc, #60]	; (80001dc <config_gpio+0x48>)
 800019e:	f043 0308 	orr.w	r3, r3, #8
 80001a2:	6193      	str	r3, [r2, #24]
 80001a4:	4b0e      	ldr	r3, [pc, #56]	; (80001e0 <config_gpio+0x4c>)
 80001a6:	681b      	ldr	r3, [r3, #0]
 80001a8:	4a0d      	ldr	r2, [pc, #52]	; (80001e0 <config_gpio+0x4c>)
 80001aa:	f043 6340 	orr.w	r3, r3, #201326592	; 0xc000000
 80001ae:	6013      	str	r3, [r2, #0]
 80001b0:	4b0b      	ldr	r3, [pc, #44]	; (80001e0 <config_gpio+0x4c>)
 80001b2:	681b      	ldr	r3, [r3, #0]
 80001b4:	4a0a      	ldr	r2, [pc, #40]	; (80001e0 <config_gpio+0x4c>)
 80001b6:	f043 7340 	orr.w	r3, r3, #50331648	; 0x3000000
 80001ba:	6013      	str	r3, [r2, #0]
 80001bc:	4b08      	ldr	r3, [pc, #32]	; (80001e0 <config_gpio+0x4c>)
 80001be:	681b      	ldr	r3, [r3, #0]
 80001c0:	4a07      	ldr	r2, [pc, #28]	; (80001e0 <config_gpio+0x4c>)
 80001c2:	f043 6340 	orr.w	r3, r3, #201326592	; 0xc000000
 80001c6:	6013      	str	r3, [r2, #0]
 80001c8:	4b05      	ldr	r3, [pc, #20]	; (80001e0 <config_gpio+0x4c>)
 80001ca:	681b      	ldr	r3, [r3, #0]
 80001cc:	4a04      	ldr	r2, [pc, #16]	; (80001e0 <config_gpio+0x4c>)
 80001ce:	f043 7340 	orr.w	r3, r3, #50331648	; 0x3000000
 80001d2:	6013      	str	r3, [r2, #0]
 80001d4:	bf00      	nop
 80001d6:	46bd      	mov	sp, r7
 80001d8:	bc80      	pop	{r7}
 80001da:	4770      	bx	lr
 80001dc:	40021000 	.word	0x40021000
 80001e0:	40010c00 	.word	0x40010c00

080001e4 <config_clock>:
 80001e4:	b480      	push	{r7}
 80001e6:	b083      	sub	sp, #12
 80001e8:	af00      	add	r7, sp, #0
 80001ea:	4b07      	ldr	r3, [pc, #28]	; (8000208 <config_clock+0x24>)
 80001ec:	69db      	ldr	r3, [r3, #28]
 80001ee:	4a06      	ldr	r2, [pc, #24]	; (8000208 <config_clock+0x24>)
 80001f0:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80001f4:	61d3      	str	r3, [r2, #28]
 80001f6:	4b04      	ldr	r3, [pc, #16]	; (8000208 <config_clock+0x24>)
 80001f8:	69db      	ldr	r3, [r3, #28]
 80001fa:	2300      	movs	r3, #0
 80001fc:	71fb      	strb	r3, [r7, #7]
 80001fe:	bf00      	nop
 8000200:	370c      	adds	r7, #12
 8000202:	46bd      	mov	sp, r7
 8000204:	bc80      	pop	{r7}
 8000206:	4770      	bx	lr
 8000208:	40021000 	.word	0x40021000

0800020c <config_own_address>:
 800020c:	b480      	push	{r7}
 800020e:	af00      	add	r7, sp, #0
 8000210:	4b0c      	ldr	r3, [pc, #48]	; (8000244 <config_own_address+0x38>)
 8000212:	689b      	ldr	r3, [r3, #8]
 8000214:	f423 4343 	bic.w	r3, r3, #49920	; 0xc300
 8000218:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 800021c:	4a09      	ldr	r2, [pc, #36]	; (8000244 <config_own_address+0x38>)
 800021e:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8000222:	6093      	str	r3, [r2, #8]
 8000224:	4b07      	ldr	r3, [pc, #28]	; (8000244 <config_own_address+0x38>)
 8000226:	68db      	ldr	r3, [r3, #12]
 8000228:	4a06      	ldr	r2, [pc, #24]	; (8000244 <config_own_address+0x38>)
 800022a:	f023 0301 	bic.w	r3, r3, #1
 800022e:	60d3      	str	r3, [r2, #12]
 8000230:	4b04      	ldr	r3, [pc, #16]	; (8000244 <config_own_address+0x38>)
 8000232:	68db      	ldr	r3, [r3, #12]
 8000234:	4a03      	ldr	r2, [pc, #12]	; (8000244 <config_own_address+0x38>)
 8000236:	f023 03fe 	bic.w	r3, r3, #254	; 0xfe
 800023a:	60d3      	str	r3, [r2, #12]
 800023c:	bf00      	nop
 800023e:	46bd      	mov	sp, r7
 8000240:	bc80      	pop	{r7}
 8000242:	4770      	bx	lr
 8000244:	40005400 	.word	0x40005400

08000248 <config_speed>:
 8000248:	b480      	push	{r7}
 800024a:	af00      	add	r7, sp, #0
 800024c:	4b14      	ldr	r3, [pc, #80]	; (80002a0 <config_speed+0x58>)
 800024e:	685b      	ldr	r3, [r3, #4]
 8000250:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 8000254:	4a12      	ldr	r2, [pc, #72]	; (80002a0 <config_speed+0x58>)
 8000256:	f043 0324 	orr.w	r3, r3, #36	; 0x24
 800025a:	6053      	str	r3, [r2, #4]
 800025c:	4b10      	ldr	r3, [pc, #64]	; (80002a0 <config_speed+0x58>)
 800025e:	6a1b      	ldr	r3, [r3, #32]
 8000260:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 8000264:	4a0e      	ldr	r2, [pc, #56]	; (80002a0 <config_speed+0x58>)
 8000266:	f043 0325 	orr.w	r3, r3, #37	; 0x25
 800026a:	6213      	str	r3, [r2, #32]
 800026c:	4b0c      	ldr	r3, [pc, #48]	; (80002a0 <config_speed+0x58>)
 800026e:	69db      	ldr	r3, [r3, #28]
 8000270:	4a0b      	ldr	r2, [pc, #44]	; (80002a0 <config_speed+0x58>)
 8000272:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8000276:	61d3      	str	r3, [r2, #28]
 8000278:	4b09      	ldr	r3, [pc, #36]	; (80002a0 <config_speed+0x58>)
 800027a:	69db      	ldr	r3, [r3, #28]
 800027c:	4a08      	ldr	r2, [pc, #32]	; (80002a0 <config_speed+0x58>)
 800027e:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000282:	61d3      	str	r3, [r2, #28]
 8000284:	4b06      	ldr	r3, [pc, #24]	; (80002a0 <config_speed+0x58>)
 8000286:	69db      	ldr	r3, [r3, #28]
 8000288:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
 800028c:	f023 030f 	bic.w	r3, r3, #15
 8000290:	4a03      	ldr	r2, [pc, #12]	; (80002a0 <config_speed+0x58>)
 8000292:	f043 03b4 	orr.w	r3, r3, #180	; 0xb4
 8000296:	61d3      	str	r3, [r2, #28]
 8000298:	bf00      	nop
 800029a:	46bd      	mov	sp, r7
 800029c:	bc80      	pop	{r7}
 800029e:	4770      	bx	lr
 80002a0:	40005400 	.word	0x40005400

080002a4 <init_i2c1>:
 80002a4:	b580      	push	{r7, lr}
 80002a6:	af00      	add	r7, sp, #0
 80002a8:	4b1d      	ldr	r3, [pc, #116]	; (8000320 <init_i2c1+0x7c>)
 80002aa:	681b      	ldr	r3, [r3, #0]
 80002ac:	4a1c      	ldr	r2, [pc, #112]	; (8000320 <init_i2c1+0x7c>)
 80002ae:	f043 0301 	orr.w	r3, r3, #1
 80002b2:	6013      	str	r3, [r2, #0]
 80002b4:	f7ff ff96 	bl	80001e4 <config_clock>
 80002b8:	4b19      	ldr	r3, [pc, #100]	; (8000320 <init_i2c1+0x7c>)
 80002ba:	681b      	ldr	r3, [r3, #0]
 80002bc:	4a18      	ldr	r2, [pc, #96]	; (8000320 <init_i2c1+0x7c>)
 80002be:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80002c2:	6013      	str	r3, [r2, #0]
 80002c4:	4b16      	ldr	r3, [pc, #88]	; (8000320 <init_i2c1+0x7c>)
 80002c6:	681b      	ldr	r3, [r3, #0]
 80002c8:	4a15      	ldr	r2, [pc, #84]	; (8000320 <init_i2c1+0x7c>)
 80002ca:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80002ce:	6013      	str	r3, [r2, #0]
 80002d0:	4b13      	ldr	r3, [pc, #76]	; (8000320 <init_i2c1+0x7c>)
 80002d2:	681b      	ldr	r3, [r3, #0]
 80002d4:	4a12      	ldr	r2, [pc, #72]	; (8000320 <init_i2c1+0x7c>)
 80002d6:	f023 0302 	bic.w	r3, r3, #2
 80002da:	6013      	str	r3, [r2, #0]
 80002dc:	4b10      	ldr	r3, [pc, #64]	; (8000320 <init_i2c1+0x7c>)
 80002de:	681b      	ldr	r3, [r3, #0]
 80002e0:	4a0f      	ldr	r2, [pc, #60]	; (8000320 <init_i2c1+0x7c>)
 80002e2:	f023 0308 	bic.w	r3, r3, #8
 80002e6:	6013      	str	r3, [r2, #0]
 80002e8:	4b0d      	ldr	r3, [pc, #52]	; (8000320 <init_i2c1+0x7c>)
 80002ea:	681b      	ldr	r3, [r3, #0]
 80002ec:	4a0c      	ldr	r2, [pc, #48]	; (8000320 <init_i2c1+0x7c>)
 80002ee:	f023 0310 	bic.w	r3, r3, #16
 80002f2:	6013      	str	r3, [r2, #0]
 80002f4:	4b0a      	ldr	r3, [pc, #40]	; (8000320 <init_i2c1+0x7c>)
 80002f6:	681b      	ldr	r3, [r3, #0]
 80002f8:	4a09      	ldr	r2, [pc, #36]	; (8000320 <init_i2c1+0x7c>)
 80002fa:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80002fe:	6013      	str	r3, [r2, #0]
 8000300:	f7ff ffa2 	bl	8000248 <config_speed>
 8000304:	f7ff ff82 	bl	800020c <config_own_address>
 8000308:	4b05      	ldr	r3, [pc, #20]	; (8000320 <init_i2c1+0x7c>)
 800030a:	681b      	ldr	r3, [r3, #0]
 800030c:	4a04      	ldr	r2, [pc, #16]	; (8000320 <init_i2c1+0x7c>)
 800030e:	f043 0301 	orr.w	r3, r3, #1
 8000312:	6013      	str	r3, [r2, #0]
 8000314:	4803      	ldr	r0, [pc, #12]	; (8000324 <init_i2c1+0x80>)
 8000316:	f000 febd 	bl	8001094 <xprintf>
 800031a:	bf00      	nop
 800031c:	bd80      	pop	{r7, pc}
 800031e:	bf00      	nop
 8000320:	40005400 	.word	0x40005400
 8000324:	080015b8 	.word	0x080015b8

08000328 <write_i2c1>:
 8000328:	b580      	push	{r7, lr}
 800032a:	b084      	sub	sp, #16
 800032c:	af00      	add	r7, sp, #0
 800032e:	6078      	str	r0, [r7, #4]
 8000330:	460b      	mov	r3, r1
 8000332:	807b      	strh	r3, [r7, #2]
 8000334:	4b32      	ldr	r3, [pc, #200]	; (8000400 <write_i2c1+0xd8>)
 8000336:	681b      	ldr	r3, [r3, #0]
 8000338:	4a31      	ldr	r2, [pc, #196]	; (8000400 <write_i2c1+0xd8>)
 800033a:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800033e:	6013      	str	r3, [r2, #0]
 8000340:	4b2f      	ldr	r3, [pc, #188]	; (8000400 <write_i2c1+0xd8>)
 8000342:	681b      	ldr	r3, [r3, #0]
 8000344:	4a2e      	ldr	r2, [pc, #184]	; (8000400 <write_i2c1+0xd8>)
 8000346:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 800034a:	6013      	str	r3, [r2, #0]
 800034c:	482d      	ldr	r0, [pc, #180]	; (8000404 <write_i2c1+0xdc>)
 800034e:	f000 fea1 	bl	8001094 <xprintf>
 8000352:	4b2b      	ldr	r3, [pc, #172]	; (8000400 <write_i2c1+0xd8>)
 8000354:	681b      	ldr	r3, [r3, #0]
 8000356:	4a2a      	ldr	r2, [pc, #168]	; (8000400 <write_i2c1+0xd8>)
 8000358:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800035c:	6013      	str	r3, [r2, #0]
 800035e:	bf00      	nop
 8000360:	4b27      	ldr	r3, [pc, #156]	; (8000400 <write_i2c1+0xd8>)
 8000362:	681b      	ldr	r3, [r3, #0]
 8000364:	f003 0301 	and.w	r3, r3, #1
 8000368:	2b00      	cmp	r3, #0
 800036a:	d0f9      	beq.n	8000360 <write_i2c1+0x38>
 800036c:	4b24      	ldr	r3, [pc, #144]	; (8000400 <write_i2c1+0xd8>)
 800036e:	695b      	ldr	r3, [r3, #20]
 8000370:	4b23      	ldr	r3, [pc, #140]	; (8000400 <write_i2c1+0xd8>)
 8000372:	699b      	ldr	r3, [r3, #24]
 8000374:	4824      	ldr	r0, [pc, #144]	; (8000408 <write_i2c1+0xe0>)
 8000376:	f000 fe8d 	bl	8001094 <xprintf>
 800037a:	4b21      	ldr	r3, [pc, #132]	; (8000400 <write_i2c1+0xd8>)
 800037c:	691b      	ldr	r3, [r3, #16]
 800037e:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8000382:	4a1f      	ldr	r2, [pc, #124]	; (8000400 <write_i2c1+0xd8>)
 8000384:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 8000388:	6113      	str	r3, [r2, #16]
 800038a:	bf00      	nop
 800038c:	4b1c      	ldr	r3, [pc, #112]	; (8000400 <write_i2c1+0xd8>)
 800038e:	695b      	ldr	r3, [r3, #20]
 8000390:	f003 0302 	and.w	r3, r3, #2
 8000394:	2b00      	cmp	r3, #0
 8000396:	d0f9      	beq.n	800038c <write_i2c1+0x64>
 8000398:	4b19      	ldr	r3, [pc, #100]	; (8000400 <write_i2c1+0xd8>)
 800039a:	695b      	ldr	r3, [r3, #20]
 800039c:	4b18      	ldr	r3, [pc, #96]	; (8000400 <write_i2c1+0xd8>)
 800039e:	699b      	ldr	r3, [r3, #24]
 80003a0:	481a      	ldr	r0, [pc, #104]	; (800040c <write_i2c1+0xe4>)
 80003a2:	f000 fe77 	bl	8001094 <xprintf>
 80003a6:	2300      	movs	r3, #0
 80003a8:	81fb      	strh	r3, [r7, #14]
 80003aa:	e018      	b.n	80003de <write_i2c1+0xb6>
 80003ac:	4b14      	ldr	r3, [pc, #80]	; (8000400 <write_i2c1+0xd8>)
 80003ae:	691b      	ldr	r3, [r3, #16]
 80003b0:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80003b4:	89fa      	ldrh	r2, [r7, #14]
 80003b6:	6879      	ldr	r1, [r7, #4]
 80003b8:	440a      	add	r2, r1
 80003ba:	7812      	ldrb	r2, [r2, #0]
 80003bc:	4611      	mov	r1, r2
 80003be:	4a10      	ldr	r2, [pc, #64]	; (8000400 <write_i2c1+0xd8>)
 80003c0:	430b      	orrs	r3, r1
 80003c2:	6113      	str	r3, [r2, #16]
 80003c4:	4812      	ldr	r0, [pc, #72]	; (8000410 <write_i2c1+0xe8>)
 80003c6:	f000 fe65 	bl	8001094 <xprintf>
 80003ca:	bf00      	nop
 80003cc:	4b0c      	ldr	r3, [pc, #48]	; (8000400 <write_i2c1+0xd8>)
 80003ce:	695b      	ldr	r3, [r3, #20]
 80003d0:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80003d4:	2b00      	cmp	r3, #0
 80003d6:	d0f9      	beq.n	80003cc <write_i2c1+0xa4>
 80003d8:	89fb      	ldrh	r3, [r7, #14]
 80003da:	3301      	adds	r3, #1
 80003dc:	81fb      	strh	r3, [r7, #14]
 80003de:	89fa      	ldrh	r2, [r7, #14]
 80003e0:	887b      	ldrh	r3, [r7, #2]
 80003e2:	429a      	cmp	r2, r3
 80003e4:	d3e2      	bcc.n	80003ac <write_i2c1+0x84>
 80003e6:	480b      	ldr	r0, [pc, #44]	; (8000414 <write_i2c1+0xec>)
 80003e8:	f000 fe54 	bl	8001094 <xprintf>
 80003ec:	4b04      	ldr	r3, [pc, #16]	; (8000400 <write_i2c1+0xd8>)
 80003ee:	681b      	ldr	r3, [r3, #0]
 80003f0:	4a03      	ldr	r2, [pc, #12]	; (8000400 <write_i2c1+0xd8>)
 80003f2:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 80003f6:	6013      	str	r3, [r2, #0]
 80003f8:	bf00      	nop
 80003fa:	3710      	adds	r7, #16
 80003fc:	46bd      	mov	sp, r7
 80003fe:	bd80      	pop	{r7, pc}
 8000400:	40005400 	.word	0x40005400
 8000404:	080015cc 	.word	0x080015cc
 8000408:	080015dc 	.word	0x080015dc
 800040c:	080015f0 	.word	0x080015f0
 8000410:	080015fc 	.word	0x080015fc
 8000414:	0800160c 	.word	0x0800160c

08000418 <getWhoAmI>:
 8000418:	b580      	push	{r7, lr}
 800041a:	af00      	add	r7, sp, #0
 800041c:	4b2b      	ldr	r3, [pc, #172]	; (80004cc <getWhoAmI+0xb4>)
 800041e:	681b      	ldr	r3, [r3, #0]
 8000420:	4a2a      	ldr	r2, [pc, #168]	; (80004cc <getWhoAmI+0xb4>)
 8000422:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8000426:	6013      	str	r3, [r2, #0]
 8000428:	4b28      	ldr	r3, [pc, #160]	; (80004cc <getWhoAmI+0xb4>)
 800042a:	681b      	ldr	r3, [r3, #0]
 800042c:	4a27      	ldr	r2, [pc, #156]	; (80004cc <getWhoAmI+0xb4>)
 800042e:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8000432:	6013      	str	r3, [r2, #0]
 8000434:	4b25      	ldr	r3, [pc, #148]	; (80004cc <getWhoAmI+0xb4>)
 8000436:	681b      	ldr	r3, [r3, #0]
 8000438:	4a24      	ldr	r2, [pc, #144]	; (80004cc <getWhoAmI+0xb4>)
 800043a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800043e:	6013      	str	r3, [r2, #0]
 8000440:	bf00      	nop
 8000442:	4b22      	ldr	r3, [pc, #136]	; (80004cc <getWhoAmI+0xb4>)
 8000444:	695b      	ldr	r3, [r3, #20]
 8000446:	f003 0301 	and.w	r3, r3, #1
 800044a:	2b00      	cmp	r3, #0
 800044c:	d0f9      	beq.n	8000442 <getWhoAmI+0x2a>
 800044e:	4b1f      	ldr	r3, [pc, #124]	; (80004cc <getWhoAmI+0xb4>)
 8000450:	695b      	ldr	r3, [r3, #20]
 8000452:	4619      	mov	r1, r3
 8000454:	481e      	ldr	r0, [pc, #120]	; (80004d0 <getWhoAmI+0xb8>)
 8000456:	f000 fe1d 	bl	8001094 <xprintf>
 800045a:	4b1c      	ldr	r3, [pc, #112]	; (80004cc <getWhoAmI+0xb4>)
 800045c:	691b      	ldr	r3, [r3, #16]
 800045e:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8000462:	4a1a      	ldr	r2, [pc, #104]	; (80004cc <getWhoAmI+0xb4>)
 8000464:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 8000468:	6113      	str	r3, [r2, #16]
 800046a:	bf00      	nop
 800046c:	4b17      	ldr	r3, [pc, #92]	; (80004cc <getWhoAmI+0xb4>)
 800046e:	695b      	ldr	r3, [r3, #20]
 8000470:	f003 0302 	and.w	r3, r3, #2
 8000474:	2b00      	cmp	r3, #0
 8000476:	d0f9      	beq.n	800046c <getWhoAmI+0x54>
 8000478:	4b14      	ldr	r3, [pc, #80]	; (80004cc <getWhoAmI+0xb4>)
 800047a:	695b      	ldr	r3, [r3, #20]
 800047c:	4a13      	ldr	r2, [pc, #76]	; (80004cc <getWhoAmI+0xb4>)
 800047e:	6992      	ldr	r2, [r2, #24]
 8000480:	4619      	mov	r1, r3
 8000482:	4814      	ldr	r0, [pc, #80]	; (80004d4 <getWhoAmI+0xbc>)
 8000484:	f000 fe06 	bl	8001094 <xprintf>
 8000488:	4b10      	ldr	r3, [pc, #64]	; (80004cc <getWhoAmI+0xb4>)
 800048a:	691b      	ldr	r3, [r3, #16]
 800048c:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8000490:	4a0e      	ldr	r2, [pc, #56]	; (80004cc <getWhoAmI+0xb4>)
 8000492:	f043 0375 	orr.w	r3, r3, #117	; 0x75
 8000496:	6113      	str	r3, [r2, #16]
 8000498:	480f      	ldr	r0, [pc, #60]	; (80004d8 <getWhoAmI+0xc0>)
 800049a:	f000 fdfb 	bl	8001094 <xprintf>
 800049e:	4b0b      	ldr	r3, [pc, #44]	; (80004cc <getWhoAmI+0xb4>)
 80004a0:	681b      	ldr	r3, [r3, #0]
 80004a2:	4a0a      	ldr	r2, [pc, #40]	; (80004cc <getWhoAmI+0xb4>)
 80004a4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80004a8:	6013      	str	r3, [r2, #0]
 80004aa:	4b08      	ldr	r3, [pc, #32]	; (80004cc <getWhoAmI+0xb4>)
 80004ac:	691b      	ldr	r3, [r3, #16]
 80004ae:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80004b2:	4a06      	ldr	r2, [pc, #24]	; (80004cc <getWhoAmI+0xb4>)
 80004b4:	f043 0369 	orr.w	r3, r3, #105	; 0x69
 80004b8:	6113      	str	r3, [r2, #16]
 80004ba:	4b04      	ldr	r3, [pc, #16]	; (80004cc <getWhoAmI+0xb4>)
 80004bc:	691b      	ldr	r3, [r3, #16]
 80004be:	4619      	mov	r1, r3
 80004c0:	4806      	ldr	r0, [pc, #24]	; (80004dc <getWhoAmI+0xc4>)
 80004c2:	f000 fde7 	bl	8001094 <xprintf>
 80004c6:	2300      	movs	r3, #0
 80004c8:	4618      	mov	r0, r3
 80004ca:	bd80      	pop	{r7, pc}
 80004cc:	40005400 	.word	0x40005400
 80004d0:	08001624 	.word	0x08001624
 80004d4:	08001638 	.word	0x08001638
 80004d8:	08001654 	.word	0x08001654
 80004dc:	08001668 	.word	0x08001668

080004e0 <query_i2c1>:
 80004e0:	b580      	push	{r7, lr}
 80004e2:	b084      	sub	sp, #16
 80004e4:	af00      	add	r7, sp, #0
 80004e6:	4603      	mov	r3, r0
 80004e8:	460a      	mov	r2, r1
 80004ea:	71fb      	strb	r3, [r7, #7]
 80004ec:	4613      	mov	r3, r2
 80004ee:	80bb      	strh	r3, [r7, #4]
 80004f0:	485f      	ldr	r0, [pc, #380]	; (8000670 <query_i2c1+0x190>)
 80004f2:	f000 fdcf 	bl	8001094 <xprintf>
 80004f6:	4b5f      	ldr	r3, [pc, #380]	; (8000674 <query_i2c1+0x194>)
 80004f8:	681b      	ldr	r3, [r3, #0]
 80004fa:	4a5e      	ldr	r2, [pc, #376]	; (8000674 <query_i2c1+0x194>)
 80004fc:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8000500:	6013      	str	r3, [r2, #0]
 8000502:	4b5c      	ldr	r3, [pc, #368]	; (8000674 <query_i2c1+0x194>)
 8000504:	681b      	ldr	r3, [r3, #0]
 8000506:	4a5b      	ldr	r2, [pc, #364]	; (8000674 <query_i2c1+0x194>)
 8000508:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 800050c:	6013      	str	r3, [r2, #0]
 800050e:	485a      	ldr	r0, [pc, #360]	; (8000678 <query_i2c1+0x198>)
 8000510:	f000 fdc0 	bl	8001094 <xprintf>
 8000514:	4b57      	ldr	r3, [pc, #348]	; (8000674 <query_i2c1+0x194>)
 8000516:	681b      	ldr	r3, [r3, #0]
 8000518:	4a56      	ldr	r2, [pc, #344]	; (8000674 <query_i2c1+0x194>)
 800051a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800051e:	6013      	str	r3, [r2, #0]
 8000520:	bf00      	nop
 8000522:	4b54      	ldr	r3, [pc, #336]	; (8000674 <query_i2c1+0x194>)
 8000524:	681b      	ldr	r3, [r3, #0]
 8000526:	f003 0301 	and.w	r3, r3, #1
 800052a:	2b00      	cmp	r3, #0
 800052c:	d0f9      	beq.n	8000522 <query_i2c1+0x42>
 800052e:	4b51      	ldr	r3, [pc, #324]	; (8000674 <query_i2c1+0x194>)
 8000530:	695b      	ldr	r3, [r3, #20]
 8000532:	4b50      	ldr	r3, [pc, #320]	; (8000674 <query_i2c1+0x194>)
 8000534:	699b      	ldr	r3, [r3, #24]
 8000536:	4851      	ldr	r0, [pc, #324]	; (800067c <query_i2c1+0x19c>)
 8000538:	f000 fdac 	bl	8001094 <xprintf>
 800053c:	4b4d      	ldr	r3, [pc, #308]	; (8000674 <query_i2c1+0x194>)
 800053e:	691b      	ldr	r3, [r3, #16]
 8000540:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8000544:	4a4b      	ldr	r2, [pc, #300]	; (8000674 <query_i2c1+0x194>)
 8000546:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 800054a:	6113      	str	r3, [r2, #16]
 800054c:	bf00      	nop
 800054e:	4b49      	ldr	r3, [pc, #292]	; (8000674 <query_i2c1+0x194>)
 8000550:	695b      	ldr	r3, [r3, #20]
 8000552:	f003 0302 	and.w	r3, r3, #2
 8000556:	2b00      	cmp	r3, #0
 8000558:	d0f9      	beq.n	800054e <query_i2c1+0x6e>
 800055a:	4b46      	ldr	r3, [pc, #280]	; (8000674 <query_i2c1+0x194>)
 800055c:	695b      	ldr	r3, [r3, #20]
 800055e:	4b45      	ldr	r3, [pc, #276]	; (8000674 <query_i2c1+0x194>)
 8000560:	699b      	ldr	r3, [r3, #24]
 8000562:	4847      	ldr	r0, [pc, #284]	; (8000680 <query_i2c1+0x1a0>)
 8000564:	f000 fd96 	bl	8001094 <xprintf>
 8000568:	4b42      	ldr	r3, [pc, #264]	; (8000674 <query_i2c1+0x194>)
 800056a:	691b      	ldr	r3, [r3, #16]
 800056c:	f023 02ff 	bic.w	r2, r3, #255	; 0xff
 8000570:	79fb      	ldrb	r3, [r7, #7]
 8000572:	4940      	ldr	r1, [pc, #256]	; (8000674 <query_i2c1+0x194>)
 8000574:	4313      	orrs	r3, r2
 8000576:	610b      	str	r3, [r1, #16]
 8000578:	4b3e      	ldr	r3, [pc, #248]	; (8000674 <query_i2c1+0x194>)
 800057a:	695b      	ldr	r3, [r3, #20]
 800057c:	81bb      	strh	r3, [r7, #12]
 800057e:	89bb      	ldrh	r3, [r7, #12]
 8000580:	4619      	mov	r1, r3
 8000582:	4840      	ldr	r0, [pc, #256]	; (8000684 <query_i2c1+0x1a4>)
 8000584:	f000 fd86 	bl	8001094 <xprintf>
 8000588:	483f      	ldr	r0, [pc, #252]	; (8000688 <query_i2c1+0x1a8>)
 800058a:	f000 fd83 	bl	8001094 <xprintf>
 800058e:	bf00      	nop
 8000590:	4b38      	ldr	r3, [pc, #224]	; (8000674 <query_i2c1+0x194>)
 8000592:	695b      	ldr	r3, [r3, #20]
 8000594:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000598:	2b00      	cmp	r3, #0
 800059a:	d0f9      	beq.n	8000590 <query_i2c1+0xb0>
 800059c:	483b      	ldr	r0, [pc, #236]	; (800068c <query_i2c1+0x1ac>)
 800059e:	f000 fd79 	bl	8001094 <xprintf>
 80005a2:	4b34      	ldr	r3, [pc, #208]	; (8000674 <query_i2c1+0x194>)
 80005a4:	681b      	ldr	r3, [r3, #0]
 80005a6:	4a33      	ldr	r2, [pc, #204]	; (8000674 <query_i2c1+0x194>)
 80005a8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80005ac:	6013      	str	r3, [r2, #0]
 80005ae:	bf00      	nop
 80005b0:	4b30      	ldr	r3, [pc, #192]	; (8000674 <query_i2c1+0x194>)
 80005b2:	681b      	ldr	r3, [r3, #0]
 80005b4:	f003 0301 	and.w	r3, r3, #1
 80005b8:	2b00      	cmp	r3, #0
 80005ba:	d0f9      	beq.n	80005b0 <query_i2c1+0xd0>
 80005bc:	4b2d      	ldr	r3, [pc, #180]	; (8000674 <query_i2c1+0x194>)
 80005be:	695b      	ldr	r3, [r3, #20]
 80005c0:	4b2c      	ldr	r3, [pc, #176]	; (8000674 <query_i2c1+0x194>)
 80005c2:	699b      	ldr	r3, [r3, #24]
 80005c4:	4832      	ldr	r0, [pc, #200]	; (8000690 <query_i2c1+0x1b0>)
 80005c6:	f000 fd65 	bl	8001094 <xprintf>
 80005ca:	4b2a      	ldr	r3, [pc, #168]	; (8000674 <query_i2c1+0x194>)
 80005cc:	691b      	ldr	r3, [r3, #16]
 80005ce:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80005d2:	4a28      	ldr	r2, [pc, #160]	; (8000674 <query_i2c1+0x194>)
 80005d4:	f043 0369 	orr.w	r3, r3, #105	; 0x69
 80005d8:	6113      	str	r3, [r2, #16]
 80005da:	bf00      	nop
 80005dc:	4b25      	ldr	r3, [pc, #148]	; (8000674 <query_i2c1+0x194>)
 80005de:	695b      	ldr	r3, [r3, #20]
 80005e0:	f003 0302 	and.w	r3, r3, #2
 80005e4:	2b00      	cmp	r3, #0
 80005e6:	d0f9      	beq.n	80005dc <query_i2c1+0xfc>
 80005e8:	4b22      	ldr	r3, [pc, #136]	; (8000674 <query_i2c1+0x194>)
 80005ea:	695b      	ldr	r3, [r3, #20]
 80005ec:	4b21      	ldr	r3, [pc, #132]	; (8000674 <query_i2c1+0x194>)
 80005ee:	699b      	ldr	r3, [r3, #24]
 80005f0:	4828      	ldr	r0, [pc, #160]	; (8000694 <query_i2c1+0x1b4>)
 80005f2:	f000 fd4f 	bl	8001094 <xprintf>
 80005f6:	2300      	movs	r3, #0
 80005f8:	81fb      	strh	r3, [r7, #14]
 80005fa:	e02e      	b.n	800065a <query_i2c1+0x17a>
 80005fc:	89fa      	ldrh	r2, [r7, #14]
 80005fe:	88bb      	ldrh	r3, [r7, #4]
 8000600:	3b01      	subs	r3, #1
 8000602:	429a      	cmp	r2, r3
 8000604:	da0d      	bge.n	8000622 <query_i2c1+0x142>
 8000606:	bf00      	nop
 8000608:	4b1a      	ldr	r3, [pc, #104]	; (8000674 <query_i2c1+0x194>)
 800060a:	695b      	ldr	r3, [r3, #20]
 800060c:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000610:	2b00      	cmp	r3, #0
 8000612:	d0f9      	beq.n	8000608 <query_i2c1+0x128>
 8000614:	4b17      	ldr	r3, [pc, #92]	; (8000674 <query_i2c1+0x194>)
 8000616:	691a      	ldr	r2, [r3, #16]
 8000618:	89fb      	ldrh	r3, [r7, #14]
 800061a:	b251      	sxtb	r1, r2
 800061c:	4a1e      	ldr	r2, [pc, #120]	; (8000698 <query_i2c1+0x1b8>)
 800061e:	54d1      	strb	r1, [r2, r3]
 8000620:	e018      	b.n	8000654 <query_i2c1+0x174>
 8000622:	4b14      	ldr	r3, [pc, #80]	; (8000674 <query_i2c1+0x194>)
 8000624:	681b      	ldr	r3, [r3, #0]
 8000626:	4a13      	ldr	r2, [pc, #76]	; (8000674 <query_i2c1+0x194>)
 8000628:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 800062c:	6013      	str	r3, [r2, #0]
 800062e:	4b11      	ldr	r3, [pc, #68]	; (8000674 <query_i2c1+0x194>)
 8000630:	681b      	ldr	r3, [r3, #0]
 8000632:	4a10      	ldr	r2, [pc, #64]	; (8000674 <query_i2c1+0x194>)
 8000634:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000638:	6013      	str	r3, [r2, #0]
 800063a:	bf00      	nop
 800063c:	4b0d      	ldr	r3, [pc, #52]	; (8000674 <query_i2c1+0x194>)
 800063e:	695b      	ldr	r3, [r3, #20]
 8000640:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000644:	2b00      	cmp	r3, #0
 8000646:	d0f9      	beq.n	800063c <query_i2c1+0x15c>
 8000648:	4b0a      	ldr	r3, [pc, #40]	; (8000674 <query_i2c1+0x194>)
 800064a:	691a      	ldr	r2, [r3, #16]
 800064c:	89fb      	ldrh	r3, [r7, #14]
 800064e:	b251      	sxtb	r1, r2
 8000650:	4a11      	ldr	r2, [pc, #68]	; (8000698 <query_i2c1+0x1b8>)
 8000652:	54d1      	strb	r1, [r2, r3]
 8000654:	89fb      	ldrh	r3, [r7, #14]
 8000656:	3301      	adds	r3, #1
 8000658:	81fb      	strh	r3, [r7, #14]
 800065a:	89fa      	ldrh	r2, [r7, #14]
 800065c:	88bb      	ldrh	r3, [r7, #4]
 800065e:	429a      	cmp	r2, r3
 8000660:	d3cc      	bcc.n	80005fc <query_i2c1+0x11c>
 8000662:	480e      	ldr	r0, [pc, #56]	; (800069c <query_i2c1+0x1bc>)
 8000664:	f000 fd16 	bl	8001094 <xprintf>
 8000668:	bf00      	nop
 800066a:	3710      	adds	r7, #16
 800066c:	46bd      	mov	sp, r7
 800066e:	bd80      	pop	{r7, pc}
 8000670:	08001674 	.word	0x08001674
 8000674:	40005400 	.word	0x40005400
 8000678:	080015cc 	.word	0x080015cc
 800067c:	080015dc 	.word	0x080015dc
 8000680:	08001688 	.word	0x08001688
 8000684:	08001698 	.word	0x08001698
 8000688:	080016a0 	.word	0x080016a0
 800068c:	080016ac 	.word	0x080016ac
 8000690:	080016c4 	.word	0x080016c4
 8000694:	080016d4 	.word	0x080016d4
 8000698:	20000454 	.word	0x20000454
 800069c:	080016e8 	.word	0x080016e8

080006a0 <NMI_Handler>:
 80006a0:	b480      	push	{r7}
 80006a2:	af00      	add	r7, sp, #0
 80006a4:	bf00      	nop
 80006a6:	46bd      	mov	sp, r7
 80006a8:	bc80      	pop	{r7}
 80006aa:	4770      	bx	lr

080006ac <HardFault_Handler>:
 80006ac:	b480      	push	{r7}
 80006ae:	af00      	add	r7, sp, #0
 80006b0:	bf00      	nop
 80006b2:	46bd      	mov	sp, r7
 80006b4:	bc80      	pop	{r7}
 80006b6:	4770      	bx	lr

080006b8 <SVC_Handler>:
 80006b8:	b480      	push	{r7}
 80006ba:	af00      	add	r7, sp, #0
 80006bc:	bf00      	nop
 80006be:	46bd      	mov	sp, r7
 80006c0:	bc80      	pop	{r7}
 80006c2:	4770      	bx	lr

080006c4 <PendSV_Handler>:
 80006c4:	b480      	push	{r7}
 80006c6:	af00      	add	r7, sp, #0
 80006c8:	bf00      	nop
 80006ca:	46bd      	mov	sp, r7
 80006cc:	bc80      	pop	{r7}
 80006ce:	4770      	bx	lr

080006d0 <WWDG_IRQHandler>:
 80006d0:	b480      	push	{r7}
 80006d2:	af00      	add	r7, sp, #0
 80006d4:	bf00      	nop
 80006d6:	46bd      	mov	sp, r7
 80006d8:	bc80      	pop	{r7}
 80006da:	4770      	bx	lr

080006dc <config_hse>:
 80006dc:	b480      	push	{r7}
 80006de:	af00      	add	r7, sp, #0
 80006e0:	4b0b      	ldr	r3, [pc, #44]	; (8000710 <config_hse+0x34>)
 80006e2:	681b      	ldr	r3, [r3, #0]
 80006e4:	4a0a      	ldr	r2, [pc, #40]	; (8000710 <config_hse+0x34>)
 80006e6:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 80006ea:	6013      	str	r3, [r2, #0]
 80006ec:	4b08      	ldr	r3, [pc, #32]	; (8000710 <config_hse+0x34>)
 80006ee:	681b      	ldr	r3, [r3, #0]
 80006f0:	4a07      	ldr	r2, [pc, #28]	; (8000710 <config_hse+0x34>)
 80006f2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80006f6:	6013      	str	r3, [r2, #0]
 80006f8:	bf00      	nop
 80006fa:	4b05      	ldr	r3, [pc, #20]	; (8000710 <config_hse+0x34>)
 80006fc:	681b      	ldr	r3, [r3, #0]
 80006fe:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000702:	2b00      	cmp	r3, #0
 8000704:	d0f9      	beq.n	80006fa <config_hse+0x1e>
 8000706:	bf00      	nop
 8000708:	bf00      	nop
 800070a:	46bd      	mov	sp, r7
 800070c:	bc80      	pop	{r7}
 800070e:	4770      	bx	lr
 8000710:	40021000 	.word	0x40021000

08000714 <config_ahb>:
 8000714:	b480      	push	{r7}
 8000716:	af00      	add	r7, sp, #0
 8000718:	4b03      	ldr	r3, [pc, #12]	; (8000728 <config_ahb+0x14>)
 800071a:	4a03      	ldr	r2, [pc, #12]	; (8000728 <config_ahb+0x14>)
 800071c:	685b      	ldr	r3, [r3, #4]
 800071e:	6053      	str	r3, [r2, #4]
 8000720:	bf00      	nop
 8000722:	46bd      	mov	sp, r7
 8000724:	bc80      	pop	{r7}
 8000726:	4770      	bx	lr
 8000728:	40021000 	.word	0x40021000

0800072c <config_pwr>:
 800072c:	b480      	push	{r7}
 800072e:	af00      	add	r7, sp, #0
 8000730:	4b04      	ldr	r3, [pc, #16]	; (8000744 <config_pwr+0x18>)
 8000732:	69db      	ldr	r3, [r3, #28]
 8000734:	4a03      	ldr	r2, [pc, #12]	; (8000744 <config_pwr+0x18>)
 8000736:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 800073a:	61d3      	str	r3, [r2, #28]
 800073c:	bf00      	nop
 800073e:	46bd      	mov	sp, r7
 8000740:	bc80      	pop	{r7}
 8000742:	4770      	bx	lr
 8000744:	40021000 	.word	0x40021000

08000748 <config_apb1>:
 8000748:	b480      	push	{r7}
 800074a:	af00      	add	r7, sp, #0
 800074c:	4b06      	ldr	r3, [pc, #24]	; (8000768 <config_apb1+0x20>)
 800074e:	685b      	ldr	r3, [r3, #4]
 8000750:	4b05      	ldr	r3, [pc, #20]	; (8000768 <config_apb1+0x20>)
 8000752:	2200      	movs	r2, #0
 8000754:	605a      	str	r2, [r3, #4]
 8000756:	4b04      	ldr	r3, [pc, #16]	; (8000768 <config_apb1+0x20>)
 8000758:	4a03      	ldr	r2, [pc, #12]	; (8000768 <config_apb1+0x20>)
 800075a:	685b      	ldr	r3, [r3, #4]
 800075c:	6053      	str	r3, [r2, #4]
 800075e:	bf00      	nop
 8000760:	46bd      	mov	sp, r7
 8000762:	bc80      	pop	{r7}
 8000764:	4770      	bx	lr
 8000766:	bf00      	nop
 8000768:	40021000 	.word	0x40021000

0800076c <config_flash>:
 800076c:	b480      	push	{r7}
 800076e:	af00      	add	r7, sp, #0
 8000770:	4b04      	ldr	r3, [pc, #16]	; (8000784 <config_flash+0x18>)
 8000772:	681b      	ldr	r3, [r3, #0]
 8000774:	4a03      	ldr	r2, [pc, #12]	; (8000784 <config_flash+0x18>)
 8000776:	f043 0302 	orr.w	r3, r3, #2
 800077a:	6013      	str	r3, [r2, #0]
 800077c:	bf00      	nop
 800077e:	46bd      	mov	sp, r7
 8000780:	bc80      	pop	{r7}
 8000782:	4770      	bx	lr
 8000784:	40022000 	.word	0x40022000

08000788 <config_usb>:
 8000788:	b480      	push	{r7}
 800078a:	af00      	add	r7, sp, #0
 800078c:	4b03      	ldr	r3, [pc, #12]	; (800079c <config_usb+0x14>)
 800078e:	4a03      	ldr	r2, [pc, #12]	; (800079c <config_usb+0x14>)
 8000790:	685b      	ldr	r3, [r3, #4]
 8000792:	6053      	str	r3, [r2, #4]
 8000794:	bf00      	nop
 8000796:	46bd      	mov	sp, r7
 8000798:	bc80      	pop	{r7}
 800079a:	4770      	bx	lr
 800079c:	40021000 	.word	0x40021000

080007a0 <config_adc>:
 80007a0:	b480      	push	{r7}
 80007a2:	af00      	add	r7, sp, #0
 80007a4:	4b04      	ldr	r3, [pc, #16]	; (80007b8 <config_adc+0x18>)
 80007a6:	685b      	ldr	r3, [r3, #4]
 80007a8:	4a03      	ldr	r2, [pc, #12]	; (80007b8 <config_adc+0x18>)
 80007aa:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80007ae:	6053      	str	r3, [r2, #4]
 80007b0:	bf00      	nop
 80007b2:	46bd      	mov	sp, r7
 80007b4:	bc80      	pop	{r7}
 80007b6:	4770      	bx	lr
 80007b8:	40021000 	.word	0x40021000

080007bc <config_apb2>:
 80007bc:	b480      	push	{r7}
 80007be:	af00      	add	r7, sp, #0
 80007c0:	4b03      	ldr	r3, [pc, #12]	; (80007d0 <config_apb2+0x14>)
 80007c2:	4a03      	ldr	r2, [pc, #12]	; (80007d0 <config_apb2+0x14>)
 80007c4:	685b      	ldr	r3, [r3, #4]
 80007c6:	6053      	str	r3, [r2, #4]
 80007c8:	bf00      	nop
 80007ca:	46bd      	mov	sp, r7
 80007cc:	bc80      	pop	{r7}
 80007ce:	4770      	bx	lr
 80007d0:	40021000 	.word	0x40021000

080007d4 <config_pll>:
 80007d4:	b480      	push	{r7}
 80007d6:	af00      	add	r7, sp, #0
 80007d8:	4b18      	ldr	r3, [pc, #96]	; (800083c <config_pll+0x68>)
 80007da:	685b      	ldr	r3, [r3, #4]
 80007dc:	4b17      	ldr	r3, [pc, #92]	; (800083c <config_pll+0x68>)
 80007de:	2200      	movs	r2, #0
 80007e0:	605a      	str	r2, [r3, #4]
 80007e2:	4b16      	ldr	r3, [pc, #88]	; (800083c <config_pll+0x68>)
 80007e4:	4a15      	ldr	r2, [pc, #84]	; (800083c <config_pll+0x68>)
 80007e6:	685b      	ldr	r3, [r3, #4]
 80007e8:	6053      	str	r3, [r2, #4]
 80007ea:	4b14      	ldr	r3, [pc, #80]	; (800083c <config_pll+0x68>)
 80007ec:	685b      	ldr	r3, [r3, #4]
 80007ee:	4b13      	ldr	r3, [pc, #76]	; (800083c <config_pll+0x68>)
 80007f0:	2200      	movs	r2, #0
 80007f2:	605a      	str	r2, [r3, #4]
 80007f4:	4b11      	ldr	r3, [pc, #68]	; (800083c <config_pll+0x68>)
 80007f6:	685b      	ldr	r3, [r3, #4]
 80007f8:	4a10      	ldr	r2, [pc, #64]	; (800083c <config_pll+0x68>)
 80007fa:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80007fe:	6053      	str	r3, [r2, #4]
 8000800:	4b0e      	ldr	r3, [pc, #56]	; (800083c <config_pll+0x68>)
 8000802:	685b      	ldr	r3, [r3, #4]
 8000804:	4b0d      	ldr	r3, [pc, #52]	; (800083c <config_pll+0x68>)
 8000806:	2200      	movs	r2, #0
 8000808:	605a      	str	r2, [r3, #4]
 800080a:	4b0c      	ldr	r3, [pc, #48]	; (800083c <config_pll+0x68>)
 800080c:	685b      	ldr	r3, [r3, #4]
 800080e:	4a0b      	ldr	r2, [pc, #44]	; (800083c <config_pll+0x68>)
 8000810:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 8000814:	6053      	str	r3, [r2, #4]
 8000816:	4b09      	ldr	r3, [pc, #36]	; (800083c <config_pll+0x68>)
 8000818:	681b      	ldr	r3, [r3, #0]
 800081a:	4a08      	ldr	r2, [pc, #32]	; (800083c <config_pll+0x68>)
 800081c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000820:	6013      	str	r3, [r2, #0]
 8000822:	bf00      	nop
 8000824:	4b05      	ldr	r3, [pc, #20]	; (800083c <config_pll+0x68>)
 8000826:	681b      	ldr	r3, [r3, #0]
 8000828:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800082c:	2b00      	cmp	r3, #0
 800082e:	d0f9      	beq.n	8000824 <config_pll+0x50>
 8000830:	bf00      	nop
 8000832:	bf00      	nop
 8000834:	46bd      	mov	sp, r7
 8000836:	bc80      	pop	{r7}
 8000838:	4770      	bx	lr
 800083a:	bf00      	nop
 800083c:	40021000 	.word	0x40021000

08000840 <config_sysclock>:
 8000840:	b480      	push	{r7}
 8000842:	af00      	add	r7, sp, #0
 8000844:	4b08      	ldr	r3, [pc, #32]	; (8000868 <config_sysclock+0x28>)
 8000846:	685b      	ldr	r3, [r3, #4]
 8000848:	4a07      	ldr	r2, [pc, #28]	; (8000868 <config_sysclock+0x28>)
 800084a:	f043 0302 	orr.w	r3, r3, #2
 800084e:	6053      	str	r3, [r2, #4]
 8000850:	bf00      	nop
 8000852:	4b05      	ldr	r3, [pc, #20]	; (8000868 <config_sysclock+0x28>)
 8000854:	685b      	ldr	r3, [r3, #4]
 8000856:	f003 0308 	and.w	r3, r3, #8
 800085a:	2b00      	cmp	r3, #0
 800085c:	d0f9      	beq.n	8000852 <config_sysclock+0x12>
 800085e:	bf00      	nop
 8000860:	bf00      	nop
 8000862:	46bd      	mov	sp, r7
 8000864:	bc80      	pop	{r7}
 8000866:	4770      	bx	lr
 8000868:	40021000 	.word	0x40021000

0800086c <config_afio>:
 800086c:	b480      	push	{r7}
 800086e:	af00      	add	r7, sp, #0
 8000870:	4b07      	ldr	r3, [pc, #28]	; (8000890 <config_afio+0x24>)
 8000872:	699b      	ldr	r3, [r3, #24]
 8000874:	4a06      	ldr	r2, [pc, #24]	; (8000890 <config_afio+0x24>)
 8000876:	f043 0301 	orr.w	r3, r3, #1
 800087a:	6193      	str	r3, [r2, #24]
 800087c:	4b05      	ldr	r3, [pc, #20]	; (8000894 <config_afio+0x28>)
 800087e:	685b      	ldr	r3, [r3, #4]
 8000880:	4a04      	ldr	r2, [pc, #16]	; (8000894 <config_afio+0x28>)
 8000882:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 8000886:	6053      	str	r3, [r2, #4]
 8000888:	bf00      	nop
 800088a:	46bd      	mov	sp, r7
 800088c:	bc80      	pop	{r7}
 800088e:	4770      	bx	lr
 8000890:	40021000 	.word	0x40021000
 8000894:	40010000 	.word	0x40010000

08000898 <config_led>:
 8000898:	b480      	push	{r7}
 800089a:	af00      	add	r7, sp, #0
 800089c:	4b09      	ldr	r3, [pc, #36]	; (80008c4 <config_led+0x2c>)
 800089e:	699b      	ldr	r3, [r3, #24]
 80008a0:	4a08      	ldr	r2, [pc, #32]	; (80008c4 <config_led+0x2c>)
 80008a2:	f043 0310 	orr.w	r3, r3, #16
 80008a6:	6193      	str	r3, [r2, #24]
 80008a8:	4b07      	ldr	r3, [pc, #28]	; (80008c8 <config_led+0x30>)
 80008aa:	4a07      	ldr	r2, [pc, #28]	; (80008c8 <config_led+0x30>)
 80008ac:	685b      	ldr	r3, [r3, #4]
 80008ae:	6053      	str	r3, [r2, #4]
 80008b0:	4b05      	ldr	r3, [pc, #20]	; (80008c8 <config_led+0x30>)
 80008b2:	685b      	ldr	r3, [r3, #4]
 80008b4:	4a04      	ldr	r2, [pc, #16]	; (80008c8 <config_led+0x30>)
 80008b6:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80008ba:	6053      	str	r3, [r2, #4]
 80008bc:	bf00      	nop
 80008be:	46bd      	mov	sp, r7
 80008c0:	bc80      	pop	{r7}
 80008c2:	4770      	bx	lr
 80008c4:	40021000 	.word	0x40021000
 80008c8:	40011000 	.word	0x40011000

080008cc <init_base>:
 80008cc:	b580      	push	{r7, lr}
 80008ce:	af00      	add	r7, sp, #0
 80008d0:	f7ff ff04 	bl	80006dc <config_hse>
 80008d4:	f7ff ff7e 	bl	80007d4 <config_pll>
 80008d8:	f7ff ff1c 	bl	8000714 <config_ahb>
 80008dc:	f7ff ff6e 	bl	80007bc <config_apb2>
 80008e0:	f7ff ffae 	bl	8000840 <config_sysclock>
 80008e4:	f7ff ffd8 	bl	8000898 <config_led>
 80008e8:	bf00      	nop
 80008ea:	bd80      	pop	{r7, pc}

080008ec <enable_led>:
 80008ec:	b480      	push	{r7}
 80008ee:	af00      	add	r7, sp, #0
 80008f0:	4b03      	ldr	r3, [pc, #12]	; (8000900 <enable_led+0x14>)
 80008f2:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80008f6:	611a      	str	r2, [r3, #16]
 80008f8:	bf00      	nop
 80008fa:	46bd      	mov	sp, r7
 80008fc:	bc80      	pop	{r7}
 80008fe:	4770      	bx	lr
 8000900:	40011000 	.word	0x40011000

08000904 <disable_led>:
 8000904:	b480      	push	{r7}
 8000906:	af00      	add	r7, sp, #0
 8000908:	4b03      	ldr	r3, [pc, #12]	; (8000918 <disable_led+0x14>)
 800090a:	f04f 5200 	mov.w	r2, #536870912	; 0x20000000
 800090e:	611a      	str	r2, [r3, #16]
 8000910:	bf00      	nop
 8000912:	46bd      	mov	sp, r7
 8000914:	bc80      	pop	{r7}
 8000916:	4770      	bx	lr
 8000918:	40011000 	.word	0x40011000

0800091c <toggle_led>:
 800091c:	b580      	push	{r7, lr}
 800091e:	b082      	sub	sp, #8
 8000920:	af00      	add	r7, sp, #0
 8000922:	f7ff ffe3 	bl	80008ec <enable_led>
 8000926:	2300      	movs	r3, #0
 8000928:	607b      	str	r3, [r7, #4]
 800092a:	e003      	b.n	8000934 <toggle_led+0x18>
 800092c:	bf00      	nop
 800092e:	687b      	ldr	r3, [r7, #4]
 8000930:	3301      	adds	r3, #1
 8000932:	607b      	str	r3, [r7, #4]
 8000934:	687b      	ldr	r3, [r7, #4]
 8000936:	4a0a      	ldr	r2, [pc, #40]	; (8000960 <toggle_led+0x44>)
 8000938:	4293      	cmp	r3, r2
 800093a:	ddf7      	ble.n	800092c <toggle_led+0x10>
 800093c:	f7ff ffe2 	bl	8000904 <disable_led>
 8000940:	2300      	movs	r3, #0
 8000942:	603b      	str	r3, [r7, #0]
 8000944:	e003      	b.n	800094e <toggle_led+0x32>
 8000946:	bf00      	nop
 8000948:	683b      	ldr	r3, [r7, #0]
 800094a:	3301      	adds	r3, #1
 800094c:	603b      	str	r3, [r7, #0]
 800094e:	683b      	ldr	r3, [r7, #0]
 8000950:	4a03      	ldr	r2, [pc, #12]	; (8000960 <toggle_led+0x44>)
 8000952:	4293      	cmp	r3, r2
 8000954:	ddf7      	ble.n	8000946 <toggle_led+0x2a>
 8000956:	bf00      	nop
 8000958:	bf00      	nop
 800095a:	3708      	adds	r7, #8
 800095c:	46bd      	mov	sp, r7
 800095e:	bd80      	pop	{r7, pc}
 8000960:	000f423f 	.word	0x000f423f

08000964 <main>:
 8000964:	b580      	push	{r7, lr}
 8000966:	af00      	add	r7, sp, #0
 8000968:	f7ff ffb0 	bl	80008cc <init_base>
 800096c:	f000 f840 	bl	80009f0 <init_usart1>
 8000970:	f7ff fc98 	bl	80002a4 <init_i2c1>
 8000974:	f7ff ffd2 	bl	800091c <toggle_led>
 8000978:	e7fc      	b.n	8000974 <main+0x10>

0800097a <delay_ms>:
 800097a:	b480      	push	{r7}
 800097c:	b085      	sub	sp, #20
 800097e:	af00      	add	r7, sp, #0
 8000980:	6078      	str	r0, [r7, #4]
 8000982:	4b0e      	ldr	r3, [pc, #56]	; (80009bc <delay_ms+0x42>)
 8000984:	681b      	ldr	r3, [r3, #0]
 8000986:	60fb      	str	r3, [r7, #12]
 8000988:	68fa      	ldr	r2, [r7, #12]
 800098a:	687b      	ldr	r3, [r7, #4]
 800098c:	4413      	add	r3, r2
 800098e:	60bb      	str	r3, [r7, #8]
 8000990:	68ba      	ldr	r2, [r7, #8]
 8000992:	68fb      	ldr	r3, [r7, #12]
 8000994:	429a      	cmp	r2, r3
 8000996:	d205      	bcs.n	80009a4 <delay_ms+0x2a>
 8000998:	bf00      	nop
 800099a:	4b08      	ldr	r3, [pc, #32]	; (80009bc <delay_ms+0x42>)
 800099c:	681b      	ldr	r3, [r3, #0]
 800099e:	68fa      	ldr	r2, [r7, #12]
 80009a0:	429a      	cmp	r2, r3
 80009a2:	d3fa      	bcc.n	800099a <delay_ms+0x20>
 80009a4:	bf00      	nop
 80009a6:	4b05      	ldr	r3, [pc, #20]	; (80009bc <delay_ms+0x42>)
 80009a8:	681b      	ldr	r3, [r3, #0]
 80009aa:	68ba      	ldr	r2, [r7, #8]
 80009ac:	429a      	cmp	r2, r3
 80009ae:	d8fa      	bhi.n	80009a6 <delay_ms+0x2c>
 80009b0:	bf00      	nop
 80009b2:	bf00      	nop
 80009b4:	3714      	adds	r7, #20
 80009b6:	46bd      	mov	sp, r7
 80009b8:	bc80      	pop	{r7}
 80009ba:	4770      	bx	lr
 80009bc:	2000045c 	.word	0x2000045c

080009c0 <NVIC_EnableIRQ>:
 80009c0:	b480      	push	{r7}
 80009c2:	b083      	sub	sp, #12
 80009c4:	af00      	add	r7, sp, #0
 80009c6:	4603      	mov	r3, r0
 80009c8:	71fb      	strb	r3, [r7, #7]
 80009ca:	79fb      	ldrb	r3, [r7, #7]
 80009cc:	f003 021f 	and.w	r2, r3, #31
 80009d0:	4906      	ldr	r1, [pc, #24]	; (80009ec <NVIC_EnableIRQ+0x2c>)
 80009d2:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80009d6:	095b      	lsrs	r3, r3, #5
 80009d8:	2001      	movs	r0, #1
 80009da:	fa00 f202 	lsl.w	r2, r0, r2
 80009de:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80009e2:	bf00      	nop
 80009e4:	370c      	adds	r7, #12
 80009e6:	46bd      	mov	sp, r7
 80009e8:	bc80      	pop	{r7}
 80009ea:	4770      	bx	lr
 80009ec:	e000e100 	.word	0xe000e100

080009f0 <init_usart1>:
 80009f0:	b580      	push	{r7, lr}
 80009f2:	af00      	add	r7, sp, #0
 80009f4:	4b28      	ldr	r3, [pc, #160]	; (8000a98 <init_usart1+0xa8>)
 80009f6:	699b      	ldr	r3, [r3, #24]
 80009f8:	4a27      	ldr	r2, [pc, #156]	; (8000a98 <init_usart1+0xa8>)
 80009fa:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 80009fe:	6193      	str	r3, [r2, #24]
 8000a00:	4b25      	ldr	r3, [pc, #148]	; (8000a98 <init_usart1+0xa8>)
 8000a02:	699b      	ldr	r3, [r3, #24]
 8000a04:	4a24      	ldr	r2, [pc, #144]	; (8000a98 <init_usart1+0xa8>)
 8000a06:	f043 0304 	orr.w	r3, r3, #4
 8000a0a:	6193      	str	r3, [r2, #24]
 8000a0c:	4b23      	ldr	r3, [pc, #140]	; (8000a9c <init_usart1+0xac>)
 8000a0e:	4a23      	ldr	r2, [pc, #140]	; (8000a9c <init_usart1+0xac>)
 8000a10:	685b      	ldr	r3, [r3, #4]
 8000a12:	6053      	str	r3, [r2, #4]
 8000a14:	4b21      	ldr	r3, [pc, #132]	; (8000a9c <init_usart1+0xac>)
 8000a16:	685b      	ldr	r3, [r3, #4]
 8000a18:	4a20      	ldr	r2, [pc, #128]	; (8000a9c <init_usart1+0xac>)
 8000a1a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8000a1e:	6053      	str	r3, [r2, #4]
 8000a20:	4b1e      	ldr	r3, [pc, #120]	; (8000a9c <init_usart1+0xac>)
 8000a22:	685b      	ldr	r3, [r3, #4]
 8000a24:	4a1d      	ldr	r2, [pc, #116]	; (8000a9c <init_usart1+0xac>)
 8000a26:	f043 0310 	orr.w	r3, r3, #16
 8000a2a:	6053      	str	r3, [r2, #4]
 8000a2c:	4b1b      	ldr	r3, [pc, #108]	; (8000a9c <init_usart1+0xac>)
 8000a2e:	685b      	ldr	r3, [r3, #4]
 8000a30:	4a1a      	ldr	r2, [pc, #104]	; (8000a9c <init_usart1+0xac>)
 8000a32:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000a36:	6053      	str	r3, [r2, #4]
 8000a38:	4b19      	ldr	r3, [pc, #100]	; (8000aa0 <init_usart1+0xb0>)
 8000a3a:	f641 524c 	movw	r2, #7500	; 0x1d4c
 8000a3e:	609a      	str	r2, [r3, #8]
 8000a40:	4b17      	ldr	r3, [pc, #92]	; (8000aa0 <init_usart1+0xb0>)
 8000a42:	68db      	ldr	r3, [r3, #12]
 8000a44:	4a16      	ldr	r2, [pc, #88]	; (8000aa0 <init_usart1+0xb0>)
 8000a46:	f043 0308 	orr.w	r3, r3, #8
 8000a4a:	60d3      	str	r3, [r2, #12]
 8000a4c:	4b14      	ldr	r3, [pc, #80]	; (8000aa0 <init_usart1+0xb0>)
 8000a4e:	68db      	ldr	r3, [r3, #12]
 8000a50:	4a13      	ldr	r2, [pc, #76]	; (8000aa0 <init_usart1+0xb0>)
 8000a52:	f043 0304 	orr.w	r3, r3, #4
 8000a56:	60d3      	str	r3, [r2, #12]
 8000a58:	4b11      	ldr	r3, [pc, #68]	; (8000aa0 <init_usart1+0xb0>)
 8000a5a:	68db      	ldr	r3, [r3, #12]
 8000a5c:	4a10      	ldr	r2, [pc, #64]	; (8000aa0 <init_usart1+0xb0>)
 8000a5e:	f043 0320 	orr.w	r3, r3, #32
 8000a62:	60d3      	str	r3, [r2, #12]
 8000a64:	4b0e      	ldr	r3, [pc, #56]	; (8000aa0 <init_usart1+0xb0>)
 8000a66:	4a0e      	ldr	r2, [pc, #56]	; (8000aa0 <init_usart1+0xb0>)
 8000a68:	68db      	ldr	r3, [r3, #12]
 8000a6a:	60d3      	str	r3, [r2, #12]
 8000a6c:	4b0c      	ldr	r3, [pc, #48]	; (8000aa0 <init_usart1+0xb0>)
 8000a6e:	4a0c      	ldr	r2, [pc, #48]	; (8000aa0 <init_usart1+0xb0>)
 8000a70:	68db      	ldr	r3, [r3, #12]
 8000a72:	60d3      	str	r3, [r2, #12]
 8000a74:	4b0a      	ldr	r3, [pc, #40]	; (8000aa0 <init_usart1+0xb0>)
 8000a76:	4a0a      	ldr	r2, [pc, #40]	; (8000aa0 <init_usart1+0xb0>)
 8000a78:	68db      	ldr	r3, [r3, #12]
 8000a7a:	60d3      	str	r3, [r2, #12]
 8000a7c:	4b08      	ldr	r3, [pc, #32]	; (8000aa0 <init_usart1+0xb0>)
 8000a7e:	68db      	ldr	r3, [r3, #12]
 8000a80:	4a07      	ldr	r2, [pc, #28]	; (8000aa0 <init_usart1+0xb0>)
 8000a82:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000a86:	60d3      	str	r3, [r2, #12]
 8000a88:	2025      	movs	r0, #37	; 0x25
 8000a8a:	f7ff ff99 	bl	80009c0 <NVIC_EnableIRQ>
 8000a8e:	f000 f83d 	bl	8000b0c <init_xprintf>
 8000a92:	bf00      	nop
 8000a94:	bd80      	pop	{r7, pc}
 8000a96:	bf00      	nop
 8000a98:	40021000 	.word	0x40021000
 8000a9c:	40010800 	.word	0x40010800
 8000aa0:	40013800 	.word	0x40013800

08000aa4 <putc_usart1>:
 8000aa4:	b480      	push	{r7}
 8000aa6:	b083      	sub	sp, #12
 8000aa8:	af00      	add	r7, sp, #0
 8000aaa:	4603      	mov	r3, r0
 8000aac:	71fb      	strb	r3, [r7, #7]
 8000aae:	bf00      	nop
 8000ab0:	4b0a      	ldr	r3, [pc, #40]	; (8000adc <putc_usart1+0x38>)
 8000ab2:	681b      	ldr	r3, [r3, #0]
 8000ab4:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000ab8:	2b00      	cmp	r3, #0
 8000aba:	d0f9      	beq.n	8000ab0 <putc_usart1+0xc>
 8000abc:	4a07      	ldr	r2, [pc, #28]	; (8000adc <putc_usart1+0x38>)
 8000abe:	79fb      	ldrb	r3, [r7, #7]
 8000ac0:	6053      	str	r3, [r2, #4]
 8000ac2:	bf00      	nop
 8000ac4:	4b05      	ldr	r3, [pc, #20]	; (8000adc <putc_usart1+0x38>)
 8000ac6:	681b      	ldr	r3, [r3, #0]
 8000ac8:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000acc:	2b00      	cmp	r3, #0
 8000ace:	d0f9      	beq.n	8000ac4 <putc_usart1+0x20>
 8000ad0:	bf00      	nop
 8000ad2:	bf00      	nop
 8000ad4:	370c      	adds	r7, #12
 8000ad6:	46bd      	mov	sp, r7
 8000ad8:	bc80      	pop	{r7}
 8000ada:	4770      	bx	lr
 8000adc:	40013800 	.word	0x40013800

08000ae0 <getc_usart1>:
 8000ae0:	b480      	push	{r7}
 8000ae2:	b083      	sub	sp, #12
 8000ae4:	af00      	add	r7, sp, #0
 8000ae6:	bf00      	nop
 8000ae8:	4b07      	ldr	r3, [pc, #28]	; (8000b08 <getc_usart1+0x28>)
 8000aea:	681b      	ldr	r3, [r3, #0]
 8000aec:	f003 0320 	and.w	r3, r3, #32
 8000af0:	2b00      	cmp	r3, #0
 8000af2:	d0f9      	beq.n	8000ae8 <getc_usart1+0x8>
 8000af4:	4b04      	ldr	r3, [pc, #16]	; (8000b08 <getc_usart1+0x28>)
 8000af6:	685b      	ldr	r3, [r3, #4]
 8000af8:	71fb      	strb	r3, [r7, #7]
 8000afa:	bf00      	nop
 8000afc:	4618      	mov	r0, r3
 8000afe:	370c      	adds	r7, #12
 8000b00:	46bd      	mov	sp, r7
 8000b02:	bc80      	pop	{r7}
 8000b04:	4770      	bx	lr
 8000b06:	bf00      	nop
 8000b08:	40013800 	.word	0x40013800

08000b0c <init_xprintf>:
 8000b0c:	b480      	push	{r7}
 8000b0e:	af00      	add	r7, sp, #0
 8000b10:	4b04      	ldr	r3, [pc, #16]	; (8000b24 <init_xprintf+0x18>)
 8000b12:	4a05      	ldr	r2, [pc, #20]	; (8000b28 <init_xprintf+0x1c>)
 8000b14:	601a      	str	r2, [r3, #0]
 8000b16:	4b05      	ldr	r3, [pc, #20]	; (8000b2c <init_xprintf+0x20>)
 8000b18:	4a05      	ldr	r2, [pc, #20]	; (8000b30 <init_xprintf+0x24>)
 8000b1a:	601a      	str	r2, [r3, #0]
 8000b1c:	bf00      	nop
 8000b1e:	46bd      	mov	sp, r7
 8000b20:	bc80      	pop	{r7}
 8000b22:	4770      	bx	lr
 8000b24:	20000460 	.word	0x20000460
 8000b28:	08000aa5 	.word	0x08000aa5
 8000b2c:	20000468 	.word	0x20000468
 8000b30:	08000ae1 	.word	0x08000ae1

08000b34 <send_usart1>:
 8000b34:	b580      	push	{r7, lr}
 8000b36:	b084      	sub	sp, #16
 8000b38:	af00      	add	r7, sp, #0
 8000b3a:	6078      	str	r0, [r7, #4]
 8000b3c:	460b      	mov	r3, r1
 8000b3e:	807b      	strh	r3, [r7, #2]
 8000b40:	2300      	movs	r3, #0
 8000b42:	81fb      	strh	r3, [r7, #14]
 8000b44:	e009      	b.n	8000b5a <send_usart1+0x26>
 8000b46:	89fb      	ldrh	r3, [r7, #14]
 8000b48:	687a      	ldr	r2, [r7, #4]
 8000b4a:	4413      	add	r3, r2
 8000b4c:	781b      	ldrb	r3, [r3, #0]
 8000b4e:	4618      	mov	r0, r3
 8000b50:	f7ff ffa8 	bl	8000aa4 <putc_usart1>
 8000b54:	89fb      	ldrh	r3, [r7, #14]
 8000b56:	3301      	adds	r3, #1
 8000b58:	81fb      	strh	r3, [r7, #14]
 8000b5a:	89fa      	ldrh	r2, [r7, #14]
 8000b5c:	887b      	ldrh	r3, [r7, #2]
 8000b5e:	429a      	cmp	r2, r3
 8000b60:	d3f1      	bcc.n	8000b46 <send_usart1+0x12>
 8000b62:	bf00      	nop
 8000b64:	bf00      	nop
 8000b66:	3710      	adds	r7, #16
 8000b68:	46bd      	mov	sp, r7
 8000b6a:	bd80      	pop	{r7, pc}

08000b6c <USART1_IRQHandler>:
 8000b6c:	b580      	push	{r7, lr}
 8000b6e:	b082      	sub	sp, #8
 8000b70:	af00      	add	r7, sp, #0
 8000b72:	4b0b      	ldr	r3, [pc, #44]	; (8000ba0 <USART1_IRQHandler+0x34>)
 8000b74:	681b      	ldr	r3, [r3, #0]
 8000b76:	f003 0320 	and.w	r3, r3, #32
 8000b7a:	2b00      	cmp	r3, #0
 8000b7c:	d00c      	beq.n	8000b98 <USART1_IRQHandler+0x2c>
 8000b7e:	f7ff ffaf 	bl	8000ae0 <getc_usart1>
 8000b82:	4603      	mov	r3, r0
 8000b84:	71fb      	strb	r3, [r7, #7]
 8000b86:	f7ff fc47 	bl	8000418 <getWhoAmI>
 8000b8a:	4b06      	ldr	r3, [pc, #24]	; (8000ba4 <USART1_IRQHandler+0x38>)
 8000b8c:	f993 3000 	ldrsb.w	r3, [r3]
 8000b90:	b2db      	uxtb	r3, r3
 8000b92:	4618      	mov	r0, r3
 8000b94:	f7ff ff86 	bl	8000aa4 <putc_usart1>
 8000b98:	bf00      	nop
 8000b9a:	3708      	adds	r7, #8
 8000b9c:	46bd      	mov	sp, r7
 8000b9e:	bd80      	pop	{r7, pc}
 8000ba0:	40013800 	.word	0x40013800
 8000ba4:	20000454 	.word	0x20000454

08000ba8 <SystemInit>:
 8000ba8:	b480      	push	{r7}
 8000baa:	af00      	add	r7, sp, #0
 8000bac:	bf00      	nop
 8000bae:	46bd      	mov	sp, r7
 8000bb0:	bc80      	pop	{r7}
 8000bb2:	4770      	bx	lr

08000bb4 <SystemCoreClockUpdate>:
 8000bb4:	b480      	push	{r7}
 8000bb6:	b085      	sub	sp, #20
 8000bb8:	af00      	add	r7, sp, #0
 8000bba:	2300      	movs	r3, #0
 8000bbc:	60fb      	str	r3, [r7, #12]
 8000bbe:	2300      	movs	r3, #0
 8000bc0:	60bb      	str	r3, [r7, #8]
 8000bc2:	2300      	movs	r3, #0
 8000bc4:	607b      	str	r3, [r7, #4]
 8000bc6:	4b2f      	ldr	r3, [pc, #188]	; (8000c84 <SystemCoreClockUpdate+0xd0>)
 8000bc8:	685b      	ldr	r3, [r3, #4]
 8000bca:	f003 030c 	and.w	r3, r3, #12
 8000bce:	60fb      	str	r3, [r7, #12]
 8000bd0:	68fb      	ldr	r3, [r7, #12]
 8000bd2:	2b08      	cmp	r3, #8
 8000bd4:	d011      	beq.n	8000bfa <SystemCoreClockUpdate+0x46>
 8000bd6:	68fb      	ldr	r3, [r7, #12]
 8000bd8:	2b08      	cmp	r3, #8
 8000bda:	d83a      	bhi.n	8000c52 <SystemCoreClockUpdate+0x9e>
 8000bdc:	68fb      	ldr	r3, [r7, #12]
 8000bde:	2b00      	cmp	r3, #0
 8000be0:	d003      	beq.n	8000bea <SystemCoreClockUpdate+0x36>
 8000be2:	68fb      	ldr	r3, [r7, #12]
 8000be4:	2b04      	cmp	r3, #4
 8000be6:	d004      	beq.n	8000bf2 <SystemCoreClockUpdate+0x3e>
 8000be8:	e033      	b.n	8000c52 <SystemCoreClockUpdate+0x9e>
 8000bea:	4b27      	ldr	r3, [pc, #156]	; (8000c88 <SystemCoreClockUpdate+0xd4>)
 8000bec:	4a27      	ldr	r2, [pc, #156]	; (8000c8c <SystemCoreClockUpdate+0xd8>)
 8000bee:	601a      	str	r2, [r3, #0]
 8000bf0:	e033      	b.n	8000c5a <SystemCoreClockUpdate+0xa6>
 8000bf2:	4b25      	ldr	r3, [pc, #148]	; (8000c88 <SystemCoreClockUpdate+0xd4>)
 8000bf4:	4a25      	ldr	r2, [pc, #148]	; (8000c8c <SystemCoreClockUpdate+0xd8>)
 8000bf6:	601a      	str	r2, [r3, #0]
 8000bf8:	e02f      	b.n	8000c5a <SystemCoreClockUpdate+0xa6>
 8000bfa:	4b22      	ldr	r3, [pc, #136]	; (8000c84 <SystemCoreClockUpdate+0xd0>)
 8000bfc:	685b      	ldr	r3, [r3, #4]
 8000bfe:	f403 1370 	and.w	r3, r3, #3932160	; 0x3c0000
 8000c02:	60bb      	str	r3, [r7, #8]
 8000c04:	4b1f      	ldr	r3, [pc, #124]	; (8000c84 <SystemCoreClockUpdate+0xd0>)
 8000c06:	685b      	ldr	r3, [r3, #4]
 8000c08:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 8000c0c:	607b      	str	r3, [r7, #4]
 8000c0e:	68bb      	ldr	r3, [r7, #8]
 8000c10:	0c9b      	lsrs	r3, r3, #18
 8000c12:	3302      	adds	r3, #2
 8000c14:	60bb      	str	r3, [r7, #8]
 8000c16:	687b      	ldr	r3, [r7, #4]
 8000c18:	2b00      	cmp	r3, #0
 8000c1a:	d106      	bne.n	8000c2a <SystemCoreClockUpdate+0x76>
 8000c1c:	68bb      	ldr	r3, [r7, #8]
 8000c1e:	4a1c      	ldr	r2, [pc, #112]	; (8000c90 <SystemCoreClockUpdate+0xdc>)
 8000c20:	fb02 f303 	mul.w	r3, r2, r3
 8000c24:	4a18      	ldr	r2, [pc, #96]	; (8000c88 <SystemCoreClockUpdate+0xd4>)
 8000c26:	6013      	str	r3, [r2, #0]
 8000c28:	e017      	b.n	8000c5a <SystemCoreClockUpdate+0xa6>
 8000c2a:	4b16      	ldr	r3, [pc, #88]	; (8000c84 <SystemCoreClockUpdate+0xd0>)
 8000c2c:	685b      	ldr	r3, [r3, #4]
 8000c2e:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000c32:	2b00      	cmp	r3, #0
 8000c34:	d006      	beq.n	8000c44 <SystemCoreClockUpdate+0x90>
 8000c36:	68bb      	ldr	r3, [r7, #8]
 8000c38:	4a15      	ldr	r2, [pc, #84]	; (8000c90 <SystemCoreClockUpdate+0xdc>)
 8000c3a:	fb02 f303 	mul.w	r3, r2, r3
 8000c3e:	4a12      	ldr	r2, [pc, #72]	; (8000c88 <SystemCoreClockUpdate+0xd4>)
 8000c40:	6013      	str	r3, [r2, #0]
 8000c42:	e00a      	b.n	8000c5a <SystemCoreClockUpdate+0xa6>
 8000c44:	68bb      	ldr	r3, [r7, #8]
 8000c46:	4a11      	ldr	r2, [pc, #68]	; (8000c8c <SystemCoreClockUpdate+0xd8>)
 8000c48:	fb02 f303 	mul.w	r3, r2, r3
 8000c4c:	4a0e      	ldr	r2, [pc, #56]	; (8000c88 <SystemCoreClockUpdate+0xd4>)
 8000c4e:	6013      	str	r3, [r2, #0]
 8000c50:	e003      	b.n	8000c5a <SystemCoreClockUpdate+0xa6>
 8000c52:	4b0d      	ldr	r3, [pc, #52]	; (8000c88 <SystemCoreClockUpdate+0xd4>)
 8000c54:	4a0d      	ldr	r2, [pc, #52]	; (8000c8c <SystemCoreClockUpdate+0xd8>)
 8000c56:	601a      	str	r2, [r3, #0]
 8000c58:	bf00      	nop
 8000c5a:	4b0a      	ldr	r3, [pc, #40]	; (8000c84 <SystemCoreClockUpdate+0xd0>)
 8000c5c:	685b      	ldr	r3, [r3, #4]
 8000c5e:	091b      	lsrs	r3, r3, #4
 8000c60:	f003 030f 	and.w	r3, r3, #15
 8000c64:	4a0b      	ldr	r2, [pc, #44]	; (8000c94 <SystemCoreClockUpdate+0xe0>)
 8000c66:	5cd3      	ldrb	r3, [r2, r3]
 8000c68:	60fb      	str	r3, [r7, #12]
 8000c6a:	4b07      	ldr	r3, [pc, #28]	; (8000c88 <SystemCoreClockUpdate+0xd4>)
 8000c6c:	681a      	ldr	r2, [r3, #0]
 8000c6e:	68fb      	ldr	r3, [r7, #12]
 8000c70:	fa22 f303 	lsr.w	r3, r2, r3
 8000c74:	4a04      	ldr	r2, [pc, #16]	; (8000c88 <SystemCoreClockUpdate+0xd4>)
 8000c76:	6013      	str	r3, [r2, #0]
 8000c78:	bf00      	nop
 8000c7a:	3714      	adds	r7, #20
 8000c7c:	46bd      	mov	sp, r7
 8000c7e:	bc80      	pop	{r7}
 8000c80:	4770      	bx	lr
 8000c82:	bf00      	nop
 8000c84:	40021000 	.word	0x40021000
 8000c88:	20000000 	.word	0x20000000
 8000c8c:	007a1200 	.word	0x007a1200
 8000c90:	003d0900 	.word	0x003d0900
 8000c94:	080016fc 	.word	0x080016fc

08000c98 <xputc>:
 8000c98:	b580      	push	{r7, lr}
 8000c9a:	b082      	sub	sp, #8
 8000c9c:	af00      	add	r7, sp, #0
 8000c9e:	4603      	mov	r3, r0
 8000ca0:	71fb      	strb	r3, [r7, #7]
 8000ca2:	79fb      	ldrb	r3, [r7, #7]
 8000ca4:	2b0a      	cmp	r3, #10
 8000ca6:	d102      	bne.n	8000cae <xputc+0x16>
 8000ca8:	200d      	movs	r0, #13
 8000caa:	f7ff fff5 	bl	8000c98 <xputc>
 8000cae:	4b0c      	ldr	r3, [pc, #48]	; (8000ce0 <xputc+0x48>)
 8000cb0:	681b      	ldr	r3, [r3, #0]
 8000cb2:	2b00      	cmp	r3, #0
 8000cb4:	d007      	beq.n	8000cc6 <xputc+0x2e>
 8000cb6:	4b0a      	ldr	r3, [pc, #40]	; (8000ce0 <xputc+0x48>)
 8000cb8:	681b      	ldr	r3, [r3, #0]
 8000cba:	1c5a      	adds	r2, r3, #1
 8000cbc:	4908      	ldr	r1, [pc, #32]	; (8000ce0 <xputc+0x48>)
 8000cbe:	600a      	str	r2, [r1, #0]
 8000cc0:	79fa      	ldrb	r2, [r7, #7]
 8000cc2:	701a      	strb	r2, [r3, #0]
 8000cc4:	e008      	b.n	8000cd8 <xputc+0x40>
 8000cc6:	4b07      	ldr	r3, [pc, #28]	; (8000ce4 <xputc+0x4c>)
 8000cc8:	681b      	ldr	r3, [r3, #0]
 8000cca:	2b00      	cmp	r3, #0
 8000ccc:	d004      	beq.n	8000cd8 <xputc+0x40>
 8000cce:	4b05      	ldr	r3, [pc, #20]	; (8000ce4 <xputc+0x4c>)
 8000cd0:	681b      	ldr	r3, [r3, #0]
 8000cd2:	79fa      	ldrb	r2, [r7, #7]
 8000cd4:	4610      	mov	r0, r2
 8000cd6:	4798      	blx	r3
 8000cd8:	3708      	adds	r7, #8
 8000cda:	46bd      	mov	sp, r7
 8000cdc:	bd80      	pop	{r7, pc}
 8000cde:	bf00      	nop
 8000ce0:	20000464 	.word	0x20000464
 8000ce4:	20000460 	.word	0x20000460

08000ce8 <xputs>:
 8000ce8:	b580      	push	{r7, lr}
 8000cea:	b082      	sub	sp, #8
 8000cec:	af00      	add	r7, sp, #0
 8000cee:	6078      	str	r0, [r7, #4]
 8000cf0:	e006      	b.n	8000d00 <xputs+0x18>
 8000cf2:	687b      	ldr	r3, [r7, #4]
 8000cf4:	1c5a      	adds	r2, r3, #1
 8000cf6:	607a      	str	r2, [r7, #4]
 8000cf8:	781b      	ldrb	r3, [r3, #0]
 8000cfa:	4618      	mov	r0, r3
 8000cfc:	f7ff ffcc 	bl	8000c98 <xputc>
 8000d00:	687b      	ldr	r3, [r7, #4]
 8000d02:	781b      	ldrb	r3, [r3, #0]
 8000d04:	2b00      	cmp	r3, #0
 8000d06:	d1f4      	bne.n	8000cf2 <xputs+0xa>
 8000d08:	bf00      	nop
 8000d0a:	bf00      	nop
 8000d0c:	3708      	adds	r7, #8
 8000d0e:	46bd      	mov	sp, r7
 8000d10:	bd80      	pop	{r7, pc}

08000d12 <xfputs>:
 8000d12:	b580      	push	{r7, lr}
 8000d14:	b084      	sub	sp, #16
 8000d16:	af00      	add	r7, sp, #0
 8000d18:	6078      	str	r0, [r7, #4]
 8000d1a:	6039      	str	r1, [r7, #0]
 8000d1c:	4b0c      	ldr	r3, [pc, #48]	; (8000d50 <xfputs+0x3e>)
 8000d1e:	681b      	ldr	r3, [r3, #0]
 8000d20:	60fb      	str	r3, [r7, #12]
 8000d22:	4a0b      	ldr	r2, [pc, #44]	; (8000d50 <xfputs+0x3e>)
 8000d24:	687b      	ldr	r3, [r7, #4]
 8000d26:	6013      	str	r3, [r2, #0]
 8000d28:	e006      	b.n	8000d38 <xfputs+0x26>
 8000d2a:	683b      	ldr	r3, [r7, #0]
 8000d2c:	1c5a      	adds	r2, r3, #1
 8000d2e:	603a      	str	r2, [r7, #0]
 8000d30:	781b      	ldrb	r3, [r3, #0]
 8000d32:	4618      	mov	r0, r3
 8000d34:	f7ff ffb0 	bl	8000c98 <xputc>
 8000d38:	683b      	ldr	r3, [r7, #0]
 8000d3a:	781b      	ldrb	r3, [r3, #0]
 8000d3c:	2b00      	cmp	r3, #0
 8000d3e:	d1f4      	bne.n	8000d2a <xfputs+0x18>
 8000d40:	4a03      	ldr	r2, [pc, #12]	; (8000d50 <xfputs+0x3e>)
 8000d42:	68fb      	ldr	r3, [r7, #12]
 8000d44:	6013      	str	r3, [r2, #0]
 8000d46:	bf00      	nop
 8000d48:	3710      	adds	r7, #16
 8000d4a:	46bd      	mov	sp, r7
 8000d4c:	bd80      	pop	{r7, pc}
 8000d4e:	bf00      	nop
 8000d50:	20000460 	.word	0x20000460

08000d54 <xvprintf>:
 8000d54:	b580      	push	{r7, lr}
 8000d56:	b092      	sub	sp, #72	; 0x48
 8000d58:	af00      	add	r7, sp, #0
 8000d5a:	6078      	str	r0, [r7, #4]
 8000d5c:	6039      	str	r1, [r7, #0]
 8000d5e:	687b      	ldr	r3, [r7, #4]
 8000d60:	1c5a      	adds	r2, r3, #1
 8000d62:	607a      	str	r2, [r7, #4]
 8000d64:	781b      	ldrb	r3, [r3, #0]
 8000d66:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 8000d6a:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000d6e:	2b00      	cmp	r3, #0
 8000d70:	f000 8189 	beq.w	8001086 <xvprintf+0x332>
 8000d74:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000d78:	2b25      	cmp	r3, #37	; 0x25
 8000d7a:	d005      	beq.n	8000d88 <xvprintf+0x34>
 8000d7c:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000d80:	4618      	mov	r0, r3
 8000d82:	f7ff ff89 	bl	8000c98 <xputc>
 8000d86:	e17d      	b.n	8001084 <xvprintf+0x330>
 8000d88:	2300      	movs	r3, #0
 8000d8a:	637b      	str	r3, [r7, #52]	; 0x34
 8000d8c:	687b      	ldr	r3, [r7, #4]
 8000d8e:	1c5a      	adds	r2, r3, #1
 8000d90:	607a      	str	r2, [r7, #4]
 8000d92:	781b      	ldrb	r3, [r3, #0]
 8000d94:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 8000d98:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000d9c:	2b30      	cmp	r3, #48	; 0x30
 8000d9e:	d108      	bne.n	8000db2 <xvprintf+0x5e>
 8000da0:	2301      	movs	r3, #1
 8000da2:	637b      	str	r3, [r7, #52]	; 0x34
 8000da4:	687b      	ldr	r3, [r7, #4]
 8000da6:	1c5a      	adds	r2, r3, #1
 8000da8:	607a      	str	r2, [r7, #4]
 8000daa:	781b      	ldrb	r3, [r3, #0]
 8000dac:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 8000db0:	e00b      	b.n	8000dca <xvprintf+0x76>
 8000db2:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000db6:	2b2d      	cmp	r3, #45	; 0x2d
 8000db8:	d107      	bne.n	8000dca <xvprintf+0x76>
 8000dba:	2302      	movs	r3, #2
 8000dbc:	637b      	str	r3, [r7, #52]	; 0x34
 8000dbe:	687b      	ldr	r3, [r7, #4]
 8000dc0:	1c5a      	adds	r2, r3, #1
 8000dc2:	607a      	str	r2, [r7, #4]
 8000dc4:	781b      	ldrb	r3, [r3, #0]
 8000dc6:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 8000dca:	2300      	movs	r3, #0
 8000dcc:	63bb      	str	r3, [r7, #56]	; 0x38
 8000dce:	e010      	b.n	8000df2 <xvprintf+0x9e>
 8000dd0:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8000dd2:	4613      	mov	r3, r2
 8000dd4:	009b      	lsls	r3, r3, #2
 8000dd6:	4413      	add	r3, r2
 8000dd8:	005b      	lsls	r3, r3, #1
 8000dda:	461a      	mov	r2, r3
 8000ddc:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000de0:	4413      	add	r3, r2
 8000de2:	3b30      	subs	r3, #48	; 0x30
 8000de4:	63bb      	str	r3, [r7, #56]	; 0x38
 8000de6:	687b      	ldr	r3, [r7, #4]
 8000de8:	1c5a      	adds	r2, r3, #1
 8000dea:	607a      	str	r2, [r7, #4]
 8000dec:	781b      	ldrb	r3, [r3, #0]
 8000dee:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 8000df2:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000df6:	2b2f      	cmp	r3, #47	; 0x2f
 8000df8:	d903      	bls.n	8000e02 <xvprintf+0xae>
 8000dfa:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000dfe:	2b39      	cmp	r3, #57	; 0x39
 8000e00:	d9e6      	bls.n	8000dd0 <xvprintf+0x7c>
 8000e02:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000e06:	2b6c      	cmp	r3, #108	; 0x6c
 8000e08:	d003      	beq.n	8000e12 <xvprintf+0xbe>
 8000e0a:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000e0e:	2b4c      	cmp	r3, #76	; 0x4c
 8000e10:	d109      	bne.n	8000e26 <xvprintf+0xd2>
 8000e12:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000e14:	f043 0304 	orr.w	r3, r3, #4
 8000e18:	637b      	str	r3, [r7, #52]	; 0x34
 8000e1a:	687b      	ldr	r3, [r7, #4]
 8000e1c:	1c5a      	adds	r2, r3, #1
 8000e1e:	607a      	str	r2, [r7, #4]
 8000e20:	781b      	ldrb	r3, [r3, #0]
 8000e22:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 8000e26:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000e2a:	2b00      	cmp	r3, #0
 8000e2c:	f000 812d 	beq.w	800108a <xvprintf+0x336>
 8000e30:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000e34:	f887 3032 	strb.w	r3, [r7, #50]	; 0x32
 8000e38:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8000e3c:	2b60      	cmp	r3, #96	; 0x60
 8000e3e:	d904      	bls.n	8000e4a <xvprintf+0xf6>
 8000e40:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8000e44:	3b20      	subs	r3, #32
 8000e46:	f887 3032 	strb.w	r3, [r7, #50]	; 0x32
 8000e4a:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8000e4e:	3b42      	subs	r3, #66	; 0x42
 8000e50:	2b16      	cmp	r3, #22
 8000e52:	d874      	bhi.n	8000f3e <xvprintf+0x1ea>
 8000e54:	a201      	add	r2, pc, #4	; (adr r2, 8000e5c <xvprintf+0x108>)
 8000e56:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000e5a:	bf00      	nop
 8000e5c:	08000f27 	.word	0x08000f27
 8000e60:	08000f15 	.word	0x08000f15
 8000e64:	08000f33 	.word	0x08000f33
 8000e68:	08000f3f 	.word	0x08000f3f
 8000e6c:	08000f3f 	.word	0x08000f3f
 8000e70:	08000f3f 	.word	0x08000f3f
 8000e74:	08000f3f 	.word	0x08000f3f
 8000e78:	08000f3f 	.word	0x08000f3f
 8000e7c:	08000f3f 	.word	0x08000f3f
 8000e80:	08000f3f 	.word	0x08000f3f
 8000e84:	08000f3f 	.word	0x08000f3f
 8000e88:	08000f3f 	.word	0x08000f3f
 8000e8c:	08000f3f 	.word	0x08000f3f
 8000e90:	08000f2d 	.word	0x08000f2d
 8000e94:	08000f3f 	.word	0x08000f3f
 8000e98:	08000f3f 	.word	0x08000f3f
 8000e9c:	08000f3f 	.word	0x08000f3f
 8000ea0:	08000eb9 	.word	0x08000eb9
 8000ea4:	08000f3f 	.word	0x08000f3f
 8000ea8:	08000f33 	.word	0x08000f33
 8000eac:	08000f3f 	.word	0x08000f3f
 8000eb0:	08000f3f 	.word	0x08000f3f
 8000eb4:	08000f39 	.word	0x08000f39
 8000eb8:	683b      	ldr	r3, [r7, #0]
 8000eba:	1d1a      	adds	r2, r3, #4
 8000ebc:	603a      	str	r2, [r7, #0]
 8000ebe:	681b      	ldr	r3, [r3, #0]
 8000ec0:	627b      	str	r3, [r7, #36]	; 0x24
 8000ec2:	2300      	movs	r3, #0
 8000ec4:	63fb      	str	r3, [r7, #60]	; 0x3c
 8000ec6:	e002      	b.n	8000ece <xvprintf+0x17a>
 8000ec8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8000eca:	3301      	adds	r3, #1
 8000ecc:	63fb      	str	r3, [r7, #60]	; 0x3c
 8000ece:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8000ed0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8000ed2:	4413      	add	r3, r2
 8000ed4:	781b      	ldrb	r3, [r3, #0]
 8000ed6:	2b00      	cmp	r3, #0
 8000ed8:	d1f6      	bne.n	8000ec8 <xvprintf+0x174>
 8000eda:	e002      	b.n	8000ee2 <xvprintf+0x18e>
 8000edc:	2020      	movs	r0, #32
 8000ede:	f7ff fedb 	bl	8000c98 <xputc>
 8000ee2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000ee4:	f003 0302 	and.w	r3, r3, #2
 8000ee8:	2b00      	cmp	r3, #0
 8000eea:	d105      	bne.n	8000ef8 <xvprintf+0x1a4>
 8000eec:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8000eee:	1c5a      	adds	r2, r3, #1
 8000ef0:	63fa      	str	r2, [r7, #60]	; 0x3c
 8000ef2:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8000ef4:	429a      	cmp	r2, r3
 8000ef6:	d8f1      	bhi.n	8000edc <xvprintf+0x188>
 8000ef8:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8000efa:	f7ff fef5 	bl	8000ce8 <xputs>
 8000efe:	e002      	b.n	8000f06 <xvprintf+0x1b2>
 8000f00:	2020      	movs	r0, #32
 8000f02:	f7ff fec9 	bl	8000c98 <xputc>
 8000f06:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8000f08:	1c5a      	adds	r2, r3, #1
 8000f0a:	63fa      	str	r2, [r7, #60]	; 0x3c
 8000f0c:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8000f0e:	429a      	cmp	r2, r3
 8000f10:	d8f6      	bhi.n	8000f00 <xvprintf+0x1ac>
 8000f12:	e0b7      	b.n	8001084 <xvprintf+0x330>
 8000f14:	683b      	ldr	r3, [r7, #0]
 8000f16:	1d1a      	adds	r2, r3, #4
 8000f18:	603a      	str	r2, [r7, #0]
 8000f1a:	681b      	ldr	r3, [r3, #0]
 8000f1c:	b2db      	uxtb	r3, r3
 8000f1e:	4618      	mov	r0, r3
 8000f20:	f7ff feba 	bl	8000c98 <xputc>
 8000f24:	e0ae      	b.n	8001084 <xvprintf+0x330>
 8000f26:	2302      	movs	r3, #2
 8000f28:	647b      	str	r3, [r7, #68]	; 0x44
 8000f2a:	e00e      	b.n	8000f4a <xvprintf+0x1f6>
 8000f2c:	2308      	movs	r3, #8
 8000f2e:	647b      	str	r3, [r7, #68]	; 0x44
 8000f30:	e00b      	b.n	8000f4a <xvprintf+0x1f6>
 8000f32:	230a      	movs	r3, #10
 8000f34:	647b      	str	r3, [r7, #68]	; 0x44
 8000f36:	e008      	b.n	8000f4a <xvprintf+0x1f6>
 8000f38:	2310      	movs	r3, #16
 8000f3a:	647b      	str	r3, [r7, #68]	; 0x44
 8000f3c:	e005      	b.n	8000f4a <xvprintf+0x1f6>
 8000f3e:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000f42:	4618      	mov	r0, r3
 8000f44:	f7ff fea8 	bl	8000c98 <xputc>
 8000f48:	e09c      	b.n	8001084 <xvprintf+0x330>
 8000f4a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000f4c:	f003 0304 	and.w	r3, r3, #4
 8000f50:	2b00      	cmp	r3, #0
 8000f52:	d005      	beq.n	8000f60 <xvprintf+0x20c>
 8000f54:	683b      	ldr	r3, [r7, #0]
 8000f56:	1d1a      	adds	r2, r3, #4
 8000f58:	603a      	str	r2, [r7, #0]
 8000f5a:	681b      	ldr	r3, [r3, #0]
 8000f5c:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000f5e:	e00d      	b.n	8000f7c <xvprintf+0x228>
 8000f60:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8000f64:	2b44      	cmp	r3, #68	; 0x44
 8000f66:	d104      	bne.n	8000f72 <xvprintf+0x21e>
 8000f68:	683b      	ldr	r3, [r7, #0]
 8000f6a:	1d1a      	adds	r2, r3, #4
 8000f6c:	603a      	str	r2, [r7, #0]
 8000f6e:	681b      	ldr	r3, [r3, #0]
 8000f70:	e003      	b.n	8000f7a <xvprintf+0x226>
 8000f72:	683b      	ldr	r3, [r7, #0]
 8000f74:	1d1a      	adds	r2, r3, #4
 8000f76:	603a      	str	r2, [r7, #0]
 8000f78:	681b      	ldr	r3, [r3, #0]
 8000f7a:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000f7c:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8000f80:	2b44      	cmp	r3, #68	; 0x44
 8000f82:	d109      	bne.n	8000f98 <xvprintf+0x244>
 8000f84:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000f86:	2b00      	cmp	r3, #0
 8000f88:	da06      	bge.n	8000f98 <xvprintf+0x244>
 8000f8a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000f8c:	425b      	negs	r3, r3
 8000f8e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000f90:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000f92:	f043 0310 	orr.w	r3, r3, #16
 8000f96:	637b      	str	r3, [r7, #52]	; 0x34
 8000f98:	2300      	movs	r3, #0
 8000f9a:	643b      	str	r3, [r7, #64]	; 0x40
 8000f9c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000f9e:	62bb      	str	r3, [r7, #40]	; 0x28
 8000fa0:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000fa2:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8000fa4:	fbb3 f2f2 	udiv	r2, r3, r2
 8000fa8:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8000faa:	fb01 f202 	mul.w	r2, r1, r2
 8000fae:	1a9b      	subs	r3, r3, r2
 8000fb0:	f887 3032 	strb.w	r3, [r7, #50]	; 0x32
 8000fb4:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000fb6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8000fb8:	fbb2 f3f3 	udiv	r3, r2, r3
 8000fbc:	62bb      	str	r3, [r7, #40]	; 0x28
 8000fbe:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8000fc2:	2b09      	cmp	r3, #9
 8000fc4:	d90b      	bls.n	8000fde <xvprintf+0x28a>
 8000fc6:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8000fca:	2b78      	cmp	r3, #120	; 0x78
 8000fcc:	d101      	bne.n	8000fd2 <xvprintf+0x27e>
 8000fce:	2227      	movs	r2, #39	; 0x27
 8000fd0:	e000      	b.n	8000fd4 <xvprintf+0x280>
 8000fd2:	2207      	movs	r2, #7
 8000fd4:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8000fd8:	4413      	add	r3, r2
 8000fda:	f887 3032 	strb.w	r3, [r7, #50]	; 0x32
 8000fde:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8000fe0:	1c5a      	adds	r2, r3, #1
 8000fe2:	643a      	str	r2, [r7, #64]	; 0x40
 8000fe4:	f897 2032 	ldrb.w	r2, [r7, #50]	; 0x32
 8000fe8:	3230      	adds	r2, #48	; 0x30
 8000fea:	b2d2      	uxtb	r2, r2
 8000fec:	3348      	adds	r3, #72	; 0x48
 8000fee:	443b      	add	r3, r7
 8000ff0:	f803 2c3c 	strb.w	r2, [r3, #-60]
 8000ff4:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000ff6:	2b00      	cmp	r3, #0
 8000ff8:	d002      	beq.n	8001000 <xvprintf+0x2ac>
 8000ffa:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8000ffc:	2b17      	cmp	r3, #23
 8000ffe:	d9cf      	bls.n	8000fa0 <xvprintf+0x24c>
 8001000:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001002:	f003 0310 	and.w	r3, r3, #16
 8001006:	2b00      	cmp	r3, #0
 8001008:	d007      	beq.n	800101a <xvprintf+0x2c6>
 800100a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800100c:	1c5a      	adds	r2, r3, #1
 800100e:	643a      	str	r2, [r7, #64]	; 0x40
 8001010:	3348      	adds	r3, #72	; 0x48
 8001012:	443b      	add	r3, r7
 8001014:	222d      	movs	r2, #45	; 0x2d
 8001016:	f803 2c3c 	strb.w	r2, [r3, #-60]
 800101a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800101c:	63fb      	str	r3, [r7, #60]	; 0x3c
 800101e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001020:	f003 0301 	and.w	r3, r3, #1
 8001024:	2b00      	cmp	r3, #0
 8001026:	d001      	beq.n	800102c <xvprintf+0x2d8>
 8001028:	2330      	movs	r3, #48	; 0x30
 800102a:	e000      	b.n	800102e <xvprintf+0x2da>
 800102c:	2320      	movs	r3, #32
 800102e:	f887 3032 	strb.w	r3, [r7, #50]	; 0x32
 8001032:	e004      	b.n	800103e <xvprintf+0x2ea>
 8001034:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8001038:	4618      	mov	r0, r3
 800103a:	f7ff fe2d 	bl	8000c98 <xputc>
 800103e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001040:	f003 0302 	and.w	r3, r3, #2
 8001044:	2b00      	cmp	r3, #0
 8001046:	d105      	bne.n	8001054 <xvprintf+0x300>
 8001048:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800104a:	1c5a      	adds	r2, r3, #1
 800104c:	63fa      	str	r2, [r7, #60]	; 0x3c
 800104e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001050:	429a      	cmp	r2, r3
 8001052:	d8ef      	bhi.n	8001034 <xvprintf+0x2e0>
 8001054:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001056:	3b01      	subs	r3, #1
 8001058:	643b      	str	r3, [r7, #64]	; 0x40
 800105a:	f107 020c 	add.w	r2, r7, #12
 800105e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001060:	4413      	add	r3, r2
 8001062:	781b      	ldrb	r3, [r3, #0]
 8001064:	4618      	mov	r0, r3
 8001066:	f7ff fe17 	bl	8000c98 <xputc>
 800106a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800106c:	2b00      	cmp	r3, #0
 800106e:	d1f1      	bne.n	8001054 <xvprintf+0x300>
 8001070:	e002      	b.n	8001078 <xvprintf+0x324>
 8001072:	2020      	movs	r0, #32
 8001074:	f7ff fe10 	bl	8000c98 <xputc>
 8001078:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800107a:	1c5a      	adds	r2, r3, #1
 800107c:	63fa      	str	r2, [r7, #60]	; 0x3c
 800107e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001080:	429a      	cmp	r2, r3
 8001082:	d8f6      	bhi.n	8001072 <xvprintf+0x31e>
 8001084:	e66b      	b.n	8000d5e <xvprintf+0xa>
 8001086:	bf00      	nop
 8001088:	e000      	b.n	800108c <xvprintf+0x338>
 800108a:	bf00      	nop
 800108c:	bf00      	nop
 800108e:	3748      	adds	r7, #72	; 0x48
 8001090:	46bd      	mov	sp, r7
 8001092:	bd80      	pop	{r7, pc}

08001094 <xprintf>:
 8001094:	b40f      	push	{r0, r1, r2, r3}
 8001096:	b580      	push	{r7, lr}
 8001098:	b082      	sub	sp, #8
 800109a:	af00      	add	r7, sp, #0
 800109c:	f107 0314 	add.w	r3, r7, #20
 80010a0:	607b      	str	r3, [r7, #4]
 80010a2:	6879      	ldr	r1, [r7, #4]
 80010a4:	6938      	ldr	r0, [r7, #16]
 80010a6:	f7ff fe55 	bl	8000d54 <xvprintf>
 80010aa:	bf00      	nop
 80010ac:	3708      	adds	r7, #8
 80010ae:	46bd      	mov	sp, r7
 80010b0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80010b4:	b004      	add	sp, #16
 80010b6:	4770      	bx	lr

080010b8 <xsprintf>:
 80010b8:	b40e      	push	{r1, r2, r3}
 80010ba:	b580      	push	{r7, lr}
 80010bc:	b085      	sub	sp, #20
 80010be:	af00      	add	r7, sp, #0
 80010c0:	6078      	str	r0, [r7, #4]
 80010c2:	4a0c      	ldr	r2, [pc, #48]	; (80010f4 <xsprintf+0x3c>)
 80010c4:	687b      	ldr	r3, [r7, #4]
 80010c6:	6013      	str	r3, [r2, #0]
 80010c8:	f107 0320 	add.w	r3, r7, #32
 80010cc:	60fb      	str	r3, [r7, #12]
 80010ce:	68f9      	ldr	r1, [r7, #12]
 80010d0:	69f8      	ldr	r0, [r7, #28]
 80010d2:	f7ff fe3f 	bl	8000d54 <xvprintf>
 80010d6:	4b07      	ldr	r3, [pc, #28]	; (80010f4 <xsprintf+0x3c>)
 80010d8:	681b      	ldr	r3, [r3, #0]
 80010da:	2200      	movs	r2, #0
 80010dc:	701a      	strb	r2, [r3, #0]
 80010de:	4b05      	ldr	r3, [pc, #20]	; (80010f4 <xsprintf+0x3c>)
 80010e0:	2200      	movs	r2, #0
 80010e2:	601a      	str	r2, [r3, #0]
 80010e4:	bf00      	nop
 80010e6:	3714      	adds	r7, #20
 80010e8:	46bd      	mov	sp, r7
 80010ea:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80010ee:	b003      	add	sp, #12
 80010f0:	4770      	bx	lr
 80010f2:	bf00      	nop
 80010f4:	20000464 	.word	0x20000464

080010f8 <xfprintf>:
 80010f8:	b40e      	push	{r1, r2, r3}
 80010fa:	b580      	push	{r7, lr}
 80010fc:	b085      	sub	sp, #20
 80010fe:	af00      	add	r7, sp, #0
 8001100:	6078      	str	r0, [r7, #4]
 8001102:	4b0b      	ldr	r3, [pc, #44]	; (8001130 <xfprintf+0x38>)
 8001104:	681b      	ldr	r3, [r3, #0]
 8001106:	60fb      	str	r3, [r7, #12]
 8001108:	4a09      	ldr	r2, [pc, #36]	; (8001130 <xfprintf+0x38>)
 800110a:	687b      	ldr	r3, [r7, #4]
 800110c:	6013      	str	r3, [r2, #0]
 800110e:	f107 0320 	add.w	r3, r7, #32
 8001112:	60bb      	str	r3, [r7, #8]
 8001114:	68b9      	ldr	r1, [r7, #8]
 8001116:	69f8      	ldr	r0, [r7, #28]
 8001118:	f7ff fe1c 	bl	8000d54 <xvprintf>
 800111c:	4a04      	ldr	r2, [pc, #16]	; (8001130 <xfprintf+0x38>)
 800111e:	68fb      	ldr	r3, [r7, #12]
 8001120:	6013      	str	r3, [r2, #0]
 8001122:	bf00      	nop
 8001124:	3714      	adds	r7, #20
 8001126:	46bd      	mov	sp, r7
 8001128:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800112c:	b003      	add	sp, #12
 800112e:	4770      	bx	lr
 8001130:	20000460 	.word	0x20000460

08001134 <put_dump>:
 8001134:	b580      	push	{r7, lr}
 8001136:	b088      	sub	sp, #32
 8001138:	af00      	add	r7, sp, #0
 800113a:	60f8      	str	r0, [r7, #12]
 800113c:	60b9      	str	r1, [r7, #8]
 800113e:	607a      	str	r2, [r7, #4]
 8001140:	603b      	str	r3, [r7, #0]
 8001142:	68b9      	ldr	r1, [r7, #8]
 8001144:	4837      	ldr	r0, [pc, #220]	; (8001224 <put_dump+0xf0>)
 8001146:	f7ff ffa5 	bl	8001094 <xprintf>
 800114a:	683b      	ldr	r3, [r7, #0]
 800114c:	2b04      	cmp	r3, #4
 800114e:	d051      	beq.n	80011f4 <put_dump+0xc0>
 8001150:	683b      	ldr	r3, [r7, #0]
 8001152:	2b04      	cmp	r3, #4
 8001154:	dc5f      	bgt.n	8001216 <put_dump+0xe2>
 8001156:	683b      	ldr	r3, [r7, #0]
 8001158:	2b01      	cmp	r3, #1
 800115a:	d003      	beq.n	8001164 <put_dump+0x30>
 800115c:	683b      	ldr	r3, [r7, #0]
 800115e:	2b02      	cmp	r3, #2
 8001160:	d037      	beq.n	80011d2 <put_dump+0x9e>
 8001162:	e058      	b.n	8001216 <put_dump+0xe2>
 8001164:	68fb      	ldr	r3, [r7, #12]
 8001166:	613b      	str	r3, [r7, #16]
 8001168:	2300      	movs	r3, #0
 800116a:	61fb      	str	r3, [r7, #28]
 800116c:	e00a      	b.n	8001184 <put_dump+0x50>
 800116e:	69fb      	ldr	r3, [r7, #28]
 8001170:	693a      	ldr	r2, [r7, #16]
 8001172:	4413      	add	r3, r2
 8001174:	781b      	ldrb	r3, [r3, #0]
 8001176:	4619      	mov	r1, r3
 8001178:	482b      	ldr	r0, [pc, #172]	; (8001228 <put_dump+0xf4>)
 800117a:	f7ff ff8b 	bl	8001094 <xprintf>
 800117e:	69fb      	ldr	r3, [r7, #28]
 8001180:	3301      	adds	r3, #1
 8001182:	61fb      	str	r3, [r7, #28]
 8001184:	69fa      	ldr	r2, [r7, #28]
 8001186:	687b      	ldr	r3, [r7, #4]
 8001188:	429a      	cmp	r2, r3
 800118a:	dbf0      	blt.n	800116e <put_dump+0x3a>
 800118c:	2020      	movs	r0, #32
 800118e:	f7ff fd83 	bl	8000c98 <xputc>
 8001192:	2300      	movs	r3, #0
 8001194:	61fb      	str	r3, [r7, #28]
 8001196:	e017      	b.n	80011c8 <put_dump+0x94>
 8001198:	69fb      	ldr	r3, [r7, #28]
 800119a:	693a      	ldr	r2, [r7, #16]
 800119c:	4413      	add	r3, r2
 800119e:	781b      	ldrb	r3, [r3, #0]
 80011a0:	2b1f      	cmp	r3, #31
 80011a2:	d90a      	bls.n	80011ba <put_dump+0x86>
 80011a4:	69fb      	ldr	r3, [r7, #28]
 80011a6:	693a      	ldr	r2, [r7, #16]
 80011a8:	4413      	add	r3, r2
 80011aa:	781b      	ldrb	r3, [r3, #0]
 80011ac:	2b7e      	cmp	r3, #126	; 0x7e
 80011ae:	d804      	bhi.n	80011ba <put_dump+0x86>
 80011b0:	69fb      	ldr	r3, [r7, #28]
 80011b2:	693a      	ldr	r2, [r7, #16]
 80011b4:	4413      	add	r3, r2
 80011b6:	781b      	ldrb	r3, [r3, #0]
 80011b8:	e000      	b.n	80011bc <put_dump+0x88>
 80011ba:	232e      	movs	r3, #46	; 0x2e
 80011bc:	4618      	mov	r0, r3
 80011be:	f7ff fd6b 	bl	8000c98 <xputc>
 80011c2:	69fb      	ldr	r3, [r7, #28]
 80011c4:	3301      	adds	r3, #1
 80011c6:	61fb      	str	r3, [r7, #28]
 80011c8:	69fa      	ldr	r2, [r7, #28]
 80011ca:	687b      	ldr	r3, [r7, #4]
 80011cc:	429a      	cmp	r2, r3
 80011ce:	dbe3      	blt.n	8001198 <put_dump+0x64>
 80011d0:	e021      	b.n	8001216 <put_dump+0xe2>
 80011d2:	68fb      	ldr	r3, [r7, #12]
 80011d4:	61bb      	str	r3, [r7, #24]
 80011d6:	69bb      	ldr	r3, [r7, #24]
 80011d8:	1c9a      	adds	r2, r3, #2
 80011da:	61ba      	str	r2, [r7, #24]
 80011dc:	881b      	ldrh	r3, [r3, #0]
 80011de:	4619      	mov	r1, r3
 80011e0:	4812      	ldr	r0, [pc, #72]	; (800122c <put_dump+0xf8>)
 80011e2:	f7ff ff57 	bl	8001094 <xprintf>
 80011e6:	687b      	ldr	r3, [r7, #4]
 80011e8:	3b01      	subs	r3, #1
 80011ea:	607b      	str	r3, [r7, #4]
 80011ec:	687b      	ldr	r3, [r7, #4]
 80011ee:	2b00      	cmp	r3, #0
 80011f0:	d1f1      	bne.n	80011d6 <put_dump+0xa2>
 80011f2:	e010      	b.n	8001216 <put_dump+0xe2>
 80011f4:	68fb      	ldr	r3, [r7, #12]
 80011f6:	617b      	str	r3, [r7, #20]
 80011f8:	697b      	ldr	r3, [r7, #20]
 80011fa:	1d1a      	adds	r2, r3, #4
 80011fc:	617a      	str	r2, [r7, #20]
 80011fe:	681b      	ldr	r3, [r3, #0]
 8001200:	4619      	mov	r1, r3
 8001202:	480b      	ldr	r0, [pc, #44]	; (8001230 <put_dump+0xfc>)
 8001204:	f7ff ff46 	bl	8001094 <xprintf>
 8001208:	687b      	ldr	r3, [r7, #4]
 800120a:	3b01      	subs	r3, #1
 800120c:	607b      	str	r3, [r7, #4]
 800120e:	687b      	ldr	r3, [r7, #4]
 8001210:	2b00      	cmp	r3, #0
 8001212:	d1f1      	bne.n	80011f8 <put_dump+0xc4>
 8001214:	bf00      	nop
 8001216:	200a      	movs	r0, #10
 8001218:	f7ff fd3e 	bl	8000c98 <xputc>
 800121c:	bf00      	nop
 800121e:	3720      	adds	r7, #32
 8001220:	46bd      	mov	sp, r7
 8001222:	bd80      	pop	{r7, pc}
 8001224:	08001714 	.word	0x08001714
 8001228:	0800171c 	.word	0x0800171c
 800122c:	08001724 	.word	0x08001724
 8001230:	0800172c 	.word	0x0800172c

08001234 <xgets>:
 8001234:	b580      	push	{r7, lr}
 8001236:	b084      	sub	sp, #16
 8001238:	af00      	add	r7, sp, #0
 800123a:	6078      	str	r0, [r7, #4]
 800123c:	6039      	str	r1, [r7, #0]
 800123e:	4b24      	ldr	r3, [pc, #144]	; (80012d0 <xgets+0x9c>)
 8001240:	681b      	ldr	r3, [r3, #0]
 8001242:	2b00      	cmp	r3, #0
 8001244:	d101      	bne.n	800124a <xgets+0x16>
 8001246:	2300      	movs	r3, #0
 8001248:	e03e      	b.n	80012c8 <xgets+0x94>
 800124a:	2300      	movs	r3, #0
 800124c:	60fb      	str	r3, [r7, #12]
 800124e:	4b20      	ldr	r3, [pc, #128]	; (80012d0 <xgets+0x9c>)
 8001250:	681b      	ldr	r3, [r3, #0]
 8001252:	4798      	blx	r3
 8001254:	4603      	mov	r3, r0
 8001256:	60bb      	str	r3, [r7, #8]
 8001258:	68bb      	ldr	r3, [r7, #8]
 800125a:	2b00      	cmp	r3, #0
 800125c:	d101      	bne.n	8001262 <xgets+0x2e>
 800125e:	2300      	movs	r3, #0
 8001260:	e032      	b.n	80012c8 <xgets+0x94>
 8001262:	68bb      	ldr	r3, [r7, #8]
 8001264:	2b0d      	cmp	r3, #13
 8001266:	d025      	beq.n	80012b4 <xgets+0x80>
 8001268:	68bb      	ldr	r3, [r7, #8]
 800126a:	2b08      	cmp	r3, #8
 800126c:	d10b      	bne.n	8001286 <xgets+0x52>
 800126e:	68fb      	ldr	r3, [r7, #12]
 8001270:	2b00      	cmp	r3, #0
 8001272:	d008      	beq.n	8001286 <xgets+0x52>
 8001274:	68fb      	ldr	r3, [r7, #12]
 8001276:	3b01      	subs	r3, #1
 8001278:	60fb      	str	r3, [r7, #12]
 800127a:	68bb      	ldr	r3, [r7, #8]
 800127c:	b2db      	uxtb	r3, r3
 800127e:	4618      	mov	r0, r3
 8001280:	f7ff fd0a 	bl	8000c98 <xputc>
 8001284:	e015      	b.n	80012b2 <xgets+0x7e>
 8001286:	68bb      	ldr	r3, [r7, #8]
 8001288:	2b1f      	cmp	r3, #31
 800128a:	dde0      	ble.n	800124e <xgets+0x1a>
 800128c:	683b      	ldr	r3, [r7, #0]
 800128e:	3b01      	subs	r3, #1
 8001290:	68fa      	ldr	r2, [r7, #12]
 8001292:	429a      	cmp	r2, r3
 8001294:	dadb      	bge.n	800124e <xgets+0x1a>
 8001296:	68fb      	ldr	r3, [r7, #12]
 8001298:	1c5a      	adds	r2, r3, #1
 800129a:	60fa      	str	r2, [r7, #12]
 800129c:	461a      	mov	r2, r3
 800129e:	687b      	ldr	r3, [r7, #4]
 80012a0:	4413      	add	r3, r2
 80012a2:	68ba      	ldr	r2, [r7, #8]
 80012a4:	b2d2      	uxtb	r2, r2
 80012a6:	701a      	strb	r2, [r3, #0]
 80012a8:	68bb      	ldr	r3, [r7, #8]
 80012aa:	b2db      	uxtb	r3, r3
 80012ac:	4618      	mov	r0, r3
 80012ae:	f7ff fcf3 	bl	8000c98 <xputc>
 80012b2:	e7cc      	b.n	800124e <xgets+0x1a>
 80012b4:	bf00      	nop
 80012b6:	68fb      	ldr	r3, [r7, #12]
 80012b8:	687a      	ldr	r2, [r7, #4]
 80012ba:	4413      	add	r3, r2
 80012bc:	2200      	movs	r2, #0
 80012be:	701a      	strb	r2, [r3, #0]
 80012c0:	200a      	movs	r0, #10
 80012c2:	f7ff fce9 	bl	8000c98 <xputc>
 80012c6:	2301      	movs	r3, #1
 80012c8:	4618      	mov	r0, r3
 80012ca:	3710      	adds	r7, #16
 80012cc:	46bd      	mov	sp, r7
 80012ce:	bd80      	pop	{r7, pc}
 80012d0:	20000468 	.word	0x20000468

080012d4 <xfgets>:
 80012d4:	b580      	push	{r7, lr}
 80012d6:	b086      	sub	sp, #24
 80012d8:	af00      	add	r7, sp, #0
 80012da:	60f8      	str	r0, [r7, #12]
 80012dc:	60b9      	str	r1, [r7, #8]
 80012de:	607a      	str	r2, [r7, #4]
 80012e0:	4b09      	ldr	r3, [pc, #36]	; (8001308 <xfgets+0x34>)
 80012e2:	681b      	ldr	r3, [r3, #0]
 80012e4:	617b      	str	r3, [r7, #20]
 80012e6:	4a08      	ldr	r2, [pc, #32]	; (8001308 <xfgets+0x34>)
 80012e8:	68fb      	ldr	r3, [r7, #12]
 80012ea:	6013      	str	r3, [r2, #0]
 80012ec:	6879      	ldr	r1, [r7, #4]
 80012ee:	68b8      	ldr	r0, [r7, #8]
 80012f0:	f7ff ffa0 	bl	8001234 <xgets>
 80012f4:	6138      	str	r0, [r7, #16]
 80012f6:	4a04      	ldr	r2, [pc, #16]	; (8001308 <xfgets+0x34>)
 80012f8:	697b      	ldr	r3, [r7, #20]
 80012fa:	6013      	str	r3, [r2, #0]
 80012fc:	693b      	ldr	r3, [r7, #16]
 80012fe:	4618      	mov	r0, r3
 8001300:	3718      	adds	r7, #24
 8001302:	46bd      	mov	sp, r7
 8001304:	bd80      	pop	{r7, pc}
 8001306:	bf00      	nop
 8001308:	20000468 	.word	0x20000468

0800130c <xatoi>:
 800130c:	b480      	push	{r7}
 800130e:	b085      	sub	sp, #20
 8001310:	af00      	add	r7, sp, #0
 8001312:	6078      	str	r0, [r7, #4]
 8001314:	6039      	str	r1, [r7, #0]
 8001316:	2300      	movs	r3, #0
 8001318:	727b      	strb	r3, [r7, #9]
 800131a:	683b      	ldr	r3, [r7, #0]
 800131c:	2200      	movs	r2, #0
 800131e:	601a      	str	r2, [r3, #0]
 8001320:	e004      	b.n	800132c <xatoi+0x20>
 8001322:	687b      	ldr	r3, [r7, #4]
 8001324:	681b      	ldr	r3, [r3, #0]
 8001326:	1c5a      	adds	r2, r3, #1
 8001328:	687b      	ldr	r3, [r7, #4]
 800132a:	601a      	str	r2, [r3, #0]
 800132c:	687b      	ldr	r3, [r7, #4]
 800132e:	681b      	ldr	r3, [r3, #0]
 8001330:	781b      	ldrb	r3, [r3, #0]
 8001332:	72fb      	strb	r3, [r7, #11]
 8001334:	7afb      	ldrb	r3, [r7, #11]
 8001336:	2b20      	cmp	r3, #32
 8001338:	d0f3      	beq.n	8001322 <xatoi+0x16>
 800133a:	7afb      	ldrb	r3, [r7, #11]
 800133c:	2b2d      	cmp	r3, #45	; 0x2d
 800133e:	d10a      	bne.n	8001356 <xatoi+0x4a>
 8001340:	2301      	movs	r3, #1
 8001342:	727b      	strb	r3, [r7, #9]
 8001344:	687b      	ldr	r3, [r7, #4]
 8001346:	681b      	ldr	r3, [r3, #0]
 8001348:	1c5a      	adds	r2, r3, #1
 800134a:	687b      	ldr	r3, [r7, #4]
 800134c:	601a      	str	r2, [r3, #0]
 800134e:	687b      	ldr	r3, [r7, #4]
 8001350:	681b      	ldr	r3, [r3, #0]
 8001352:	781b      	ldrb	r3, [r3, #0]
 8001354:	72fb      	strb	r3, [r7, #11]
 8001356:	7afb      	ldrb	r3, [r7, #11]
 8001358:	2b30      	cmp	r3, #48	; 0x30
 800135a:	d135      	bne.n	80013c8 <xatoi+0xbc>
 800135c:	687b      	ldr	r3, [r7, #4]
 800135e:	681b      	ldr	r3, [r3, #0]
 8001360:	1c5a      	adds	r2, r3, #1
 8001362:	687b      	ldr	r3, [r7, #4]
 8001364:	601a      	str	r2, [r3, #0]
 8001366:	687b      	ldr	r3, [r7, #4]
 8001368:	681b      	ldr	r3, [r3, #0]
 800136a:	781b      	ldrb	r3, [r3, #0]
 800136c:	72fb      	strb	r3, [r7, #11]
 800136e:	7afb      	ldrb	r3, [r7, #11]
 8001370:	2b62      	cmp	r3, #98	; 0x62
 8001372:	d00d      	beq.n	8001390 <xatoi+0x84>
 8001374:	2b78      	cmp	r3, #120	; 0x78
 8001376:	d117      	bne.n	80013a8 <xatoi+0x9c>
 8001378:	2310      	movs	r3, #16
 800137a:	72bb      	strb	r3, [r7, #10]
 800137c:	687b      	ldr	r3, [r7, #4]
 800137e:	681b      	ldr	r3, [r3, #0]
 8001380:	1c5a      	adds	r2, r3, #1
 8001382:	687b      	ldr	r3, [r7, #4]
 8001384:	601a      	str	r2, [r3, #0]
 8001386:	687b      	ldr	r3, [r7, #4]
 8001388:	681b      	ldr	r3, [r3, #0]
 800138a:	781b      	ldrb	r3, [r3, #0]
 800138c:	72fb      	strb	r3, [r7, #11]
 800138e:	e025      	b.n	80013dc <xatoi+0xd0>
 8001390:	2302      	movs	r3, #2
 8001392:	72bb      	strb	r3, [r7, #10]
 8001394:	687b      	ldr	r3, [r7, #4]
 8001396:	681b      	ldr	r3, [r3, #0]
 8001398:	1c5a      	adds	r2, r3, #1
 800139a:	687b      	ldr	r3, [r7, #4]
 800139c:	601a      	str	r2, [r3, #0]
 800139e:	687b      	ldr	r3, [r7, #4]
 80013a0:	681b      	ldr	r3, [r3, #0]
 80013a2:	781b      	ldrb	r3, [r3, #0]
 80013a4:	72fb      	strb	r3, [r7, #11]
 80013a6:	e019      	b.n	80013dc <xatoi+0xd0>
 80013a8:	7afb      	ldrb	r3, [r7, #11]
 80013aa:	2b20      	cmp	r3, #32
 80013ac:	d801      	bhi.n	80013b2 <xatoi+0xa6>
 80013ae:	2301      	movs	r3, #1
 80013b0:	e04e      	b.n	8001450 <xatoi+0x144>
 80013b2:	7afb      	ldrb	r3, [r7, #11]
 80013b4:	2b2f      	cmp	r3, #47	; 0x2f
 80013b6:	d902      	bls.n	80013be <xatoi+0xb2>
 80013b8:	7afb      	ldrb	r3, [r7, #11]
 80013ba:	2b39      	cmp	r3, #57	; 0x39
 80013bc:	d901      	bls.n	80013c2 <xatoi+0xb6>
 80013be:	2300      	movs	r3, #0
 80013c0:	e046      	b.n	8001450 <xatoi+0x144>
 80013c2:	2308      	movs	r3, #8
 80013c4:	72bb      	strb	r3, [r7, #10]
 80013c6:	e009      	b.n	80013dc <xatoi+0xd0>
 80013c8:	7afb      	ldrb	r3, [r7, #11]
 80013ca:	2b2f      	cmp	r3, #47	; 0x2f
 80013cc:	d902      	bls.n	80013d4 <xatoi+0xc8>
 80013ce:	7afb      	ldrb	r3, [r7, #11]
 80013d0:	2b39      	cmp	r3, #57	; 0x39
 80013d2:	d901      	bls.n	80013d8 <xatoi+0xcc>
 80013d4:	2300      	movs	r3, #0
 80013d6:	e03b      	b.n	8001450 <xatoi+0x144>
 80013d8:	230a      	movs	r3, #10
 80013da:	72bb      	strb	r3, [r7, #10]
 80013dc:	2300      	movs	r3, #0
 80013de:	60fb      	str	r3, [r7, #12]
 80013e0:	e029      	b.n	8001436 <xatoi+0x12a>
 80013e2:	7afb      	ldrb	r3, [r7, #11]
 80013e4:	2b60      	cmp	r3, #96	; 0x60
 80013e6:	d902      	bls.n	80013ee <xatoi+0xe2>
 80013e8:	7afb      	ldrb	r3, [r7, #11]
 80013ea:	3b20      	subs	r3, #32
 80013ec:	72fb      	strb	r3, [r7, #11]
 80013ee:	7afb      	ldrb	r3, [r7, #11]
 80013f0:	3b30      	subs	r3, #48	; 0x30
 80013f2:	72fb      	strb	r3, [r7, #11]
 80013f4:	7afb      	ldrb	r3, [r7, #11]
 80013f6:	2b10      	cmp	r3, #16
 80013f8:	d907      	bls.n	800140a <xatoi+0xfe>
 80013fa:	7afb      	ldrb	r3, [r7, #11]
 80013fc:	3b07      	subs	r3, #7
 80013fe:	72fb      	strb	r3, [r7, #11]
 8001400:	7afb      	ldrb	r3, [r7, #11]
 8001402:	2b09      	cmp	r3, #9
 8001404:	d801      	bhi.n	800140a <xatoi+0xfe>
 8001406:	2300      	movs	r3, #0
 8001408:	e022      	b.n	8001450 <xatoi+0x144>
 800140a:	7afa      	ldrb	r2, [r7, #11]
 800140c:	7abb      	ldrb	r3, [r7, #10]
 800140e:	429a      	cmp	r2, r3
 8001410:	d301      	bcc.n	8001416 <xatoi+0x10a>
 8001412:	2300      	movs	r3, #0
 8001414:	e01c      	b.n	8001450 <xatoi+0x144>
 8001416:	7abb      	ldrb	r3, [r7, #10]
 8001418:	68fa      	ldr	r2, [r7, #12]
 800141a:	fb03 f202 	mul.w	r2, r3, r2
 800141e:	7afb      	ldrb	r3, [r7, #11]
 8001420:	4413      	add	r3, r2
 8001422:	60fb      	str	r3, [r7, #12]
 8001424:	687b      	ldr	r3, [r7, #4]
 8001426:	681b      	ldr	r3, [r3, #0]
 8001428:	1c5a      	adds	r2, r3, #1
 800142a:	687b      	ldr	r3, [r7, #4]
 800142c:	601a      	str	r2, [r3, #0]
 800142e:	687b      	ldr	r3, [r7, #4]
 8001430:	681b      	ldr	r3, [r3, #0]
 8001432:	781b      	ldrb	r3, [r3, #0]
 8001434:	72fb      	strb	r3, [r7, #11]
 8001436:	7afb      	ldrb	r3, [r7, #11]
 8001438:	2b20      	cmp	r3, #32
 800143a:	d8d2      	bhi.n	80013e2 <xatoi+0xd6>
 800143c:	7a7b      	ldrb	r3, [r7, #9]
 800143e:	2b00      	cmp	r3, #0
 8001440:	d002      	beq.n	8001448 <xatoi+0x13c>
 8001442:	68fb      	ldr	r3, [r7, #12]
 8001444:	425b      	negs	r3, r3
 8001446:	60fb      	str	r3, [r7, #12]
 8001448:	68fa      	ldr	r2, [r7, #12]
 800144a:	683b      	ldr	r3, [r7, #0]
 800144c:	601a      	str	r2, [r3, #0]
 800144e:	2301      	movs	r3, #1
 8001450:	4618      	mov	r0, r3
 8001452:	3714      	adds	r7, #20
 8001454:	46bd      	mov	sp, r7
 8001456:	bc80      	pop	{r7}
 8001458:	4770      	bx	lr
 800145a:	bf00      	nop

0800145c <atexit>:
 800145c:	2300      	movs	r3, #0
 800145e:	4601      	mov	r1, r0
 8001460:	461a      	mov	r2, r3
 8001462:	4618      	mov	r0, r3
 8001464:	f000 b83a 	b.w	80014dc <__register_exitproc>

08001468 <__libc_fini_array>:
 8001468:	b538      	push	{r3, r4, r5, lr}
 800146a:	4b08      	ldr	r3, [pc, #32]	; (800148c <__libc_fini_array+0x24>)
 800146c:	4d08      	ldr	r5, [pc, #32]	; (8001490 <__libc_fini_array+0x28>)
 800146e:	1b5b      	subs	r3, r3, r5
 8001470:	109c      	asrs	r4, r3, #2
 8001472:	d007      	beq.n	8001484 <__libc_fini_array+0x1c>
 8001474:	3b04      	subs	r3, #4
 8001476:	441d      	add	r5, r3
 8001478:	3c01      	subs	r4, #1
 800147a:	f855 3904 	ldr.w	r3, [r5], #-4
 800147e:	4798      	blx	r3
 8001480:	2c00      	cmp	r4, #0
 8001482:	d1f9      	bne.n	8001478 <__libc_fini_array+0x10>
 8001484:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001488:	f000 b890 	b.w	80015ac <_fini>
 800148c:	08001744 	.word	0x08001744
 8001490:	08001740 	.word	0x08001740

08001494 <__libc_init_array>:
 8001494:	b570      	push	{r4, r5, r6, lr}
 8001496:	4e0d      	ldr	r6, [pc, #52]	; (80014cc <__libc_init_array+0x38>)
 8001498:	4d0d      	ldr	r5, [pc, #52]	; (80014d0 <__libc_init_array+0x3c>)
 800149a:	1b76      	subs	r6, r6, r5
 800149c:	10b6      	asrs	r6, r6, #2
 800149e:	d006      	beq.n	80014ae <__libc_init_array+0x1a>
 80014a0:	2400      	movs	r4, #0
 80014a2:	f855 3b04 	ldr.w	r3, [r5], #4
 80014a6:	3401      	adds	r4, #1
 80014a8:	4798      	blx	r3
 80014aa:	42a6      	cmp	r6, r4
 80014ac:	d1f9      	bne.n	80014a2 <__libc_init_array+0xe>
 80014ae:	4e09      	ldr	r6, [pc, #36]	; (80014d4 <__libc_init_array+0x40>)
 80014b0:	4d09      	ldr	r5, [pc, #36]	; (80014d8 <__libc_init_array+0x44>)
 80014b2:	f000 f875 	bl	80015a0 <_init>
 80014b6:	1b76      	subs	r6, r6, r5
 80014b8:	10b6      	asrs	r6, r6, #2
 80014ba:	d006      	beq.n	80014ca <__libc_init_array+0x36>
 80014bc:	2400      	movs	r4, #0
 80014be:	f855 3b04 	ldr.w	r3, [r5], #4
 80014c2:	3401      	adds	r4, #1
 80014c4:	4798      	blx	r3
 80014c6:	42a6      	cmp	r6, r4
 80014c8:	d1f9      	bne.n	80014be <__libc_init_array+0x2a>
 80014ca:	bd70      	pop	{r4, r5, r6, pc}
 80014cc:	08001738 	.word	0x08001738
 80014d0:	08001738 	.word	0x08001738
 80014d4:	08001740 	.word	0x08001740
 80014d8:	08001738 	.word	0x08001738

080014dc <__register_exitproc>:
 80014dc:	b570      	push	{r4, r5, r6, lr}
 80014de:	4c17      	ldr	r4, [pc, #92]	; (800153c <__register_exitproc+0x60>)
 80014e0:	6825      	ldr	r5, [r4, #0]
 80014e2:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 80014e6:	b1dc      	cbz	r4, 8001520 <__register_exitproc+0x44>
 80014e8:	6865      	ldr	r5, [r4, #4]
 80014ea:	2d1f      	cmp	r5, #31
 80014ec:	dc23      	bgt.n	8001536 <__register_exitproc+0x5a>
 80014ee:	b180      	cbz	r0, 8001512 <__register_exitproc+0x36>
 80014f0:	f04f 0c01 	mov.w	ip, #1
 80014f4:	eb04 0e85 	add.w	lr, r4, r5, lsl #2
 80014f8:	f8ce 2088 	str.w	r2, [lr, #136]	; 0x88
 80014fc:	f8d4 6188 	ldr.w	r6, [r4, #392]	; 0x188
 8001500:	fa0c f205 	lsl.w	r2, ip, r5
 8001504:	4316      	orrs	r6, r2
 8001506:	2802      	cmp	r0, #2
 8001508:	f8c4 6188 	str.w	r6, [r4, #392]	; 0x188
 800150c:	f8ce 3108 	str.w	r3, [lr, #264]	; 0x108
 8001510:	d00b      	beq.n	800152a <__register_exitproc+0x4e>
 8001512:	1c6b      	adds	r3, r5, #1
 8001514:	3502      	adds	r5, #2
 8001516:	6063      	str	r3, [r4, #4]
 8001518:	2000      	movs	r0, #0
 800151a:	f844 1025 	str.w	r1, [r4, r5, lsl #2]
 800151e:	bd70      	pop	{r4, r5, r6, pc}
 8001520:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8001524:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8001528:	e7de      	b.n	80014e8 <__register_exitproc+0xc>
 800152a:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
 800152e:	4313      	orrs	r3, r2
 8001530:	f8c4 318c 	str.w	r3, [r4, #396]	; 0x18c
 8001534:	e7ed      	b.n	8001512 <__register_exitproc+0x36>
 8001536:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800153a:	bd70      	pop	{r4, r5, r6, pc}
 800153c:	08001734 	.word	0x08001734

08001540 <Reset_Handler>:
 8001540:	f7ff fb32 	bl	8000ba8 <SystemInit>
 8001544:	480b      	ldr	r0, [pc, #44]	; (8001574 <LoopFillZerobss+0xe>)
 8001546:	490c      	ldr	r1, [pc, #48]	; (8001578 <LoopFillZerobss+0x12>)
 8001548:	4a0c      	ldr	r2, [pc, #48]	; (800157c <LoopFillZerobss+0x16>)
 800154a:	2300      	movs	r3, #0
 800154c:	e002      	b.n	8001554 <LoopCopyDataInit>

0800154e <CopyDataInit>:
 800154e:	58d4      	ldr	r4, [r2, r3]
 8001550:	50c4      	str	r4, [r0, r3]
 8001552:	3304      	adds	r3, #4

08001554 <LoopCopyDataInit>:
 8001554:	18c4      	adds	r4, r0, r3
 8001556:	428c      	cmp	r4, r1
 8001558:	d3f9      	bcc.n	800154e <CopyDataInit>
 800155a:	4a09      	ldr	r2, [pc, #36]	; (8001580 <LoopFillZerobss+0x1a>)
 800155c:	4c09      	ldr	r4, [pc, #36]	; (8001584 <LoopFillZerobss+0x1e>)
 800155e:	2300      	movs	r3, #0
 8001560:	e001      	b.n	8001566 <LoopFillZerobss>

08001562 <FillZerobss>:
 8001562:	6013      	str	r3, [r2, #0]
 8001564:	3204      	adds	r2, #4

08001566 <LoopFillZerobss>:
 8001566:	42a2      	cmp	r2, r4
 8001568:	d3fb      	bcc.n	8001562 <FillZerobss>
 800156a:	f7ff ff93 	bl	8001494 <__libc_init_array>
 800156e:	f7ff f9f9 	bl	8000964 <main>
 8001572:	4770      	bx	lr
 8001574:	20000000 	.word	0x20000000
 8001578:	20000438 	.word	0x20000438
 800157c:	08001744 	.word	0x08001744
 8001580:	20000438 	.word	0x20000438
 8001584:	2000046c 	.word	0x2000046c

08001588 <ADC1_2_IRQHandler>:
 8001588:	e7fe      	b.n	8001588 <ADC1_2_IRQHandler>
	...

0800158c <register_fini>:
 800158c:	4b02      	ldr	r3, [pc, #8]	; (8001598 <register_fini+0xc>)
 800158e:	b113      	cbz	r3, 8001596 <register_fini+0xa>
 8001590:	4802      	ldr	r0, [pc, #8]	; (800159c <register_fini+0x10>)
 8001592:	f7ff bf63 	b.w	800145c <atexit>
 8001596:	4770      	bx	lr
 8001598:	00000000 	.word	0x00000000
 800159c:	08001469 	.word	0x08001469

080015a0 <_init>:
 80015a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80015a2:	bf00      	nop
 80015a4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80015a6:	bc08      	pop	{r3}
 80015a8:	469e      	mov	lr, r3
 80015aa:	4770      	bx	lr

080015ac <_fini>:
 80015ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80015ae:	bf00      	nop
 80015b0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80015b2:	bc08      	pop	{r3}
 80015b4:	469e      	mov	lr, r3
 80015b6:	4770      	bx	lr
