
bomb:     file format elf32-i386


Disassembly of section .init:

080486e0 <_init>:
 80486e0:	55                   	push   %ebp
 80486e1:	89 e5                	mov    %esp,%ebp
 80486e3:	53                   	push   %ebx
 80486e4:	e8 00 00 00 00       	call   80486e9 <_init+0x9>
 80486e9:	5b                   	pop    %ebx
 80486ea:	81 c3 2f 2e 00 00    	add    $0x2e2f,%ebx
 80486f0:	83 bb 7c 00 00 00 00 	cmpl   $0x0,0x7c(%ebx)
 80486f7:	74 05                	je     80486fe <_init+0x1e>
 80486f9:	e8 02 79 fb f7       	call   0 <_init-0x80486e0>
 80486fe:	89 f6                	mov    %esi,%esi
 8048700:	e8 6b 02 00 00       	call   8048970 <frame_dummy>
 8048705:	e8 a6 0e 00 00       	call   80495b0 <__do_global_ctors_aux>
 804870a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804870d:	c9                   	leave  
 804870e:	c3                   	ret    

Disassembly of section .plt:

08048710 <__register_frame_info@plt-0x10>:
 8048710:	ff 35 1c b5 04 08    	pushl  0x804b51c
 8048716:	ff 25 20 b5 04 08    	jmp    *0x804b520
 804871c:	00 00                	add    %al,(%eax)
	...

08048720 <__register_frame_info@plt>:
 8048720:	ff 25 24 b5 04 08    	jmp    *0x804b524
 8048726:	68 00 00 00 00       	push   $0x0
 804872b:	e9 e0 ff ff ff       	jmp    8048710 <_init+0x30>

08048730 <close@plt>:
 8048730:	ff 25 28 b5 04 08    	jmp    *0x804b528
 8048736:	68 08 00 00 00       	push   $0x8
 804873b:	e9 d0 ff ff ff       	jmp    8048710 <_init+0x30>

08048740 <fprintf@plt>:
 8048740:	ff 25 2c b5 04 08    	jmp    *0x804b52c
 8048746:	68 10 00 00 00       	push   $0x10
 804874b:	e9 c0 ff ff ff       	jmp    8048710 <_init+0x30>

08048750 <tmpfile@plt>:
 8048750:	ff 25 30 b5 04 08    	jmp    *0x804b530
 8048756:	68 18 00 00 00       	push   $0x18
 804875b:	e9 b0 ff ff ff       	jmp    8048710 <_init+0x30>

08048760 <getenv@plt>:
 8048760:	ff 25 34 b5 04 08    	jmp    *0x804b534
 8048766:	68 20 00 00 00       	push   $0x20
 804876b:	e9 a0 ff ff ff       	jmp    8048710 <_init+0x30>

08048770 <signal@plt>:
 8048770:	ff 25 38 b5 04 08    	jmp    *0x804b538
 8048776:	68 28 00 00 00       	push   $0x28
 804877b:	e9 90 ff ff ff       	jmp    8048710 <_init+0x30>

08048780 <fflush@plt>:
 8048780:	ff 25 3c b5 04 08    	jmp    *0x804b53c
 8048786:	68 30 00 00 00       	push   $0x30
 804878b:	e9 80 ff ff ff       	jmp    8048710 <_init+0x30>

08048790 <bcopy@plt>:
 8048790:	ff 25 40 b5 04 08    	jmp    *0x804b540
 8048796:	68 38 00 00 00       	push   $0x38
 804879b:	e9 70 ff ff ff       	jmp    8048710 <_init+0x30>

080487a0 <rewind@plt>:
 80487a0:	ff 25 44 b5 04 08    	jmp    *0x804b544
 80487a6:	68 40 00 00 00       	push   $0x40
 80487ab:	e9 60 ff ff ff       	jmp    8048710 <_init+0x30>

080487b0 <system@plt>:
 80487b0:	ff 25 48 b5 04 08    	jmp    *0x804b548
 80487b6:	68 48 00 00 00       	push   $0x48
 80487bb:	e9 50 ff ff ff       	jmp    8048710 <_init+0x30>

080487c0 <__deregister_frame_info@plt>:
 80487c0:	ff 25 4c b5 04 08    	jmp    *0x804b54c
 80487c6:	68 50 00 00 00       	push   $0x50
 80487cb:	e9 40 ff ff ff       	jmp    8048710 <_init+0x30>

080487d0 <fgets@plt>:
 80487d0:	ff 25 50 b5 04 08    	jmp    *0x804b550
 80487d6:	68 58 00 00 00       	push   $0x58
 80487db:	e9 30 ff ff ff       	jmp    8048710 <_init+0x30>

080487e0 <sleep@plt>:
 80487e0:	ff 25 54 b5 04 08    	jmp    *0x804b554
 80487e6:	68 60 00 00 00       	push   $0x60
 80487eb:	e9 20 ff ff ff       	jmp    8048710 <_init+0x30>

080487f0 <__strtol_internal@plt>:
 80487f0:	ff 25 58 b5 04 08    	jmp    *0x804b558
 80487f6:	68 68 00 00 00       	push   $0x68
 80487fb:	e9 10 ff ff ff       	jmp    8048710 <_init+0x30>

08048800 <__libc_start_main@plt>:
 8048800:	ff 25 5c b5 04 08    	jmp    *0x804b55c
 8048806:	68 70 00 00 00       	push   $0x70
 804880b:	e9 00 ff ff ff       	jmp    8048710 <_init+0x30>

08048810 <printf@plt>:
 8048810:	ff 25 60 b5 04 08    	jmp    *0x804b560
 8048816:	68 78 00 00 00       	push   $0x78
 804881b:	e9 f0 fe ff ff       	jmp    8048710 <_init+0x30>

08048820 <fclose@plt>:
 8048820:	ff 25 64 b5 04 08    	jmp    *0x804b564
 8048826:	68 80 00 00 00       	push   $0x80
 804882b:	e9 e0 fe ff ff       	jmp    8048710 <_init+0x30>

08048830 <gethostbyname@plt>:
 8048830:	ff 25 68 b5 04 08    	jmp    *0x804b568
 8048836:	68 88 00 00 00       	push   $0x88
 804883b:	e9 d0 fe ff ff       	jmp    8048710 <_init+0x30>

08048840 <bzero@plt>:
 8048840:	ff 25 6c b5 04 08    	jmp    *0x804b56c
 8048846:	68 90 00 00 00       	push   $0x90
 804884b:	e9 c0 fe ff ff       	jmp    8048710 <_init+0x30>

08048850 <exit@plt>:
 8048850:	ff 25 70 b5 04 08    	jmp    *0x804b570
 8048856:	68 98 00 00 00       	push   $0x98
 804885b:	e9 b0 fe ff ff       	jmp    8048710 <_init+0x30>

08048860 <sscanf@plt>:
 8048860:	ff 25 74 b5 04 08    	jmp    *0x804b574
 8048866:	68 a0 00 00 00       	push   $0xa0
 804886b:	e9 a0 fe ff ff       	jmp    8048710 <_init+0x30>

08048870 <connect@plt>:
 8048870:	ff 25 78 b5 04 08    	jmp    *0x804b578
 8048876:	68 a8 00 00 00       	push   $0xa8
 804887b:	e9 90 fe ff ff       	jmp    8048710 <_init+0x30>

08048880 <fopen@plt>:
 8048880:	ff 25 7c b5 04 08    	jmp    *0x804b57c
 8048886:	68 b0 00 00 00       	push   $0xb0
 804888b:	e9 80 fe ff ff       	jmp    8048710 <_init+0x30>

08048890 <dup@plt>:
 8048890:	ff 25 80 b5 04 08    	jmp    *0x804b580
 8048896:	68 b8 00 00 00       	push   $0xb8
 804889b:	e9 70 fe ff ff       	jmp    8048710 <_init+0x30>

080488a0 <sprintf@plt>:
 80488a0:	ff 25 84 b5 04 08    	jmp    *0x804b584
 80488a6:	68 c0 00 00 00       	push   $0xc0
 80488ab:	e9 60 fe ff ff       	jmp    8048710 <_init+0x30>

080488b0 <socket@plt>:
 80488b0:	ff 25 88 b5 04 08    	jmp    *0x804b588
 80488b6:	68 c8 00 00 00       	push   $0xc8
 80488bb:	e9 50 fe ff ff       	jmp    8048710 <_init+0x30>

080488c0 <cuserid@plt>:
 80488c0:	ff 25 8c b5 04 08    	jmp    *0x804b58c
 80488c6:	68 d0 00 00 00       	push   $0xd0
 80488cb:	e9 40 fe ff ff       	jmp    8048710 <_init+0x30>

080488d0 <strcpy@plt>:
 80488d0:	ff 25 90 b5 04 08    	jmp    *0x804b590
 80488d6:	68 d8 00 00 00       	push   $0xd8
 80488db:	e9 30 fe ff ff       	jmp    8048710 <_init+0x30>

Disassembly of section .text:

080488e0 <_start>:
 80488e0:	31 ed                	xor    %ebp,%ebp
 80488e2:	5e                   	pop    %esi
 80488e3:	89 e1                	mov    %esp,%ecx
 80488e5:	83 e4 f8             	and    $0xfffffff8,%esp
 80488e8:	50                   	push   %eax
 80488e9:	54                   	push   %esp
 80488ea:	52                   	push   %edx
 80488eb:	68 e4 95 04 08       	push   $0x80495e4
 80488f0:	68 e0 86 04 08       	push   $0x80486e0
 80488f5:	51                   	push   %ecx
 80488f6:	56                   	push   %esi
 80488f7:	68 b0 89 04 08       	push   $0x80489b0
 80488fc:	e8 ff fe ff ff       	call   8048800 <__libc_start_main@plt>
 8048901:	f4                   	hlt    
 8048902:	90                   	nop
 8048903:	90                   	nop

08048904 <gcc2_compiled.>:
 8048904:	90 90 90 90 90 90 90 90 90 90 90 90                 ............

08048910 <__do_global_dtors_aux>:
 8048910:	55                   	push   %ebp
 8048911:	89 e5                	mov    %esp,%ebp
 8048913:	83 ec 08             	sub    $0x8,%esp
 8048916:	83 3d e8 ad 04 08 00 	cmpl   $0x0,0x804ade8
 804891d:	75 3e                	jne    804895d <__do_global_dtors_aux+0x4d>
 804891f:	eb 12                	jmp    8048933 <__do_global_dtors_aux+0x23>
 8048921:	a1 e4 ad 04 08       	mov    0x804ade4,%eax
 8048926:	8d 50 04             	lea    0x4(%eax),%edx
 8048929:	89 15 e4 ad 04 08    	mov    %edx,0x804ade4
 804892f:	8b 00                	mov    (%eax),%eax
 8048931:	ff d0                	call   *%eax
 8048933:	a1 e4 ad 04 08       	mov    0x804ade4,%eax
 8048938:	83 38 00             	cmpl   $0x0,(%eax)
 804893b:	75 e4                	jne    8048921 <__do_global_dtors_aux+0x11>
 804893d:	b8 c0 87 04 08       	mov    $0x80487c0,%eax
 8048942:	85 c0                	test   %eax,%eax
 8048944:	74 0d                	je     8048953 <__do_global_dtors_aux+0x43>
 8048946:	83 c4 f4             	add    $0xfffffff4,%esp
 8048949:	68 84 b4 04 08       	push   $0x804b484
 804894e:	e8 6d fe ff ff       	call   80487c0 <__deregister_frame_info@plt>
 8048953:	c7 05 e8 ad 04 08 01 	movl   $0x1,0x804ade8
 804895a:	00 00 00 
 804895d:	89 ec                	mov    %ebp,%esp
 804895f:	5d                   	pop    %ebp
 8048960:	c3                   	ret    
 8048961:	8d 76 00             	lea    0x0(%esi),%esi

