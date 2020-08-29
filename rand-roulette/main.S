
rand-roulette:	file format ELF32-arm-little


Disassembly of section .text:

08000400 <&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91:
 8000400:      	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8000404:      	sub	sp, #0x3c
 8000406:      	mov	r4, r1
 8000408:      	ldr	r1, [r1, #0x18]
 800040a:      	ldr	r2, [r4, #0x1c]
 800040c:      	ldr	r3, [r0]
 800040e:      	ldr	r0, [r0, #0x4]
 8000410:      	ldr	r2, [r2, #0x10]
 8000412:      	str	r3, [sp, #0x1c]
 8000414:      	str	r0, [sp, #0x18]
 8000416:      	mov	r0, r1
 8000418:      	movs	r1, #0x22
 800041a:      	blx	r2
 800041c:      	cmp	r0, #0x0
 800041e:      	bne.w	#0x37c <$t.6+0x100>
 8000422:      	ldr	r1, [sp, #0x18]
 8000424:      	cmp	r1, #0x0
 8000426:      	beq.w	#0x342 <$t.6+0xce>
 800042a:      	ldr.w	r11, [sp, #0x1c]
 800042e:      	mov.w	r9, #0x0
 8000432:      	mov.w	r8, #0x0
 8000436:      	add.w	r5, r11, r1
 800043a:      	str	r5, [sp, #0x10]
 800043c:      	mov	r0, r11
 800043e:      	str.w	r11, [sp, #0x14]
 8000442:      	ldrsb	r2, [r0], #1
 8000446:      	cmp.w	r2, #0xffffffff
 800044a:      	uxtb	r7, r2
 800044c:      	ble	#0xa <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0x5a>
 800044e:      	mov	r11, r0
 8000450:      	sub.w	r0, r7, #0x9
 8000454:      	cmp	r0, #0x1e
 8000456:      	bls	#0x92 <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0xec>
 8000458:      	b	#0xc2 <$t.2+0x8>
 800045a:      	cmp	r0, r5
 800045c:      	beq	#0x38 <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0x98>
 800045e:      	ldrb.w	r1, [r11, #0x1]
 8000462:      	add.w	r0, r11, #0x2
 8000466:      	and	r2, r1, #0x3f
 800046a:      	mov	r11, r0
 800046c:      	and	r1, r7, #0x1f
 8000470:      	cmp	r7, #0xdf
 8000472:      	bls	#0x2e <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0xa4>
 8000474:      	cmp	r11, r5
 8000476:      	beq	#0x30 <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0xaa>
 8000478:      	ldrb	r0, [r11], #1
 800047c:      	and	r3, r0, #0x3f
 8000480:      	mov	r0, r11
 8000482:      	orr.w	r2, r3, r2, lsl #6
 8000486:      	cmp	r7, #0xf0
 8000488:      	blo	#0x2a <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0xb6>
 800048a:      	cmp	r11, r5
 800048c:      	beq	#0x38 <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0xc8>
 800048e:      	ldrb	r0, [r11], #1
 8000492:      	and	r3, r0, #0x3f
 8000496:      	b	#0x32 <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0xcc>
 8000498:      	movs	r2, #0x0
 800049a:      	mov	r11, r5
 800049c:      	and	r1, r7, #0x1f
 80004a0:      	cmp	r7, #0xdf
 80004a2:      	bhi	#-0x32 <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0x74>
 80004a4:      	orr.w	r7, r2, r1, lsl #6
 80004a8:      	b	#0xe <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0xba>
 80004aa:      	movs	r3, #0x0
 80004ac:      	mov	r11, r5
 80004ae:      	orr.w	r2, r3, r2, lsl #6
 80004b2:      	cmp	r7, #0xf0
 80004b4:      	bhs	#-0x2e <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0x8a>
 80004b6:      	orr.w	r7, r2, r1, lsl #12
 80004ba:      	mov	r11, r0
 80004bc:      	ldr	r1, [sp, #0x18]
 80004be:      	sub.w	r0, r7, #0x9
 80004c2:      	cmp	r0, #0x1e
 80004c4:      	bls	#0x24 <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0xec>
 80004c6:      	b	#0x54 <$t.2+0x8>
 80004c8:      	movs	r3, #0x0
 80004ca:      	mov	r11, r0
 80004cc:      	mov.w	r0, #0x1c0000
 80004d0:      	and.w	r0, r0, r1, lsl #18
 80004d4:      	ldr	r1, [sp, #0x18]
 80004d6:      	orr.w	r0, r0, r2, lsl #6
 80004da:      	adds	r7, r0, r3
 80004dc:      	cmp.w	r7, #0x110000
 80004e0:      	beq.w	#0x28e <$t.6+0xd4>
 80004e4:      	sub.w	r0, r7, #0x9
 80004e8:      	cmp	r0, #0x1e
 80004ea:      	bhi	#0x30 <$t.2+0x8>
 80004ec:      	movs	r6, #0x2
 80004ee:      	mov.w	r10, #0x74
 80004f2:      	tbb	[pc, r0]

080004f6 $d.1:
 80004f6:	8e 10 19 19	.word	0x1919108e
 80004fa:	3c 19 19 19	.word	0x1919193c
 80004fe:	19 19 19 19	.word	0x19191919
 8000502:	19 19 19 19	.word	0x19191919
 8000506:	19 19 19 19	.word	0x19191919
 800050a:	19 19 19 19	.word	0x19191919
 800050e:	19 16 19 19	.word	0x19191619
 8000512:	19 19 16 00	.word	0x00161919

08000516 $t.2:
 8000516:      	movs	r6, #0x2
 8000518:      	mov.w	r10, #0x6e
 800051c:      	b	#0x54 <$t.2+0x5e>
 800051e:      	cmp	r7, #0x5c
 8000520:      	bne	#0x4 <$t.2+0x12>
 8000522:      	movs	r6, #0x2
 8000524:      	mov	r10, r7
 8000526:      	b	#0xe8 <$t.2+0xfc>
 8000528:      	mov	r0, r7
 800052a:      	bl	#0x1bb2
 800052e:      	ldr	r5, [sp, #0x10]
 8000530:      	cmp	r0, #0x0
 8000532:      	bne	#0xc4 <$t.2+0xe4>
 8000534:      	cmp.w	r7, #0x10000
 8000538:      	bhs	#0x3a <$t.2+0x60>
 800053a:      	movw	r0, #0x125
 800053e:      	movw	r1, #0x2fc0
 8000542:      	str	r0, [sp]
 8000544:      	movw	r0, #0x3137
 8000548:      	movt	r0, #0x800
 800054c:      	movw	r3, #0x3012
 8000550:      	str	r0, [sp, #0x4]
 8000552:      	mov.w	r0, #0x13a
 8000556:      	str	r0, [sp, #0x8]
 8000558:      	mov	r0, r7
 800055a:      	movt	r1, #0x800
 800055e:      	movs	r2, #0x29
 8000560:      	movt	r3, #0x800
 8000564:      	bl	#0x1c96
 8000568:      	cmp	r0, #0x0
 800056a:      	beq	#0x8c <$t.2+0xe4>
 800056c:      	b	#0x1f6 <$t.6+0xc8>
 800056e:      	movs	r6, #0x2
 8000570:      	mov.w	r10, #0x72
 8000574:      	b	#0x9a <$t.2+0xfc>
 8000576:      	cmp.w	r7, #0x20000
 800057a:      	bhs	#0x2e <$t.2+0x96>
 800057c:      	movs	r0, #0xa6
 800057e:      	movw	r1, #0x3271
 8000582:      	str	r0, [sp]
 8000584:      	movw	r0, #0x335d
 8000588:      	movt	r0, #0x800
 800058c:      	movw	r3, #0x32b7
 8000590:      	str	r0, [sp, #0x4]
 8000592:      	mov.w	r0, #0x198
 8000596:      	str	r0, [sp, #0x8]
 8000598:      	mov	r0, r7
 800059a:      	movt	r1, #0x800
 800059e:      	movs	r2, #0x23
 80005a0:      	movt	r3, #0x800
 80005a4:      	bl	#0x1c56
 80005a8:      	cbz	r0, #0x4e
 80005aa:      	b	#0x1b8 <$t.6+0xc8>
 80005ac:      	movw	r0, #0xfe10
 80005b0:      	movw	r1, #0xfe10
 80005b4:      	movt	r0, #0xfff1
 80005b8:      	movt	r1, #0x2
 80005bc:      	add	r0, r7
 80005be:      	cmp	r0, r1
 80005c0:      	blo	#0x36 <$t.2+0xe4>
 80005c2:      	movw	r0, #0x5e2
 80005c6:      	movw	r1, #0x6e2
 80005ca:      	movt	r0, #0xfffd
 80005ce:      	movt	r1, #0xb
 80005d2:      	add	r0, r7
 80005d4:      	cmp	r0, r1
 80005d6:      	blo	#0x20 <$t.2+0xe4>
 80005d8:      	movw	r0, #0x141f
 80005dc:      	movw	r1, #0xc1f
 80005e0:      	movt	r0, #0xfffd
 80005e4:      	add	r0, r7
 80005e6:      	cmp	r0, r1
 80005e8:      	itttt	hs
 80005ea:      	movwhs	r0, #0x315e
 80005ee:      	movths	r0, #0xfffd
 80005f2:      	addhs	r0, r7
 80005f4:      	cmphs	r0, #0xe
 80005f6:      	bhs.w	#0x13c <$t.6+0x98>
 80005fa:      	orr	r0, r7, #0x1
 80005fe:      	movs	r1, #0x7
 8000600:      	clz	r0, r0
 8000604:      	movs	r5, #0x5
 8000606:      	movs	r6, #0x3
 8000608:      	mov	r10, r7
 800060a:      	eor.w	r0, r1, r0, lsr #2
 800060e:      	str	r0, [sp, #0xc]
 8000610:      	ldr	r1, [sp, #0x18]
 8000612:      	ldr	r0, [sp, #0x1c]
 8000614:      	cmp	r8, r9
 8000616:      	str	r1, [sp, #0x24]
 8000618:      	str	r0, [sp, #0x20]
 800061a:      	strd	r9, r8, [sp, #40]
 800061e:      	blo.w	#0x194 <$t.6+0x118>
 8000622:      	cmp.w	r9, #0x0
 8000626:      	it	ne
 8000628:      	cmpne	r9, r1
 800062a:      	beq	#0x10 <$t.2+0x128>
 800062c:      	bhs.w	#0x186 <$t.6+0x118>
 8000630:      	ldr	r0, [sp, #0x1c]
 8000632:      	ldrsb.w	r0, [r0, r9]
 8000636:      	cmn.w	r0, #0x41
 800063a:      	ble.w	#0x178 <$t.6+0x118>
 800063e:      	cmp.w	r8, #0x0
 8000642:      	it	ne
 8000644:      	cmpne	r8, r1
 8000646:      	beq	#0x10 <$t.2+0x144>
 8000648:      	bhs.w	#0x16a <$t.6+0x118>
 800064c:      	ldr	r0, [sp, #0x1c]
 800064e:      	ldrsb.w	r0, [r0, r8]
 8000652:      	cmn.w	r0, #0x41
 8000656:      	ble.w	#0x15c <$t.6+0x118>
 800065a:      	ldr	r1, [sp, #0x1c]
 800065c:      	ldrd	r0, r2, [r4, #24]
 8000660:      	ldr	r3, [r2, #0xc]
 8000662:      	add	r1, r9
 8000664:      	sub.w	r2, r8, r9
 8000668:      	blx	r3
 800066a:      	cbz	r0, #0xe
 800066c:      	b	#0x12e <$t.6+0x100>
 800066e:      	ldrd	r0, r2, [r4, #24]
 8000672:      	ldr	r2, [r2, #0x10]
 8000674:      	blx	r2
 8000676:      	cmp	r0, #0x0
 8000678:      	bne.w	#0x122 <$t.6+0x100>
 800067c:      	mov	r0, r6
 800067e:      	movs	r6, #0x1
 8000680:      	movs	r1, #0x5c
 8000682:      	tbb	[pc, r0]

08000686 $d.3:
 8000686:	3a 03 02 06	.word	0x0602033a

0800068a $t.4:
 800068a:      	b	#-0x20 <$t.2+0x158>
 800068c:      	movs	r6, #0x0
 800068e:      	mov	r1, r10
 8000690:      	b	#-0x26 <$t.2+0x158>
 8000692:      	uxtb	r0, r5
 8000694:      	tbb	[pc, r0]

08000698 $d.5:
 8000698:	31 03 0d 20	.word	0x200d0331
 800069c:	08 26		.short	0x2608

0800069e $t.6:
 800069e:      	bic	r5, r5, #0xff
 80006a2:      	movs	r6, #0x3
 80006a4:      	movs	r1, #0x7d
 80006a6:      	b	#-0x3c <$t.2+0x158>
 80006a8:      	movs	r6, #0x3
 80006aa:      	movs	r1, #0x75
 80006ac:      	bfi	r5, r6, #0, #8
 80006b0:      	b	#-0x46 <$t.2+0x158>
 80006b2:      	ldr	r2, [sp, #0xc]
 80006b4:      	movs	r0, #0x1c
 80006b6:      	and.w	r0, r0, r2, lsl #2
 80006ba:      	lsr.w	r0, r10, r0
 80006be:      	and	r0, r0, #0xf
 80006c2:      	add.w	r1, r0, #0x57
 80006c6:      	cmp	r0, #0xa
 80006c8:      	it	lo
 80006ca:      	addlo.w	r1, r0, #0x30
 80006ce:      	cbz	r2, #0x1e
 80006d0:      	subs	r2, #0x1
 80006d2:      	str	r2, [sp, #0xc]
 80006d4:      	movs	r6, #0x3
 80006d6:      	b	#-0x6c <$t.2+0x158>
 80006d8:      	movs	r0, #0x2
 80006da:      	movs	r6, #0x3
 80006dc:      	bfi	r5, r0, #0, #8
 80006e0:      	movs	r1, #0x7b
 80006e2:      	b	#-0x78 <$t.2+0x158>
 80006e4:      	movs	r0, #0x4
 80006e6:      	movs	r6, #0x3
 80006e8:      	bfi	r5, r0, #0, #8
 80006ec:      	movs	r1, #0x5c
 80006ee:      	b	#-0x84 <$t.2+0x158>
 80006f0:      	movs	r0, #0x1
 80006f2:      	movs	r6, #0x3
 80006f4:      	bfi	r5, r0, #0, #8
 80006f8:      	b	#-0x8e <$t.2+0x158>
 80006fa:      	cmp	r7, #0x80
 80006fc:      	bhs	#0x8 <$t.6+0x6a>
 80006fe:      	movs	r0, #0x1
 8000700:      	ldr	r1, [sp, #0x18]
 8000702:      	ldrd	r5, r2, [sp, #16]
 8000706:      	b	#0x18 <$t.6+0x84>
 8000708:      	ldr	r1, [sp, #0x18]
 800070a:      	cmp.w	r7, #0x800
 800070e:      	ldrd	r5, r2, [sp, #16]
 8000712:      	bhs	#0x2 <$t.6+0x7a>
 8000714:      	movs	r0, #0x2
 8000716:      	b	#0x8 <$t.6+0x84>
 8000718:      	movs	r0, #0x4
 800071a:      	cmp.w	r7, #0x10000
 800071e:      	it	lo
 8000720:      	movlo	r0, #0x3
 8000722:      	add.w	r9, r0, r8
 8000726:      	sub.w	r0, r8, r2
 800072a:      	cmp	r5, r11
 800072c:      	add.w	r8, r0, r11
 8000730:      	bne.w	#-0x2f8 <<&T as core::fmt::Debug>::fmt::h425ea2ab27c6bb91+0x3c>
 8000734:      	b	#0x3a <$t.6+0xd4>
 8000736:      	movw	r1, #0xb81e
 800073a:      	bic	r0, r7, #0x1
 800073e:      	movt	r1, #0x2
 8000742:      	cmp	r0, r1
 8000744:      	beq.w	#-0x14e <$t.2+0xe4>
 8000748:      	movw	r0, #0x5929
 800074c:      	movt	r0, #0xfffd
 8000750:      	add	r0, r7
 8000752:      	cmp	r0, #0x29
 8000754:      	itttt	hs
 8000756:      	movwhs	r0, #0x48cb
 800075a:      	movths	r0, #0xfffd
 800075e:      	addhs	r0, r7
 8000760:      	cmphs	r0, #0xa
 8000762:      	bls.w	#-0x16c <$t.2+0xe4>
 8000766:      	ldrd	r2, r1, [sp, #20]
 800076a:      	b	#-0x48 <$t.6+0x88>
 800076c:      	mov.w	r9, #0x0
 8000770:      	b	#0x16 <$t.6+0xec>
 8000772:      	cmp.w	r9, #0x0
 8000776:      	it	ne
 8000778:      	cmpne	r9, r1
 800077a:      	beq	#0xc <$t.6+0xec>
 800077c:      	bhs	#0x4a <$t.6+0x12c>
 800077e:      	ldr	r0, [sp, #0x1c]
 8000780:      	ldrsb.w	r0, [r0, r9]
 8000784:      	cmn.w	r0, #0x41
 8000788:      	ble	#0x3e <$t.6+0x12c>
 800078a:      	ldrd	r0, r2, [r4, #24]
 800078e:      	ldr	r1, [sp, #0x1c]
 8000790:      	ldr	r3, [r2, #0xc]
 8000792:      	ldr	r2, [sp, #0x18]
 8000794:      	add	r1, r9
 8000796:      	sub.w	r2, r2, r9
 800079a:      	blx	r3
 800079c:      	cbz	r0, #0x6
 800079e:      	movs	r0, #0x1
 80007a0:      	add	sp, #0x3c
 80007a2:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80007a6:      	ldrd	r0, r1, [r4, #24]
 80007aa:      	ldr	r2, [r1, #0x10]
 80007ac:      	movs	r1, #0x22
 80007ae:      	add	sp, #0x3c
 80007b0:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 80007b4:      	bx	r2
 80007b6:      	add	r0, sp, #0x2c
 80007b8:      	str	r0, [sp, #0x38]
 80007ba:      	add	r0, sp, #0x28
 80007bc:      	str	r0, [sp, #0x34]
 80007be:      	add	r0, sp, #0x20
 80007c0:      	str	r0, [sp, #0x30]
 80007c2:      	add	r0, sp, #0x30
 80007c4:      	bl	#0x1b62
 80007c8:      	trap
 80007ca:      	ldr	r0, [sp, #0x1c]
 80007cc:      	mov	r3, r1
 80007ce:      	mov	r2, r9
 80007d0:      	bl	#0xdfa
 80007d4:      	trap

080007d6 core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478:
 80007d6:      	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 80007da:      	sub	sp, #0x84
 80007dc:      	mov	r12, r1
 80007de:      	ldr	r1, [r1]
 80007e0:      	lsls	r2, r1, #0x1b
 80007e2:      	bmi	#0x9e <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0xae>
 80007e4:      	ldr	r4, [r0]
 80007e6:      	lsls	r0, r1, #0x1a
 80007e8:      	bmi.w	#0x11c <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x132>
 80007ec:      	movw	r9, #0x851f
 80007f0:      	movw	r1, #0x270a
 80007f4:      	movw	r0, #0x2710
 80007f8:      	movw	r8, #0xff9c
 80007fc:      	cmp	r4, r0
 80007fe:      	movt	r9, #0x51eb
 8000802:      	movt	r1, #0x800
 8000806:      	blo.w	#0x1c8 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1fc>
 800080a:      	movw	lr, #0x1759
 800080e:      	movw	r10, #0xd8f0
 8000812:      	movw	r7, #0xe0ff
 8000816:      	add.w	r11, sp, #0x4
 800081a:      	movs	r3, #0x0
 800081c:      	movt	lr, #0xd1b7
 8000820:      	movt	r10, #0xffff
 8000824:      	movt	r7, #0x5f5
 8000828:      	umull	r0, r2, r4, lr
 800082c:      	cmp	r4, r7
 800082e:      	lsr.w	r0, r2, #0xd
 8000832:      	mla	r2, r0, r10, r4
 8000836:      	mov	r4, r0
 8000838:      	uxth	r5, r2
 800083a:      	umull	r5, r6, r5, r9
 800083e:      	lsr.w	r5, r6, #0x5
 8000842:      	add.w	r6, r11, r3
 8000846:      	mla	r2, r5, r8, r2
 800084a:      	ldrh.w	r5, [r1, r5, lsl #1]
 800084e:      	sub.w	r3, r3, #0x4
 8000852:      	strh.w	r5, [r6, #0x23]
 8000856:      	uxth	r2, r2
 8000858:      	ldrh.w	r2, [r1, r2, lsl #1]
 800085c:      	strh.w	r2, [r6, #0x25]
 8000860:      	bhi	#-0x3c <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x52>
 8000862:      	add.w	lr, r3, #0x27
 8000866:      	mov	r4, r0
 8000868:      	cmp	r4, #0x63
 800086a:      	bgt.w	#0x16e <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x206>
 800086e:      	mov	r0, r4
 8000870:      	cmp	r0, #0xa
 8000872:      	blt.w	#0x188 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x228>
 8000876:      	ldrh.w	r0, [r1, r0, lsl #1]
 800087a:      	sub.w	r2, lr, #0x2
 800087e:      	add	r1, sp, #0x4
 8000880:      	strh	r0, [r1, r2]
 8000882:      	b	#0x182 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x232>
 8000884:      	ldr	r0, [r0]
 8000886:      	add.w	lr, sp, #0x4
 800088a:      	movs	r3, #0x81
 800088c:      	movs	r2, #0x0
 800088e:      	and	r1, r0, #0xf
 8000892:      	add.w	r4, r1, #0x57
 8000896:      	cmp	r1, #0xa
 8000898:      	it	lo
 800089a:      	addlo.w	r4, r1, #0x30
 800089e:      	add.w	r1, lr, r3
 80008a2:      	cmp.w	r2, r0, lsr #4
 80008a6:      	strb	r4, [r1, #-2]
 80008aa:      	beq	#0xe2 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1ba>
 80008ac:      	lsrs	r4, r0, #0x4
 80008ae:      	and	r4, r4, #0xf
 80008b2:      	add.w	r5, r4, #0x57
 80008b6:      	cmp	r4, #0xa
 80008b8:      	it	lo
 80008ba:      	addlo.w	r5, r4, #0x30
 80008be:      	cmp.w	r2, r0, lsr #8
 80008c2:      	strb	r5, [r1, #-3]
 80008c6:      	beq	#0xee <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1e2>
 80008c8:      	lsrs	r4, r0, #0x8
 80008ca:      	and	r4, r4, #0xf
 80008ce:      	add.w	r5, r4, #0x57
 80008d2:      	cmp	r4, #0xa
 80008d4:      	it	lo
 80008d6:      	addlo.w	r5, r4, #0x30
 80008da:      	cmp.w	r2, r0, lsr #12
 80008de:      	strb	r5, [r1, #-4]
 80008e2:      	beq	#0xe2 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1f2>
 80008e4:      	lsrs	r4, r0, #0xc
 80008e6:      	subs	r3, #0x4
 80008e8:      	and	r4, r4, #0xf
 80008ec:      	add.w	r5, r4, #0x57
 80008f0:      	cmp	r4, #0xa
 80008f2:      	it	lo
 80008f4:      	addlo.w	r5, r4, #0x30
 80008f8:      	strb	r5, [r1, #-5]
 80008fc:      	lsrs	r1, r0, #0x10
 80008fe:      	cmp.w	r2, r0, lsr #16
 8000902:      	mov	r0, r1
 8000904:      	bne	#-0x7a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0xb8>
 8000906:      	b	#0x7e <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1b2>
 8000908:      	add.w	lr, sp, #0x4
 800090c:      	movs	r3, #0x81
 800090e:      	movs	r2, #0x0
 8000910:      	and	r0, r4, #0xf
 8000914:      	add.w	r1, lr, r3
 8000918:      	add.w	r5, r0, #0x37
 800091c:      	cmp	r0, #0xa
 800091e:      	it	lo
 8000920:      	addlo.w	r5, r0, #0x30
 8000924:      	cmp.w	r2, r4, lsr #4
 8000928:      	strb	r5, [r1, #-2]
 800092c:      	beq	#0x60 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1ba>
 800092e:      	lsrs	r0, r4, #0x4
 8000930:      	and	r0, r0, #0xf
 8000934:      	add.w	r5, r0, #0x37
 8000938:      	cmp	r0, #0xa
 800093a:      	it	lo
 800093c:      	addlo.w	r5, r0, #0x30
 8000940:      	cmp.w	r2, r4, lsr #8
 8000944:      	strb	r5, [r1, #-3]
 8000948:      	beq	#0x6c <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1e2>
 800094a:      	lsrs	r0, r4, #0x8
 800094c:      	and	r0, r0, #0xf
 8000950:      	add.w	r5, r0, #0x37
 8000954:      	cmp	r0, #0xa
 8000956:      	it	lo
 8000958:      	addlo.w	r5, r0, #0x30
 800095c:      	cmp.w	r2, r4, lsr #12
 8000960:      	strb	r5, [r1, #-4]
 8000964:      	beq	#0x60 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1f2>
 8000966:      	lsrs	r0, r4, #0xc
 8000968:      	subs	r3, #0x4
 800096a:      	and	r0, r0, #0xf
 800096e:      	add.w	r5, r0, #0x37
 8000972:      	cmp	r0, #0xa
 8000974:      	it	lo
 8000976:      	addlo.w	r5, r0, #0x30
 800097a:      	lsrs	r0, r4, #0x10
 800097c:      	cmp.w	r2, r4, lsr #16
 8000980:      	mov	r4, r0
 8000982:      	strb	r5, [r1, #-5]
 8000986:      	bne	#-0x7a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x13a>
 8000988:      	subs	r0, r3, #0x1
 800098a:      	cmp	r0, #0x81
 800098c:      	blo	#0x8 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1c2>
 800098e:      	b	#0x2e <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1ea>
 8000990:      	subs	r0, r3, #0x2
 8000992:      	subs	r3, #0x1
 8000994:      	cmp	r0, #0x81
 8000996:      	bhs	#0x26 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1ea>
 8000998:      	rsb.w	r1, r3, #0x81
 800099c:      	str	r1, [sp]
 800099e:      	movw	r1, #0x2878
 80009a2:      	add.w	r3, lr, r0
 80009a6:      	movt	r1, #0x800
 80009aa:      	mov	r0, r12
 80009ac:      	movs	r2, #0x2
 80009ae:      	bl	#0x63a
 80009b2:      	add	sp, #0x84
 80009b4:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80009b8:      	subs	r0, r3, #0x3
 80009ba:      	subs	r3, #0x2
 80009bc:      	cmp	r0, #0x81
 80009be:      	blo	#-0x2a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1c2>
 80009c0:      	movs	r1, #0x80
 80009c2:      	bl	#0x8c4
 80009c6:      	trap
 80009c8:      	subs	r0, r3, #0x4
 80009ca:      	subs	r3, #0x3
 80009cc:      	cmp	r0, #0x81
 80009ce:      	blo	#-0x3a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1c2>
 80009d0:      	b	#-0x14 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x1ea>
 80009d2:      	mov.w	lr, #0x27
 80009d6:      	cmp	r4, #0x63
 80009d8:      	ble.w	#-0x16e <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0x98>
 80009dc:      	uxth	r0, r4
 80009de:      	sub.w	lr, lr, #0x2
 80009e2:      	umull	r0, r2, r0, r9
 80009e6:      	add	r3, sp, #0x4
 80009e8:      	lsrs	r0, r2, #0x5
 80009ea:      	mla	r2, r0, r8, r4
 80009ee:      	uxth	r2, r2
 80009f0:      	ldrh.w	r2, [r1, r2, lsl #1]
 80009f4:      	strh.w	r2, [r3, lr]
 80009f8:      	cmp	r0, #0xa
 80009fa:      	bge.w	#-0x188 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478+0xa0>
 80009fe:      	sub.w	r2, lr, #0x1
 8000a02:      	add	r1, sp, #0x4
 8000a04:      	adds	r0, #0x30
 8000a06:      	strb	r0, [r1, r2]
 8000a08:      	rsb.w	r0, r2, #0x27
 8000a0c:      	movw	r1, #0x3c45
 8000a10:      	str	r0, [sp]
 8000a12:      	add	r0, sp, #0x4
 8000a14:      	adds	r3, r0, r2
 8000a16:      	movt	r1, #0x800
 8000a1a:      	mov	r0, r12
 8000a1c:      	movs	r2, #0x0
 8000a1e:      	bl	#0x5ca
 8000a22:      	add	sp, #0x84
 8000a24:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

08000a28 core::ptr::real_drop_in_place::h127602bd0163ef1c:
 8000a28:      	bx	lr

08000a2a <&mut W as core::fmt::Write>::write_char::h41512c3ce9a23152:
 8000a2a:      	push.w	{r4, r5, r6, r7, r8, lr}
 8000a2e:      	sub	sp, #0x10
 8000a30:      	ldr	r0, [r0]
 8000a32:      	movs	r2, #0x0
 8000a34:      	cmp	r1, #0x80
 8000a36:      	str	r2, [sp]
 8000a38:      	bhs	#0x6 <<&mut W as core::fmt::Write>::write_char::h41512c3ce9a23152+0x18>
 8000a3a:      	strb.w	r1, [sp]
 8000a3e:      	movs	r4, #0x1
 8000a40:      	b	#0x6c <<&mut W as core::fmt::Write>::write_char::h41512c3ce9a23152+0x86>
 8000a42:      	cmp.w	r1, #0x800
 8000a46:      	bhs	#0x16 <<&mut W as core::fmt::Write>::write_char::h41512c3ce9a23152+0x36>
 8000a48:      	movs	r4, #0x2
 8000a4a:      	lsrs	r2, r1, #0x6
 8000a4c:      	bfi	r1, r4, #6, #26
 8000a50:      	strb.w	r1, [sp, #0x1]
 8000a54:      	movs	r1, #0x6
 8000a56:      	bfi	r2, r1, #5, #27
 8000a5a:      	strb.w	r2, [sp]
 8000a5e:      	b	#0x4e <<&mut W as core::fmt::Write>::write_char::h41512c3ce9a23152+0x86>
 8000a60:      	movs	r2, #0x2
 8000a62:      	mov	r3, r1
 8000a64:      	bfi	r3, r2, #6, #26
 8000a68:      	cmp.w	r1, #0x10000
 8000a6c:      	bhs	#0x1c <<&mut W as core::fmt::Write>::write_char::h41512c3ce9a23152+0x62>
 8000a6e:      	strb.w	r3, [sp, #0x2]
 8000a72:      	lsrs	r3, r1, #0x6
 8000a74:      	bfi	r3, r2, #6, #26
 8000a78:      	lsrs	r1, r1, #0xc
 8000a7a:      	movs	r2, #0xe
 8000a7c:      	strb.w	r3, [sp, #0x1]
 8000a80:      	bfi	r1, r2, #4, #28
 8000a84:      	strb.w	r1, [sp]
 8000a88:      	movs	r4, #0x3
 8000a8a:      	b	#0x22 <<&mut W as core::fmt::Write>::write_char::h41512c3ce9a23152+0x86>
 8000a8c:      	strb.w	r3, [sp, #0x3]
 8000a90:      	lsrs	r3, r1, #0x6
 8000a92:      	bfi	r3, r2, #6, #26
 8000a96:      	strb.w	r3, [sp, #0x2]
 8000a9a:      	lsrs	r3, r1, #0xc
 8000a9c:      	movs	r4, #0x4
 8000a9e:      	bfi	r3, r2, #6, #26
 8000aa2:      	movs	r2, #0xf0
 8000aa4:      	strb.w	r3, [sp, #0x1]
 8000aa8:      	orr.w	r1, r2, r1, lsr #18
 8000aac:      	strb.w	r1, [sp]
 8000ab0:      	ldr	r6, [r0]
 8000ab2:      	mov	r0, sp
 8000ab4:      	add	r1, sp, #0x4
 8000ab6:      	str	r4, [sp, #0xc]
 8000ab8:      	strd	r6, r0, [sp, #4]
 8000abc:      	movs	r0, #0x5
 8000abe:      	bl	#0x1b78
 8000ac2:      	cbz	r0, #0x22
 8000ac4:      	add.w	r8, sp, #0x4
 8000ac8:      	mov	r7, sp
 8000aca:      	cmp	r4, r0
 8000acc:      	blo	#0x20 <<&mut W as core::fmt::Write>::write_char::h41512c3ce9a23152+0xc6>
 8000ace:      	mov	r5, r0
 8000ad0:      	str	r0, [sp, #0xc]
 8000ad2:      	subs	r0, r4, r0
 8000ad4:      	mov	r1, r8
 8000ad6:      	add	r7, r0
 8000ad8:      	movs	r0, #0x5
 8000ada:      	strd	r6, r7, [sp, #4]
 8000ade:      	bl	#0x1b58
 8000ae2:      	cmp	r0, #0x0
 8000ae4:      	mov	r4, r5
 8000ae6:      	bne	#-0x20 <<&mut W as core::fmt::Write>::write_char::h41512c3ce9a23152+0xa0>
 8000ae8:      	movs	r0, #0x0
 8000aea:      	add	sp, #0x10
 8000aec:      	pop.w	{r4, r5, r6, r7, r8, pc}
 8000af0:      	movs	r0, #0x1
 8000af2:      	add	sp, #0x10
 8000af4:      	pop.w	{r4, r5, r6, r7, r8, pc}

08000af8 <&mut W as core::fmt::Write>::write_fmt::h1f5aa574b62f28a6:
 8000af8:      	push	{r4, r5, r6, lr}
 8000afa:      	sub	sp, #0x20
 8000afc:      	ldr	r0, [r0]
 8000afe:      	add	r2, sp, #0x8
 8000b00:      	str	r0, [sp, #0x4]
 8000b02:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 8000b06:      	mov	r0, r2
 8000b08:      	movw	r1, #0x2670
 8000b0c:      	movt	r1, #0x800
 8000b10:      	stm.w	r0, {r3, r4, r5, r6, r12, lr}
 8000b14:      	add	r0, sp, #0x4
 8000b16:      	bl	#0x12ba
 8000b1a:      	add	sp, #0x20
 8000b1c:      	pop	{r4, r5, r6, pc}

08000b1e <&mut W as core::fmt::Write>::write_str::h056b1cbdd8052cd4:
 8000b1e:      	cmp	r2, #0x0
 8000b20:      	itt	eq
 8000b22:      	moveq	r0, #0x0
 8000b24:      	bxeq	lr
 8000b26:      	push.w	{r4, r5, r6, r7, r8, lr}
 8000b2a:      	sub	sp, #0x10
 8000b2c:      	ldr	r0, [r0]
 8000b2e:      	mov	r4, r1
 8000b30:      	mov	r6, r2
 8000b32:      	ldr	r7, [r0]
 8000b34:      	movs	r0, #0x5
 8000b36:      	str	r2, [sp, #0xc]
 8000b38:      	strd	r7, r1, [sp, #4]
 8000b3c:      	add	r1, sp, #0x4
 8000b3e:      	bl	#0x1af8
 8000b42:      	cbz	r0, #0x20
 8000b44:      	add.w	r8, sp, #0x4
 8000b48:      	cmp	r6, r0
 8000b4a:      	blo	#0x20 <<&mut W as core::fmt::Write>::write_str::h056b1cbdd8052cd4+0x50>
 8000b4c:      	mov	r5, r0
 8000b4e:      	str	r0, [sp, #0xc]
 8000b50:      	subs	r0, r6, r0
 8000b52:      	mov	r1, r8
 8000b54:      	add	r4, r0
 8000b56:      	movs	r0, #0x5
 8000b58:      	strd	r7, r4, [sp, #4]
 8000b5c:      	bl	#0x1ada
 8000b60:      	cmp	r0, #0x0
 8000b62:      	mov	r6, r5
 8000b64:      	bne	#-0x20 <<&mut W as core::fmt::Write>::write_str::h056b1cbdd8052cd4+0x2a>
 8000b66:      	movs	r0, #0x0
 8000b68:      	add	sp, #0x10
 8000b6a:      	pop.w	{r4, r5, r6, r7, r8, pc}
 8000b6e:      	movs	r0, #0x1
 8000b70:      	add	sp, #0x10
 8000b72:      	pop.w	{r4, r5, r6, r7, r8, pc}

08000b76 main:
 8000b76:      	sub	sp, #0x40
 8000b78:      	bl	#0x1ace
 8000b7c:      	mov	r4, r0
 8000b7e:      	bl	#0x1ac0
 8000b82:      	movw	r5, #0x0
 8000b86:      	movt	r5, #0x2000
 8000b8a:      	ldrb	r0, [r5]
 8000b8c:      	cmp	r0, #0x0
 8000b8e:      	itte	eq
 8000b90:      	moveq	r6, #0x1
 8000b92:      	strbeq	r6, [r5]
 8000b94:      	movne	r6, #0x0
 8000b96:      	lsls	r0, r4, #0x1f
 8000b98:      	it	eq
 8000b9a:      	bleq	#0x1aa8
 8000b9e:      	cmp	r6, #0x0
 8000ba0:      	beq.w	#0x288 <main+0x2b6>
 8000ba4:      	bl	#0x1aa2
 8000ba8:      	mov	r4, r0
 8000baa:      	bl	#0x1a94
 8000bae:      	ldrb	r0, [r5, #0x1]
 8000bb0:      	cmp	r0, #0x0
 8000bb2:      	itte	eq
 8000bb4:      	moveq	r6, #0x1
 8000bb6:      	strbeq	r6, [r5, #0x1]
 8000bb8:      	movne	r6, #0x0
 8000bba:      	lsls	r0, r4, #0x1f
 8000bbc:      	it	eq
 8000bbe:      	bleq	#0x1a84
 8000bc2:      	cmp	r6, #0x0
 8000bc4:      	beq.w	#0x264 <main+0x2b6>
 8000bc8:      	movw	r0, #0x1028
 8000bcc:      	movs	r2, #0x30
 8000bce:      	movt	r0, #0x4002
 8000bd2:      	mov.w	r10, #0x1
 8000bd6:      	ldr	r1, [r0, #-20]
 8000bda:      	movw	r5, #0xe010
 8000bde:      	movt	r5, #0xe000
 8000be2:      	movw	r6, #0x3c48
 8000be6:      	orr	r1, r1, #0x200000
 8000bea:      	str	r1, [r0, #-20]
 8000bee:      	ldr	r1, [r0]
 8000bf0:      	add	r7, sp, #0x28
 8000bf2:      	mov.w	r9, #0x0
 8000bf6:      	mov.w	r11, #0x2
 8000bfa:      	orr	r1, r1, #0x200000
 8000bfe:      	str	r1, [r0]
 8000c00:      	ldr	r1, [r0]
 8000c02:      	movt	r6, #0x800
 8000c06:      	bic	r1, r1, #0x200000
 8000c0a:      	str	r1, [r0]
 8000c0c:      	movw	r1, #0x2000
 8000c10:      	movt	r1, #0x4002
 8000c14:      	str	r2, [r1]
 8000c16:      	movw	r2, #0xc00c
 8000c1a:      	ldr	r1, [r0, #-36]
 8000c1e:      	movt	r2, #0xffbf
 8000c22:      	ands	r1, r2
 8000c24:      	movw	r2, #0x1b70
 8000c28:      	movt	r2, #0x40
 8000c2c:      	orrs	r1, r2
 8000c2e:      	str	r1, [r0, #-36]
 8000c32:      	movw	r1, #0x1000
 8000c36:      	movt	r1, #0x4800
 8000c3a:      	ldr	r0, [r1]
 8000c3c:      	bfi	r0, r10, #18, #2
 8000c40:      	str	r0, [r1]
 8000c42:      	ldr	r0, [r1, #0x4]
 8000c44:      	bic	r0, r0, #0x200
 8000c48:      	str	r0, [r1, #0x4]
 8000c4a:      	ldr	r0, [r1]
 8000c4c:      	bfi	r0, r10, #20, #2
 8000c50:      	str	r0, [r1]
 8000c52:      	ldr	r0, [r1, #0x4]
 8000c54:      	bic	r0, r0, #0x400
 8000c58:      	str	r0, [r1, #0x4]
 8000c5a:      	ldr	r0, [r1]
 8000c5c:      	bfi	r0, r10, #22, #2
 8000c60:      	str	r0, [r1]
 8000c62:      	ldr	r0, [r1, #0x4]
 8000c64:      	bic	r0, r0, #0x800
 8000c68:      	str	r0, [r1, #0x4]
 8000c6a:      	ldr	r0, [r1]
 8000c6c:      	bfi	r0, r10, #24, #2
 8000c70:      	str	r0, [r1]
 8000c72:      	ldr	r0, [r1, #0x4]
 8000c74:      	bic	r0, r0, #0x1000
 8000c78:      	str	r0, [r1, #0x4]
 8000c7a:      	ldr	r0, [r1]
 8000c7c:      	bfi	r0, r10, #26, #2
 8000c80:      	str	r0, [r1]
 8000c82:      	ldr	r0, [r1, #0x4]
 8000c84:      	bic	r0, r0, #0x2000
 8000c88:      	str	r0, [r1, #0x4]
 8000c8a:      	ldr	r0, [r1]
 8000c8c:      	bfi	r0, r10, #28, #2
 8000c90:      	str	r0, [r1]
 8000c92:      	ldr	r0, [r1, #0x4]
 8000c94:      	bic	r0, r0, #0x4000
 8000c98:      	str	r0, [r1, #0x4]
 8000c9a:      	ldr	r0, [r1]
 8000c9c:      	bfi	r0, r10, #30, #2
 8000ca0:      	str	r0, [r1]
 8000ca2:      	ldr	r0, [r1, #0x4]
 8000ca4:      	bic	r0, r0, #0x8000
 8000ca8:      	str	r0, [r1, #0x4]
 8000caa:      	ldr	r0, [r1]
 8000cac:      	bfi	r0, r10, #16, #2
 8000cb0:      	str	r0, [r1]
 8000cb2:      	ldr	r0, [r1, #0x4]
 8000cb4:      	bic	r0, r0, #0x100
 8000cb8:      	str	r0, [r1, #0x4]
 8000cba:      	movw	r0, #0xe0d
 8000cbe:      	movs	r1, #0x0
 8000cc0:      	movt	r0, #0x80f
 8000cc4:      	str	r0, [sp, #0x8]
 8000cc6:      	movw	r0, #0xa09
 8000cca:      	movt	r0, #0xc0b
 8000cce:      	str	r0, [sp, #0x4]
 8000cd0:      	ldr	r0, [r5]
 8000cd2:      	orr	r0, r0, #0x4
 8000cd6:      	str	r0, [r5]
 8000cd8:      	movs	r0, #0x40
 8000cda:      	str.w	r9, [sp, #0xc]
 8000cde:      	b	#0x6 <main+0x172>
 8000ce0:      	ldr	r2, [r5]
 8000ce2:      	bic	r2, r2, #0x1
 8000ce6:      	str	r2, [r5]
 8000ce8:      	cmp	r1, #0x8
 8000cea:      	mov.w	r1, #0xa
 8000cee:      	it	hs
 8000cf0:      	strhs.w	r9, [sp, #0xc]
 8000cf4:      	str	r1, [sp, #0x14]
 8000cf6:      	movw	r1, #0x2688
 8000cfa:      	add.w	r8, r0, #0x1
 8000cfe:      	movt	r1, #0x800
 8000d02:      	cmp	r0, #0x3f
 8000d04:      	str	r1, [sp, #0x10]
 8000d06:      	mov.w	r1, #0x3
 8000d0a:      	str	r1, [sp, #0x30]
 8000d0c:      	mov.w	r1, #0x4
 8000d10:      	str	r1, [sp, #0x2c]
 8000d12:      	movw	r1, #0x3be2
 8000d16:      	movt	r1, #0x800
 8000d1a:      	mov.w	r0, #0x1
 8000d1e:      	str	r1, [sp, #0x28]
 8000d20:      	mov	r1, r7
 8000d22:      	it	hi
 8000d24:      	movhi.w	r8, #0x1
 8000d28:      	bl	#0x190e
 8000d2c:      	adds	r1, r0, #0x1
 8000d2e:      	beq	#0x82 <main+0x23e>
 8000d30:      	str	r0, [sp, #0x18]
 8000d32:      	movw	r0, #0x401
 8000d36:      	movt	r0, #0x800
 8000d3a:      	str.w	r10, [sp, #0x3c]
 8000d3e:      	str	r0, [sp, #0x20]
 8000d40:      	add	r0, sp, #0x10
 8000d42:      	str	r0, [sp, #0x1c]
 8000d44:      	movw	r0, #0x2694
 8000d48:      	add.w	r10, sp, #0x1c
 8000d4c:      	movs	r4, #0x1
 8000d4e:      	movt	r0, #0x800
 8000d52:      	movw	r1, #0x2670
 8000d56:      	strd	r4, r10, [sp, #52]
 8000d5a:      	movt	r1, #0x800
 8000d5e:      	str	r0, [sp, #0x30]
 8000d60:      	add	r0, sp, #0x24
 8000d62:      	mov	r2, r7
 8000d64:      	add.w	r9, sp, #0x18
 8000d68:      	str.w	r9, [sp, #0x24]
 8000d6c:      	strd	r6, r11, [sp, #40]
 8000d70:      	bl	#0x1060
 8000d74:      	movw	r0, #0x7d7
 8000d78:      	strd	r10, r4, [sp, #56]
 8000d7c:      	movt	r0, #0x800
 8000d80:      	mov.w	r10, #0x1
 8000d84:      	str	r0, [sp, #0x20]
 8000d86:      	add	r0, sp, #0xc
 8000d88:      	str	r0, [sp, #0x1c]
 8000d8a:      	movw	r0, #0x2694
 8000d8e:      	movt	r0, #0x800
 8000d92:      	movw	r1, #0x2670
 8000d96:      	str.w	r10, [sp, #0x34]
 8000d9a:      	movt	r1, #0x800
 8000d9e:      	str	r0, [sp, #0x30]
 8000da0:      	add	r0, sp, #0x24
 8000da2:      	mov	r2, r7
 8000da4:      	str.w	r9, [sp, #0x24]
 8000da8:      	mov.w	r9, #0x0
 8000dac:      	strd	r6, r11, [sp, #40]
 8000db0:      	bl	#0x1020
 8000db4:      	ldr	r1, [sp, #0xc]
 8000db6:      	cmp	r1, #0x8
 8000db8:      	bhs	#0x60 <main+0x2a6>
 8000dba:      	add	r2, sp, #0x4
 8000dbc:      	movw	r3, #0x1000
 8000dc0:      	movt	r3, #0x4800
 8000dc4:      	mov	r0, r8
 8000dc6:      	mov	r4, r2
 8000dc8:      	ldrb	r2, [r2, r1]
 8000dca:      	adds	r1, #0x1
 8000dcc:      	and	r2, r2, #0x1f
 8000dd0:      	lsl.w	r2, r10, r2
 8000dd4:      	str	r2, [r3, #0x18]
 8000dd6:      	and	r2, r1, #0x7
 8000dda:      	ldrb	r2, [r4, r2]
 8000ddc:      	adds	r2, #0x10
 8000dde:      	and	r2, r2, #0x1f
 8000de2:      	lsl.w	r2, r10, r2
 8000de6:      	str	r2, [r3, #0x18]
 8000de8:      	mov.w	r2, #0x3e80
 8000dec:      	str	r1, [sp, #0xc]
 8000dee:      	str	r2, [r5, #0x4]
 8000df0:      	str.w	r9, [r5, #0x8]
 8000df4:      	ldr	r2, [r5]
 8000df6:      	orr	r2, r2, #0x1
 8000dfa:      	str	r2, [r5]
 8000dfc:      	ldr	r2, [r5]
 8000dfe:      	lsls	r2, r2, #0xf
 8000e00:      	itt	pl
 8000e02:      	ldrpl	r2, [r5]
 8000e04:      	lslspl.w	r2, r2, #0xf
 8000e08:      	bmi.w	#-0x12c <main+0x16a>
 8000e0c:      	ldr	r2, [r5]
 8000e0e:      	lsls	r2, r2, #0xf
 8000e10:      	bmi.w	#-0x134 <main+0x16a>
 8000e14:      	ldr	r2, [r5]
 8000e16:      	lsls	r2, r2, #0xf
 8000e18:      	bpl	#-0x20 <main+0x286>
 8000e1a:      	b	#-0x13e <main+0x16a>
 8000e1c:      	movw	r0, #0x3c7c
 8000e20:      	movs	r2, #0x8
 8000e22:      	movt	r0, #0x800
 8000e26:      	bl	#0x54
 8000e2a:      	trap
 8000e2c:      	movw	r0, #0x28d8
 8000e30:      	movt	r0, #0x800
 8000e34:      	bl	#0x41a
 8000e38:      	trap

08000e3a core::slice::slice_index_len_fail::h49da84f7e1d3685f:
 8000e3a:      	sub	sp, #0x30
 8000e3c:      	strd	r0, r1, [sp]
 8000e40:      	movs	r0, #0x2
 8000e42:      	add	r1, sp, #0x20
 8000e44:      	str	r0, [sp, #0x1c]
 8000e46:      	str	r1, [sp, #0x18]
 8000e48:      	movs	r1, #0x0
 8000e4a:      	str	r1, [sp, #0x14]
 8000e4c:      	strd	r0, r1, [sp, #12]
 8000e50:      	movw	r0, #0x27d4
 8000e54:      	movt	r0, #0x800
 8000e58:      	add	r1, sp, #0x4
 8000e5a:      	str	r0, [sp, #0x8]
 8000e5c:      	movw	r0, #0xebf
 8000e60:      	movt	r0, #0x800
 8000e64:      	str	r0, [sp, #0x2c]
 8000e66:      	strd	r0, r1, [sp, #36]
 8000e6a:      	mov	r0, sp
 8000e6c:      	movw	r1, #0x27e4
 8000e70:      	str	r0, [sp, #0x20]
 8000e72:      	add	r0, sp, #0x8
 8000e74:      	movt	r1, #0x800
 8000e78:      	bl	#0x132
 8000e7c:      	trap

08000e7e core::panicking::panic_bounds_check::h8223e65f27b07f0e:
 8000e7e:      	sub	sp, #0x30
 8000e80:      	mov	r3, r0
 8000e82:      	strd	r1, r2, [sp]
 8000e86:      	movs	r0, #0x2
 8000e88:      	add	r1, sp, #0x20
 8000e8a:      	str	r0, [sp, #0x1c]
 8000e8c:      	str	r1, [sp, #0x18]
 8000e8e:      	movs	r1, #0x0
 8000e90:      	str	r1, [sp, #0x14]
 8000e92:      	strd	r0, r1, [sp, #12]
 8000e96:      	movw	r0, #0x26b8
 8000e9a:      	movt	r0, #0x800
 8000e9e:      	mov	r1, sp
 8000ea0:      	str	r0, [sp, #0x8]
 8000ea2:      	movw	r0, #0xebf
 8000ea6:      	movt	r0, #0x800
 8000eaa:      	str	r0, [sp, #0x2c]
 8000eac:      	strd	r0, r1, [sp, #36]
 8000eb0:      	add	r0, sp, #0x4
 8000eb2:      	str	r0, [sp, #0x20]
 8000eb4:      	add	r0, sp, #0x8
 8000eb6:      	mov	r1, r3
 8000eb8:      	bl	#0xf2
 8000ebc:      	trap

08000ebe core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h7741a717e2a4e4d9:
 8000ebe:      	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8000ec2:      	sub	sp, #0x2c
 8000ec4:      	ldr	r2, [r0]
 8000ec6:      	movw	r0, #0x2710
 8000eca:      	movw	r9, #0x851f
 8000ece:      	mov	r12, r1
 8000ed0:      	cmp	r2, r0
 8000ed2:      	movw	r0, #0x270a
 8000ed6:      	movw	r8, #0xff9c
 8000eda:      	movt	r9, #0x51eb
 8000ede:      	movt	r0, #0x800
 8000ee2:      	blo	#0x74 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h7741a717e2a4e4d9+0x9c>
 8000ee4:      	movw	lr, #0x1759
 8000ee8:      	movw	r10, #0xd8f0
 8000eec:      	movw	r7, #0xe0ff
 8000ef0:      	add.w	r11, sp, #0x4
 8000ef4:      	movs	r1, #0x0
 8000ef6:      	movt	lr, #0xd1b7
 8000efa:      	movt	r10, #0xffff
 8000efe:      	movt	r7, #0x5f5
 8000f02:      	umull	r3, r4, r2, lr
 8000f06:      	cmp	r2, r7
 8000f08:      	lsr.w	r3, r4, #0xd
 8000f0c:      	mla	r4, r3, r10, r2
 8000f10:      	mov	r2, r3
 8000f12:      	uxth	r5, r4
 8000f14:      	umull	r5, r6, r5, r9
 8000f18:      	lsr.w	r5, r6, #0x5
 8000f1c:      	add.w	r6, r11, r1
 8000f20:      	mla	r4, r5, r8, r4
 8000f24:      	ldrh.w	r5, [r0, r5, lsl #1]
 8000f28:      	sub.w	r1, r1, #0x4
 8000f2c:      	strh.w	r5, [r6, #0x23]
 8000f30:      	uxth	r4, r4
 8000f32:      	ldrh.w	r4, [r0, r4, lsl #1]
 8000f36:      	strh.w	r4, [r6, #0x25]
 8000f3a:      	bhi	#-0x3c <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h7741a717e2a4e4d9+0x44>
 8000f3c:      	add.w	lr, r1, #0x27
 8000f40:      	mov	r2, r3
 8000f42:      	cmp	r2, #0x63
 8000f44:      	bgt	#0x1a <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h7741a717e2a4e4d9+0xa4>
 8000f46:      	mov	r1, r2
 8000f48:      	cmp	r1, #0xa
 8000f4a:      	blt	#0x34 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h7741a717e2a4e4d9+0xc4>
 8000f4c:      	ldrh.w	r0, [r0, r1, lsl #1]
 8000f50:      	sub.w	r2, lr, #0x2
 8000f54:      	add	r1, sp, #0x4
 8000f56:      	strh	r0, [r1, r2]
 8000f58:      	b	#0x32 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h7741a717e2a4e4d9+0xd0>
 8000f5a:      	mov.w	lr, #0x27
 8000f5e:      	cmp	r2, #0x63
 8000f60:      	ble	#-0x1e <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h7741a717e2a4e4d9+0x88>
 8000f62:      	uxth	r1, r2
 8000f64:      	sub.w	lr, lr, #0x2
 8000f68:      	umull	r1, r3, r1, r9
 8000f6c:      	lsrs	r1, r3, #0x5
 8000f6e:      	add	r3, sp, #0x4
 8000f70:      	mla	r2, r1, r8, r2
 8000f74:      	uxth	r2, r2
 8000f76:      	ldrh.w	r2, [r0, r2, lsl #1]
 8000f7a:      	strh.w	r2, [r3, lr]
 8000f7e:      	cmp	r1, #0xa
 8000f80:      	bge	#-0x38 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h7741a717e2a4e4d9+0x8e>
 8000f82:      	sub.w	r2, lr, #0x1
 8000f86:      	add.w	r0, r1, #0x30
 8000f8a:      	add	r1, sp, #0x4
 8000f8c:      	strb	r0, [r1, r2]
 8000f8e:      	rsb.w	r0, r2, #0x27
 8000f92:      	str	r0, [sp]
 8000f94:      	add	r0, sp, #0x4
 8000f96:      	movw	r1, #0x3c45
 8000f9a:      	adds	r3, r0, r2
 8000f9c:      	movt	r1, #0x800
 8000fa0:      	mov	r0, r12
 8000fa2:      	movs	r2, #0x0
 8000fa4:      	bl	#0x44
 8000fa8:      	add	sp, #0x2c
 8000faa:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

08000fae core::panicking::panic_fmt::h69cc051321b50586:
 8000fae:      	sub	sp, #0x20
 8000fb0:      	ldrd	r12, r3, [r1]
 8000fb4:      	ldrd	r2, r1, [r1, #8]
 8000fb8:      	str	r1, [sp, #0x1c]
 8000fba:      	strd	r3, r2, [sp, #20]
 8000fbe:      	strd	r0, r12, [sp, #12]
 8000fc2:      	movw	r0, #0x26c8
 8000fc6:      	movt	r0, #0x800
 8000fca:      	str	r0, [sp, #0x8]
 8000fcc:      	movs	r0, #0x1
 8000fce:      	str	r0, [sp, #0x4]
 8000fd0:      	add	r0, sp, #0x4
 8000fd2:      	bl	#0x1416
 8000fd6:      	trap

08000fd8 core::ptr::real_drop_in_place::h12a03adc0aa2ed44:
 8000fd8:      	bx	lr

08000fda <T as core::any::Any>::type_id::ha80f96413f42cee7:
 8000fda:      	movw	r0, #0xe703
 8000fde:      	movw	r1, #0xc50d
 8000fe2:      	movt	r0, #0xf6fe
 8000fe6:      	movt	r1, #0x5a5e
 8000fea:      	bx	lr

08000fec core::fmt::Formatter::pad_integral::ha0f566642ce45e14:
 8000fec:      	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8000ff0:      	sub	sp, #0xc
 8000ff2:      	ldr.w	lr, [r0]
 8000ff6:      	mov	r10, r2
 8000ff8:      	ldr	r6, [sp, #0x30]
 8000ffa:      	mov	r2, r1
 8000ffc:      	ands	r1, lr, #0x1
 8001000:      	mov.w	r9, #0x2b
 8001004:      	add.w	r11, r1, r6
 8001008:      	it	eq
 800100a:      	moveq.w	r9, #0x110000
 800100e:      	mov	r7, r3
 8001010:      	mov	r4, r0
 8001012:      	lsls.w	r1, lr, #0x1d
 8001016:      	bmi	#0x3c <$t.21+0x8>
 8001018:      	mov.w	r10, #0x0
 800101c:      	movs	r2, #0x0
 800101e:      	ldr	r0, [r4, #0x8]
 8001020:      	cmp	r0, #0x1
 8001022:      	bne	#0xe2 <$t.21+0xba>
 8001024:      	ldr.w	r8, [r4, #0xc]
 8001028:      	cmp	r8, r11
 800102a:      	bls	#0xda <$t.21+0xba>
 800102c:      	lsls.w	r0, lr, #0x1c
 8001030:      	bmi.w	#0xfc <$t.21+0xe2>
 8001034:      	ldrb.w	r1, [r4, #0x30]
 8001038:      	sub.w	r8, r8, r11
 800103c:      	movs	r0, #0x0
 800103e:      	cmp	r1, #0x3
 8001040:      	it	eq
 8001042:      	moveq	r1, #0x1
 8001044:      	str	r2, [sp, #0x8]
 8001046:      	tbb	[pc, r1]

0800104a $d.20:
 800104a:	95 02 8f 02	.word	0x028f0295

0800104e $t.21:
 800104e:      	mov	r0, r8
 8001050:      	mov.w	r8, #0x0
 8001054:      	b	#0x11c <$t.23+0x12>
 8001056:      	cmp.w	r10, #0x0
 800105a:      	beq	#0x16 <$t.21+0x26>
 800105c:      	sub.w	r1, r10, #0x1
 8001060:      	and	r12, r10, #0x3
 8001064:      	cmp	r1, #0x3
 8001066:      	bhs	#0xe <$t.21+0x2a>
 8001068:      	movs	r1, #0x0
 800106a:      	mov	r3, r2
 800106c:      	cmp.w	r12, #0x0
 8001070:      	bne	#0x54 <$t.21+0x7a>
 8001072:      	b	#0x82 <$t.21+0xaa>
 8001074:      	movs	r1, #0x0
 8001076:      	b	#0x7e <$t.21+0xaa>
 8001078:      	sub.w	r5, r12, r10
 800107c:      	mov	r3, r2
 800107e:      	movs	r1, #0x0
 8001080:      	mov	r8, r2
 8001082:      	strd	r7, r6, [sp, #4]
 8001086:      	ldrb	r2, [r3]
 8001088:      	ldrb	r6, [r3, #0x1]
 800108a:      	and	r2, r2, #0xc0
 800108e:      	ldrb	r7, [r3, #0x2]
 8001090:      	ldrb	r0, [r3, #0x3]
 8001092:      	cmp	r2, #0x80
 8001094:      	and	r2, r6, #0xc0
 8001098:      	it	eq
 800109a:      	addeq	r1, #0x1
 800109c:      	cmp	r2, #0x80
 800109e:      	and	r2, r7, #0xc0
 80010a2:      	it	eq
 80010a4:      	addeq	r1, #0x1
 80010a6:      	cmp	r2, #0x80
 80010a8:      	and	r0, r0, #0xc0
 80010ac:      	it	eq
 80010ae:      	addeq	r1, #0x1
 80010b0:      	cmp	r0, #0x80
 80010b2:      	it	eq
 80010b4:      	addeq	r1, #0x1
 80010b6:      	adds	r3, #0x4
 80010b8:      	adds	r5, #0x4
 80010ba:      	bne	#-0x38 <$t.21+0x38>
 80010bc:      	ldrd	r7, r6, [sp, #4]
 80010c0:      	mov	r2, r8
 80010c2:      	cmp.w	r12, #0x0
 80010c6:      	beq	#0x2e <$t.21+0xaa>
 80010c8:      	ldrb	r0, [r3]
 80010ca:      	and	r0, r0, #0xc0
 80010ce:      	cmp	r0, #0x80
 80010d0:      	it	eq
 80010d2:      	addeq	r1, #0x1
 80010d4:      	cmp.w	r12, #0x1
 80010d8:      	beq	#0x1c <$t.21+0xaa>
 80010da:      	ldrb	r0, [r3, #0x1]
 80010dc:      	and	r0, r0, #0xc0
 80010e0:      	cmp	r0, #0x80
 80010e2:      	it	eq
 80010e4:      	addeq	r1, #0x1
 80010e6:      	cmp.w	r12, #0x2
 80010ea:      	beq	#0xa <$t.21+0xaa>
 80010ec:      	ldrb	r0, [r3, #0x2]
 80010ee:      	and	r0, r0, #0xc0
 80010f2:      	cmp	r0, #0x80
 80010f4:      	it	eq
 80010f6:      	addeq	r1, #0x1
 80010f8:      	add.w	r0, r11, r10
 80010fc:      	sub.w	r11, r0, r1
 8001100:      	ldr	r0, [r4, #0x8]
 8001102:      	cmp	r0, #0x1
 8001104:      	beq.w	#-0xe4 <core::fmt::Formatter::pad_integral::ha0f566642ce45e14+0x38>
 8001108:      	mov	r0, r4
 800110a:      	mov	r1, r9
 800110c:      	mov	r3, r10
 800110e:      	bl	#0x10e
 8001112:      	cbz	r0, #0x8
 8001114:      	movs	r5, #0x1
 8001116:      	mov	r0, r5
 8001118:      	add	sp, #0xc
 800111a:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 800111e:      	ldr	r1, [r4, #0x1c]
 8001120:      	mov	r2, r6
 8001122:      	ldr	r0, [r4, #0x18]
 8001124:      	ldr	r3, [r1, #0xc]
 8001126:      	mov	r1, r7
 8001128:      	add	sp, #0xc
 800112a:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 800112e:      	bx	r3
 8001130:      	movs	r5, #0x1
 8001132:      	movs	r0, #0x30
 8001134:      	strb.w	r5, [r4, #0x30]
 8001138:      	mov	r1, r9
 800113a:      	str	r0, [r4, #0x4]
 800113c:      	mov	r0, r4
 800113e:      	mov	r3, r10
 8001140:      	bl	#0xdc
 8001144:      	cmp	r0, #0x0
 8001146:      	bne	#-0x34 <$t.21+0xc8>
 8001148:      	ldrb.w	r1, [r4, #0x30]
 800114c:      	sub.w	r5, r8, r11
 8001150:      	movs	r0, #0x0
 8001152:      	mov	r9, r6
 8001154:      	cmp	r1, #0x3
 8001156:      	it	eq
 8001158:      	moveq	r1, #0x1
 800115a:      	tbb	[pc, r1]

0800115e $d.22:
 800115e:	39 02 36 02	.word	0x02360239

08001162 $t.23:
 8001162:      	mov	r0, r5
 8001164:      	movs	r5, #0x0
 8001166:      	b	#0x66 <$t.23+0x6e>
 8001168:      	add.w	r1, r8, #0x1
 800116c:      	lsr.w	r0, r8, #0x1
 8001170:      	lsr.w	r8, r1, #0x1
 8001174:      	adds	r5, r0, #0x1
 8001176:      	subs	r5, #0x1
 8001178:      	beq	#0xe <$t.23+0x28>
 800117a:      	ldrd	r0, r2, [r4, #24]
 800117e:      	ldr	r1, [r4, #0x4]
 8001180:      	ldr	r2, [r2, #0x10]
 8001182:      	blx	r2
 8001184:      	cmp	r0, #0x0
 8001186:      	beq	#-0x14 <$t.23+0x14>
 8001188:      	b	#-0x78 <$t.21+0xc6>
 800118a:      	ldr	r2, [sp, #0x8]
 800118c:      	mov	r0, r4
 800118e:      	mov	r1, r9
 8001190:      	mov	r3, r10
 8001192:      	ldr.w	r11, [r4, #0x4]
 8001196:      	bl	#0x86
 800119a:      	cmp	r0, #0x0
 800119c:      	bne	#-0x8c <$t.21+0xc6>
 800119e:      	ldrd	r0, r1, [r4, #24]
 80011a2:      	mov	r2, r6
 80011a4:      	ldr	r3, [r1, #0xc]
 80011a6:      	mov	r1, r7
 80011a8:      	blx	r3
 80011aa:      	cmp	r0, #0x0
 80011ac:      	bne	#-0x9c <$t.21+0xc6>
 80011ae:      	ldrd	r6, r4, [r4, #24]
 80011b2:      	add.w	r7, r8, #0x1
 80011b6:      	movs	r5, #0x1
 80011b8:      	subs	r7, #0x1
 80011ba:      	beq	#0x58 <$t.23+0xb4>
 80011bc:      	ldr	r2, [r4, #0x10]
 80011be:      	mov	r0, r6
 80011c0:      	mov	r1, r11
 80011c2:      	blx	r2
 80011c4:      	cmp	r0, #0x0
 80011c6:      	beq	#-0x12 <$t.23+0x56>
 80011c8:      	b	#-0xb6 <$t.21+0xc8>
 80011ca:      	adds	r1, r5, #0x1
 80011cc:      	lsrs	r0, r5, #0x1
 80011ce:      	lsrs	r5, r1, #0x1
 80011d0:      	adds	r6, r0, #0x1
 80011d2:      	subs	r6, #0x1
 80011d4:      	beq	#0xe <$t.23+0x84>
 80011d6:      	ldrd	r0, r2, [r4, #24]
 80011da:      	ldr	r1, [r4, #0x4]
 80011dc:      	ldr	r2, [r2, #0x10]
 80011de:      	blx	r2
 80011e0:      	cmp	r0, #0x0
 80011e2:      	beq	#-0x14 <$t.23+0x70>
 80011e4:      	b	#-0xd4 <$t.21+0xc6>
 80011e6:      	ldrd	r0, r1, [r4, #24]
 80011ea:      	mov	r2, r9
 80011ec:      	ldr	r3, [r1, #0xc]
 80011ee:      	mov	r1, r7
 80011f0:      	ldr.w	r8, [r4, #0x4]
 80011f4:      	blx	r3
 80011f6:      	cmp	r0, #0x0
 80011f8:      	bne.w	#-0xe8 <$t.21+0xc6>
 80011fc:      	ldrd	r7, r4, [r4, #24]
 8001200:      	adds	r6, r5, #0x1
 8001202:      	movs	r5, #0x1
 8001204:      	subs	r6, #0x1
 8001206:      	beq	#0xc <$t.23+0xb4>
 8001208:      	ldr	r2, [r4, #0x10]
 800120a:      	mov	r0, r7
 800120c:      	mov	r1, r8
 800120e:      	blx	r2
 8001210:      	cmp	r0, #0x0
 8001212:      	beq	#-0x12 <$t.23+0xa2>
 8001214:      	b	#-0x102 <$t.21+0xc8>
 8001216:      	movs	r5, #0x0
 8001218:      	mov	r0, r5
 800121a:      	add	sp, #0xc
 800121c:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

08001220 core::fmt::Formatter::pad_integral::write_prefix::h863926a1e5400556:
 8001220:      	push	{r4, r5, r6, lr}
 8001222:      	mov	r4, r3
 8001224:      	mov	r5, r2
 8001226:      	mov	r6, r0
 8001228:      	cmp.w	r1, #0x110000
 800122c:      	beq	#0xc <core::fmt::Formatter::pad_integral::write_prefix::h863926a1e5400556+0x1c>
 800122e:      	ldrd	r0, r2, [r6, #24]
 8001232:      	ldr	r2, [r2, #0x10]
 8001234:      	blx	r2
 8001236:      	cbz	r0, #0x2
 8001238:      	movs	r0, #0x1
 800123a:      	pop	{r4, r5, r6, pc}
 800123c:      	cbz	r5, #0xe
 800123e:      	ldrd	r0, r1, [r6, #24]
 8001242:      	mov	r2, r4
 8001244:      	ldr	r3, [r1, #0xc]
 8001246:      	mov	r1, r5
 8001248:      	pop.w	{r4, r5, r6, lr}
 800124c:      	bx	r3
 800124e:      	movs	r0, #0x0
 8001250:      	pop	{r4, r5, r6, pc}

08001252 core::panicking::panic::h68c6682c1513144c:
 8001252:      	sub	sp, #0x30
 8001254:      	ldrd	lr, r2, [r0]
 8001258:      	movs	r4, #0x0
 800125a:      	ldrd	r12, r3, [r0, #8]
 800125e:      	movs	r5, #0x4
 8001260:      	ldrd	r1, r0, [r0, #16]
 8001264:      	strd	r1, r0, [sp, #40]
 8001268:      	add	r1, sp, #0x20
 800126a:      	str	r4, [sp, #0x14]
 800126c:      	mov	r0, sp
 800126e:      	str	r5, [sp, #0x10]
 8001270:      	strd	r4, r4, [sp, #8]
 8001274:      	movs	r4, #0x1
 8001276:      	str	r4, [sp, #0x4]
 8001278:      	add	r4, sp, #0x18
 800127a:      	str	r4, [sp]
 800127c:      	strd	lr, r2, [sp, #24]
 8001280:      	strd	r12, r3, [sp, #32]
 8001284:      	bl	#-0x2da
 8001288:      	trap

0800128a core::slice::slice_index_order_fail::h3a37ecb388bc04be:
 800128a:      	sub	sp, #0x30
 800128c:      	strd	r0, r1, [sp]
 8001290:      	movs	r0, #0x2
 8001292:      	add	r1, sp, #0x20
 8001294:      	str	r0, [sp, #0x1c]
 8001296:      	str	r1, [sp, #0x18]
 8001298:      	movs	r1, #0x0
 800129a:      	str	r1, [sp, #0x14]
 800129c:      	strd	r0, r1, [sp, #12]
 80012a0:      	movw	r0, #0x2834
 80012a4:      	movt	r0, #0x800
 80012a8:      	add	r1, sp, #0x4
 80012aa:      	str	r0, [sp, #0x8]
 80012ac:      	movw	r0, #0xebf
 80012b0:      	movt	r0, #0x800
 80012b4:      	str	r0, [sp, #0x2c]
 80012b6:      	strd	r0, r1, [sp, #36]
 80012ba:      	mov	r0, sp
 80012bc:      	movw	r1, #0x2844
 80012c0:      	str	r0, [sp, #0x20]
 80012c2:      	add	r0, sp, #0x8
 80012c4:      	movt	r1, #0x800
 80012c8:      	bl	#-0x31e
 80012cc:      	trap
 80012ce:      	bmi	#-0x58 <core::panicking::panic::h68c6682c1513144c+0x28>

080012d0 core::fmt::Formatter::pad::hf80fa9686b71b608:
 80012d0:      	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 80012d4:      	sub	sp, #0x4
 80012d6:      	ldr.w	lr, [r0, #0x8]
 80012da:      	mov	r10, r0
 80012dc:      	ldr	r0, [r0, #0x10]
 80012de:      	mov	r9, r2
 80012e0:      	mov	r8, r1
 80012e2:      	cmp.w	lr, #0x1
 80012e6:      	bne	#0x20 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x3a>
 80012e8:      	cbnz	r0, #0x24
 80012ea:      	cmp.w	r9, #0x0
 80012ee:      	beq.w	#0x18a <core::fmt::Formatter::pad::hf80fa9686b71b608+0x1ac>
 80012f2:      	sub.w	r1, r9, #0x1
 80012f6:      	and	r0, r9, #0x3
 80012fa:      	cmp	r1, #0x3
 80012fc:      	bhs	#0xce <core::fmt::Formatter::pad::hf80fa9686b71b608+0xfe>
 80012fe:      	movs	r1, #0x0
 8001300:      	mov	r2, r8
 8001302:      	cmp	r0, #0x0
 8001304:      	bne.w	#0x106 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x13e>
 8001308:      	b	#0x12e <core::fmt::Formatter::pad::hf80fa9686b71b608+0x16a>
 800130a:      	cmp	r0, #0x0
 800130c:      	beq.w	#0x17a <core::fmt::Formatter::pad::hf80fa9686b71b608+0x1ba>
 8001310:      	cmp.w	r9, #0x0
 8001314:      	beq	#0xa8 <core::fmt::Formatter::pad::hf80fa9686b71b608+0xf0>
 8001316:      	ldr.w	r0, [r10, #0x14]
 800131a:      	add.w	r1, r8, r9
 800131e:      	movs	r2, #0x0
 8001320:      	mov	r7, r8
 8001322:      	adds	r3, r0, #0x1
 8001324:      	mov	r6, r8
 8001326:      	mov	r4, r7
 8001328:      	ldrsb	r5, [r4], #1
 800132c:      	cmp.w	r5, #0xffffffff
 8001330:      	uxtb	r0, r5
 8001332:      	bgt	#0x5c <core::fmt::Formatter::pad::hf80fa9686b71b608+0xc2>
 8001334:      	cmp	r4, r1
 8001336:      	beq	#0x34 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x9e>
 8001338:      	ldrb	r5, [r7, #0x1]
 800133a:      	adds	r4, r7, #0x2
 800133c:      	and	r5, r5, #0x3f
 8001340:      	mov	r7, r4
 8001342:      	and	r11, r0, #0x1f
 8001346:      	cmp	r0, #0xdf
 8001348:      	bls	#0x2e <core::fmt::Formatter::pad::hf80fa9686b71b608+0xaa>
 800134a:      	cmp	r7, r1
 800134c:      	beq	#0x30 <core::fmt::Formatter::pad::hf80fa9686b71b608+0xb0>
 800134e:      	ldrb	r4, [r7], #1
 8001352:      	and	r12, r4, #0x3f
 8001356:      	mov	r4, r7
 8001358:      	orr.w	r5, r12, r5, lsl #6
 800135c:      	cmp	r0, #0xf0
 800135e:      	blo	#0x2c <core::fmt::Formatter::pad::hf80fa9686b71b608+0xbe>
 8001360:      	cmp	r7, r1
 8001362:      	beq	#0x40 <core::fmt::Formatter::pad::hf80fa9686b71b608+0xd6>
 8001364:      	ldrb	r0, [r7], #1
 8001368:      	and	r0, r0, #0x3f
 800136c:      	b	#0x3a <core::fmt::Formatter::pad::hf80fa9686b71b608+0xda>
 800136e:      	movs	r5, #0x0
 8001370:      	mov	r7, r1
 8001372:      	and	r11, r0, #0x1f
 8001376:      	cmp	r0, #0xdf
 8001378:      	bhi	#-0x32 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x7a>
 800137a:      	orr.w	r0, r5, r11, lsl #6
 800137e:      	b	#0x10 <core::fmt::Formatter::pad::hf80fa9686b71b608+0xc2>
 8001380:      	mov.w	r12, #0x0
 8001384:      	mov	r7, r1
 8001386:      	orr.w	r5, r12, r5, lsl #6
 800138a:      	cmp	r0, #0xf0
 800138c:      	bhs	#-0x30 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x90>
 800138e:      	orr.w	r0, r5, r11, lsl #12
 8001392:      	mov	r7, r4
 8001394:      	subs	r3, #0x1
 8001396:      	beq	#0xca <core::fmt::Formatter::pad::hf80fa9686b71b608+0x194>
 8001398:      	subs	r0, r2, r6
 800139a:      	cmp	r1, r7
 800139c:      	add.w	r2, r0, r7
 80013a0:      	mov	r6, r7
 80013a2:      	bne	#-0x80 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x56>
 80013a4:      	b	#0xc2 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x19a>
 80013a6:      	movs	r0, #0x0
 80013a8:      	mov	r7, r4
 80013aa:      	mov.w	r4, #0x1c0000
 80013ae:      	and.w	r4, r4, r11, lsl #18
 80013b2:      	orr.w	r5, r4, r5, lsl #6
 80013b6:      	add	r0, r5
 80013b8:      	cmp.w	r0, #0x110000
 80013bc:      	bne	#-0x2c <core::fmt::Formatter::pad::hf80fa9686b71b608+0xc4>
 80013be:      	b	#0xa8 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x19a>
 80013c0:      	movs	r2, #0x0
 80013c2:      	cmp.w	lr, #0x0
 80013c6:      	bne	#0xa8 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x1a2>
 80013c8:      	ldrd	r0, r1, [r10, #24]
 80013cc:      	b	#0xc4 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x1c4>
 80013ce:      	sub.w	r3, r0, r9
 80013d2:      	movs	r1, #0x0
 80013d4:      	mov	r2, r8
 80013d6:      	ldrb	r7, [r2]
 80013d8:      	ldrb	r6, [r2, #0x1]
 80013da:      	and	r7, r7, #0xc0
 80013de:      	ldrb	r5, [r2, #0x2]
 80013e0:      	ldrb	r4, [r2, #0x3]
 80013e2:      	cmp	r7, #0x80
 80013e4:      	and	r7, r6, #0xc0
 80013e8:      	it	eq
 80013ea:      	addeq	r1, #0x1
 80013ec:      	cmp	r7, #0x80
 80013ee:      	and	r7, r5, #0xc0
 80013f2:      	it	eq
 80013f4:      	addeq	r1, #0x1
 80013f6:      	cmp	r7, #0x80
 80013f8:      	and	r7, r4, #0xc0
 80013fc:      	it	eq
 80013fe:      	addeq	r1, #0x1
 8001400:      	cmp	r7, #0x80
 8001402:      	it	eq
 8001404:      	addeq	r1, #0x1
 8001406:      	adds	r2, #0x4
 8001408:      	adds	r3, #0x4
 800140a:      	bne	#-0x38 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x106>
 800140c:      	cbz	r0, #0x2a
 800140e:      	ldrb	r3, [r2]
 8001410:      	and	r3, r3, #0xc0
 8001414:      	cmp	r3, #0x80
 8001416:      	it	eq
 8001418:      	addeq	r1, #0x1
 800141a:      	cmp	r0, #0x1
 800141c:      	beq	#0x1a <core::fmt::Formatter::pad::hf80fa9686b71b608+0x16a>
 800141e:      	ldrb	r3, [r2, #0x1]
 8001420:      	and	r3, r3, #0xc0
 8001424:      	cmp	r3, #0x80
 8001426:      	it	eq
 8001428:      	addeq	r1, #0x1
 800142a:      	cmp	r0, #0x2
 800142c:      	beq	#0xa <core::fmt::Formatter::pad::hf80fa9686b71b608+0x16a>
 800142e:      	ldrb	r0, [r2, #0x2]
 8001430:      	and	r0, r0, #0xc0
 8001434:      	cmp	r0, #0x80
 8001436:      	it	eq
 8001438:      	addeq	r1, #0x1
 800143a:      	ldr.w	r0, [r10, #0xc]
 800143e:      	sub.w	r1, r9, r1
 8001442:      	cmp	r1, r0
 8001444:      	bhs	#0x42 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x1ba>
 8001446:      	cmp.w	r9, #0x0
 800144a:      	beq	#0x52 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x1d0>
 800144c:      	sub.w	r1, r9, #0x1
 8001450:      	and	r12, r9, #0x3
 8001454:      	cmp	r1, #0x3
 8001456:      	bhs	#0x4a <core::fmt::Formatter::pad::hf80fa9686b71b608+0x1d4>
 8001458:      	movs	r1, #0x0
 800145a:      	mov	r3, r8
 800145c:      	cmp.w	r12, #0x0
 8001460:      	bne	#0x84 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x218>
 8001462:      	b	#0xb2 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x248>
 8001464:      	cmp.w	r0, #0x110000
 8001468:      	bne	#0xcc <$t.29+0x6>
 800146a:      	mov	r2, r9
 800146c:      	cmp.w	lr, #0x0
 8001470:      	beq	#-0xac <core::fmt::Formatter::pad::hf80fa9686b71b608+0xf8>
 8001472:      	mov	r9, r2
 8001474:      	cmp.w	r9, #0x0
 8001478:      	bne.w	#-0x18a <core::fmt::Formatter::pad::hf80fa9686b71b608+0x22>
 800147c:      	movs	r1, #0x0
 800147e:      	ldr.w	r0, [r10, #0xc]
 8001482:      	sub.w	r1, r9, r1
 8001486:      	cmp	r1, r0
 8001488:      	blo	#-0x46 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x176>
 800148a:      	ldr.w	r1, [r10, #0x1c]
 800148e:      	mov	r2, r9
 8001490:      	ldr.w	r0, [r10, #0x18]
 8001494:      	ldr	r3, [r1, #0xc]
 8001496:      	mov	r1, r8
 8001498:      	add	sp, #0x4
 800149a:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 800149e:      	bx	r3
 80014a0:      	movs	r1, #0x0
 80014a2:      	b	#0x72 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x248>
 80014a4:      	sub.w	r7, r12, r9
 80014a8:      	movs	r1, #0x0
 80014aa:      	mov	r3, r8
 80014ac:      	ldrb	r6, [r3]
 80014ae:      	ldrb	r5, [r3, #0x1]
 80014b0:      	and	r6, r6, #0xc0
 80014b4:      	ldrb	r4, [r3, #0x2]
 80014b6:      	ldrb	r2, [r3, #0x3]
 80014b8:      	cmp	r6, #0x80
 80014ba:      	and	r6, r5, #0xc0
 80014be:      	it	eq
 80014c0:      	addeq	r1, #0x1
 80014c2:      	cmp	r6, #0x80
 80014c4:      	and	r6, r4, #0xc0
 80014c8:      	it	eq
 80014ca:      	addeq	r1, #0x1
 80014cc:      	cmp	r6, #0x80
 80014ce:      	and	r2, r2, #0xc0
 80014d2:      	it	eq
 80014d4:      	addeq	r1, #0x1
 80014d6:      	cmp	r2, #0x80
 80014d8:      	it	eq
 80014da:      	addeq	r1, #0x1
 80014dc:      	adds	r3, #0x4
 80014de:      	adds	r7, #0x4
 80014e0:      	bne	#-0x38 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x1dc>
 80014e2:      	cmp.w	r12, #0x0
 80014e6:      	beq	#0x2e <core::fmt::Formatter::pad::hf80fa9686b71b608+0x248>
 80014e8:      	ldrb	r2, [r3]
 80014ea:      	and	r2, r2, #0xc0
 80014ee:      	cmp	r2, #0x80
 80014f0:      	it	eq
 80014f2:      	addeq	r1, #0x1
 80014f4:      	cmp.w	r12, #0x1
 80014f8:      	beq	#0x1c <core::fmt::Formatter::pad::hf80fa9686b71b608+0x248>
 80014fa:      	ldrb	r2, [r3, #0x1]
 80014fc:      	and	r2, r2, #0xc0
 8001500:      	cmp	r2, #0x80
 8001502:      	it	eq
 8001504:      	addeq	r1, #0x1
 8001506:      	cmp.w	r12, #0x2
 800150a:      	beq	#0xa <core::fmt::Formatter::pad::hf80fa9686b71b608+0x248>
 800150c:      	ldrb	r2, [r3, #0x2]
 800150e:      	and	r2, r2, #0xc0
 8001512:      	cmp	r2, #0x80
 8001514:      	it	eq
 8001516:      	addeq	r1, #0x1
 8001518:      	ldrb.w	r3, [r10, #0x30]
 800151c:      	sub.w	r1, r1, r9
 8001520:      	adds	r6, r1, r0
 8001522:      	movs	r0, #0x0
 8001524:      	subs	r2, r3, #0x3
 8001526:      	it	ne
 8001528:      	movne	r2, r3
 800152a:      	tbb	[pc, r2]

0800152e $d.28:
 800152e:	16 02 13 02	.word	0x02130216

08001532 $t.29:
 8001532:      	mov	r0, r6
 8001534:      	movs	r6, #0x0
 8001536:      	b	#0x20 <$t.29+0x28>
 8001538:      	cmp	r2, #0x0
 800153a:      	it	ne
 800153c:      	cmpne	r2, r9
 800153e:      	bne	#0x68 <$t.29+0x78>
 8001540:      	mov	r0, r8
 8001542:      	cmp	r0, #0x0
 8001544:      	ite	eq
 8001546:      	moveq	r2, r9
 8001548:      	movne	r8, r0
 800154a:      	cmp.w	lr, #0x0
 800154e:      	bne.w	#-0xe0 <core::fmt::Formatter::pad::hf80fa9686b71b608+0x1a2>
 8001552:      	b	#-0x18e <core::fmt::Formatter::pad::hf80fa9686b71b608+0xf8>
 8001554:      	adds	r1, r6, #0x1
 8001556:      	lsrs	r0, r6, #0x1
 8001558:      	lsrs	r6, r1, #0x1
 800155a:      	adds	r4, r0, #0x1
 800155c:      	subs	r4, #0x1
 800155e:      	beq	#0x10 <$t.29+0x40>
 8001560:      	ldrd	r0, r2, [r10, #24]
 8001564:      	ldr.w	r1, [r10, #0x4]
 8001568:      	ldr	r2, [r2, #0x10]
 800156a:      	blx	r2
 800156c:      	cmp	r0, #0x0
 800156e:      	beq	#-0x16 <$t.29+0x2a>
 8001570:      	b	#0x26 <$t.29+0x68>
 8001572:      	ldrd	r0, r1, [r10, #24]
 8001576:      	mov	r2, r9
 8001578:      	ldr	r3, [r1, #0xc]
 800157a:      	mov	r1, r8
 800157c:      	ldr.w	r7, [r10, #0x4]
 8001580:      	blx	r3
 8001582:      	cbnz	r0, #0x14
 8001584:      	ldrd	r4, r5, [r10, #24]
 8001588:      	adds	r6, #0x1
 800158a:      	subs	r6, #0x1
 800158c:      	beq	#0x12 <$t.29+0x70>
 800158e:      	ldr	r2, [r5, #0x10]
 8001590:      	mov	r0, r4
 8001592:      	mov	r1, r7
 8001594:      	blx	r2
 8001596:      	cmp	r0, #0x0
 8001598:      	beq	#-0x12 <$t.29+0x58>
 800159a:      	movs	r0, #0x1
 800159c:      	add	sp, #0x4
 800159e:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80015a2:      	movs	r0, #0x0
 80015a4:      	add	sp, #0x4
 80015a6:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80015aa:      	cmp	r2, r9
 80015ac:      	bhs	#0x8 <$t.29+0x86>
 80015ae:      	ldrsb.w	r0, [r8, r2]
 80015b2:      	cmn.w	r0, #0x40
 80015b6:      	bge	#-0x7a <$t.29+0xe>
 80015b8:      	movs	r0, #0x0
 80015ba:      	movs	r2, #0x0
 80015bc:      	cmp	r0, #0x0
 80015be:      	ite	eq
 80015c0:      	moveq	r2, r9
 80015c2:      	movne	r8, r0
 80015c4:      	cmp.w	lr, #0x0
 80015c8:      	bne.w	#-0x15a <core::fmt::Formatter::pad::hf80fa9686b71b608+0x1a2>
 80015cc:      	b	#-0x208 <core::fmt::Formatter::pad::hf80fa9686b71b608+0xf8>

080015ce core::str::slice_error_fail::h10a5dab7e1b03859:
 80015ce:      	sub	sp, #0x68
 80015d0:      	cmp.w	r1, #0x100
 80015d4:      	strd	r2, r3, [sp]
 80015d8:      	bhi	#0x4 <core::str::slice_error_fail::h10a5dab7e1b03859+0x12>
 80015da:      	movs	r5, #0x1
 80015dc:      	mov	r12, r1
 80015de:      	b	#0x84 <core::str::slice_error_fail::h10a5dab7e1b03859+0x98>
 80015e0:      	rsb.w	lr, r1, #0x0
 80015e4:      	mov.w	r12, #0x100
 80015e8:      	cmp	r12, r1
 80015ea:      	bhs	#0x8 <core::str::slice_error_fail::h10a5dab7e1b03859+0x28>
 80015ec:      	ldrsb.w	r4, [r0, r12]
 80015f0:      	cmn.w	r4, #0x41
 80015f4:      	bgt	#0x6c <core::str::slice_error_fail::h10a5dab7e1b03859+0x96>
 80015f6:      	add.w	r4, lr, r12
 80015fa:      	cmp	r4, #0x1
 80015fc:      	beq	#0x58 <core::str::slice_error_fail::h10a5dab7e1b03859+0x8a>
 80015fe:      	sub.w	r6, r12, #0x1
 8001602:      	cmp	r6, r1
 8001604:      	bhs	#0xc <core::str::slice_error_fail::h10a5dab7e1b03859+0x46>
 8001606:      	add.w	r5, r0, r12
 800160a:      	ldrsb	r5, [r5, #-1]
 800160e:      	cmn.w	r5, #0x41
 8001612:      	bgt	#0x48 <core::str::slice_error_fail::h10a5dab7e1b03859+0x90>
 8001614:      	cmp	r4, #0x2
 8001616:      	beq	#0x3e <core::str::slice_error_fail::h10a5dab7e1b03859+0x8a>
 8001618:      	sub.w	r6, r12, #0x2
 800161c:      	cmp	r6, r1
 800161e:      	bhs	#0xc <core::str::slice_error_fail::h10a5dab7e1b03859+0x60>
 8001620:      	add.w	r5, r0, r12
 8001624:      	ldrsb	r5, [r5, #-2]
 8001628:      	cmn.w	r5, #0x41
 800162c:      	bgt	#0x2e <core::str::slice_error_fail::h10a5dab7e1b03859+0x90>
 800162e:      	cmp	r4, #0x3
 8001630:      	beq	#0x24 <core::str::slice_error_fail::h10a5dab7e1b03859+0x8a>
 8001632:      	sub.w	r6, r12, #0x3
 8001636:      	cmp	r6, r1
 8001638:      	bhs	#0xc <core::str::slice_error_fail::h10a5dab7e1b03859+0x7a>
 800163a:      	add.w	r5, r0, r12
 800163e:      	ldrsb	r5, [r5, #-3]
 8001642:      	cmn.w	r5, #0x41
 8001646:      	bgt	#0x14 <core::str::slice_error_fail::h10a5dab7e1b03859+0x90>
 8001648:      	subs.w	r12, r12, #0x4
 800164c:      	mov.w	r5, #0x0
 8001650:      	beq	#0x12 <core::str::slice_error_fail::h10a5dab7e1b03859+0x98>
 8001652:      	cmp	r4, #0x4
 8001654:      	bne	#-0x70 <core::str::slice_error_fail::h10a5dab7e1b03859+0x1a>
 8001656:      	b	#0xc <core::str::slice_error_fail::h10a5dab7e1b03859+0x98>
 8001658:      	movs	r5, #0x0
 800165a:      	mov	r12, r1
 800165c:      	b	#0x6 <core::str::slice_error_fail::h10a5dab7e1b03859+0x98>
 800165e:      	movs	r5, #0x0
 8001660:      	mov	r12, r6
 8001662:      	b	#0x0 <core::str::slice_error_fail::h10a5dab7e1b03859+0x98>
 8001664:      	movs	r5, #0x0
 8001666:      	movs	r6, #0x5
 8001668:      	cmp	r5, #0x0
 800166a:      	movw	r5, #0x287a
 800166e:      	strd	r0, r12, [sp, #8]
 8001672:      	it	ne
 8001674:      	movne	r6, #0x0
 8001676:      	str	r6, [sp, #0x14]
 8001678:      	movw	r6, #0x3c45
 800167c:      	movt	r5, #0x800
 8001680:      	movt	r6, #0x800
 8001684:      	it	ne
 8001686:      	movne	r5, r6
 8001688:      	cmp	r2, r1
 800168a:      	str	r5, [sp, #0x10]
 800168c:      	it	ls
 800168e:      	cmpls	r3, r1
 8001690:      	bls	#0x54 <core::str::slice_error_fail::h10a5dab7e1b03859+0x11a>
 8001692:      	cmp	r2, r1
 8001694:      	mov.w	r0, #0x3
 8001698:      	add	r1, sp, #0x40
 800169a:      	it	hi
 800169c:      	movhi	r3, r2
 800169e:      	str	r0, [sp, #0x3c]
 80016a0:      	str	r1, [sp, #0x38]
 80016a2:      	movs	r1, #0x0
 80016a4:      	str	r1, [sp, #0x34]
 80016a6:      	strd	r0, r1, [sp, #44]
 80016aa:      	movw	r0, #0x2880
 80016ae:      	movt	r0, #0x800
 80016b2:      	add	r1, sp, #0x10
 80016b4:      	str	r0, [sp, #0x28]
 80016b6:      	movw	r0, #0x1915
 80016ba:      	movt	r0, #0x800
 80016be:      	str	r3, [sp, #0x20]
 80016c0:      	str	r0, [sp, #0x54]
 80016c2:      	strd	r0, r1, [sp, #76]
 80016c6:      	add	r0, sp, #0x8
 80016c8:      	movw	r1, #0x2898
 80016cc:      	str	r0, [sp, #0x48]
 80016ce:      	movw	r0, #0xebf
 80016d2:      	movt	r1, #0x800
 80016d6:      	movt	r0, #0x800
 80016da:      	str	r0, [sp, #0x44]
 80016dc:      	add	r0, sp, #0x20
 80016de:      	str	r0, [sp, #0x40]
 80016e0:      	add	r0, sp, #0x28
 80016e2:      	bl	#-0x738
 80016e6:      	trap
 80016e8:      	cmp	r2, r3
 80016ea:      	bhi.w	#0x1d4 <core::str::slice_error_fail::h10a5dab7e1b03859+0x2f4>
 80016ee:      	cmp	r2, #0x0
 80016f0:      	it	ne
 80016f2:      	cmpne	r1, r2
 80016f4:      	bne	#0x12 <core::str::slice_error_fail::h10a5dab7e1b03859+0x13c>
 80016f6:      	mov	r2, r3
 80016f8:      	cmp	r2, #0x0
 80016fa:      	str	r2, [sp, #0x18]
 80016fc:      	it	ne
 80016fe:      	cmpne	r2, r1
 8001700:      	bne	#0x1c <core::str::slice_error_fail::h10a5dab7e1b03859+0x152>
 8001702:      	mov	r3, r2
 8001704:      	cmp	r3, r1
 8001706:      	beq	#0x8e <core::str::slice_error_fail::h10a5dab7e1b03859+0x1ca>
 8001708:      	b	#0x9a <core::str::slice_error_fail::h10a5dab7e1b03859+0x1d8>
 800170a:      	bls	#-0x16 <core::str::slice_error_fail::h10a5dab7e1b03859+0x12a>
 800170c:      	ldrsb	r6, [r0, r2]
 800170e:      	cmn.w	r6, #0x40
 8001712:      	it	ge
 8001714:      	movge	r2, r3
 8001716:      	cmp	r2, #0x0
 8001718:      	str	r2, [sp, #0x18]
 800171a:      	it	ne
 800171c:      	cmpne	r2, r1
 800171e:      	beq	#-0x20 <core::str::slice_error_fail::h10a5dab7e1b03859+0x134>
 8001720:      	add.w	r12, r1, #0x2
 8001724:      	sub.w	lr, r0, #0x1
 8001728:      	adds	r4, r1, #0x3
 800172a:      	adds	r5, r1, #0x1
 800172c:      	adds	r6, r1, #0x4
 800172e:      	cmp	r2, r1
 8001730:      	bhs	#0xc <core::str::slice_error_fail::h10a5dab7e1b03859+0x172>
 8001732:      	add.w	r3, lr, r2
 8001736:      	ldrsb.w	r3, [r3, #0x1]
 800173a:      	cmn.w	r3, #0x41
 800173e:      	bgt	#-0x40 <core::str::slice_error_fail::h10a5dab7e1b03859+0x134>
 8001740:      	subs	r3, r2, #0x1
 8001742:      	it	ne
 8001744:      	cmpne	r5, r2
 8001746:      	beq	#0x4a <core::str::slice_error_fail::h10a5dab7e1b03859+0x1c6>
 8001748:      	cmp	r3, r1
 800174a:      	bhs	#0x8 <core::str::slice_error_fail::h10a5dab7e1b03859+0x188>
 800174c:      	ldrsb.w	r7, [lr, r2]
 8001750:      	cmn.w	r7, #0x41
 8001754:      	bgt	#0x3c <core::str::slice_error_fail::h10a5dab7e1b03859+0x1c6>
 8001756:      	subs	r3, r2, #0x2
 8001758:      	it	ne
 800175a:      	cmpne	r12, r2
 800175c:      	beq	#0x34 <core::str::slice_error_fail::h10a5dab7e1b03859+0x1c6>
 800175e:      	cmp	r3, r1
 8001760:      	bhs	#0xc <core::str::slice_error_fail::h10a5dab7e1b03859+0x1a2>
 8001762:      	add.w	r7, lr, r2
 8001766:      	ldrsb	r7, [r7, #-1]
 800176a:      	cmn.w	r7, #0x41
 800176e:      	bgt	#0x22 <core::str::slice_error_fail::h10a5dab7e1b03859+0x1c6>
 8001770:      	subs	r3, r2, #0x3
 8001772:      	it	ne
 8001774:      	cmpne	r4, r2
 8001776:      	beq	#0x1a <core::str::slice_error_fail::h10a5dab7e1b03859+0x1c6>
 8001778:      	cmp	r3, r1
 800177a:      	bhs	#0xc <core::str::slice_error_fail::h10a5dab7e1b03859+0x1bc>
 800177c:      	add.w	r7, lr, r2
 8001780:      	ldrsb	r7, [r7, #-2]
 8001784:      	cmn.w	r7, #0x41
 8001788:      	bgt	#0x8 <core::str::slice_error_fail::h10a5dab7e1b03859+0x1c6>
 800178a:      	subs	r3, r2, #0x4
 800178c:      	beq	#0x4 <core::str::slice_error_fail::h10a5dab7e1b03859+0x1c6>
 800178e:      	cmp	r6, r2
 8001790:      	mov	r2, r3
 8001792:      	bne	#-0x68 <core::str::slice_error_fail::h10a5dab7e1b03859+0x160>
 8001794:      	cmp	r3, r1
 8001796:      	bne	#0xc <core::str::slice_error_fail::h10a5dab7e1b03859+0x1d8>
 8001798:      	movw	r0, #0x28d8
 800179c:      	movt	r0, #0x800
 80017a0:      	bl	#-0x552
 80017a4:      	trap
 80017a6:      	adds	r5, r0, r3
 80017a8:      	mov	r6, r5
 80017aa:      	ldrsb	r4, [r6], #1
 80017ae:      	cmp.w	r4, #0xffffffff
 80017b2:      	uxtb	r2, r4
 80017b4:      	ble	#0x4 <core::str::slice_error_fail::h10a5dab7e1b03859+0x1ee>
 80017b6:      	str	r2, [sp, #0x1c]
 80017b8:      	movs	r1, #0x1
 80017ba:      	b	#0x96 <core::str::slice_error_fail::h10a5dab7e1b03859+0x286>
 80017bc:      	add	r0, r1
 80017be:      	cmp	r6, r0
 80017c0:      	bne	#0x16 <core::str::slice_error_fail::h10a5dab7e1b03859+0x20c>
 80017c2:      	movs	r5, #0x0
 80017c4:      	mov	r6, r0
 80017c6:      	and	r1, r2, #0x1f
 80017ca:      	cmp	r2, #0xdf
 80017cc:      	bhi	#0x1a <core::str::slice_error_fail::h10a5dab7e1b03859+0x21c>
 80017ce:      	orr.w	r0, r5, r1, lsl #6
 80017d2:      	cmp	r0, #0x80
 80017d4:      	str	r0, [sp, #0x1c]
 80017d6:      	blo	#0x62 <core::str::slice_error_fail::h10a5dab7e1b03859+0x26e>
 80017d8:      	b	#0x64 <core::str::slice_error_fail::h10a5dab7e1b03859+0x272>
 80017da:      	ldrb	r1, [r5, #0x1]
 80017dc:      	adds	r6, r5, #0x2
 80017de:      	and	r5, r1, #0x3f
 80017e2:      	and	r1, r2, #0x1f
 80017e6:      	cmp	r2, #0xdf
 80017e8:      	bls	#-0x1e <core::str::slice_error_fail::h10a5dab7e1b03859+0x200>
 80017ea:      	cmp	r6, r0
 80017ec:      	bne	#0x16 <core::str::slice_error_fail::h10a5dab7e1b03859+0x238>
 80017ee:      	movs	r4, #0x0
 80017f0:      	mov	r6, r0
 80017f2:      	orr.w	r5, r4, r5, lsl #6
 80017f6:      	cmp	r2, #0xf0
 80017f8:      	bhs	#0x1a <core::str::slice_error_fail::h10a5dab7e1b03859+0x248>
 80017fa:      	orr.w	r0, r5, r1, lsl #12
 80017fe:      	cmp	r0, #0x80
 8001800:      	str	r0, [sp, #0x1c]
 8001802:      	blo	#0x36 <core::str::slice_error_fail::h10a5dab7e1b03859+0x26e>
 8001804:      	b	#0x38 <core::str::slice_error_fail::h10a5dab7e1b03859+0x272>
 8001806:      	ldrb	r4, [r6], #1
 800180a:      	and	r4, r4, #0x3f
 800180e:      	orr.w	r5, r4, r5, lsl #6
 8001812:      	cmp	r2, #0xf0
 8001814:      	blo	#-0x1e <core::str::slice_error_fail::h10a5dab7e1b03859+0x22c>
 8001816:      	mov.w	r2, #0x1c0000
 800181a:      	and.w	r1, r2, r1, lsl #18
 800181e:      	cmp	r6, r0
 8001820:      	itte	ne
 8001822:      	ldrbne	r0, [r6]
 8001824:      	andne	r0, r0, #0x3f
 8001828:      	moveq	r0, #0x0
 800182a:      	orr.w	r1, r1, r5, lsl #6
 800182e:      	add	r0, r1
 8001830:      	cmp.w	r0, #0x110000
 8001834:      	beq	#-0xa0 <core::str::slice_error_fail::h10a5dab7e1b03859+0x1ca>
 8001836:      	cmp	r0, #0x80
 8001838:      	str	r0, [sp, #0x1c]
 800183a:      	bhs	#0x2 <core::str::slice_error_fail::h10a5dab7e1b03859+0x272>
 800183c:      	movs	r1, #0x1
 800183e:      	b	#0x12 <core::str::slice_error_fail::h10a5dab7e1b03859+0x286>
 8001840:      	cmp.w	r0, #0x800
 8001844:      	bhs	#0x2 <core::str::slice_error_fail::h10a5dab7e1b03859+0x27c>
 8001846:      	movs	r1, #0x2
 8001848:      	b	#0x8 <core::str::slice_error_fail::h10a5dab7e1b03859+0x286>
 800184a:      	movs	r1, #0x4
 800184c:      	cmp.w	r0, #0x10000
 8001850:      	it	lo
 8001852:      	movlo	r1, #0x3
 8001854:      	add	r1, r3
 8001856:      	add	r2, sp, #0x40
 8001858:      	add	r0, sp, #0x20
 800185a:      	strd	r3, r1, [sp, #32]
 800185e:      	movs	r1, #0x5
 8001860:      	str	r1, [sp, #0x3c]
 8001862:      	str	r2, [sp, #0x38]
 8001864:      	movs	r2, #0x0
 8001866:      	str	r2, [sp, #0x34]
 8001868:      	strd	r1, r2, [sp, #44]
 800186c:      	movw	r1, #0x28f0
 8001870:      	movt	r1, #0x800
 8001874:      	add	r2, sp, #0x10
 8001876:      	str	r1, [sp, #0x28]
 8001878:      	movw	r1, #0x1915
 800187c:      	movt	r1, #0x800
 8001880:      	str	r1, [sp, #0x64]
 8001882:      	strd	r1, r2, [sp, #92]
 8001886:      	add	r1, sp, #0x8
 8001888:      	str	r1, [sp, #0x58]
 800188a:      	movw	r1, #0x1b3b
 800188e:      	movt	r1, #0x800
 8001892:      	strd	r0, r1, [sp, #80]
 8001896:      	movw	r0, #0x1921
 800189a:      	movt	r0, #0x800
 800189e:      	movw	r1, #0x2918
 80018a2:      	str	r0, [sp, #0x4c]
 80018a4:      	add	r0, sp, #0x1c
 80018a6:      	str	r0, [sp, #0x48]
 80018a8:      	movw	r0, #0xebf
 80018ac:      	movt	r0, #0x800
 80018b0:      	movt	r1, #0x800
 80018b4:      	str	r0, [sp, #0x44]
 80018b6:      	add	r0, sp, #0x18
 80018b8:      	str	r0, [sp, #0x40]
 80018ba:      	add	r0, sp, #0x28
 80018bc:      	bl	#-0x912
 80018c0:      	trap
 80018c2:      	movs	r0, #0x4
 80018c4:      	add	r1, sp, #0x40
 80018c6:      	str	r0, [sp, #0x3c]
 80018c8:      	str	r1, [sp, #0x38]
 80018ca:      	movs	r1, #0x0
 80018cc:      	str	r1, [sp, #0x34]
 80018ce:      	strd	r0, r1, [sp, #44]
 80018d2:      	movw	r0, #0x28a8
 80018d6:      	movt	r0, #0x800
 80018da:      	add	r1, sp, #0x10
 80018dc:      	str	r0, [sp, #0x28]
 80018de:      	movw	r0, #0x1915
 80018e2:      	movt	r0, #0x800
 80018e6:      	str	r0, [sp, #0x5c]
 80018e8:      	strd	r0, r1, [sp, #84]
 80018ec:      	add	r0, sp, #0x8
 80018ee:      	str	r0, [sp, #0x50]
 80018f0:      	movw	r0, #0xebf
 80018f4:      	add	r1, sp, #0x4
 80018f6:      	movt	r0, #0x800
 80018fa:      	str	r0, [sp, #0x4c]
 80018fc:      	strd	r0, r1, [sp, #68]
 8001900:      	movw	r1, #0x28c8
 8001904:      	mov	r0, sp
 8001906:      	movt	r1, #0x800
 800190a:      	str	r0, [sp, #0x40]
 800190c:      	add	r0, sp, #0x28
 800190e:      	bl	#-0x964
 8001912:      	trap

08001914 <&T as core::fmt::Display>::fmt::h7460a29b325de380:
 8001914:      	mov	r3, r1
 8001916:      	ldrd	r1, r2, [r0]
 800191a:      	mov	r0, r3
 800191c:      	b.w	#-0x650 <core::fmt::Formatter::pad::hf80fa9686b71b608>

08001920 <char as core::fmt::Debug>::fmt::hd97e0ab8dd979b03:
 8001920:      	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8001924:      	sub	sp, #0x14
 8001926:      	mov	r4, r1
 8001928:      	mov	r5, r0
 800192a:      	ldrd	r0, r1, [r1, #24]
 800192e:      	ldr	r2, [r1, #0x10]
 8001930:      	movs	r1, #0x27
 8001932:      	blx	r2
 8001934:      	cbz	r0, #0x6
 8001936:      	movs	r0, #0x1
 8001938:      	add	sp, #0x14
 800193a:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 800193e:      	ldr	r5, [r5]
 8001940:      	sub.w	r0, r5, #0x9
 8001944:      	cmp	r0, #0x1e
 8001946:      	bhi	#0x2c <$t.34+0x6>
 8001948:      	movs	r7, #0x2
 800194a:      	movs	r6, #0x74
 800194c:      	tbb	[pc, r0]

08001950 $d.33:
 8001950:	88 10 17 17	.word	0x17171088
 8001954:	39 17 17 17	.word	0x17171739
 8001958:	17 17 17 17	.word	0x17171717
 800195c:	17 17 17 17	.word	0x17171717
 8001960:	17 17 17 17	.word	0x17171717
 8001964:	17 17 17 17	.word	0x17171717
 8001968:	17 15 17 17	.word	0x17171517
 800196c:	17 17 15 00	.word	0x00151717

08001970 $t.34:
 8001970:      	movs	r7, #0x2
 8001972:      	movs	r6, #0x6e
 8001974:      	b	#0x4e <$t.34+0x56>
 8001976:      	cmp	r5, #0x5c
 8001978:      	bne	#0x2 <$t.34+0xe>
 800197a:      	movs	r7, #0x2
 800197c:      	b	#0xde <$t.34+0xee>
 800197e:      	mov	r0, r5
 8001980:      	bl	#0x75c
 8001984:      	cmp	r0, #0x0
 8001986:      	bne	#0xbe <$t.34+0xd8>
 8001988:      	cmp.w	r5, #0x10000
 800198c:      	bhs	#0x38 <$t.34+0x58>
 800198e:      	movw	r1, #0x3137
 8001992:      	movw	r2, #0x125
 8001996:      	movt	r1, #0x800
 800199a:      	movw	r3, #0x3012
 800199e:      	strd	r2, r1, [sp]
 80019a2:      	movw	r1, #0x2fc0
 80019a6:      	mov.w	r0, #0x13a
 80019aa:      	movt	r1, #0x800
 80019ae:      	str	r0, [sp, #0x8]
 80019b0:      	movt	r3, #0x800
 80019b4:      	mov	r0, r5
 80019b6:      	movs	r2, #0x29
 80019b8:      	bl	#0x842
 80019bc:      	cmp	r0, #0x0
 80019be:      	beq	#0x86 <$t.34+0xd8>
 80019c0:      	b	#0x172 <$t.38+0x94>
 80019c2:      	movs	r7, #0x2
 80019c4:      	movs	r6, #0x72
 80019c6:      	b	#0x96 <$t.34+0xf0>
 80019c8:      	cmp.w	r5, #0x20000
 80019cc:      	bhs	#0x2e <$t.34+0x8e>
 80019ce:      	movw	r1, #0x335d
 80019d2:      	movs	r2, #0xa6
 80019d4:      	movt	r1, #0x800
 80019d8:      	movw	r3, #0x32b7
 80019dc:      	strd	r2, r1, [sp]
 80019e0:      	movw	r1, #0x3271
 80019e4:      	mov.w	r0, #0x198
 80019e8:      	movt	r1, #0x800
 80019ec:      	str	r0, [sp, #0x8]
 80019ee:      	movt	r3, #0x800
 80019f2:      	mov	r0, r5
 80019f4:      	movs	r2, #0x23
 80019f6:      	bl	#0x804
 80019fa:      	cbz	r0, #0x4a
 80019fc:      	b	#0x136 <$t.38+0x94>
 80019fe:      	sub.w	r0, r5, #0xe0000
 8001a02:      	movw	r1, #0xfe10
 8001a06:      	sub.w	r0, r0, #0x1f0
 8001a0a:      	movt	r1, #0x2
 8001a0e:      	cmp	r0, r1
 8001a10:      	blo	#0x34 <$t.34+0xd8>
 8001a12:      	movw	r0, #0x5e2
 8001a16:      	movw	r1, #0x6e2
 8001a1a:      	movt	r0, #0xfffd
 8001a1e:      	movt	r1, #0xb
 8001a22:      	add	r0, r5
 8001a24:      	cmp	r0, r1
 8001a26:      	blo	#0x1e <$t.34+0xd8>
 8001a28:      	movw	r0, #0x141f
 8001a2c:      	movw	r1, #0xc1f
 8001a30:      	movt	r0, #0xfffd
 8001a34:      	add	r0, r5
 8001a36:      	cmp	r0, r1
 8001a38:      	itttt	hs
 8001a3a:      	movwhs	r0, #0x315e
 8001a3e:      	movths	r0, #0xfffd
 8001a42:      	addhs	r0, r5
 8001a44:      	cmphs	r0, #0xe
 8001a46:      	bhs	#0xbc <$t.38+0x64>
 8001a48:      	orr	r0, r5, #0x1
 8001a4c:      	mov.w	r9, #0x5
 8001a50:      	clz	r0, r0
 8001a54:      	movs	r7, #0x3
 8001a56:      	movs	r1, #0x7
 8001a58:      	eor.w	r0, r1, r0, lsr #2
 8001a5c:      	str	r0, [sp, #0x10]
 8001a5e:      	mov	r6, r5
 8001a60:      	mov.w	r11, #0x1c
 8001a64:      	mov.w	r10, #0x1
 8001a68:      	movs	r5, #0x2
 8001a6a:      	mov.w	r8, #0x4
 8001a6e:      	b	#0xc <$t.34+0x10e>
 8001a70:      	ldrd	r0, r2, [r4, #24]
 8001a74:      	ldr	r2, [r2, #0x10]
 8001a76:      	blx	r2
 8001a78:      	cmp	r0, #0x0
 8001a7a:      	bne.w	#-0x148 <<char as core::fmt::Debug>::fmt::hd97e0ab8dd979b03+0x16>
 8001a7e:      	mov	r0, r7
 8001a80:      	movs	r1, #0x5c
 8001a82:      	movs	r7, #0x1
 8001a84:      	tbb	[pc, r0]

08001a88 $d.35:
 8001a88:	37 03 02 06	.word	0x06020337

08001a8c $t.36:
 8001a8c:      	b	#-0x20 <$t.34+0x100>
 8001a8e:      	movs	r7, #0x0
 8001a90:      	mov	r1, r6
 8001a92:      	b	#-0x26 <$t.34+0x100>
 8001a94:      	uxtb.w	r0, r9
 8001a98:      	tbb	[pc, r0]

08001a9c $d.37:
 8001a9c:	2d 03 08 1a	.word	0x1a08032d
 8001aa0:	1f 24		.short	0x241f

08001aa2 $t.38:
 8001aa2:      	bic	r9, r9, #0xff
 8001aa6:      	movs	r1, #0x7d
 8001aa8:      	movs	r7, #0x3
 8001aaa:      	b	#-0x3e <$t.34+0x100>
 8001aac:      	ldr	r2, [sp, #0x10]
 8001aae:      	and.w	r0, r11, r2, lsl #2
 8001ab2:      	lsr.w	r0, r6, r0
 8001ab6:      	and	r0, r0, #0xf
 8001aba:      	add.w	r1, r0, #0x57
 8001abe:      	cmp	r0, #0xa
 8001ac0:      	it	lo
 8001ac2:      	addlo.w	r1, r0, #0x30
 8001ac6:      	cbz	r2, #0x24
 8001ac8:      	subs	r2, #0x1
 8001aca:      	str	r2, [sp, #0x10]
 8001acc:      	movs	r7, #0x3
 8001ace:      	b	#-0x62 <$t.34+0x100>
 8001ad0:      	bfi	r9, r5, #0, #8
 8001ad4:      	movs	r1, #0x7b
 8001ad6:      	movs	r7, #0x3
 8001ad8:      	b	#-0x6c <$t.34+0x100>
 8001ada:      	movs	r7, #0x3
 8001adc:      	movs	r1, #0x75
 8001ade:      	bfi	r9, r7, #0, #8
 8001ae2:      	b	#-0x76 <$t.34+0x100>
 8001ae4:      	bfi	r9, r8, #0, #8
 8001ae8:      	movs	r1, #0x5c
 8001aea:      	movs	r7, #0x3
 8001aec:      	b	#-0x80 <$t.34+0x100>
 8001aee:      	bfi	r9, r10, #0, #8
 8001af2:      	movs	r7, #0x3
 8001af4:      	b	#-0x88 <$t.34+0x100>
 8001af6:      	ldrd	r0, r1, [r4, #24]
 8001afa:      	ldr	r2, [r1, #0x10]
 8001afc:      	movs	r1, #0x27
 8001afe:      	add	sp, #0x14
 8001b00:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8001b04:      	bx	r2
 8001b06:      	movw	r1, #0xb81e
 8001b0a:      	bic	r0, r5, #0x1
 8001b0e:      	movt	r1, #0x2
 8001b12:      	cmp	r0, r1
 8001b14:      	beq.w	#-0xd0 <$t.34+0xd8>
 8001b18:      	movw	r0, #0x5929
 8001b1c:      	movt	r0, #0xfffd
 8001b20:      	add	r0, r5
 8001b22:      	cmp	r0, #0x29
 8001b24:      	itttt	hs
 8001b26:      	movwhs	r0, #0x48cb
 8001b2a:      	movths	r0, #0xfffd
 8001b2e:      	addhs	r0, r5
 8001b30:      	cmphs	r0, #0xa
 8001b32:      	bls.w	#-0xee <$t.34+0xd8>
 8001b36:      	movs	r7, #0x1
 8001b38:      	b	#-0x1c0 <$t.34+0xc>

08001b3a <core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::hdfc707e59c08737a:
 8001b3a:      	push	{r4, r5, r7, lr}
 8001b3c:      	sub	sp, #0x18
 8001b3e:      	mov	r5, r0
 8001b40:      	ldr	r0, [r0]
 8001b42:      	mov	r4, r1
 8001b44:      	bl	#0x3c
 8001b48:      	cbnz	r0, #0x24
 8001b4a:      	movs	r2, #0x0
 8001b4c:      	movs	r3, #0x4
 8001b4e:      	ldrd	r0, r1, [r4, #24]
 8001b52:      	str	r2, [sp, #0x14]
 8001b54:      	str	r3, [sp, #0x10]
 8001b56:      	strd	r2, r2, [sp, #8]
 8001b5a:      	movs	r2, #0x1
 8001b5c:      	str	r2, [sp, #0x4]
 8001b5e:      	movw	r2, #0x2980
 8001b62:      	movt	r2, #0x800
 8001b66:      	str	r2, [sp]
 8001b68:      	mov	r2, sp
 8001b6a:      	bl	#0x266
 8001b6e:      	cbz	r0, #0x4
 8001b70:      	movs	r0, #0x1
 8001b72:      	add	sp, #0x18
 8001b74:      	pop	{r4, r5, r7, pc}
 8001b76:      	ldr	r0, [r5, #0x4]
 8001b78:      	mov	r1, r4
 8001b7a:      	add	sp, #0x18
 8001b7c:      	pop.w	{r4, r5, r7, lr}
 8001b80:      	b.w	#0x0 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28>

08001b84 core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28:
 8001b84:      	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8001b88:      	sub	sp, #0x84
 8001b8a:      	mov	r12, r1
 8001b8c:      	ldr	r1, [r1]
 8001b8e:      	lsls	r2, r1, #0x1b
 8001b90:      	bmi	#0x9c <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0xac>
 8001b92:      	lsls	r1, r1, #0x1a
 8001b94:      	bmi.w	#0x11a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x12e>
 8001b98:      	movw	r1, #0x2710
 8001b9c:      	movw	r9, #0x851f
 8001ba0:      	cmp	r0, r1
 8001ba2:      	movw	r1, #0x270a
 8001ba6:      	movw	r8, #0xff9c
 8001baa:      	movt	r9, #0x51eb
 8001bae:      	movt	r1, #0x800
 8001bb2:      	blo.w	#0x1c6 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1f8>
 8001bb6:      	movw	lr, #0x1759
 8001bba:      	movw	r10, #0xd8f0
 8001bbe:      	movw	r7, #0xe0ff
 8001bc2:      	add.w	r11, sp, #0x4
 8001bc6:      	movs	r3, #0x0
 8001bc8:      	movt	lr, #0xd1b7
 8001bcc:      	movt	r10, #0xffff
 8001bd0:      	movt	r7, #0x5f5
 8001bd4:      	umull	r2, r4, r0, lr
 8001bd8:      	cmp	r0, r7
 8001bda:      	lsr.w	r2, r4, #0xd
 8001bde:      	mla	r4, r2, r10, r0
 8001be2:      	mov	r0, r2
 8001be4:      	uxth	r5, r4
 8001be6:      	umull	r5, r6, r5, r9
 8001bea:      	lsr.w	r5, r6, #0x5
 8001bee:      	add.w	r6, r11, r3
 8001bf2:      	mla	r4, r5, r8, r4
 8001bf6:      	ldrh.w	r5, [r1, r5, lsl #1]
 8001bfa:      	sub.w	r3, r3, #0x4
 8001bfe:      	strh.w	r5, [r6, #0x23]
 8001c02:      	uxth	r4, r4
 8001c04:      	ldrh.w	r4, [r1, r4, lsl #1]
 8001c08:      	strh.w	r4, [r6, #0x25]
 8001c0c:      	bhi	#-0x3c <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x50>
 8001c0e:      	add.w	lr, r3, #0x27
 8001c12:      	mov	r0, r2
 8001c14:      	cmp	r0, #0x63
 8001c16:      	bgt.w	#0x16c <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x202>
 8001c1a:      	mov	r2, r0
 8001c1c:      	cmp	r2, #0xa
 8001c1e:      	blt.w	#0x186 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x224>
 8001c22:      	ldrh.w	r1, [r1, r2, lsl #1]
 8001c26:      	sub.w	r0, lr, #0x2
 8001c2a:      	add	r2, sp, #0x4
 8001c2c:      	strh	r1, [r2, r0]
 8001c2e:      	b	#0x182 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x230>
 8001c30:      	add.w	lr, sp, #0x4
 8001c34:      	movs	r3, #0x81
 8001c36:      	movs	r2, #0x0
 8001c38:      	and	r1, r0, #0xf
 8001c3c:      	add.w	r4, r1, #0x57
 8001c40:      	cmp	r1, #0xa
 8001c42:      	it	lo
 8001c44:      	addlo.w	r4, r1, #0x30
 8001c48:      	add.w	r1, lr, r3
 8001c4c:      	cmp.w	r2, r0, lsr #4
 8001c50:      	strb	r4, [r1, #-2]
 8001c54:      	beq	#0xe2 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1b6>
 8001c56:      	lsrs	r4, r0, #0x4
 8001c58:      	and	r4, r4, #0xf
 8001c5c:      	add.w	r5, r4, #0x57
 8001c60:      	cmp	r4, #0xa
 8001c62:      	it	lo
 8001c64:      	addlo.w	r5, r4, #0x30
 8001c68:      	cmp.w	r2, r0, lsr #8
 8001c6c:      	strb	r5, [r1, #-3]
 8001c70:      	beq	#0xee <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1de>
 8001c72:      	lsrs	r4, r0, #0x8
 8001c74:      	and	r4, r4, #0xf
 8001c78:      	add.w	r5, r4, #0x57
 8001c7c:      	cmp	r4, #0xa
 8001c7e:      	it	lo
 8001c80:      	addlo.w	r5, r4, #0x30
 8001c84:      	cmp.w	r2, r0, lsr #12
 8001c88:      	strb	r5, [r1, #-4]
 8001c8c:      	beq	#0xe2 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1ee>
 8001c8e:      	lsrs	r4, r0, #0xc
 8001c90:      	subs	r3, #0x4
 8001c92:      	and	r4, r4, #0xf
 8001c96:      	add.w	r5, r4, #0x57
 8001c9a:      	cmp	r4, #0xa
 8001c9c:      	it	lo
 8001c9e:      	addlo.w	r5, r4, #0x30
 8001ca2:      	strb	r5, [r1, #-5]
 8001ca6:      	lsrs	r1, r0, #0x10
 8001ca8:      	cmp.w	r2, r0, lsr #16
 8001cac:      	mov	r0, r1
 8001cae:      	bne	#-0x7a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0xb4>
 8001cb0:      	b	#0x7e <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1ae>
 8001cb2:      	add.w	lr, sp, #0x4
 8001cb6:      	movs	r3, #0x81
 8001cb8:      	movs	r2, #0x0
 8001cba:      	and	r1, r0, #0xf
 8001cbe:      	add.w	r4, r1, #0x37
 8001cc2:      	cmp	r1, #0xa
 8001cc4:      	it	lo
 8001cc6:      	addlo.w	r4, r1, #0x30
 8001cca:      	add.w	r1, lr, r3
 8001cce:      	cmp.w	r2, r0, lsr #4
 8001cd2:      	strb	r4, [r1, #-2]
 8001cd6:      	beq	#0x60 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1b6>
 8001cd8:      	lsrs	r4, r0, #0x4
 8001cda:      	and	r4, r4, #0xf
 8001cde:      	add.w	r5, r4, #0x37
 8001ce2:      	cmp	r4, #0xa
 8001ce4:      	it	lo
 8001ce6:      	addlo.w	r5, r4, #0x30
 8001cea:      	cmp.w	r2, r0, lsr #8
 8001cee:      	strb	r5, [r1, #-3]
 8001cf2:      	beq	#0x6c <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1de>
 8001cf4:      	lsrs	r4, r0, #0x8
 8001cf6:      	and	r4, r4, #0xf
 8001cfa:      	add.w	r5, r4, #0x37
 8001cfe:      	cmp	r4, #0xa
 8001d00:      	it	lo
 8001d02:      	addlo.w	r5, r4, #0x30
 8001d06:      	cmp.w	r2, r0, lsr #12
 8001d0a:      	strb	r5, [r1, #-4]
 8001d0e:      	beq	#0x60 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1ee>
 8001d10:      	lsrs	r4, r0, #0xc
 8001d12:      	subs	r3, #0x4
 8001d14:      	and	r4, r4, #0xf
 8001d18:      	add.w	r5, r4, #0x37
 8001d1c:      	cmp	r4, #0xa
 8001d1e:      	it	lo
 8001d20:      	addlo.w	r5, r4, #0x30
 8001d24:      	strb	r5, [r1, #-5]
 8001d28:      	lsrs	r1, r0, #0x10
 8001d2a:      	cmp.w	r2, r0, lsr #16
 8001d2e:      	mov	r0, r1
 8001d30:      	bne	#-0x7a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x136>
 8001d32:      	subs	r0, r3, #0x1
 8001d34:      	cmp	r0, #0x81
 8001d36:      	blo	#0x8 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1be>
 8001d38:      	b	#0x2e <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1e6>
 8001d3a:      	subs	r0, r3, #0x2
 8001d3c:      	subs	r3, #0x1
 8001d3e:      	cmp	r0, #0x81
 8001d40:      	bhs	#0x26 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1e6>
 8001d42:      	rsb.w	r1, r3, #0x81
 8001d46:      	str	r1, [sp]
 8001d48:      	movw	r1, #0x2878
 8001d4c:      	add.w	r3, lr, r0
 8001d50:      	movt	r1, #0x800
 8001d54:      	mov	r0, r12
 8001d56:      	movs	r2, #0x2
 8001d58:      	bl	#-0xd70
 8001d5c:      	add	sp, #0x84
 8001d5e:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 8001d62:      	subs	r0, r3, #0x3
 8001d64:      	subs	r3, #0x2
 8001d66:      	cmp	r0, #0x81
 8001d68:      	blo	#-0x2a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1be>
 8001d6a:      	movs	r1, #0x80
 8001d6c:      	bl	#-0xae6
 8001d70:      	trap
 8001d72:      	subs	r0, r3, #0x4
 8001d74:      	subs	r3, #0x3
 8001d76:      	cmp	r0, #0x81
 8001d78:      	blo	#-0x3a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1be>
 8001d7a:      	b	#-0x14 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x1e6>
 8001d7c:      	mov.w	lr, #0x27
 8001d80:      	cmp	r0, #0x63
 8001d82:      	ble.w	#-0x16c <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x96>
 8001d86:      	uxth	r2, r0
 8001d88:      	sub.w	lr, lr, #0x2
 8001d8c:      	umull	r2, r3, r2, r9
 8001d90:      	lsrs	r2, r3, #0x5
 8001d92:      	add	r3, sp, #0x4
 8001d94:      	mla	r0, r2, r8, r0
 8001d98:      	uxth	r0, r0
 8001d9a:      	ldrh.w	r0, [r1, r0, lsl #1]
 8001d9e:      	strh.w	r0, [r3, lr]
 8001da2:      	cmp	r2, #0xa
 8001da4:      	bge.w	#-0x186 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt::hcce1d810f8587478.28+0x9e>
 8001da8:      	sub.w	r0, lr, #0x1
 8001dac:      	add.w	r1, r2, #0x30
 8001db0:      	add	r2, sp, #0x4
 8001db2:      	strb	r1, [r2, r0]
 8001db4:      	rsb.w	r1, r0, #0x27
 8001db8:      	str	r1, [sp]
 8001dba:      	add	r1, sp, #0x4
 8001dbc:      	movs	r2, #0x0
 8001dbe:      	adds	r3, r1, r0
 8001dc0:      	movw	r1, #0x3c45
 8001dc4:      	movt	r1, #0x800
 8001dc8:      	mov	r0, r12
 8001dca:      	bl	#-0xde2
 8001dce:      	add	sp, #0x84
 8001dd0:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

08001dd4 core::fmt::write::hd3be2acfbcfb0dbb:
 8001dd4:      	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8001dd8:      	sub	sp, #0x34
 8001dda:      	movs	r3, #0x3
 8001ddc:      	ldr	r7, [r2, #0x8]
 8001dde:      	ldrd	r5, r6, [r2, #16]
 8001de2:      	add.w	r12, sp, #0x18
 8001de6:      	strb.w	r3, [sp, #0x30]
 8001dea:      	movs	r3, #0x20
 8001dec:      	str	r3, [sp, #0x4]
 8001dee:      	movs	r3, #0x0
 8001df0:      	cmp	r7, #0x0
 8001df2:      	str	r3, [sp]
 8001df4:      	strd	r5, r6, [sp, #40]
 8001df8:      	stm.w	r12, {r0, r1, r5}
 8001dfc:      	str	r3, [sp, #0x10]
 8001dfe:      	str	r3, [sp, #0x8]
 8001e00:      	add.w	r3, r5, r6, lsl #3
 8001e04:      	str	r3, [sp, #0x24]
 8001e06:      	beq.w	#0x144 <$t.45+0xa2>
 8001e0a:      	ldr	r4, [r2, #0xc]
 8001e0c:      	ldrd	r11, r9, [r2]
 8001e10:      	cmp	r4, r9
 8001e12:      	it	hi
 8001e14:      	movhi	r4, r9
 8001e16:      	cmp	r4, #0x0
 8001e18:      	beq.w	#0x17e <$t.45+0xee>
 8001e1c:      	ldrd	r3, r2, [r11]
 8001e20:      	ldr	r6, [r1, #0xc]
 8001e22:      	mov	r1, r3
 8001e24:      	blx	r6
 8001e26:      	cmp	r0, #0x0
 8001e28:      	bne.w	#0x18a <$t.45+0x10a>
 8001e2c:      	add.w	r6, r7, #0x10
 8001e30:      	movw	r7, #0x1ff1
 8001e34:      	movs	r5, #0x0
 8001e36:      	mov	r8, sp
 8001e38:      	movt	r7, #0x800
 8001e3c:      	ldr	r0, [r6, #-8]
 8001e40:      	add.w	r10, r5, #0x1
 8001e44:      	str	r0, [sp, #0x4]
 8001e46:      	ldrb	r0, [r6, #0x10]
 8001e48:      	strb.w	r0, [sp, #0x30]
 8001e4c:      	ldr	r0, [r6, #-4]
 8001e50:      	str	r0, [sp]
 8001e52:      	movs	r0, #0x0
 8001e54:      	ldr	r2, [r6, #0x8]
 8001e56:      	tbb	[pc, r2]

08001e5a $d.42:
 8001e5a:	02 04 12 21	.word	0x21120402

08001e5e $t.43:
 8001e5e:      	ldr	r1, [r6, #0xc]
 8001e60:      	b	#0x32 <$t.43+0x38>
 8001e62:      	ldr	r2, [sp, #0x2c]
 8001e64:      	ldr	r1, [r6, #0xc]
 8001e66:      	cmp	r1, r2
 8001e68:      	bhs.w	#0x15a <$t.45+0x11a>
 8001e6c:      	ldr	r0, [sp, #0x28]
 8001e6e:      	add.w	r2, r0, r1, lsl #3
 8001e72:      	ldr	r2, [r2, #0x4]
 8001e74:      	cmp	r2, r7
 8001e76:      	bne	#0x20 <$t.43+0x3c>
 8001e78:      	ldr.w	r0, [r0, r1, lsl #3]
 8001e7c:      	b	#0x14 <$t.43+0x36>
 8001e7e:      	ldrd	r0, r1, [sp, #32]
 8001e82:      	cmp	r0, r1
 8001e84:      	beq	#0x12 <$t.43+0x3c>
 8001e86:      	add.w	r1, r0, #0x8
 8001e8a:      	str	r1, [sp, #0x20]
 8001e8c:      	ldr	r1, [r0, #0x4]
 8001e8e:      	cmp	r1, r7
 8001e90:      	bne	#0x6 <$t.43+0x3c>
 8001e92:      	ldr	r0, [r0]
 8001e94:      	ldr	r1, [r0]
 8001e96:      	movs	r0, #0x1
 8001e98:      	b	#0x0 <$t.43+0x3e>
 8001e9a:      	movs	r0, #0x0
 8001e9c:      	strd	r0, r1, [sp, #8]
 8001ea0:      	movs	r0, #0x0
 8001ea2:      	ldr	r2, [r6]
 8001ea4:      	tbb	[pc, r2]

08001ea8 $d.44:
 8001ea8:	02 04 12 1f	.word	0x1f120402

08001eac $t.45:
 8001eac:      	ldr	r1, [r6, #0x4]
 8001eae:      	b	#0x32 <$t.45+0x38>
 8001eb0:      	ldr	r2, [sp, #0x2c]
 8001eb2:      	ldr	r1, [r6, #0x4]
 8001eb4:      	cmp	r1, r2
 8001eb6:      	bhs.w	#0x10c <$t.45+0x11a>
 8001eba:      	ldr	r0, [sp, #0x28]
 8001ebc:      	add.w	r2, r0, r1, lsl #3
 8001ec0:      	ldr	r2, [r2, #0x4]
 8001ec2:      	cmp	r2, r7
 8001ec4:      	bne	#0x3c <$t.45+0x58>
 8001ec6:      	ldr.w	r0, [r0, r1, lsl #3]
 8001eca:      	b	#0x14 <$t.45+0x36>
 8001ecc:      	ldrd	r0, r1, [sp, #32]
 8001ed0:      	cmp	r0, r1
 8001ed2:      	beq	#0x2e <$t.45+0x58>
 8001ed4:      	add.w	r1, r0, #0x8
 8001ed8:      	str	r1, [sp, #0x20]
 8001eda:      	ldr	r1, [r0, #0x4]
 8001edc:      	cmp	r1, r7
 8001ede:      	bne	#0x22 <$t.45+0x58>
 8001ee0:      	ldr	r0, [r0]
 8001ee2:      	ldr	r1, [r0]
 8001ee4:      	movs	r0, #0x1
 8001ee6:      	strd	r0, r1, [sp, #16]
 8001eea:      	ldr	r0, [r6, #-16]
 8001eee:      	cmp	r0, #0x1
 8001ef0:      	bne	#0x1e <$t.45+0x66>
 8001ef2:      	ldr	r2, [sp, #0x2c]
 8001ef4:      	ldr	r1, [r6, #-12]
 8001ef8:      	cmp	r1, r2
 8001efa:      	bhs	#0xd6 <$t.45+0x128>
 8001efc:      	ldr	r0, [sp, #0x28]
 8001efe:      	add.w	r0, r0, r1, lsl #3
 8001f02:      	b	#0x1a <$t.45+0x74>
 8001f04:      	movs	r0, #0x0
 8001f06:      	strd	r0, r1, [sp, #16]
 8001f0a:      	ldr	r0, [r6, #-16]
 8001f0e:      	cmp	r0, #0x1
 8001f10:      	beq	#-0x22 <$t.45+0x46>
 8001f12:      	ldrd	r0, r1, [sp, #32]
 8001f16:      	cmp	r0, r1
 8001f18:      	beq	#0xc6 <$t.45+0x136>
 8001f1a:      	add.w	r1, r0, #0x8
 8001f1e:      	str	r1, [sp, #0x20]
 8001f20:      	adds	r1, r0, #0x4
 8001f22:      	ldr	r0, [r0]
 8001f24:      	ldr	r2, [r1]
 8001f26:      	mov	r1, r8
 8001f28:      	blx	r2
 8001f2a:      	cmp	r0, #0x0
 8001f2c:      	bne	#0x86 <$t.45+0x10a>
 8001f2e:      	cmp	r10, r4
 8001f30:      	bhs	#0x6a <$t.45+0xf2>
 8001f32:      	ldrd	r0, r3, [sp, #24]
 8001f36:      	add.w	r2, r11, r5, lsl #3
 8001f3a:      	ldrd	r1, r2, [r2, #8]
 8001f3e:      	ldr	r3, [r3, #0xc]
 8001f40:      	blx	r3
 8001f42:      	adds	r6, #0x24
 8001f44:      	cmp	r0, #0x0
 8001f46:      	mov	r5, r10
 8001f48:      	beq.w	#-0x110 <core::fmt::write::hd3be2acfbcfb0dbb+0x68>
 8001f4c:      	b	#0x66 <$t.45+0x10a>
 8001f4e:      	ldrd	r11, r9, [r2]
 8001f52:      	cmp	r6, r9
 8001f54:      	it	hi
 8001f56:      	movhi	r6, r9
 8001f58:      	cbz	r6, #0x3e
 8001f5a:      	ldrd	r3, r2, [r11]
 8001f5e:      	ldr	r7, [r1, #0xc]
 8001f60:      	mov	r1, r3
 8001f62:      	blx	r7
 8001f64:      	cbnz	r0, #0x4e
 8001f66:      	movs	r7, #0x0
 8001f68:      	mov	r4, sp
 8001f6a:      	add.w	r1, r5, r7, lsl #3
 8001f6e:      	ldr.w	r0, [r5, r7, lsl #3]
 8001f72:      	ldr	r2, [r1, #0x4]
 8001f74:      	mov	r1, r4
 8001f76:      	blx	r2
 8001f78:      	cbnz	r0, #0x3a
 8001f7a:      	add.w	r10, r7, #0x1
 8001f7e:      	cmp	r10, r6
 8001f80:      	bhs	#0x1a <$t.45+0xf2>
 8001f82:      	ldrd	r0, r3, [sp, #24]
 8001f86:      	add.w	r2, r11, r7, lsl #3
 8001f8a:      	ldrd	r1, r2, [r2, #8]
 8001f8e:      	ldr	r3, [r3, #0xc]
 8001f90:      	blx	r3
 8001f92:      	cmp	r0, #0x0
 8001f94:      	mov	r7, r10
 8001f96:      	beq	#-0x30 <$t.45+0xbe>
 8001f98:      	b	#0x1a <$t.45+0x10a>
 8001f9a:      	mov.w	r10, #0x0
 8001f9e:      	cmp	r9, r10
 8001fa0:      	bls	#0x1a <$t.45+0x112>
 8001fa2:      	add.w	r2, r11, r10, lsl #3
 8001fa6:      	ldrd	r0, r3, [sp, #24]
 8001faa:      	ldr.w	r1, [r11, r10, lsl #3]
 8001fae:      	ldr	r2, [r2, #0x4]
 8001fb0:      	ldr	r3, [r3, #0xc]
 8001fb2:      	blx	r3
 8001fb4:      	cbz	r0, #0x6
 8001fb6:      	movs	r0, #0x1
 8001fb8:      	add	sp, #0x34
 8001fba:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 8001fbe:      	movs	r0, #0x0
 8001fc0:      	add	sp, #0x34
 8001fc2:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 8001fc6:      	movw	r0, #0x2988
 8001fca:      	movt	r0, #0x800
 8001fce:      	bl	#-0x1154
 8001fd2:      	trap
 8001fd4:      	movw	r0, #0x2998
 8001fd8:      	movt	r0, #0x800
 8001fdc:      	bl	#-0x1162
 8001fe0:      	trap
 8001fe2:      	movw	r0, #0x28d8
 8001fe6:      	movt	r0, #0x800
 8001fea:      	bl	#-0xd9c
 8001fee:      	trap

08001ff0 core::fmt::ArgumentV1::show_usize::h17e5bffd18a6643c:
 8001ff0:      	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8001ff4:      	sub	sp, #0x2c
 8001ff6:      	ldr	r2, [r0]
 8001ff8:      	movw	r0, #0x2710
 8001ffc:      	movw	r9, #0x851f
 8002000:      	mov	r12, r1
 8002002:      	cmp	r2, r0
 8002004:      	movw	r0, #0x270a
 8002008:      	movw	r8, #0xff9c
 800200c:      	movt	r9, #0x51eb
 8002010:      	movt	r0, #0x800
 8002014:      	blo	#0x74 <core::fmt::ArgumentV1::show_usize::h17e5bffd18a6643c+0x9c>
 8002016:      	movw	lr, #0x1759
 800201a:      	movw	r10, #0xd8f0
 800201e:      	movw	r7, #0xe0ff
 8002022:      	add.w	r11, sp, #0x4
 8002026:      	movs	r1, #0x0
 8002028:      	movt	lr, #0xd1b7
 800202c:      	movt	r10, #0xffff
 8002030:      	movt	r7, #0x5f5
 8002034:      	umull	r3, r4, r2, lr
 8002038:      	cmp	r2, r7
 800203a:      	lsr.w	r3, r4, #0xd
 800203e:      	mla	r4, r3, r10, r2
 8002042:      	mov	r2, r3
 8002044:      	uxth	r5, r4
 8002046:      	umull	r5, r6, r5, r9
 800204a:      	lsr.w	r5, r6, #0x5
 800204e:      	add.w	r6, r11, r1
 8002052:      	mla	r4, r5, r8, r4
 8002056:      	ldrh.w	r5, [r0, r5, lsl #1]
 800205a:      	sub.w	r1, r1, #0x4
 800205e:      	strh.w	r5, [r6, #0x23]
 8002062:      	uxth	r4, r4
 8002064:      	ldrh.w	r4, [r0, r4, lsl #1]
 8002068:      	strh.w	r4, [r6, #0x25]
 800206c:      	bhi	#-0x3c <core::fmt::ArgumentV1::show_usize::h17e5bffd18a6643c+0x44>
 800206e:      	add.w	lr, r1, #0x27
 8002072:      	mov	r2, r3
 8002074:      	cmp	r2, #0x63
 8002076:      	bgt	#0x1a <core::fmt::ArgumentV1::show_usize::h17e5bffd18a6643c+0xa4>
 8002078:      	mov	r1, r2
 800207a:      	cmp	r1, #0xa
 800207c:      	blt	#0x34 <core::fmt::ArgumentV1::show_usize::h17e5bffd18a6643c+0xc4>
 800207e:      	ldrh.w	r0, [r0, r1, lsl #1]
 8002082:      	sub.w	r2, lr, #0x2
 8002086:      	add	r1, sp, #0x4
 8002088:      	strh	r0, [r1, r2]
 800208a:      	b	#0x32 <core::fmt::ArgumentV1::show_usize::h17e5bffd18a6643c+0xd0>
 800208c:      	mov.w	lr, #0x27
 8002090:      	cmp	r2, #0x63
 8002092:      	ble	#-0x1e <core::fmt::ArgumentV1::show_usize::h17e5bffd18a6643c+0x88>
 8002094:      	uxth	r1, r2
 8002096:      	sub.w	lr, lr, #0x2
 800209a:      	umull	r1, r3, r1, r9
 800209e:      	lsrs	r1, r3, #0x5
 80020a0:      	add	r3, sp, #0x4
 80020a2:      	mla	r2, r1, r8, r2
 80020a6:      	uxth	r2, r2
 80020a8:      	ldrh.w	r2, [r0, r2, lsl #1]
 80020ac:      	strh.w	r2, [r3, lr]
 80020b0:      	cmp	r1, #0xa
 80020b2:      	bge	#-0x38 <core::fmt::ArgumentV1::show_usize::h17e5bffd18a6643c+0x8e>
 80020b4:      	sub.w	r2, lr, #0x1
 80020b8:      	add.w	r0, r1, #0x30
 80020bc:      	add	r1, sp, #0x4
 80020be:      	strb	r0, [r1, r2]
 80020c0:      	rsb.w	r0, r2, #0x27
 80020c4:      	str	r0, [sp]
 80020c6:      	add	r0, sp, #0x4
 80020c8:      	movw	r1, #0x3c45
 80020cc:      	adds	r3, r0, r2
 80020ce:      	movt	r1, #0x800
 80020d2:      	mov	r0, r12
 80020d4:      	movs	r2, #0x0
 80020d6:      	bl	#-0x10ee
 80020da:      	add	sp, #0x2c
 80020dc:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

080020e0 core::unicode::bool_trie::BoolTrie::lookup::h0717d30630e63cca:
 80020e0:      	push	{r7, lr}
 80020e2:      	cmp.w	r0, #0x800
 80020e6:      	bhs	#0x12 <core::unicode::bool_trie::BoolTrie::lookup::h0717d30630e63cca+0x1c>
 80020e8:      	mvn	r1, #0x7
 80020ec:      	movw	r2, #0x29c8
 80020f0:      	and.w	r1, r1, r0, lsr #3
 80020f4:      	movt	r2, #0x800
 80020f8:      	add	r1, r2
 80020fa:      	b	#0x74 <core::unicode::bool_trie::BoolTrie::lookup::h0717d30630e63cca+0x92>
 80020fc:      	cmp.w	r0, #0x10000
 8002100:      	bhs	#0x28 <core::unicode::bool_trie::BoolTrie::lookup::h0717d30630e63cca+0x4c>
 8002102:      	mvn	r1, #0x1f
 8002106:      	add.w	r1, r1, r0, lsr #6
 800210a:      	lsrs	r2, r1, #0x5
 800210c:      	cmp	r2, #0x1e
 800210e:      	bhi	#0x96 <core::unicode::bool_trie::BoolTrie::lookup::h0717d30630e63cca+0xc8>
 8002110:      	movw	r2, #0x29c8
 8002114:      	movt	r2, #0x800
 8002118:      	add	r1, r2
 800211a:      	ldrb.w	r1, [r1, #0x118]
 800211e:      	cmp	r1, #0x49
 8002120:      	bhi	#0x96 <core::unicode::bool_trie::BoolTrie::lookup::h0717d30630e63cca+0xda>
 8002122:      	movw	r2, #0x3570
 8002126:      	movt	r2, #0x800
 800212a:      	b	#0x40 <core::unicode::bool_trie::BoolTrie::lookup::h0717d30630e63cca+0x8e>
 800212c:      	mvn	r1, #0xf
 8002130:      	add.w	r1, r1, r0, lsr #12
 8002134:      	cmp.w	r1, #0x100
 8002138:      	bhs	#0x8e <core::unicode::bool_trie::BoolTrie::lookup::h0717d30630e63cca+0xea>
 800213a:      	movw	r2, #0x29c8
 800213e:      	movt	r2, #0x800
 8002142:      	add	r1, r2
 8002144:      	ubfx	r2, r0, #0x6, #0x6
 8002148:      	ldrb.w	r1, [r1, #0x4f8]
 800214c:      	orr.w	r1, r2, r1, lsl #6
 8002150:      	movs	r2, #0x0
 8002152:      	cmp.w	r2, r1, lsr #9
 8002156:      	bne	#0x82 <core::unicode::bool_trie::BoolTrie::lookup::h0717d30630e63cca+0xfc>
 8002158:      	movw	r2, #0x37c0
 800215c:      	movt	r2, #0x800
 8002160:      	ldrb	r1, [r2, r1]
 8002162:      	cmp	r1, #0x39
 8002164:      	bhi	#0x86 <core::unicode::bool_trie::BoolTrie::lookup::h0717d30630e63cca+0x10e>
 8002166:      	movw	r2, #0x39c0
 800216a:      	movt	r2, #0x800
 800216e:      	add.w	r1, r2, r1, lsl #3
 8002172:      	and	r0, r0, #0x3f
 8002176:      	mov.w	lr, #0x1
 800217a:      	rsb.w	r2, r0, #0x20
 800217e:      	ldrd	r12, r3, [r1]
 8002182:      	subs.w	r1, r0, #0x20
 8002186:      	lsl.w	r0, lr, r0
 800218a:      	lsr.w	r2, lr, r2
 800218e:      	it	pl
 8002190:      	lslpl.w	r2, lr, r1
 8002194:      	it	pl
 8002196:      	movpl	r0, #0x0
 8002198:      	and.w	r1, r3, r2
 800219c:      	and.w	r0, r0, r12
 80021a0:      	orrs	r0, r1
 80021a2:      	it	ne
 80021a4:      	movne	r0, #0x1
 80021a6:      	pop	{r7, pc}
 80021a8:      	movw	r0, #0x34f8
 80021ac:      	mov.w	r2, #0x3e0
 80021b0:      	movt	r0, #0x800
 80021b4:      	bl	#-0x133a
 80021b8:      	trap
 80021ba:      	movw	r0, #0x3508
 80021be:      	movs	r2, #0x4a
 80021c0:      	movt	r0, #0x800
 80021c4:      	bl	#-0x134a
 80021c8:      	trap
 80021ca:      	movw	r0, #0x3518
 80021ce:      	mov.w	r2, #0x100
 80021d2:      	movt	r0, #0x800
 80021d6:      	bl	#-0x135c
 80021da:      	trap
 80021dc:      	movw	r0, #0x3528
 80021e0:      	mov.w	r2, #0x200
 80021e4:      	movt	r0, #0x800
 80021e8:      	bl	#-0x136e
 80021ec:      	trap
 80021ee:      	movw	r0, #0x3538
 80021f2:      	movs	r2, #0x3a
 80021f4:      	movt	r0, #0x800
 80021f8:      	bl	#-0x137e
 80021fc:      	trap

080021fe core::unicode::printable::check::h9be3697e87068778:
 80021fe:      	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8002202:      	sub	sp, #0xc
 8002204:      	ldr	r6, [sp, #0x30]
 8002206:      	add.w	r11, r1, r2, lsl #1
 800220a:      	uxth	r2, r0
 800220c:      	mov.w	lr, #0x0
 8002210:      	lsr.w	r9, r2, #0x8
 8002214:      	str	r2, [sp, #0x4]
 8002216:      	str	r3, [sp, #0x8]
 8002218:      	ldrb	r7, [r1, #0x1]
 800221a:      	mov	r2, lr
 800221c:      	ldrb	r4, [r1]
 800221e:      	adds	r1, #0x2
 8002220:      	add	lr, r7
 8002222:      	cmp	r4, r9
 8002224:      	bne	#0x54 <core::unicode::printable::check::h9be3697e87068778+0x7e>
 8002226:      	cmp	lr, r2
 8002228:      	blo	#0xa8 <core::unicode::printable::check::h9be3697e87068778+0xd6>
 800222a:      	mov	r10, r6
 800222c:      	cmp	lr, r6
 800222e:      	bhi	#0xac <core::unicode::printable::check::h9be3697e87068778+0xe0>
 8002230:      	add.w	r8, r3, r2
 8002234:      	add.w	r2, r8, r7
 8002238:      	cbz	r7, #0x48
 800223a:      	mov	r4, r8
 800223c:      	uxtb	r6, r0
 800223e:      	ldrb	r12, [r4], #1
 8002242:      	cmp	r12, r6
 8002244:      	beq	#0x80 <core::unicode::printable::check::h9be3697e87068778+0xca>
 8002246:      	cmp	r4, r2
 8002248:      	beq	#0x38 <core::unicode::printable::check::h9be3697e87068778+0x86>
 800224a:      	ldrb.w	r4, [r8, #0x1]
 800224e:      	cmp	r4, r6
 8002250:      	beq	#0x74 <core::unicode::printable::check::h9be3697e87068778+0xca>
 8002252:      	add.w	r4, r8, #0x2
 8002256:      	cmp	r4, r2
 8002258:      	beq	#0x28 <core::unicode::printable::check::h9be3697e87068778+0x86>
 800225a:      	ldrb.w	r4, [r8, #0x2]
 800225e:      	cmp	r4, r6
 8002260:      	beq	#0x64 <core::unicode::printable::check::h9be3697e87068778+0xca>
 8002262:      	add.w	r4, r8, #0x3
 8002266:      	cmp	r4, r2
 8002268:      	beq	#0x18 <core::unicode::printable::check::h9be3697e87068778+0x86>
 800226a:      	ldrb.w	r5, [r8, #0x3]
 800226e:      	add.w	r4, r8, #0x4
 8002272:      	subs	r7, #0x4
 8002274:      	cmp	r5, r6
 8002276:      	mov	r8, r4
 8002278:      	bne	#-0x44 <core::unicode::printable::check::h9be3697e87068778+0x3a>
 800227a:      	b	#0x4a <core::unicode::printable::check::h9be3697e87068778+0xca>
 800227c:      	bhi	#0xc <core::unicode::printable::check::h9be3697e87068778+0x8e>
 800227e:      	cmp	r1, r11
 8002280:      	bne	#-0x6c <core::unicode::printable::check::h9be3697e87068778+0x1a>
 8002282:      	b	#0x6 <core::unicode::printable::check::h9be3697e87068778+0x8e>
 8002284:      	ldr	r3, [sp, #0x8]
 8002286:      	cmp	r1, r11
 8002288:      	mov	r6, r10
 800228a:      	bne	#-0x76 <core::unicode::printable::check::h9be3697e87068778+0x1a>
 800228c:      	ldrd	r6, r0, [sp, #52]
 8002290:      	ldr	r5, [sp, #0x4]
 8002292:      	adds	r1, r6, r0
 8002294:      	movs	r0, #0x1
 8002296:      	mov	r7, r6
 8002298:      	ldrb	r2, [r7], #1
 800229c:      	sxtb	r3, r2
 800229e:      	cmp	r3, #0x0
 80022a0:      	bmi	#0xe <core::unicode::printable::check::h9be3697e87068778+0xb4>
 80022a2:      	mov	r6, r7
 80022a4:      	subs	r5, r5, r2
 80022a6:      	bmi	#0x20 <core::unicode::printable::check::h9be3697e87068778+0xcc>
 80022a8:      	eor	r0, r0, #0x1
 80022ac:      	cmp	r6, r1
 80022ae:      	bne	#-0x1c <core::unicode::printable::check::h9be3697e87068778+0x98>
 80022b0:      	b	#0x16 <core::unicode::printable::check::h9be3697e87068778+0xcc>
 80022b2:      	cmp	r7, r1
 80022b4:      	beq	#0x30 <core::unicode::printable::check::h9be3697e87068778+0xea>
 80022b6:      	ldrb	r2, [r6, #0x1]
 80022b8:      	and	r3, r3, #0x7f
 80022bc:      	adds	r6, #0x2
 80022be:      	orr.w	r2, r2, r3, lsl #8
 80022c2:      	subs	r5, r5, r2
 80022c4:      	bpl	#-0x20 <core::unicode::printable::check::h9be3697e87068778+0xaa>
 80022c6:      	b	#0x0 <core::unicode::printable::check::h9be3697e87068778+0xcc>
 80022c8:      	movs	r0, #0x0
 80022ca:      	and	r0, r0, #0x1
 80022ce:      	add	sp, #0xc
 80022d0:      	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80022d4:      	mov	r0, r2
 80022d6:      	mov	r1, lr
 80022d8:      	bl	#-0x1052
 80022dc:      	trap
 80022de:      	mov	r0, lr
 80022e0:      	mov	r1, r10
 80022e2:      	bl	#-0x14ac
 80022e6:      	trap
 80022e8:      	movw	r0, #0x28d8
 80022ec:      	movt	r0, #0x800
 80022f0:      	bl	#-0x10a2
 80022f4:      	trap

080022f6 <&T as core::fmt::Display>::fmt::h5503d795cc8c3ac6:
 80022f6:      	push.w	{r4, r5, r6, r7, r8, lr}
 80022fa:      	sub	sp, #0x18
 80022fc:      	ldr.w	lr, [r0]
 8002300:      	mov	r2, sp
 8002302:      	ldrd	r12, r1, [r1, #24]
 8002306:      	mov	r3, r2
 8002308:      	ldm.w	lr, {r0, r4, r5, r6, r7, r8}
 800230c:      	stm.w	r3, {r0, r4, r5, r6, r7, r8}
 8002310:      	mov	r0, r12
 8002312:      	bl	#-0x542
 8002316:      	add	sp, #0x18
 8002318:      	pop.w	{r4, r5, r6, r7, r8, pc}

0800231c <&T as core::fmt::Display>::fmt::h71ca7bd6e97fa6e9:
 800231c:      	ldr	r0, [r0]
 800231e:      	mov	r3, r1
 8002320:      	ldrd	r1, r2, [r0]
 8002324:      	mov	r0, r3
 8002326:      	b.w	#-0x105a <core::fmt::Formatter::pad::hf80fa9686b71b608>

0800232a core::str::traits::<impl core::slice::SliceIndex<str> for core::ops::range::Range<usize>>::index::{{closure}}::ha1ae82f740a15a36:
 800232a:      	ldm.w	r0, {r1, r2, r3}
 800232e:      	ldr	r3, [r3]
 8002330:      	ldrd	r0, r1, [r1]
 8002334:      	ldr	r2, [r2]
 8002336:      	bl	#-0xd6c
 800233a:      	trap

0800233c Reset:
 800233c:      	bl	#0xaa
 8002340:      	movw	r0, #0x4
 8002344:      	movw	r1, #0x0
 8002348:      	movt	r0, #0x2000
 800234c:      	movt	r1, #0x2000
 8002350:      	cmp	r1, r0
 8002352:      	bhs	#0x28 <Reset+0x42>
 8002354:      	movw	r1, #0x0
 8002358:      	movs	r2, #0x0
 800235a:      	movt	r1, #0x2000
 800235e:      	str	r2, [r1], #4
 8002362:      	cmp	r1, r0
 8002364:      	itt	lo
 8002366:      	strlo	r2, [r1], #4
 800236a:      	cmplo	r1, r0
 800236c:      	bhs	#0xe <Reset+0x42>
 800236e:      	str	r2, [r1], #4
 8002372:      	cmp	r1, r0
 8002374:      	bhs	#0x6 <Reset+0x42>
 8002376:      	str	r2, [r1], #4
 800237a:      	cmp	r1, r0
 800237c:      	blo	#-0x22 <Reset+0x22>
 800237e:      	movw	r0, #0x0
 8002382:      	movw	r1, #0x0
 8002386:      	movt	r0, #0x2000
 800238a:      	movt	r1, #0x2000
 800238e:      	cmp	r1, r0
 8002390:      	bhs	#0x38 <Reset+0x90>
 8002392:      	movw	r1, #0x3c8c
 8002396:      	movw	r2, #0x0
 800239a:      	movt	r1, #0x800
 800239e:      	movt	r2, #0x2000
 80023a2:      	ldr	r3, [r1]
 80023a4:      	str	r3, [r2], #4
 80023a8:      	cmp	r2, r0
 80023aa:      	bhs	#0x1e <Reset+0x90>
 80023ac:      	ldr	r3, [r1, #0x4]
 80023ae:      	str	r3, [r2], #4
 80023b2:      	cmp	r2, r0
 80023b4:      	ittt	lo
 80023b6:      	ldrlo	r3, [r1, #0x8]
 80023b8:      	strlo	r3, [r2], #4
 80023bc:      	cmplo	r2, r0
 80023be:      	bhs	#0xa <Reset+0x90>
 80023c0:      	ldr	r3, [r1, #0xc]
 80023c2:      	adds	r1, #0x10
 80023c4:      	str	r3, [r2], #4
 80023c8:      	cmp	r2, r0
 80023ca:      	blo	#-0x2c <Reset+0x66>
 80023cc:      	movw	r0, #0xed88
 80023d0:      	movt	r0, #0xe000
 80023d4:      	ldr	r1, [r0]
 80023d6:      	orr	r1, r1, #0xf00000
 80023da:      	str	r1, [r0]
 80023dc:      	bl	#0x2
 80023e0:      	trap

080023e2 ResetTrampoline:
 80023e2:      	bl	#-0x1870
 80023e6:      	trap

080023e8 DefaultHandler_:
 80023e8:      	b	#-0x4 <DefaultHandler_>

080023e9 UsageFault:
 80023e9:      	strb	r7, [r4, #0x3]

080023ea DefaultPreInit:
 80023ea:      	bx	lr

080023eb __pre_init:
 80023eb:      	ldrh	r7, [r0, #0x22]

080023ec rust_begin_unwind:
 80023ec:      	sub	sp, #0x30
 80023ee:      	str	r0, [sp, #0x4]
 80023f0:      	bl	#0x24e
 80023f4:      	movs	r0, #0x3
 80023f6:      	add	r1, sp, #0x18
 80023f8:      	str	r0, [sp, #0x20]
 80023fa:      	movs	r0, #0x4
 80023fc:      	str	r0, [sp, #0x1c]
 80023fe:      	movw	r0, #0x3be2
 8002402:      	movt	r0, #0x800
 8002406:      	movs	r4, #0x1
 8002408:      	str	r0, [sp, #0x18]
 800240a:      	movs	r0, #0x1
 800240c:      	bl	#0x22a
 8002410:      	adds	r1, r0, #0x1
 8002412:      	beq	#0x3c <rust_begin_unwind+0x66>
 8002414:      	str	r0, [sp, #0x8]
 8002416:      	movw	r0, #0x2459
 800241a:      	movt	r0, #0x800
 800241e:      	str	r4, [sp, #0x2c]
 8002420:      	str	r0, [sp, #0x10]
 8002422:      	add	r0, sp, #0x4
 8002424:      	str	r0, [sp, #0xc]
 8002426:      	add	r0, sp, #0x8
 8002428:      	str	r0, [sp, #0x14]
 800242a:      	add	r0, sp, #0xc
 800242c:      	str	r0, [sp, #0x28]
 800242e:      	movs	r0, #0x0
 8002430:      	strd	r0, r0, [sp, #32]
 8002434:      	movs	r0, #0x2
 8002436:      	str	r0, [sp, #0x1c]
 8002438:      	movw	r0, #0x3c48
 800243c:      	movt	r0, #0x800
 8002440:      	movw	r1, #0x3c58
 8002444:      	str	r0, [sp, #0x18]
 8002446:      	add	r0, sp, #0x14
 8002448:      	add	r2, sp, #0x18
 800244a:      	movt	r1, #0x800
 800244e:      	bl	#-0x67e
 8002452:      	bl	#0x1e8
 8002456:      	b	#-0x4 <rust_begin_unwind+0x6a>

08002458 <&T as core::fmt::Display>::fmt::h1445594c2ab1c078:
 8002458:      	push	{r4, r5, r6, lr}
 800245a:      	sub	sp, #0x38
 800245c:      	mov	r4, r1
 800245e:      	ldrd	r2, r1, [r1, #24]
 8002462:      	ldr	r3, [r1, #0xc]
 8002464:      	movw	r1, #0x3c0c
 8002468:      	ldr	r6, [r0]
 800246a:      	movt	r1, #0x800
 800246e:      	mov	r0, r2
 8002470:      	movs	r2, #0xc
 8002472:      	blx	r3
 8002474:      	cbz	r0, #0x6
 8002476:      	movs	r5, #0x1
 8002478:      	mov	r0, r5
 800247a:      	add	sp, #0x38
 800247c:      	pop	{r4, r5, r6, pc}
 800247e:      	ldr	r0, [r6, #0x8]
 8002480:      	cbz	r0, #0xa
 8002482:      	str	r0, [sp, #0x4]
 8002484:      	movw	r0, #0x22f7
 8002488:      	movt	r0, #0x800
 800248c:      	b	#0x2a <<&T as core::fmt::Display>::fmt::h1445594c2ab1c078+0x62>
 800248e:      	ldrd	r5, r0, [r6]
 8002492:      	ldr	r1, [r0, #0xc]
 8002494:      	mov	r0, r5
 8002496:      	blx	r1
 8002498:      	movw	r2, #0x94d9
 800249c:      	movt	r2, #0x1110
 80024a0:      	eors	r1, r2
 80024a2:      	movw	r2, #0x9764
 80024a6:      	movt	r2, #0x70b0
 80024aa:      	eors	r0, r2
 80024ac:      	orrs	r0, r1
 80024ae:      	bne	#0x36 <<&T as core::fmt::Display>::fmt::h1445594c2ab1c078+0x90>
 80024b0:      	movw	r0, #0x231d
 80024b4:      	str	r5, [sp, #0x4]
 80024b6:      	movt	r0, #0x800
 80024ba:      	str	r0, [sp, #0xc]
 80024bc:      	add	r0, sp, #0x4
 80024be:      	str	r0, [sp, #0x8]
 80024c0:      	movs	r5, #0x1
 80024c2:      	add	r2, sp, #0x8
 80024c4:      	ldr	r0, [r4, #0x18]
 80024c6:      	ldr	r1, [r4, #0x1c]
 80024c8:      	str	r5, [sp, #0x34]
 80024ca:      	str	r2, [sp, #0x30]
 80024cc:      	movs	r2, #0x0
 80024ce:      	str	r2, [sp, #0x2c]
 80024d0:      	str	r2, [sp, #0x28]
 80024d2:      	movs	r2, #0x2
 80024d4:      	str	r2, [sp, #0x24]
 80024d6:      	movw	r2, #0x3c18
 80024da:      	movt	r2, #0x800
 80024de:      	str	r2, [sp, #0x20]
 80024e0:      	add	r2, sp, #0x20
 80024e2:      	bl	#-0x712
 80024e6:      	cbnz	r0, #0x4c
 80024e8:      	movw	r0, #0xebf
 80024ec:      	add.w	r1, r6, #0x18
 80024f0:      	movt	r0, #0x800
 80024f4:      	movs	r2, #0x3
 80024f6:      	str	r0, [sp, #0x1c]
 80024f8:      	add	r3, sp, #0x8
 80024fa:      	strd	r0, r1, [sp, #20]
 80024fe:      	add.w	r0, r6, #0x14
 8002502:      	str	r0, [sp, #0x10]
 8002504:      	movw	r0, #0x1915
 8002508:      	movt	r0, #0x800
 800250c:      	str	r0, [sp, #0xc]
 800250e:      	add.w	r0, r6, #0xc
 8002512:      	str	r0, [sp, #0x8]
 8002514:      	ldrd	r0, r1, [r4, #24]
 8002518:      	str	r2, [sp, #0x34]
 800251a:      	str	r3, [sp, #0x30]
 800251c:      	movs	r3, #0x0
 800251e:      	str	r3, [sp, #0x2c]
 8002520:      	strd	r2, r3, [sp, #36]
 8002524:      	movw	r2, #0x3c28
 8002528:      	movt	r2, #0x800
 800252c:      	str	r2, [sp, #0x20]
 800252e:      	add	r2, sp, #0x20
 8002530:      	bl	#-0x760
 8002534:      	mov	r5, r0
 8002536:      	mov	r0, r5
 8002538:      	add	sp, #0x38
 800253a:      	pop	{r4, r5, r6, pc}

0800253c <&mut W as core::fmt::Write>::write_char::h70ed4dc4722068fc:
 800253c:      	push.w	{r4, r5, r6, r7, r8, lr}
 8002540:      	sub	sp, #0x10
 8002542:      	ldr	r0, [r0]
 8002544:      	movs	r2, #0x0
 8002546:      	cmp	r1, #0x7f
 8002548:      	str	r2, [sp]
 800254a:      	bhi	#0x6 <<&mut W as core::fmt::Write>::write_char::h70ed4dc4722068fc+0x18>
 800254c:      	strb.w	r1, [sp]
 8002550:      	movs	r4, #0x1
 8002552:      	b	#0x76 <<&mut W as core::fmt::Write>::write_char::h70ed4dc4722068fc+0x90>
 8002554:      	cmp.w	r2, r1, lsr #11
 8002558:      	bne	#0x16 <<&mut W as core::fmt::Write>::write_char::h70ed4dc4722068fc+0x36>
 800255a:      	movs	r4, #0x2
 800255c:      	lsrs	r2, r1, #0x6
 800255e:      	bfi	r1, r4, #6, #26
 8002562:      	strb.w	r1, [sp, #0x1]
 8002566:      	movs	r1, #0x6
 8002568:      	bfi	r2, r1, #5, #27
 800256c:      	strb.w	r2, [sp]
 8002570:      	b	#0x58 <<&mut W as core::fmt::Write>::write_char::h70ed4dc4722068fc+0x90>
 8002572:      	movs	r2, #0x0
 8002574:      	cmp.w	r2, r1, lsr #16
 8002578:      	bne	#0x24 <<&mut W as core::fmt::Write>::write_char::h70ed4dc4722068fc+0x64>
 800257a:      	movs	r2, #0x2
 800257c:      	mov	r3, r1
 800257e:      	bfi	r3, r2, #6, #26
 8002582:      	strb.w	r3, [sp, #0x2]
 8002586:      	lsrs	r3, r1, #0x6
 8002588:      	lsrs	r1, r1, #0xc
 800258a:      	bfi	r3, r2, #6, #26
 800258e:      	movs	r2, #0xe
 8002590:      	strb.w	r3, [sp, #0x1]
 8002594:      	bfi	r1, r2, #4, #28
 8002598:      	strb.w	r1, [sp]
 800259c:      	movs	r4, #0x3
 800259e:      	b	#0x2a <<&mut W as core::fmt::Write>::write_char::h70ed4dc4722068fc+0x90>
 80025a0:      	movs	r2, #0x2
 80025a2:      	mov	r3, r1
 80025a4:      	bfi	r3, r2, #6, #26
 80025a8:      	strb.w	r3, [sp, #0x3]
 80025ac:      	lsrs	r3, r1, #0x6
 80025ae:      	movs	r4, #0x4
 80025b0:      	bfi	r3, r2, #6, #26
 80025b4:      	strb.w	r3, [sp, #0x2]
 80025b8:      	lsrs	r3, r1, #0xc
 80025ba:      	bfi	r3, r2, #6, #26
 80025be:      	movs	r2, #0xf0
 80025c0:      	strb.w	r3, [sp, #0x1]
 80025c4:      	orr.w	r1, r2, r1, lsr #18
 80025c8:      	strb.w	r1, [sp]
 80025cc:      	ldr	r6, [r0]
 80025ce:      	mov	r0, sp
 80025d0:      	add	r1, sp, #0x4
 80025d2:      	str	r4, [sp, #0xc]
 80025d4:      	strd	r6, r0, [sp, #4]
 80025d8:      	movs	r0, #0x5
 80025da:      	bl	#0x5c
 80025de:      	cbz	r0, #0x22
 80025e0:      	add.w	r8, sp, #0x4
 80025e4:      	mov	r7, sp
 80025e6:      	cmp	r4, r0
 80025e8:      	blo	#0x20 <<&mut W as core::fmt::Write>::write_char::h70ed4dc4722068fc+0xd0>
 80025ea:      	mov	r5, r0
 80025ec:      	str	r0, [sp, #0xc]
 80025ee:      	subs	r0, r4, r0
 80025f0:      	mov	r1, r8
 80025f2:      	add	r7, r0
 80025f4:      	movs	r0, #0x5
 80025f6:      	strd	r6, r7, [sp, #4]
 80025fa:      	bl	#0x3c
 80025fe:      	cmp	r0, #0x0
 8002600:      	mov	r4, r5
 8002602:      	bne	#-0x20 <<&mut W as core::fmt::Write>::write_char::h70ed4dc4722068fc+0xaa>
 8002604:      	movs	r0, #0x0
 8002606:      	add	sp, #0x10
 8002608:      	pop.w	{r4, r5, r6, r7, r8, pc}
 800260c:      	movs	r0, #0x1
 800260e:      	add	sp, #0x10
 8002610:      	pop.w	{r4, r5, r6, r7, r8, pc}

08002614 <&mut W as core::fmt::Write>::write_fmt::hf1392da2b316a15e:
 8002614:      	push	{r4, r5, r6, lr}
 8002616:      	sub	sp, #0x20
 8002618:      	ldr	r0, [r0]
 800261a:      	add	r2, sp, #0x8
 800261c:      	str	r0, [sp, #0x4]
 800261e:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 8002622:      	mov	r0, r2
 8002624:      	movw	r1, #0x3c58
 8002628:      	movt	r1, #0x800
 800262c:      	stm.w	r0, {r3, r4, r5, r6, r12, lr}
 8002630:      	add	r0, sp, #0x4
 8002632:      	bl	#-0x862
 8002636:      	add	sp, #0x20
 8002638:      	pop	{r4, r5, r6, pc}

0800263a __syscall:
 800263a:      	bkpt	#0xab
 800263c:      	bx	lr

0800263e __bkpt:
 800263e:      	bkpt	#0x0
 8002640:      	bx	lr

08002642 __cpsid:
 8002642:      	cpsid i
 8002644:      	bx	lr

08002646 __cpsie:
 8002646:      	cpsie i
 8002648:      	bx	lr

0800264a __primask:
 800264a:      	mrs	r0, primask
 800264e:      	bx	lr

08002650 HardFaultTrampoline:
 8002650:      	mov	r0, lr
 8002652:      	movs	r1, #0x4
 8002654:      	tst	r0, r1
 8002656:      	bne	#0x4 <HardFaultTrampoline+0xe>
 8002658:      	mrs	r0, msp
 800265c:      	b	#0x4 <HardFault_>
 800265e:      	mrs	r0, psp
 8002662:      	b	#-0x2 <HardFault_>

08002664 HardFault_:
 8002664:      	b	#-0x4 <HardFault_>

08002665 HardFault:
 8002665:      	<unknown>