08048964 <fini_dummy>:
 8048964:	55                   	push   %ebp
 8048965:	89 e5                	mov    %esp,%ebp
 8048967:	83 ec 08             	sub    $0x8,%esp
 804896a:	89 ec                	mov    %ebp,%esp
 804896c:	5d                   	pop    %ebp
 804896d:	c3                   	ret    
 804896e:	89 f6                	mov    %esi,%esi

08048970 <frame_dummy>:
 8048970:	55                   	push   %ebp
 8048971:	89 e5                	mov    %esp,%ebp
 8048973:	83 ec 08             	sub    $0x8,%esp
 8048976:	b8 20 87 04 08       	mov    $0x8048720,%eax
 804897b:	85 c0                	test   %eax,%eax
 804897d:	74 12                	je     8048991 <frame_dummy+0x21>
 804897f:	83 c4 f8             	add    $0xfffffff8,%esp
 8048982:	68 4c b6 04 08       	push   $0x804b64c
 8048987:	68 84 b4 04 08       	push   $0x804b484
 804898c:	e8 8f fd ff ff       	call   8048720 <__register_frame_info@plt>
 8048991:	89 ec                	mov    %ebp,%esp
 8048993:	5d                   	pop    %ebp
 8048994:	c3                   	ret    
 8048995:	8d 76 00             	lea    0x0(%esi),%esi

08048998 <init_dummy>:
 8048998:	55                   	push   %ebp
 8048999:	89 e5                	mov    %esp,%ebp
 804899b:	83 ec 08             	sub    $0x8,%esp
 804899e:	89 ec                	mov    %ebp,%esp
 80489a0:	5d                   	pop    %ebp
 80489a1:	c3                   	ret    
 80489a2:	90                   	nop
 80489a3:	90                   	nop
 80489a4:	90                   	nop
 80489a5:	90                   	nop
 80489a6:	90                   	nop
 80489a7:	90                   	nop
 80489a8:	90                   	nop
 80489a9:	90                   	nop
 80489aa:	90                   	nop
 80489ab:	90                   	nop
 80489ac:	90                   	nop
 80489ad:	90                   	nop
 80489ae:	90                   	nop
 80489af:	90                   	nop

080489b0 <main>:
 80489b0:	55                   	push   %ebp
 80489b1:	89 e5                	mov    %esp,%ebp
 80489b3:	83 ec 14             	sub    $0x14,%esp
 80489b6:	53                   	push   %ebx
 80489b7:	8b 45 08             	mov    0x8(%ebp),%eax
 80489ba:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 80489bd:	83 f8 01             	cmp    $0x1,%eax
 80489c0:	75 0e                	jne    80489d0 <main+0x20>
 80489c2:	a1 48 b6 04 08       	mov    0x804b648,%eax
 80489c7:	a3 64 b6 04 08       	mov    %eax,0x804b664
 80489cc:	eb 62                	jmp    8048a30 <main+0x80>
 80489ce:	89 f6                	mov    %esi,%esi
 80489d0:	83 f8 02             	cmp    $0x2,%eax
 80489d3:	75 3b                	jne    8048a10 <main+0x60>
 80489d5:	83 c4 f8             	add    $0xfffffff8,%esp
 80489d8:	68 20 96 04 08       	push   $0x8049620
 80489dd:	8b 43 04             	mov    0x4(%ebx),%eax
 80489e0:	50                   	push   %eax
 80489e1:	e8 9a fe ff ff       	call   8048880 <fopen@plt>
 80489e6:	a3 64 b6 04 08       	mov    %eax,0x804b664
 80489eb:	83 c4 10             	add    $0x10,%esp
 80489ee:	85 c0                	test   %eax,%eax
 80489f0:	75 3e                	jne    8048a30 <main+0x80>
 80489f2:	83 c4 fc             	add    $0xfffffffc,%esp
 80489f5:	8b 43 04             	mov    0x4(%ebx),%eax
 80489f8:	50                   	push   %eax
 80489f9:	8b 03                	mov    (%ebx),%eax
 80489fb:	50                   	push   %eax
 80489fc:	68 22 96 04 08       	push   $0x8049622
 8048a01:	e8 0a fe ff ff       	call   8048810 <printf@plt>
 8048a06:	83 c4 f4             	add    $0xfffffff4,%esp
 8048a09:	6a 08                	push   $0x8
 8048a0b:	e8 40 fe ff ff       	call   8048850 <exit@plt>
 8048a10:	83 c4 f8             	add    $0xfffffff8,%esp
 8048a13:	8b 03                	mov    (%ebx),%eax
 8048a15:	50                   	push   %eax
 8048a16:	68 3f 96 04 08       	push   $0x804963f
 8048a1b:	e8 f0 fd ff ff       	call   8048810 <printf@plt>
 8048a20:	83 c4 f4             	add    $0xfffffff4,%esp
 8048a23:	6a 08                	push   $0x8
 8048a25:	e8 26 fe ff ff       	call   8048850 <exit@plt>
 8048a2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048a30:	e8 2b 07 00 00       	call   8049160 <initialize_bomb>
 8048a35:	83 c4 f4             	add    $0xfffffff4,%esp
 8048a38:	68 60 96 04 08       	push   $0x8049660
 8048a3d:	e8 ce fd ff ff       	call   8048810 <printf@plt>
 8048a42:	83 c4 f4             	add    $0xfffffff4,%esp
 8048a45:	68 a0 96 04 08       	push   $0x80496a0
 8048a4a:	e8 c1 fd ff ff       	call   8048810 <printf@plt>
 8048a4f:	83 c4 20             	add    $0x20,%esp
 8048a52:	e8 a5 07 00 00       	call   80491fc <read_line>
 8048a57:	83 c4 f4             	add    $0xfffffff4,%esp
 8048a5a:	50                   	push   %eax
 8048a5b:	e8 c0 00 00 00       	call   8048b20 <phase_1>
 8048a60:	e8 c7 0a 00 00       	call   804952c <phase_defused>
 8048a65:	83 c4 f4             	add    $0xfffffff4,%esp
 8048a68:	68 e0 96 04 08       	push   $0x80496e0
 8048a6d:	e8 9e fd ff ff       	call   8048810 <printf@plt>
 8048a72:	83 c4 20             	add    $0x20,%esp
 8048a75:	e8 82 07 00 00       	call   80491fc <read_line>
 8048a7a:	83 c4 f4             	add    $0xfffffff4,%esp
 8048a7d:	50                   	push   %eax
 8048a7e:	e8 c5 00 00 00       	call   8048b48 <phase_2>
 8048a83:	e8 a4 0a 00 00       	call   804952c <phase_defused>
 8048a88:	83 c4 f4             	add    $0xfffffff4,%esp
 8048a8b:	68 20 97 04 08       	push   $0x8049720
 8048a90:	e8 7b fd ff ff       	call   8048810 <printf@plt>
 8048a95:	83 c4 20             	add    $0x20,%esp
 8048a98:	e8 5f 07 00 00       	call   80491fc <read_line>
 8048a9d:	83 c4 f4             	add    $0xfffffff4,%esp
 8048aa0:	50                   	push   %eax
 8048aa1:	e8 f2 00 00 00       	call   8048b98 <phase_3>
 8048aa6:	e8 81 0a 00 00       	call   804952c <phase_defused>
 8048aab:	83 c4 f4             	add    $0xfffffff4,%esp
 8048aae:	68 3f 97 04 08       	push   $0x804973f
 8048ab3:	e8 58 fd ff ff       	call   8048810 <printf@plt>
 8048ab8:	83 c4 20             	add    $0x20,%esp
 8048abb:	e8 3c 07 00 00       	call   80491fc <read_line>
 8048ac0:	83 c4 f4             	add    $0xfffffff4,%esp
 8048ac3:	50                   	push   %eax
 8048ac4:	e8 17 02 00 00       	call   8048ce0 <phase_4>
 8048ac9:	e8 5e 0a 00 00       	call   804952c <phase_defused>
 8048ace:	83 c4 f4             	add    $0xfffffff4,%esp
 8048ad1:	68 60 97 04 08       	push   $0x8049760
 8048ad6:	e8 35 fd ff ff       	call   8048810 <printf@plt>
 8048adb:	83 c4 20             	add    $0x20,%esp
 8048ade:	e8 19 07 00 00       	call   80491fc <read_line>
 8048ae3:	83 c4 f4             	add    $0xfffffff4,%esp
 8048ae6:	50                   	push   %eax
 8048ae7:	e8 40 02 00 00       	call   8048d2c <phase_5>
 8048aec:	e8 3b 0a 00 00       	call   804952c <phase_defused>
 8048af1:	83 c4 f4             	add    $0xfffffff4,%esp
 8048af4:	68 a0 97 04 08       	push   $0x80497a0
 8048af9:	e8 12 fd ff ff       	call   8048810 <printf@plt>
 8048afe:	83 c4 20             	add    $0x20,%esp
 8048b01:	e8 f6 06 00 00       	call   80491fc <read_line>
 8048b06:	83 c4 f4             	add    $0xfffffff4,%esp
 8048b09:	50                   	push   %eax
 8048b0a:	e8 89 02 00 00       	call   8048d98 <phase_6>
 8048b0f:	e8 18 0a 00 00       	call   804952c <phase_defused>
 8048b14:	31 c0                	xor    %eax,%eax
 8048b16:	8b 5d e8             	mov    -0x18(%ebp),%ebx
 8048b19:	89 ec                	mov    %ebp,%esp
 8048b1b:	5d                   	pop    %ebp
 8048b1c:	c3                   	ret    
 8048b1d:	90                   	nop
 8048b1e:	90                   	nop
 8048b1f:	90                   	nop

08048b20 <phase_1>:
 8048b20:	55                   	push   %ebp
 8048b21:	89 e5                	mov    %esp,%ebp
 8048b23:	83 ec 08             	sub    $0x8,%esp
 8048b26:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b29:	83 c4 f8             	add    $0xfffffff8,%esp
 8048b2c:	68 c0 97 04 08       	push   $0x80497c0
 8048b31:	50                   	push   %eax
 8048b32:	e8 f9 04 00 00       	call   8049030 <strings_not_equal>
 8048b37:	83 c4 10             	add    $0x10,%esp
 8048b3a:	85 c0                	test   %eax,%eax
 8048b3c:	74 05                	je     8048b43 <phase_1+0x23>
 8048b3e:	e8 b9 09 00 00       	call   80494fc <explode_bomb>
 8048b43:	89 ec                	mov    %ebp,%esp
 8048b45:	5d                   	pop    %ebp
 8048b46:	c3                   	ret    
 8048b47:	90                   	nop

08048b48 <phase_2>:
 8048b48:	55                   	push   %ebp
 8048b49:	89 e5                	mov    %esp,%ebp
 8048b4b:	83 ec 20             	sub    $0x20,%esp -------- esp - 32
 8048b4e:	56                   	push   %esi
 8048b4f:	53                   	push   %ebx
 8048b50:	8b 55 08             	mov    0x8(%ebp),%edx -------------- get &phase_2
 8048b53:	83 c4 f8             	add    $0xfffffff8,%esp ------------- esp -8
 8048b56:	8d 45 e8             	lea    -0x18(%ebp),%eax ----- eax = ebp - 24
 8048b59:	50                   	push   %eax
 8048b5a:	52                   	push   %edx --------- push &phase_2
 8048b5b:	e8 78 04 00 00       	call   8048fd8 <read_six_numbers>
 8048b60:	83 c4 10             	add    $0x10,%esp
 8048b63:	83 7d e8 01          	cmpl   $0x1,-0x18(%ebp)  ------------------ :1 ($ebp)-0x18 is the first number
 8048b67:	74 05                	je     8048b6e <phase_2+0x26>  --------- esi==1, goto next 
 8048b69:	e8 8e 09 00 00       	call   80494fc <explode_bomb>
 8048b6e:	bb 01 00 00 00       	mov    $0x1,%ebx      ---------- :next
 8048b73:	8d 75 e8             	lea    -0x18(%ebp),%esi
 8048b76:	8d 43 01             	lea    0x1(%ebx),%eax  --------------loop
 8048b79:	0f af 44 9e fc       	imul   -0x4(%esi,%ebx,4),%eax --------- 
 8048b7e:	39 04 9e             	cmp    %eax,(%esi,%ebx,4) ---------(esi+4*ebx) : eax
 8048b81:	74 05                	je     8048b88 <phase_2+0x40> ---if == goto next2
 8048b83:	e8 74 09 00 00       	call   80494fc <explode_bomb>
 8048b88:	43                   	inc    %ebx -----------------ebx++ ------- next2
 8048b89:	83 fb 05             	cmp    $0x5,%ebx  -------------- ebx : 5
 8048b8c:	7e e8                	jle    8048b76 <phase_2+0x2e> -------if <=, goto loop
 8048b8e:	8d 65 d8             	lea    -0x28(%ebp),%esp  --------------------end
 8048b91:	5b                   	pop    %ebx
 8048b92:	5e                   	pop    %esi
 8048b93:	89 ec                	mov    %ebp,%esp
 8048b95:	5d                   	pop    %ebp
 8048b96:	c3                   	ret    
 8048b97:	90                   	nop

08048b98 <phase_3>:
 8048b98:	55                   	push   %ebp
 8048b99:	89 e5                	mov    %esp,%ebp
 8048b9b:	83 ec 14             	sub    $0x14,%esp
 8048b9e:	53                   	push   %ebx
 8048b9f:	8b 55 08             	mov    0x8(%ebp),%edx -------get &phase_3
 8048ba2:	83 c4 f4             	add    $0xfffffff4,%esp --------  esp-12
 8048ba5:	8d 45 fc             	lea    -0x4(%ebp),%eax  ---------- eax = ebp - 4
 8048ba8:	50                   	push   %eax
 8048ba9:	8d 45 fb             	lea    -0x5(%ebp),%eax
 8048bac:	50                   	push   %eax
 8048bad:	8d 45 f4             	lea    -0xc(%ebp),%eax
 8048bb0:	50                   	push   %eax
 8048bb1:	68 de 97 04 08       	push   $0x80497de
 8048bb6:	52                   	push   %edx
 8048bb7:	e8 a4 fc ff ff       	call   8048860 <sscanf@plt>
 8048bbc:	83 c4 20             	add    $0x20,%esp ---------- esp+32
 8048bbf:	83 f8 02             	cmp    $0x2,%eax  ---------- 输入的参数大于2
 8048bc2:	7f 05                	jg     8048bc9 <phase_3+0x31>
 8048bc4:	e8 33 09 00 00       	call   80494fc <explode_bomb>
 8048bc9:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp) --------- 第一个数字与7比较, 大于7就跪了
 8048bcd:	0f 87 b5 00 00 00    	ja     8048c88 <phase_3+0xf0> ------  跳到爆炸指令
 8048bd3:	8b 45 f4             	mov    -0xc(%ebp),%eax ---------- eax 中保存第一个数字
 8048bd6:	ff 24 85 e8 97 04 08 	jmp    *0x80497e8(,%eax,4) ------- 直接跳转指令, 是一条switch语句
 8048bdd:	8d 76 00             	lea    0x0(%esi),%esi
 8048be0:	b3 71                	mov    $0x71,%bl     ------------  case 0:  $bl保存的第二个字符
 8048be2:	81 7d fc 09 03 00 00 	cmpl   $0x309,-0x4(%ebp)   ------------- ($ebp)-0x4 中保存第三个数字
 8048be9:	0f 84 a0 00 00 00    	je     8048c8f <phase_3+0xf7>
 8048bef:	e8 08 09 00 00       	call   80494fc <explode_bomb>
 8048bf4:	e9 96 00 00 00       	jmp    8048c8f <phase_3+0xf7>
 8048bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048c00:	b3 62                	mov    $0x62,%bl  ---------------- case 1:
 8048c02:	81 7d fc d6 00 00 00 	cmpl   $0xd6,-0x4(%ebp)
 8048c09:	0f 84 80 00 00 00    	je     8048c8f <phase_3+0xf7>
 8048c0f:	e8 e8 08 00 00       	call   80494fc <explode_bomb>
 8048c14:	eb 79                	jmp    8048c8f <phase_3+0xf7>
 8048c16:	b3 62                	mov    $0x62,%bl ---------------- case 2:
 8048c18:	81 7d fc f3 02 00 00 	cmpl   $0x2f3,-0x4(%ebp)
 8048c1f:	74 6e                	je     8048c8f <phase_3+0xf7>
 8048c21:	e8 d6 08 00 00       	call   80494fc <explode_bomb>
 8048c26:	eb 67                	jmp    8048c8f <phase_3+0xf7>
 8048c28:	b3 6b                	mov    $0x6b,%bl -------------- case 3:
 8048c2a:	81 7d fc fb 00 00 00 	cmpl   $0xfb,-0x4(%ebp)
 8048c31:	74 5c                	je     8048c8f <phase_3+0xf7>
 8048c33:	e8 c4 08 00 00       	call   80494fc <explode_bomb>
 8048c38:	eb 55                	jmp    8048c8f <phase_3+0xf7>
 8048c3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048c40:	b3 6f                	mov    $0x6f,%bl --------------- case 4:
 8048c42:	81 7d fc a0 00 00 00 	cmpl   $0xa0,-0x4(%ebp)
 8048c49:	74 44                	je     8048c8f <phase_3+0xf7>
 8048c4b:	e8 ac 08 00 00       	call   80494fc <explode_bomb>
 8048c50:	eb 3d                	jmp    8048c8f <phase_3+0xf7>
 8048c52:	b3 74                	mov    $0x74,%bl --------------- case 5:
 8048c54:	81 7d fc ca 01 00 00 	cmpl   $0x1ca,-0x4(%ebp)
 8048c5b:	74 32                	je     8048c8f <phase_3+0xf7>
 8048c5d:	e8 9a 08 00 00       	call   80494fc <explode_bomb>
 8048c62:	eb 2b                	jmp    8048c8f <phase_3+0xf7>
 8048c64:	b3 76                	mov    $0x76,%bl --------------- case 6:
 8048c66:	81 7d fc 0c 03 00 00 	cmpl   $0x30c,-0x4(%ebp)
 8048c6d:	74 20                	je     8048c8f <phase_3+0xf7>
 8048c6f:	e8 88 08 00 00       	call   80494fc <explode_bomb>
 8048c74:	eb 19                	jmp    8048c8f <phase_3+0xf7>
 8048c76:	b3 62                	mov    $0x62,%bl --------------- case 7:
 8048c78:	81 7d fc 0c 02 00 00 	cmpl   $0x20c,-0x4(%ebp) ------- 比较第3个数与524的大小
 8048c7f:	74 0e                	je     8048c8f <phase_3+0xf7> ----- 相等, 否则爆炸, goto next
 8048c81:	e8 76 08 00 00       	call   80494fc <explode_bomb>
 8048c86:	eb 07                	jmp    8048c8f <phase_3+0xf7>
 8048c88:	b3 78                	mov    $0x78,%bl
 8048c8a:	e8 6d 08 00 00       	call   80494fc <explode_bomb>
 8048c8f:	3a 5d fb             	cmp    -0x5(%ebp),%bl  ---------- next, 比较第2个字符与'b'
 8048c92:	74 05                	je     8048c99 <phase_3+0x101>
 8048c94:	e8 63 08 00 00       	call   80494fc <explode_bomb>
 8048c99:	8b 5d e8             	mov    -0x18(%ebp),%ebx
 8048c9c:	89 ec                	mov    %ebp,%esp
 8048c9e:	5d                   	pop    %ebp
 8048c9f:	c3                   	ret    

08048ca0 <func4>:
 8048ca0:	55                   	push   %ebp
 8048ca1:	89 e5                	mov    %esp,%ebp
 8048ca3:	83 ec 10             	sub    $0x10,%esp
 8048ca6:	56                   	push   %esi
 8048ca7:	53                   	push   %ebx
 8048ca8:	8b 5d 08             	mov    0x8(%ebp),%ebx ----得到递归函数参数var
 8048cab:	83 fb 01             	cmp    $0x1,%ebx  ----------  递归结束状态,var<= 1
 8048cae:	7e 20                	jle    8048cd0 <func4+0x30>  ---- goto done
 8048cb0:	83 c4 f4             	add    $0xfffffff4,%esp
 8048cb3:	8d 43 ff             	lea    -0x1(%ebx),%eax   -------- result =  var - 1
 8048cb6:	50                   	push   %eax     ----------------- 将var - 1作为下一次递归的参数
 8048cb7:	e8 e4 ff ff ff       	call   8048ca0 <func4>
 8048cbc:	89 c6                	mov    %eax,%esi  ---------------  %esi中保存返回值
 8048cbe:	83 c4 f4             	add    $0xfffffff4,%esp
 8048cc1:	8d 43 fe             	lea    -0x2(%ebx),%eax  --------- var - 2
 8048cc4:	50                   	push   %eax -------------- 再将var - 2 作为参数递归调用
 8048cc5:	e8 d6 ff ff ff       	call   8048ca0 <func4>
 8048cca:	01 f0                	add    %esi,%eax  ------------ result = func4(var-1) + func4(var-2)
 8048ccc:	eb 07                	jmp    8048cd5 <func4+0x35>  ---------- goto over
 8048cce:	89 f6                	mov    %esi,%esi
 8048cd0:	b8 01 00 00 00       	mov    $0x1,%eax  --------- done, return 1 
 8048cd5:	8d 65 e8             	lea    -0x18(%ebp),%esp -------- over
 8048cd8:	5b                   	pop    %ebx
 8048cd9:	5e                   	pop    %esi
 8048cda:	89 ec                	mov    %ebp,%esp
 8048cdc:	5d                   	pop    %ebp
 8048cdd:	c3                   	ret    
 8048cde:	89 f6                	mov    %esi,%esi

08048ce0 <phase_4>:
 8048ce0:	55                   	push   %ebp
 8048ce1:	89 e5                	mov    %esp,%ebp
 8048ce3:	83 ec 18             	sub    $0x18,%esp
 8048ce6:	8b 55 08             	mov    0x8(%ebp),%edx ----- get &phase_4
 8048ce9:	83 c4 fc             	add    $0xfffffffc,%esp ----- esp - 4
 8048cec:	8d 45 fc             	lea    -0x4(%ebp),%eax ------- 
 8048cef:	50                   	push   %eax
 8048cf0:	68 08 98 04 08       	push   $0x8049808
 8048cf5:	52                   	push   %edx
 8048cf6:	e8 65 fb ff ff       	call   8048860 <sscanf@plt>
 8048cfb:	83 c4 10             	add    $0x10,%esp
 8048cfe:	83 f8 01             	cmp    $0x1,%eax  ----- 返回读入的整数个数, 应该读入一个整数
 8048d01:	75 06                	jne    8048d09 <phase_4+0x29>
 8048d03:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)  -------- ($ebp)-4 中保存读入的整数
 8048d07:	7f 05                	jg     8048d0e <phase_4+0x2e>  -------  读入的数要大于0
 8048d09:	e8 ee 07 00 00       	call   80494fc <explode_bomb>
 8048d0e:	83 c4 f4             	add    $0xfffffff4,%esp ----- esp - 12
 8048d11:	8b 45 fc             	mov    -0x4(%ebp),%eax  --------- get input num 
 8048d14:	50                   	push   %eax
 8048d15:	e8 86 ff ff ff       	call   8048ca0 <func4>
 8048d1a:	83 c4 10             	add    $0x10,%esp
 8048d1d:	83 f8 37             	cmp    $0x37,%eax  ------------- func4的返回值应该为0x37(55)
 8048d20:	74 05                	je     8048d27 <phase_4+0x47>
 8048d22:	e8 d5 07 00 00       	call   80494fc <explode_bomb>
 8048d27:	89 ec                	mov    %ebp,%esp
 8048d29:	5d                   	pop    %ebp
 8048d2b:	90                   	nop

08048d2c <phase_5>:
 8048d2c:	55                   	push   %ebp
 8048d2d:	89 e5                	mov    %esp,%ebp
 8048d2f:	83 ec 10             	sub    $0x10,%esp
 8048d32:	56                   	push   %esi
 8048d33:	53                   	push   %ebx
 8048d34:	8b 5d 08             	mov    0x8(%ebp),%ebx  --- get &phase_5
 8048d37:	83 c4 f4             	add    $0xfffffff4,%esp ---- esp - 12
 8048d3a:	53                   	push   %ebx
 8048d3b:	e8 d8 02 00 00       	call   8049018 <string_length>
 8048d40:	83 c4 10             	add    $0x10,%esp
 8048d43:	83 f8 06             	cmp    $0x6,%eax  ------- 说明字符串长度为6
 8048d46:	74 05                	je     8048d4d <phfase_5+0x21>
 8048d48:	e8 af 07 00 00       	call   80494fc <explode_bomb>
 8048d4d:	31 d2                	xor    %edx,%edx   ---- %edx = 0
 8048d4f:	8d 4d f8             	lea    -0x8(%ebp),%ecx
 8048d52:	be 20 b2 04 08       	mov    $0x804b220,%esi  ----应该是一张table的起始地址
 8048d57:	8a 04 1a             	mov    (%edx,%ebx,1),%al   -- loop  %al = (%edx+%ebx),遍历6个字符
 8048d5a:	24 0f                	and    $0xf,%al  ----- %al = %al & 0xf, 将字符高4位置0
 8048d5c:	0f be c0             	movsbl %al,%eax   ---------- 将al扩展为eax, 除低4位,高位都是0
 8048d5f:	8a 04 30             	mov    (%eax,%esi,1),%al  ----- %al = (字符低4位 + %esi), 在table中查找
 8048d62:	88 04 0a             	mov    %al,(%edx,%ecx,1)   -------将查找到的table中的字符放到(%ebp-8)为起始的位置
 8048d65:	42                   	inc    %edx
 8048d66:	83 fa 05             	cmp    $0x5,%edx   ------- %edx : 5
 8048d69:	7e ec                	jle    8048d57 <phase_5+0x2b>  ------- if <= goto loop
 8048d6b:	c6 45 fe 00          	movb   $0x0,-0x2(%ebp)   ----- 字符存在(%ebp-8)-(%ebp-1)中,(%ebp-2)存放'\0'
 8048d6f:	83 c4 f8             	add    $0xfffffff8,%esp
 8048d72:	68 0b 98 04 08       	push   $0x804980b   ---------- 字符串 "giants"起始地址
 8048d77:	8d 45 f8             	lea    -0x8(%ebp),%eax   -----  要比较的字符串起始地址
 8048d7a:	50                   	push   %eax
 8048d7b:	e8 b0 02 00 00       	call   8049030 <strings_not_equal>
 8048d80:	83 c4 10             	add    $0x10,%esp
 8048d83:	85 c0                	test   %eax,%eax
 8048d85:	74 05                	je     8048d8c <phase_5+0x60> ---- strings_not_equal返回值要为0
 8048d87:	e8 70 07 00 00       	call   80494fc <explode_bomb>
 8048d8c:	8d 65 e8             	lea    -0x18(%ebp),%esp
 8048d8f:	5b                   	pop    %ebx
 8048d90:	5e                   	pop    %esi
 8048d91:	89 ec                	mov    %ebp,%esp
 8048d93:	5d                   	pop    %ebp
 8048d94:	c3                   	ret    
 8048d95:	8d 76 00             	lea    0x0(%esi),%esi

 8048d98 <phase_6>:
 8048d98:	55                   	push   %ebp
 8048d99:	89 e5                	mov    %esp,%ebp
 8048d9b:	83 ec 4c             	sub    $0x4c,%esp
 8048d9e:	57                   	push   %edi
 8048d9f:	56                   	push   %esi
 8048da0:	53                   	push   %ebx
 8048da1:	8b 55 08             	mov    0x8(%ebp),%edx   ----------- get &phase_6
 8048da4:	c7 45 cc 6c b2 04 08 	movl   $0x804b26c,-0x34(%ebp)
 8048dab:	83 c4 f8             	add    $0xfffffff8,%esp ------------- esp - 8
 8048dae:	8d 45 e8             	lea    -0x18(%ebp),%eax ----------- 
 8048db1:	50                   	push   %eax    ----------- **($eax) = "GRADE_BOMB"
 8048db2:	52                   	push   %edx    ----------- &phase_6
 8048db3:	e8 20 02 00 00       	call   8048fd8 <read_six_numbers>
					--- 调用read_six_numbers之后,6个数(a0-a5)将依次放在 $ebp-24 - $ebp-4 的位置

 8048db8:	31 ff                	xor    %edi,%edi  ----------- set $edi = 0
 8048dba:	83 c4 10             	add    $0x10,%esp
 8048dbd:	8d 76 00             	lea    0x0(%esi),%esi  --------此时 $esi == 0
 8048dc0:	8d 45 e8             	lea    -0x18(%ebp),%eax ------------------.loop *($eax) = a[0] 
 8048dc3:	8b 04 b8             	mov    (%eax,%edi,4),%eax  --------------- get a[$edi]
 8048dc6:	48                   	dec    %eax  ------------ get a[$edi] - 1
 8048dc7:	83 f8 05             	cmp    $0x5,%eax  --------- (a[$edi]-1) : 5 , 无符号比较
 8048dca:	76 05                	jbe    8048dd1 <phase_6+0x39> ----------- if <=, goto .next, 注意是无符号比较,每个数都要小于或等于6且大于0, 不能等于0
 8048dcc:	e8 2b 07 00 00       	call   80494fc <explode_bomb>
 8048dd1:	8d 5f 01             	lea    0x1(%edi),%ebx -------------- .next, get 数的序号数,(1-6)
 8048dd4:	83 fb 05             	cmp    $0x5,%ebx 	--------- 数的序号:5
 8048dd7:	7f 23                	jg     8048dfc <phase_6+0x64> --------- if >, goto .next2
 8048dd9:	8d 04 bd 00 00 00 00 	lea    0x0(,%edi,4),%eax  -------------  get 4*$edi
 8048de0:	89 45 c8             	mov    %eax,-0x38(%ebp) ---------------- set ($ebp-56) = 4*$edi
 8048de3:	8d 75 e8             	lea    -0x18(%ebp),%esi  ----------set $esi = &a[0]
 8048de6:	8b 55 c8             	mov    -0x38(%ebp),%edx  ----------- set $edx = 4*$edi ----- .next3
 8048de9:	8b 04 32             	mov    (%edx,%esi,1),%eax  ---------- set $eax = (4*$edi+&a[0]) = a[$edi]
 8048dec:	3b 04 9e             	cmp    (%esi,%ebx,4),%eax  ---------  a[$edi] : a[$ebx]
 8048def:	75 05                	jne    8048df6 <phase_6+0x5e>  ------ if !=, goto .right
 8048df1:	e8 06 07 00 00       	call   80494fc <explode_bomb>
 8048df6:	43                   	inc    %ebx  -------.right
 8048df7:	83 fb 05             	cmp    $0x5,%ebx
 8048dfa:	7e ea                	jle    8048de6 <phase_6+0x4e> ---- if <=, goto .next3
 8048dfc:	47                   	inc    %edi  -------------- .next2
 8048dfd:	83 ff 05             	cmp    $0x5,%edi  ---------- %edi : 5
 8048e00:	7e be                	jle    8048dc0 <phase_6+0x28> ------ if <=, goto .loop
 	-------------------以上是判断任意两个数是否相等--------------------------------------------------

 8048e02:	31 ff                	xor    %edi,%edi
 8048e04:	8d 4d e8             	lea    -0x18(%ebp),%ecx  ---- set $ecx = &a[0]
 8048e07:	8d 45 d0             	lea    -0x30(%ebp),%eax ---- get 0xffffd678, 
 8048e0a:	89 45 c4             	mov    %eax,-0x3c(%ebp)          ------------ set ($ebp-0x3c) = 0xffffd678, 
 8048e0d:	8d 76 00             	lea    0x0(%esi),%esi   ------------- $esi == 0xffffd60
 					.loop2
 8048e10:	8b 75 cc             	mov    -0x34(%ebp),%esi ------------ .loop2  set $esi = 0x804b26c
 8048e13:	bb 01 00 00 00       	mov    $0x1,%ebx   -------- set $ebx = 1
 8048e18:	8d 04 bd 00 00 00 00 	lea    0x0(,%edi,4),%eax  ----- set $eax = 4*$edi
 8048e1f:	89 c2                	mov    %eax,%edx  ---------- set $edx = 4*$edi
 8048e21:	3b 1c 08             	cmp    (%eax,%ecx,1),%ebx  ------- 1 : a[$edi]
 8048e24:	7d 12                	jge    8048e38 <phase_6+0xa0> ---- if >=, goto .next4
 8048e26:	8b 04 0a             	mov    (%edx,%ecx,1),%eax  --------- set $eax = a[$edi]
 8048e29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 					
 					.next5
 8048e30:	8b 76 08             	mov    0x8(%esi),%esi   --- .next5 ------------ set $esi
 8048e33:	43                   	inc    %ebx
 8048e34:	39 c3                	cmp    %eax,%ebx  ----- $ebx : a[$edi]
 8048e36:	7c f8                	jl     8048e30 <phase_6+0x98>  --- if <, goto .next5
 					.next4

 8048e38:	8b 55 c4             	mov    -0x3c(%ebp),%edx  ----- .next4 set %edx = 0xffffd678------- goto.next4
 8048e3b:	89 34 ba             	mov    %esi,(%edx,%edi,4) --------- $edx 
 					---------,以上循环是用来根据输入的数字生成链表---------------- 

 8048e3e:	47                   	inc    %edi
 8048e3f:	83 ff 05             	cmp    $0x5,%edi
 8048e42:	7e cc                	jle    8048e10 <phase_6+0x78>  if <=, goto .loop2
 8048e44:	8b 75 d0             	mov    -0x30(%ebp),%esi -------- set $esi = 第一个指针的值 p[0]
 8048e47:	89 75 cc             	mov    %esi,-0x34(%ebp) -------- $epb-0x34中保存 p[0]
 8048e4a:	bf 01 00 00 00       	mov    $0x1,%edi ---------- set $edi=1
 8048e4f:	8d 55 d0             	lea    -0x30(%ebp),%edx   ------ set $edx = $ebp-0x30, 则 $edx = &p[0]

 					.next6
 8048e52:	8b 04 ba             	mov    (%edx,%edi,4),%eax  ---- .next6 , set $eax = p[$edi]
 8048e55:	89 46 08             	mov    %eax,0x8(%esi) ------ set      = p[$edi]
 8048e58:	89 c6                	mov    %eax,%esi  --------- set $esi = p[$edi]
 8048e5a:	47                   	inc    %edi
 8048e5b:	83 ff 05             	cmp    $0x5,%edi
 8048e5e:	7e f2                	jle    8048e52 <phase_6+0xba>  if <=, goto .next6

 8048e60:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%esi)
 8048e67:	8b 75 cc             	mov    -0x34(%ebp),%esi -------- set $esi = p[0]
 8048e6a:	31 ff                	xor    %edi,%edi   ----------- set $edi = 0
 8048e6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

 					.next8 -----------------$esi 为第一个数字对应的指针p[0]
 8048e70:	8b 56 08             	mov    0x8(%esi),%edx  ---- .next8, set %edx = p[i+1]
 8048e73:	8b 06                	mov    (%esi),%eax  ---------------get  *p[i]
 8048e75:	3b 02                	cmp    (%edx),%eax  *p[i] : *p[i+1]
 8048e77:	7d 05                	jge    8048e7e <phase_6+0xe6>  ---- if >=, goto .next7
 8048e79:	e8 7e 06 00 00       	call   80494fc <explode_bomb>
 					.nxxt7
 8048e7e:	8b 76 08             	mov    0x8(%esi),%esi ----- .next7, set %esi指向下一个数字
 8048e81:	47                   	inc    %edi
 8048e82:	83 ff 04             	cmp    $0x4,%edi
 8048e85:	7e e9                	jle    8048e70 <phase_6+0xd8> ---- if <=, goto .next8
 8048e87:	8d 65 a8             	lea    -0x58(%ebp),%esp
 8048e8a:	5b                   	pop    %ebx
 8048e8b:	5e                   	pop    %esi
 8048e8c:	5f                   	pop    %edi
 8048e8d:	89 ec                	mov    %ebp,%esp
 8048e8f:	5d                   	pop    %ebp
 8048e90:	c3                   	ret    
 8048e91:	8d 76 00             	lea    0x0(%esi),%esi

08048e94 <fun7>:
 8048e94:	55                   	push   %ebp
 8048e95:	89 e5                	mov    %esp,%ebp
 8048e97:	83 ec 08             	sub    $0x8,%esp
 8048e9a:	8b 55 08             	mov    0x8(%ebp),%edx  -------- get 参数 setret_phase中传的参数地址,指向 36
 8048e9d:	8b 45 0c             	mov    0xc(%ebp),%eax  --------- get 参数 setret_phase中传的参数 value
 8048ea0:	85 d2                	test   %edx,%edx
 8048ea2:	75 0c                	jne    8048eb0 <fun7+0x1c>     -------- if $edx != 0, goto .next
 8048ea4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax      -------------- set $eax = -1
 8048ea9:	eb 37                	jmp    8048ee2 <fun7+0x4e>   ----------- goto .done
 8048eab:	90                   	nop
 8048eac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 					.next
 8048eb0:	3b 02                	cmp    (%edx),%eax      --------- $eax : *$edx
 8048eb2:	7d 11                	jge    8048ec5 <fun7+0x31>  ---------- if >=, goto .next2
 8048eb4:	83 c4 f8             	add    $0xfffffff8,%esp  -------- esp - 8
 8048eb7:	50                   	push   %eax
 8048eb8:	8b 42 04             	mov    0x4(%edx),%eax
 8048ebb:	50                   	push   %eax
 8048ebc:	e8 d3 ff ff ff       	call   8048e94 <fun7>
 8048ec1:	01 c0                	add    %eax,%eax
 8048ec3:	eb 1d                	jmp    8048ee2 <fun7+0x4e>   ---- goto .done
 					.next2
 8048ec5:	3b 02                	cmp    (%edx),%eax     ------------- $eax : *$edx
 8048ec7:	74 17                	je     8048ee0 <fun7+0x4c> -------- if ==, goto .next3
 8048ec9:	83 c4 f8             	add    $0xfffffff8,%esp
 8048ecc:	50                   	push   %eax
 8048ecd:	8b 42 08             	mov    0x8(%edx),%eax
 8048ed0:	50                   	push   %eax
 8048ed1:	e8 be ff ff ff       	call   8048e94 <fun7>
 8048ed6:	01 c0                	add    %eax,%eax
 8048ed8:	40                   	inc    %eax
 8048ed9:	eb 07                	jmp    8048ee2 <fun7+0x4e>  ---- goto .done
 8048edb:	90                   	nop
 8048edc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 					.next3
 8048ee0:	31 c0                	xor    %eax,%eax ---------- set $eax = 0
 					.done
 8048ee2:	89 ec                	mov    %ebp,%esp
 8048ee4:	5d                   	pop    %ebp
 8048ee5:	c3                   	ret    
 8048ee6:	89 f6                	mov    %esi,%esi

8048ee8 <secret_phase>:
 8048ee8:	55                   	push   %ebp
 8048ee9:	89 e5                	mov    %esp,%ebp
 8048eeb:	83 ec 14             	sub    $0x14,%esp
 8048eee:	53                   	push   %ebx
 8048eef:	e8 08 03 00 00       	call   80491fc <read_line>
 8048ef4:	6a 00                	push   $0x0
 8048ef6:	6a 0a                	push   $0xa
 8048ef8:	6a 00                	push   $0x0
 8048efa:	50                   	push   %eax ----------- get &secret_string
 8048efb:	e8 f0 f8 ff ff       	call   80487f0 <__strtol_internal@plt> ------- 将字符串转换成整数value
 8048f00:	83 c4 10             	add    $0x10,%esp
 8048f03:	89 c3                	mov    %eax,%ebx
 8048f05:	8d 43 ff             	lea    -0x1(%ebx),%eax   ----- $eax = value-1
 8048f08:	3d e8 03 00 00       	cmp    $0x3e8,%eax   ---------- value-1 : 0x3e8 (1000)
 8048f0d:	76 05                	jbe    8048f14 <secret_phase+0x2c>  ----- if <=,  无符号比较, OK
 8048f0f:	e8 e8 05 00 00       	call   80494fc <explode_bomb>
 8048f14:	83 c4 f8             	add    $0xfffffff8,%esp  ---------- esp-8
 8048f17:	53                   	push   %ebx   ------- push value
 8048f18:	68 20 b3 04 08       	push   $0x804b320 -------- push 0x24
 8048f1d:	e8 72 ff ff ff       	call   8048e94 <fun7>  ------ 调用fun7
 8048f22:	83 c4 10             	add    $0x10,%esp
 8048f25:	83 f8 07             	cmp    $0x7,%eax    ----------- 比较返回值 : 0x7
 8048f28:	74 05                	je     8048f2f <secret_phase+0x47>  ---------if ==, OK
 8048f2a:	e8 cd 05 00 00       	call   80494fc <explode_bomb>
 8048f2f:	83 c4 f4             	add    $0xfffffff4,%esp
 8048f32:	68 20 98 04 08       	push   $0x8049820
 8048f37:	e8 d4 f8 ff ff       	call   8048810 <printf@plt>
 8048f3c:	e8 eb 05 00 00       	call   804952c <phase_defused>
 8048f41:	8b 5d e8             	mov    -0x18(%ebp),%ebx
 8048f44:	89 ec                	mov    %ebp,%esp
 8048f46:	5d                   	pop    %ebp
 8048f47:	c3                   	ret    
 8048f48:	90                   	nop
 8048f49:	90                   	nop
 8048f4a:	90                   	nop
 8048f4b:	90                   	nop
 8048f4c:	90                   	nop
 8048f4d:	90                   	nop
 8048f4e:	90                   	nop
 8048f4f:	90                   	nop

08048f50 <sig_handler>:
 8048f50:	55                   	push   %ebp
 8048f51:	89 e5                	mov    %esp,%ebp
 8048f53:	83 ec 08             	sub    $0x8,%esp
 8048f56:	83 c4 f4             	add    $0xfffffff4,%esp
 8048f59:	68 c0 9a 04 08       	push   $0x8049ac0
 8048f5e:	e8 ad f8 ff ff       	call   8048810 <printf@plt>
 8048f63:	83 c4 f4             	add    $0xfffffff4,%esp
 8048f66:	6a 03                	push   $0x3
 8048f68:	e8 73 f8 ff ff       	call   80487e0 <sleep@plt>
 8048f6d:	83 c4 20             	add    $0x20,%esp
 8048f70:	83 c4 f4             	add    $0xfffffff4,%esp
 8048f73:	68 f9 9a 04 08       	push   $0x8049af9
 8048f78:	e8 93 f8 ff ff       	call   8048810 <printf@plt>
 8048f7d:	83 c4 f4             	add    $0xfffffff4,%esp
 8048f80:	a1 40 b6 04 08       	mov    0x804b640,%eax
 8048f85:	50                   	push   %eax
 8048f86:	e8 f5 f7 ff ff       	call   8048780 <fflush@plt>
 8048f8b:	83 c4 20             	add    $0x20,%esp
 8048f8e:	83 c4 f4             	add    $0xfffffff4,%esp
 8048f91:	6a 01                	push   $0x1
 8048f93:	e8 48 f8 ff ff       	call   80487e0 <sleep@plt>
 8048f98:	83 c4 f4             	add    $0xfffffff4,%esp
 8048f9b:	68 01 9b 04 08       	push   $0x8049b01
 8048fa0:	e8 6b f8 ff ff       	call   8048810 <printf@plt>
 8048fa5:	83 c4 20             	add    $0x20,%esp
 8048fa8:	83 c4 f4             	add    $0xfffffff4,%esp
 8048fab:	6a 10                	push   $0x10
 8048fad:	e8 9e f8 ff ff       	call   8048850 <exit@plt>
 8048fb2:	89 f6                	mov    %esi,%esi

08048fb4 <invalid_phase>:
 8048fb4:	55                   	push   %ebp
 8048fb5:	89 e5                	mov    %esp,%ebp
 8048fb7:	83 ec 08             	sub    $0x8,%esp
 8048fba:	8b 45 08             	mov    0x8(%ebp),%eax
 8048fbd:	83 c4 f8             	add    $0xfffffff8,%esp
 8048fc0:	50                   	push   %eax
 8048fc1:	68 0a 9b 04 08       	push   $0x8049b0a
 8048fc6:	e8 45 f8 ff ff       	call   8048810 <printf@plt>
 8048fcb:	83 c4 f4             	add    $0xfffffff4,%esp
 8048fce:	6a 08                	push   $0x8
 8048fd0:	e8 7b f8 ff ff       	call   8048850 <exit@plt>
 8048fd5:	8d 76 00             	lea    0x0(%esi),%esi

08048fd8 <read_six_numbers>:
				---------------- 
 8048fd8:	55                   	push   %ebp
 8048fd9:	89 e5                	mov    %esp,%ebp
 8048fdb:	83 ec 08             	sub    $0x8,%esp
 8048fde:	8b 4d 08             	mov    0x8(%ebp),%ecx ------- get &phase_2
 						--------------------- get &phase_6
 8048fe1:	8b 55 0c             	mov    0xc(%ebp),%edx ------- get  0xffffd6a0
 						--------------------- **($edx) = "GRADE_BOMB"
 8048fe4:	8d 42 14             	lea    0x14(%edx),%eax ----  get 0xffffd6b4
 						---------------------$eax = 0xffffd6a4, *($eax) = 0x00007374
 8048fe7:	50                   	push   %eax
 8048fe8:	8d 42 10             	lea    0x10(%edx),%eax ----- get 0xffffd6b0
 						--------------------- $eax = 0xffffd6a0, *($eax) = 0x0
 8048feb:	50                   	push   %eax
 8048fec:	8d 42 0c             	lea    0xc(%edx),%eax  ----- get 0xffffd6ac
 						--------------------- $eax = 0xffffd69c
 8048fef:	50                   	push   %eax
 8048ff0:	8d 42 08             	lea    0x8(%edx),%eax ------- get 0xffffd6a8
 						--------------------- $eax = 0xffffd698
 8048ff3:	50                   	push   %eax
 8048ff4:	8d 42 04             	lea    0x4(%edx),%eax -------- get 0xffffd6a4
 						---------------------- $eax = 0xffffd694
 8048ff7:	50                   	push   %eax
 8048ff8:	52                   	push   %edx --------------- get 0xffffd6a0
 						---------------------- **($edx) == "GRADE_BOMB"
 8048ff9:	68 1b 9b 04 08       	push   $0x8049b1b ----------- get 0x8049b1b  "%d %d %d %d %d %d"
 8048ffe:	51                   	push   %ecx       ----------- get &phase_2
 						---------------------- get &phase_6
 8048fff:	e8 5c f8 ff ff       	call   8048860 <sscanf@plt>
 8049004:	83 c4 20             	add    $0x20,%esp
 8049007:	83 f8 05             	cmp    $0x5,%eax ------------ %eax:5
 804900a:	7f 05                	jg     8049011 <read_six_numbers+0x39>   ------ if >, goto right
 804900c:	e8 eb 04 00 00       	call   80494fc <explode_bomb>
 8049011:	89 ec                	mov    %ebp,%esp   ------------ :right
 8049013:	5d                   	pop    %ebp
 8049014:	c3                   	ret    
 8049015:	8d 76 00             	lea    0x0(%esi),%esi

08049018 <string_length>:
 8049018:	55                   	push   %ebp
 8049019:	89 e5                	mov    %esp,%ebp
 804901b:	8b 55 08             	mov    0x8(%ebp),%edx
 804901e:	31 c0                	xor    %eax,%eax  ; 0
 8049020:	80 3a 00             	cmpb   $0x0,(%edx)
 8049023:	74 07                	je     804902c <string_length+0x14>
 8049025:	42                   	inc    %edx
 8049026:	40                   	inc    %eax
 8049027:	80 3a 00             	cmpb   $0x0,(%edx)
 804902a:	75 f9                	jne    8049025 <string_length+0xd>
 804902c:	89 ec                	mov    %ebp,%esp
 804902e:	5d                   	pop    %ebp
 804902f:	c3                   	ret    

08049030 <strings_not_equal>:
 8049030:	55                   	push   %ebp
 8049031:	89 e5                	mov    %esp,%ebp
 8049033:	83 ec 0c             	sub    $0xc,%esp
 8049036:	57                   	push   %edi
 8049037:	56                   	push   %esi
 8049038:	53                   	push   %ebx
 8049039:	8b 75 08             	mov    0x8(%ebp),%esi ;&phase_1
 						----------- get  由phase_5字符串的字符是低4位在table中偏移得到的新字符串的起始地址
 804903c:	8b 7d 0c             	mov    0xc(%ebp),%edi ;0x80497c0
 						----------- get "giants", 则可以得出从table中得到的字符串为"giants"
 804903f:	83 c4 f4             	add    $0xfffffff4,%esp ;-12
 8049042:	56                   	push   %esi
 8049043:	e8 d0 ff ff ff       	call   8049018 <string_length>
 8049048:	89 c3                	mov    %eax,%ebx
 804904a:	83 c4 f4             	add    $0xfffffff4,%esp
 804904d:	57                   	push   %edi
 804904e:	e8 c5 ff ff ff       	call   8049018 <string_length>
 8049053:	39 c3                	cmp    %eax,%ebx
 8049055:	74 09                	je     8049060 <strings_not_equal+0x30>
 8049057:	b8 01 00 00 00       	mov    $0x1,%eax
 804905c:	eb 21                	jmp    804907f <strings_not_equal+0x4f>
 804905e:	89 f6                	mov    %esi,%esi
 8049060:	89 f2                	mov    %esi,%edx
 8049062:	89 f9                	mov    %edi,%ecx
 8049064:	80 3a 00             	cmpb   $0x0,(%edx)
 8049067:	74 14                	je     804907d <strings_not_equal+0x4d>
 8049069:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049070:	8a 02                	mov    (%edx),%al
 8049072:	3a 01                	cmp    (%ecx),%al
 8049074:	75 e1                	jne    8049057 <strings_not_equal+0x27>
 8049076:	42                   	inc    %edx
 8049077:	41                   	inc    %ecx
 8049078:	80 3a 00             	cmpb   $0x0,(%edx)
 804907b:	75 f3                	jne    8049070 <strings_not_equal+0x40>
 804907d:	31 c0                	xor    %eax,%eax
 804907f:	8d 65 e8             	lea    -0x18(%ebp),%esp
 8049082:	5b                   	pop    %ebx
 8049083:	5e                   	pop    %esi
 8049084:	5f                   	pop    %edi
 8049085:	89 ec                	mov    %ebp,%esp
 8049087:	5d                   	pop    %ebp
 8049088:	c3                   	ret    
 8049089:	8d 76 00             	lea    0x0(%esi),%esi

0804908c <open_clientfd>:
 804908c:	55                   	push   %ebp
 804908d:	89 e5                	mov    %esp,%ebp
 804908f:	83 ec 20             	sub    $0x20,%esp
 8049092:	56                   	push   %esi
 8049093:	53                   	push   %ebx
 8049094:	83 c4 fc             	add    $0xfffffffc,%esp
 8049097:	6a 00                	push   $0x0
 8049099:	6a 01                	push   $0x1
 804909b:	6a 02                	push   $0x2
 804909d:	e8 0e f8 ff ff       	call   80488b0 <socket@plt>
 80490a2:	89 c6                	mov    %eax,%esi
 80490a4:	83 c4 10             	add    $0x10,%esp
 80490a7:	85 f6                	test   %esi,%esi
 80490a9:	7d 17                	jge    80490c2 <open_clientfd+0x36>
 80490ab:	83 c4 f4             	add    $0xfffffff4,%esp
 80490ae:	68 2d 9b 04 08       	push   $0x8049b2d
 80490b3:	e8 58 f7 ff ff       	call   8048810 <printf@plt>
 80490b8:	83 c4 f4             	add    $0xfffffff4,%esp
 80490bb:	6a 08                	push   $0x8
 80490bd:	e8 8e f7 ff ff       	call   8048850 <exit@plt>
 80490c2:	83 c4 f4             	add    $0xfffffff4,%esp
 80490c5:	8b 45 08             	mov    0x8(%ebp),%eax
 80490c8:	50                   	push   %eax
 80490c9:	e8 62 f7 ff ff       	call   8048830 <gethostbyname@plt>
 80490ce:	89 c3                	mov    %eax,%ebx
 80490d0:	83 c4 10             	add    $0x10,%esp
 80490d3:	85 db                	test   %ebx,%ebx
 80490d5:	75 19                	jne    80490f0 <open_clientfd+0x64>
 80490d7:	83 c4 f4             	add    $0xfffffff4,%esp
 80490da:	68 3c 9b 04 08       	push   $0x8049b3c
 80490df:	e8 2c f7 ff ff       	call   8048810 <printf@plt>
 80490e4:	83 c4 f4             	add    $0xfffffff4,%esp
 80490e7:	6a 08                	push   $0x8
 80490e9:	e8 62 f7 ff ff       	call   8048850 <exit@plt>
 80490ee:	89 f6                	mov    %esi,%esi
 80490f0:	83 c4 f8             	add    $0xfffffff8,%esp
 80490f3:	6a 10                	push   $0x10
 80490f5:	8d 45 f0             	lea    -0x10(%ebp),%eax
 80490f8:	50                   	push   %eax
 80490f9:	e8 42 f7 ff ff       	call   8048840 <bzero@plt>
 80490fe:	66 c7 45 f0 02 00    	movw   $0x2,-0x10(%ebp)
 8049104:	83 c4 fc             	add    $0xfffffffc,%esp
 8049107:	8b 43 0c             	mov    0xc(%ebx),%eax
 804910a:	50                   	push   %eax
 804910b:	8d 45 f4             	lea    -0xc(%ebp),%eax
 804910e:	50                   	push   %eax
 804910f:	8b 43 10             	mov    0x10(%ebx),%eax
 8049112:	8b 00                	mov    (%eax),%eax
 8049114:	50                   	push   %eax
 8049115:	e8 76 f6 ff ff       	call   8048790 <bcopy@plt>
 804911a:	83 c4 20             	add    $0x20,%esp
 804911d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049120:	66 c1 c8 08          	ror    $0x8,%ax
 8049124:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
 8049128:	83 c4 fc             	add    $0xfffffffc,%esp
 804912b:	6a 10                	push   $0x10
 804912d:	8d 45 f0             	lea    -0x10(%ebp),%eax
 8049130:	50                   	push   %eax
 8049131:	56                   	push   %esi
 8049132:	e8 39 f7 ff ff       	call   8048870 <connect@plt>
 8049137:	83 c4 10             	add    $0x10,%esp
 804913a:	85 c0                	test   %eax,%eax
 804913c:	7d 17                	jge    8049155 <open_clientfd+0xc9>
 804913e:	83 c4 f4             	add    $0xfffffff4,%esp
 8049141:	68 4b 9b 04 08       	push   $0x8049b4b
 8049146:	e8 c5 f6 ff ff       	call   8048810 <printf@plt>
 804914b:	83 c4 f4             	add    $0xfffffff4,%esp
 804914e:	6a 08                	push   $0x8
 8049150:	e8 fb f6 ff ff       	call   8048850 <exit@plt>
 8049155:	89 f0                	mov    %esi,%eax
 8049157:	8d 65 d8             	lea    -0x28(%ebp),%esp
 804915a:	5b                   	pop    %ebx
 804915b:	5e                   	pop    %esi
 804915c:	89 ec                	mov    %ebp,%esp
 804915e:	5d                   	pop    %ebp
 804915f:	c3                   	ret    

08049160 <initialize_bomb>:
 8049160:	55                   	push   %ebp
 8049161:	89 e5                	mov    %esp,%ebp
 8049163:	83 ec 08             	sub    $0x8,%esp
 8049166:	83 c4 f8             	add    $0xfffffff8,%esp
 8049169:	68 50 8f 04 08       	push   $0x8048f50
 804916e:	6a 02                	push   $0x2
 8049170:	e8 fb f5 ff ff       	call   8048770 <signal@plt>
 8049175:	89 ec                	mov    %ebp,%esp
 8049177:	5d                   	pop    %ebp
 8049178:	c3                   	ret    
 8049179:	8d 76 00             	lea    0x0(%esi),%esi

0804917c <blank_line>:
 804917c:	55                   	push   %ebp
 804917d:	89 e5                	mov    %esp,%ebp
 804917f:	8b 55 08             	mov    0x8(%ebp),%edx
 8049182:	80 3a 00             	cmpb   $0x0,(%edx)
 8049185:	74 1e                	je     80491a5 <blank_line+0x29>
 8049187:	8b 0d 44 b6 04 08    	mov    0x804b644,%ecx
 804918d:	8d 76 00             	lea    0x0(%esi),%esi
 8049190:	0f be 02             	movsbl (%edx),%eax
 8049193:	42                   	inc    %edx
 8049194:	f6 44 41 01 20       	testb  $0x20,0x1(%ecx,%eax,2)
 8049199:	75 05                	jne    80491a0 <blank_line+0x24>
 804919b:	31 c0                	xor    %eax,%eax
 804919d:	eb 0b                	jmp    80491aa <blank_line+0x2e>
 804919f:	90                   	nop
 80491a0:	80 3a 00             	cmpb   $0x0,(%edx)
 80491a3:	75 eb                	jne    8049190 <blank_line+0x14>
 80491a5:	b8 01 00 00 00       	mov    $0x1,%eax
 80491aa:	89 ec                	mov    %ebp,%esp
 80491ac:	5d                   	pop    %ebp
 80491ad:	c3                   	ret    
 80491ae:	89 f6                	mov    %esi,%esi

080491b0 <skip>:
 80491b0:	55                   	push   %ebp
 80491b1:	89 e5                	mov    %esp,%ebp
 80491b3:	83 ec 14             	sub    $0x14,%esp
 80491b6:	53                   	push   %ebx
 80491b7:	83 c4 fc             	add    $0xfffffffc,%esp
 80491ba:	a1 64 b6 04 08       	mov    0x804b664,%eax
 80491bf:	50                   	push   %eax
 80491c0:	6a 50                	push   $0x50
 80491c2:	a1 80 b4 04 08       	mov    0x804b480,%eax
 80491c7:	8d 04 80             	lea    (%eax,%eax,4),%eax
 80491ca:	c1 e0 04             	shl    $0x4,%eax
 80491cd:	05 80 b6 04 08       	add    $0x804b680,%eax
 80491d2:	50                   	push   %eax
 80491d3:	e8 f8 f5 ff ff       	call   80487d0 <fgets@plt>
 80491d8:	89 c3                	mov    %eax,%ebx
 80491da:	83 c4 10             	add    $0x10,%esp
 80491dd:	85 db                	test   %ebx,%ebx
 80491df:	74 10                	je     80491f1 <skip+0x41>
 80491e1:	83 c4 f4             	add    $0xfffffff4,%esp
 80491e4:	53                   	push   %ebx
 80491e5:	e8 92 ff ff ff       	call   804917c <blank_line>
 80491ea:	83 c4 10             	add    $0x10,%esp
 80491ed:	85 c0                	test   %eax,%eax
 80491ef:	75 c6                	jne    80491b7 <skip+0x7>
 80491f1:	89 d8                	mov    %ebx,%eax
 80491f3:	8b 5d e8             	mov    -0x18(%ebp),%ebx
 80491f6:	89 ec                	mov    %ebp,%esp
 80491f8:	5d                   	pop    %ebp
 80491f9:	c3                   	ret    
 80491fa:	89 f6                	mov    %esi,%esi

080491fc <read_line>:
 80491fc:	55                   	push   %ebp
 80491fd:	89 e5                	mov    %esp,%ebp
 80491ff:	83 ec 14             	sub    $0x14,%esp
 8049202:	57                   	push   %edi
 8049203:	e8 a8 ff ff ff       	call   80491b0 <skip>
 8049208:	85 c0                	test   %eax,%eax
 804920a:	75 53                	jne    804925f <read_line+0x63>
 804920c:	a1 64 b6 04 08       	mov    0x804b664,%eax
 8049211:	3b 05 48 b6 04 08    	cmp    0x804b648,%eax
 8049217:	74 31                	je     804924a <read_line+0x4e>
 8049219:	83 c4 f4             	add    $0xfffffff4,%esp
 804921c:	68 7f 9b 04 08       	push   $0x8049b7f
 8049221:	e8 3a f5 ff ff       	call   8048760 <getenv@plt>
 8049226:	83 c4 10             	add    $0x10,%esp
 8049229:	85 c0                	test   %eax,%eax
 804922b:	74 0a                	je     8049237 <read_line+0x3b>
 804922d:	83 c4 f4             	add    $0xfffffff4,%esp
 8049230:	6a 00                	push   $0x0
 8049232:	e8 19 f6 ff ff       	call   8048850 <exit@plt>
 8049237:	a1 48 b6 04 08       	mov    0x804b648,%eax
 804923c:	a3 64 b6 04 08       	mov    %eax,0x804b664
 8049241:	e8 6a ff ff ff       	call   80491b0 <skip>
 8049246:	85 c0                	test   %eax,%eax
 8049248:	75 15                	jne    804925f <read_line+0x63>
 804924a:	83 c4 f4             	add    $0xfffffff4,%esp
 804924d:	68 60 9b 04 08       	push   $0x8049b60
 8049252:	e8 b9 f5 ff ff       	call   8048810 <printf@plt>
 8049257:	e8 a0 02 00 00       	call   80494fc <explode_bomb>
 804925c:	83 c4 10             	add    $0x10,%esp
 804925f:	a1 80 b4 04 08       	mov    0x804b480,%eax
 8049264:	8d 04 80             	lea    (%eax,%eax,4),%eax
 8049267:	c1 e0 04             	shl    $0x4,%eax
 804926a:	8d b8 80 b6 04 08    	lea    0x804b680(%eax),%edi
 8049270:	b0 00                	mov    $0x0,%al
 8049272:	fc                   	cld    
 8049273:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049278:	f2 ae                	repnz scas %es:(%edi),%al
 804927a:	89 c8                	mov    %ecx,%eax
 804927c:	f7 d0                	not    %eax
 804927e:	8d 78 ff             	lea    -0x1(%eax),%edi
 8049281:	83 ff 4f             	cmp    $0x4f,%edi
 8049284:	75 12                	jne    8049298 <read_line+0x9c>
 8049286:	83 c4 f4             	add    $0xfffffff4,%esp
 8049289:	68 8a 9b 04 08       	push   $0x8049b8a
 804928e:	e8 7d f5 ff ff       	call   8048810 <printf@plt>
 8049293:	e8 64 02 00 00       	call   80494fc <explode_bomb>
 8049298:	a1 80 b4 04 08       	mov    0x804b480,%eax
 804929d:	8d 04 80             	lea    (%eax,%eax,4),%eax
 80492a0:	c1 e0 04             	shl    $0x4,%eax
 80492a3:	c6 84 07 7f b6 04 08 	movb   $0x0,0x804b67f(%edi,%eax,1)
 80492aa:	00 
 80492ab:	05 80 b6 04 08       	add    $0x804b680,%eax
 80492b0:	ff 05 80 b4 04 08    	incl   0x804b480
 80492b6:	8b 7d e8             	mov    -0x18(%ebp),%edi
 80492b9:	89 ec                	mov    %ebp,%esp
 80492bb:	5d                   	pop    %ebp
 80492bc:	c3                   	ret    
 80492bd:	8d 76 00             	lea    0x0(%esi),%esi

080492c0 <send_msg>:
 80492c0:	55                   	push   %ebp
 80492c1:	89 e5                	mov    %esp,%ebp
 80492c3:	83 ec 5c             	sub    $0x5c,%esp
 80492c6:	57                   	push   %edi
 80492c7:	56                   	push   %esi
 80492c8:	53                   	push   %ebx
 80492c9:	83 c4 f4             	add    $0xfffffff4,%esp
 80492cc:	6a 00                	push   $0x0
 80492ce:	e8 bd f5 ff ff       	call   8048890 <dup@plt>
 80492d3:	89 c7                	mov    %eax,%edi
 80492d5:	83 c4 10             	add    $0x10,%esp
 80492d8:	83 ff ff             	cmp    $0xffffffff,%edi
 80492db:	75 17                	jne    80492f4 <send_msg+0x34>
 80492dd:	83 c4 f4             	add    $0xfffffff4,%esp
 80492e0:	68 a6 9b 04 08       	push   $0x8049ba6
 80492e5:	e8 26 f5 ff ff       	call   8048810 <printf@plt>
 80492ea:	83 c4 f4             	add    $0xfffffff4,%esp
 80492ed:	6a 08                	push   $0x8
 80492ef:	e8 5c f5 ff ff       	call   8048850 <exit@plt>
 80492f4:	83 c4 f4             	add    $0xfffffff4,%esp
 80492f7:	6a 00                	push   $0x0
 80492f9:	e8 32 f4 ff ff       	call   8048730 <close@plt>
 80492fe:	83 c4 10             	add    $0x10,%esp
 8049301:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049304:	75 1a                	jne    8049320 <send_msg+0x60>
 8049306:	83 c4 f4             	add    $0xfffffff4,%esp
 8049309:	68 bb 9b 04 08       	push   $0x8049bbb
 804930e:	e8 fd f4 ff ff       	call   8048810 <printf@plt>
 8049313:	83 c4 f4             	add    $0xfffffff4,%esp
 8049316:	6a 08                	push   $0x8
 8049318:	e8 33 f5 ff ff       	call   8048850 <exit@plt>
 804931d:	8d 76 00             	lea    0x0(%esi),%esi
 8049320:	e8 2b f4 ff ff       	call   8048750 <tmpfile@plt>
 8049325:	89 c6                	mov    %eax,%esi
 8049327:	85 f6                	test   %esi,%esi
 8049329:	75 17                	jne    8049342 <send_msg+0x82>
 804932b:	83 c4 f4             	add    $0xfffffff4,%esp
 804932e:	68 cf 9b 04 08       	push   $0x8049bcf
 8049333:	e8 d8 f4 ff ff       	call   8048810 <printf@plt>
 8049338:	83 c4 f4             	add    $0xfffffff4,%esp
 804933b:	6a 08                	push   $0x8
 804933d:	e8 0e f5 ff ff       	call   8048850 <exit@plt>
 8049342:	83 c4 f8             	add    $0xfffffff8,%esp
 8049345:	68 e5 9b 04 08       	push   $0x8049be5
 804934a:	56                   	push   %esi
 804934b:	e8 f0 f3 ff ff       	call   8048740 <fprintf@plt>
 8049350:	83 c4 f8             	add    $0xfffffff8,%esp
 8049353:	68 01 9c 04 08       	push   $0x8049c01
 8049358:	56                   	push   %esi
 8049359:	e8 e2 f3 ff ff       	call   8048740 <fprintf@plt>
 804935e:	83 c4 20             	add    $0x20,%esp
 8049361:	83 c4 f4             	add    $0xfffffff4,%esp
 8049364:	6a 00                	push   $0x0
 8049366:	e8 55 f5 ff ff       	call   80488c0 <cuserid@plt>
 804936b:	83 c4 10             	add    $0x10,%esp
 804936e:	85 c0                	test   %eax,%eax
 8049370:	75 1e                	jne    8049390 <send_msg+0xd0>
 8049372:	8d 45 b0             	lea    -0x50(%ebp),%eax
 8049375:	c7 00 6e 6f 62 6f    	movl   $0x6f626f6e,(%eax)
 804937b:	83 c0 04             	add    $0x4,%eax
 804937e:	66 c7 00 64 79       	movw   $0x7964,(%eax)
 8049383:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 8049387:	eb 17                	jmp    80493a0 <send_msg+0xe0>
 8049389:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049390:	83 c4 f8             	add    $0xfffffff8,%esp
 8049393:	50                   	push   %eax
 8049394:	8d 45 b0             	lea    -0x50(%ebp),%eax
 8049397:	50                   	push   %eax
 8049398:	e8 33 f5 ff ff       	call   80488d0 <strcpy@plt>
 804939d:	83 c4 10             	add    $0x10,%esp
 80493a0:	83 c4 fc             	add    $0xfffffffc,%esp
 80493a3:	a1 80 b4 04 08       	mov    0x804b480,%eax
 80493a8:	50                   	push   %eax
 80493a9:	b8 12 9c 04 08       	mov    $0x8049c12,%eax
 80493ae:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80493b2:	74 05                	je     80493b9 <send_msg+0xf9>
 80493b4:	b8 0a 9c 04 08       	mov    $0x8049c0a,%eax
 80493b9:	50                   	push   %eax
 80493ba:	8d 45 b0             	lea    -0x50(%ebp),%eax
 80493bd:	50                   	push   %eax
 80493be:	a1 00 ae 04 08       	mov    0x804ae00,%eax
 80493c3:	50                   	push   %eax
 80493c4:	68 20 ae 04 08       	push   $0x804ae20
 80493c9:	68 1b 9c 04 08       	push   $0x8049c1b
 80493ce:	56                   	push   %esi
 80493cf:	e8 6c f3 ff ff       	call   8048740 <fprintf@plt>
 80493d4:	31 d2                	xor    %edx,%edx
 80493d6:	83 c4 20             	add    $0x20,%esp
 80493d9:	3b 15 80 b4 04 08    	cmp    0x804b480,%edx
 80493df:	7d 3a                	jge    804941b <send_msg+0x15b>
 80493e1:	83 c4 fc             	add    $0xfffffffc,%esp
 80493e4:	8d 04 92             	lea    (%edx,%edx,4),%eax
 80493e7:	c1 e0 04             	shl    $0x4,%eax
 80493ea:	05 80 b6 04 08       	add    $0x804b680,%eax
 80493ef:	50                   	push   %eax
 80493f0:	8d 5a 01             	lea    0x1(%edx),%ebx
 80493f3:	53                   	push   %ebx
 80493f4:	8d 45 b0             	lea    -0x50(%ebp),%eax
 80493f7:	50                   	push   %eax
 80493f8:	a1 00 ae 04 08       	mov    0x804ae00,%eax
 80493fd:	50                   	push   %eax
 80493fe:	68 20 ae 04 08       	push   $0x804ae20
 8049403:	68 37 9c 04 08       	push   $0x8049c37
 8049408:	56                   	push   %esi
 8049409:	e8 32 f3 ff ff       	call   8048740 <fprintf@plt>
 804940e:	83 c4 20             	add    $0x20,%esp
 8049411:	89 da                	mov    %ebx,%edx
 8049413:	3b 15 80 b4 04 08    	cmp    0x804b480,%edx
 8049419:	7c c6                	jl     80493e1 <send_msg+0x121>
 804941b:	83 c4 f4             	add    $0xfffffff4,%esp
 804941e:	56                   	push   %esi
 804941f:	e8 7c f3 ff ff       	call   80487a0 <rewind@plt>
 8049424:	83 c4 f4             	add    $0xfffffff4,%esp
 8049427:	68 81 9a 04 08       	push   $0x8049a81
 804942c:	68 53 9c 04 08       	push   $0x8049c53
 8049431:	68 58 9c 04 08       	push   $0x8049c58
 8049436:	68 6f 9c 04 08       	push   $0x8049c6f
 804943b:	68 c0 bc 04 08       	push   $0x804bcc0
 8049440:	e8 5b f4 ff ff       	call   80488a0 <sprintf@plt>
 8049445:	83 c4 30             	add    $0x30,%esp
 8049448:	83 c4 f4             	add    $0xfffffff4,%esp
 804944b:	68 c0 bc 04 08       	push   $0x804bcc0
 8049450:	e8 5b f3 ff ff       	call   80487b0 <system@plt>
 8049455:	83 c4 10             	add    $0x10,%esp
 8049458:	85 c0                	test   %eax,%eax
 804945a:	74 17                	je     8049473 <send_msg+0x1b3>
 804945c:	83 c4 f4             	add    $0xfffffff4,%esp
 804945f:	68 78 9c 04 08       	push   $0x8049c78
 8049464:	e8 a7 f3 ff ff       	call   8048810 <printf@plt>
 8049469:	83 c4 f4             	add    $0xfffffff4,%esp
 804946c:	6a 08                	push   $0x8
 804946e:	e8 dd f3 ff ff       	call   8048850 <exit@plt>
 8049473:	83 c4 f4             	add    $0xfffffff4,%esp
 8049476:	56                   	push   %esi
 8049477:	e8 a4 f3 ff ff       	call   8048820 <fclose@plt>
 804947c:	83 c4 10             	add    $0x10,%esp
 804947f:	85 c0                	test   %eax,%eax
 8049481:	74 1d                	je     80494a0 <send_msg+0x1e0>
 8049483:	83 c4 f4             	add    $0xfffffff4,%esp
 8049486:	68 93 9c 04 08       	push   $0x8049c93
 804948b:	e8 80 f3 ff ff       	call   8048810 <printf@plt>
 8049490:	83 c4 f4             	add    $0xfffffff4,%esp
 8049493:	6a 08                	push   $0x8
 8049495:	e8 b6 f3 ff ff       	call   8048850 <exit@plt>
 804949a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80494a0:	83 c4 f4             	add    $0xfffffff4,%esp
 80494a3:	57                   	push   %edi
 80494a4:	e8 e7 f3 ff ff       	call   8048890 <dup@plt>
 80494a9:	83 c4 10             	add    $0x10,%esp
 80494ac:	85 c0                	test   %eax,%eax
 80494ae:	74 17                	je     80494c7 <send_msg+0x207>
 80494b0:	83 c4 f4             	add    $0xfffffff4,%esp
 80494b3:	68 ad 9c 04 08       	push   $0x8049cad
 80494b8:	e8 53 f3 ff ff       	call   8048810 <printf@plt>
 80494bd:	83 c4 f4             	add    $0xfffffff4,%esp
 80494c0:	6a 08                	push   $0x8
 80494c2:	e8 89 f3 ff ff       	call   8048850 <exit@plt>
 80494c7:	83 c4 f4             	add    $0xfffffff4,%esp
 80494ca:	57                   	push   %edi
 80494cb:	e8 60 f2 ff ff       	call   8048730 <close@plt>
 80494d0:	83 c4 10             	add    $0x10,%esp
 80494d3:	85 c0                	test   %eax,%eax
 80494d5:	74 19                	je     80494f0 <send_msg+0x230>
 80494d7:	83 c4 f4             	add    $0xfffffff4,%esp
 80494da:	68 c9 9c 04 08       	push   $0x8049cc9
 80494df:	e8 2c f3 ff ff       	call   8048810 <printf@plt>
 80494e4:	83 c4 f4             	add    $0xfffffff4,%esp
 80494e7:	6a 08                	push   $0x8
 80494e9:	e8 62 f3 ff ff       	call   8048850 <exit@plt>
 80494ee:	89 f6                	mov    %esi,%esi
 80494f0:	8d 65 98             	lea    -0x68(%ebp),%esp
 80494f3:	5b                   	pop    %ebx
 80494f4:	5e                   	pop    %esi
 80494f5:	5f                   	pop    %edi
 80494f6:	89 ec                	mov    %ebp,%esp
 80494f8:	5d                   	pop    %ebp
 80494f9:	c3                   	ret    
 80494fa:	89 f6                	mov    %esi,%esi

080494fc <explode_bomb>:
 80494fc:	55                   	push   %ebp
 80494fd:	89 e5                	mov    %esp,%ebp
 80494ff:	83 ec 08             	sub    $0x8,%esp
 8049502:	83 c4 f4             	add    $0xfffffff4,%esp
 8049505:	68 e1 9c 04 08       	push   $0x8049ce1
 804950a:	e8 01 f3 ff ff       	call   8048810 <printf@plt>
 804950f:	83 c4 f4             	add    $0xfffffff4,%esp
 8049512:	68 eb 9c 04 08       	push   $0x8049ceb
 8049517:	e8 f4 f2 ff ff       	call   8048810 <printf@plt>
 804951c:	83 c4 20             	add    $0x20,%esp
 804951f:	83 c4 f4             	add    $0xfffffff4,%esp
 8049522:	6a 08                	push   $0x8
 8049524:	e8 27 f3 ff ff       	call   8048850 <exit@plt>
 8049529:	8d 76 00             	lea    0x0(%esi),%esi

0804952c <phase_defused>:
 804952c:	55                   	push   %ebp
 804952d:	89 e5                	mov    %esp,%ebp
 804952f:	83 ec 64             	sub    $0x64,%esp
 8049532:	53                   	push   %ebx
 8049533:	83 3d 80 b4 04 08 06 	cmpl   $0x6,0x804b480
 804953a:	75 63                	jne    804959f <phase_defused+0x73>
 804953c:	8d 5d b0             	lea    -0x50(%ebp),%ebx ------ set $ebx = $ebp-0x50
 804953f:	53                   	push   %ebx
 8049540:	8d 45 ac             	lea    -0x54(%ebp),%eax
 8049543:	50                   	push   %eax
 8049544:	68 03 9d 04 08       	push   $0x8049d03
 8049549:	68 70 b7 04 08       	push   $0x804b770
 804954e:	e8 0d f3 ff ff       	call   8048860 <sscanf@plt>
 8049553:	83 c4 10             	add    $0x10,%esp
 8049556:	83 f8 02             	cmp    $0x2,%eax
 8049559:	75 37                	jne    8049592 <phase_defused+0x66>
 804955b:	83 c4 f8             	add    $0xfffffff8,%esp
 804955e:	68 09 9d 04 08       	push   $0x8049d09
 8049563:	53                   	push   %ebx
 8049564:	e8 c7 fa ff ff       	call   8049030 <strings_not_equal>
 8049569:	83 c4 10             	add    $0x10,%esp
 804956c:	85 c0                	test   %eax,%eax
 804956e:	75 22                	jne    8049592 <phase_defused+0x66>
 8049570:	83 c4 f4             	add    $0xfffffff4,%esp
 8049573:	68 20 9d 04 08       	push   $0x8049d20
 8049578:	e8 93 f2 ff ff       	call   8048810 <printf@plt>
 804957d:	83 c4 f4             	add    $0xfffffff4,%esp
 8049580:	68 60 9d 04 08       	push   $0x8049d60
 8049585:	e8 86 f2 ff ff       	call   8048810 <printf@plt>
 804958a:	83 c4 20             	add    $0x20,%esp
 804958d:	e8 56 f9 ff ff       	call   8048ee8 <secret_phase>
 8049592:	83 c4 f4             	add    $0xfffffff4,%esp
 8049595:	68 a0 9d 04 08       	push   $0x8049da0
 804959a:	e8 71 f2 ff ff       	call   8048810 <printf@plt>
 804959f:	8b 5d 98             	mov    -0x68(%ebp),%ebx
 80495a2:	89 ec                	mov    %ebp,%esp
 80495a4:	5d                   	pop    %ebp
 80495a5:	c3                   	ret    
 80495a6:	90                   	nop
 80495a7:	90                   	nop
 80495a8:	90                   	nop
 80495a9:	90                   	nop
 80495aa:	90                   	nop
 80495ab:	90                   	nop
 80495ac:	90                   	nop
 80495ad:	90                   	nop
 80495ae:	90                   	nop
 80495af:	90                   	nop

080495b0 <__do_global_ctors_aux>:
 80495b0:	55                   	push   %ebp
 80495b1:	89 e5                	mov    %esp,%ebp
 80495b3:	83 ec 14             	sub    $0x14,%esp
 80495b6:	53                   	push   %ebx
 80495b7:	bb 08 b5 04 08       	mov    $0x804b508,%ebx
 80495bc:	83 3d 08 b5 04 08 ff 	cmpl   $0xffffffff,0x804b508
 80495c3:	74 0c                	je     80495d1 <__do_global_ctors_aux+0x21>
 80495c5:	8b 03                	mov    (%ebx),%eax
 80495c7:	ff d0                	call   *%eax
 80495c9:	83 c3 fc             	add    $0xfffffffc,%ebx
 80495cc:	83 3b ff             	cmpl   $0xffffffff,(%ebx)
 80495cf:	75 f4                	jne    80495c5 <__do_global_ctors_aux+0x15>
 80495d1:	5b                   	pop    %ebx
 80495d2:	89 ec                	mov    %ebp,%esp
 80495d4:	5d                   	pop    %ebp
 80495d5:	c3                   	ret    
 80495d6:	89 f6                	mov    %esi,%esi

080495d8 <init_dummy>:
 80495d8:	55                   	push   %ebp
 80495d9:	89 e5                	mov    %esp,%ebp
 80495db:	83 ec 08             	sub    $0x8,%esp
 80495de:	89 ec                	mov    %ebp,%esp
 80495e0:	5d                   	pop    %ebp
 80495e1:	c3                   	ret    
 80495e2:	90                   	nop
 80495e3:	90                   	nop

Disassembly of section .fini:

080495e4 <_fini>:
 80495e4:	55                   	push   %ebp
 80495e5:	89 e5                	mov    %esp,%ebp
 80495e7:	53                   	push   %ebx
 80495e8:	e8 00 00 00 00       	call   80495ed <_fini+0x9>
 80495ed:	5b                   	pop    %ebx
 80495ee:	81 c3 2b 1f 00 00    	add    $0x1f2b,%ebx
 80495f4:	e8 17 f3 ff ff       	call   8048910 <__do_global_dtors_aux>
 80495f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80495fc:	c9                   	leave  
 80495fd:	c3                   	ret    
