
kernel/kernel:     file format elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	fa                   	cli    
c0030001:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030008:	0f 20 c0             	mov    %cr0,%eax
c003000b:	83 c8 01             	or     $0x1,%eax
c003000e:	0f 22 c0             	mov    %eax,%cr0
c0030011:	ea 18 00 03 00 08 00 	ljmp   $0x8,$0x30018

c0030018 <start_cond>:
c0030018:	66 b8 10 00          	mov    $0x10,%ax
c003001c:	8e d8                	mov    %eax,%ds
c003001e:	8e c0                	mov    %eax,%es
c0030020:	8e d0                	mov    %eax,%ss
c0030022:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030027:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002c:	83 ec 10             	sub    $0x10,%esp
c003002f:	e9 bf 00 00 00       	jmp    c00300f3 <init>

c0030034 <gdt>:
	...
c003003c:	ff                   	(bad)  
c003003d:	ff 00                	incl   (%eax)
c003003f:	00 00                	add    %al,(%eax)
c0030041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0030048:	00                   	.byte 0x0
c0030049:	92                   	xchg   %eax,%edx
c003004a:	cf                   	iret   
	...

c003004c <gdtdesc>:
c003004c:	17                   	pop    %ss
c003004d:	00 34 00             	add    %dh,(%eax,%eax,1)
c0030050:	03 00                	add    (%eax),%eax

c0030052 <vec0>:
c0030052:	6a 00                	push   $0x0
c0030054:	6a 00                	push   $0x0
c0030056:	eb 7b                	jmp    c00300d3 <asm_do_irq>

c0030058 <vec1>:
c0030058:	6a 00                	push   $0x0
c003005a:	6a 01                	push   $0x1
c003005c:	eb 75                	jmp    c00300d3 <asm_do_irq>

c003005e <vec2>:
c003005e:	6a 00                	push   $0x0
c0030060:	6a 02                	push   $0x2
c0030062:	eb 6f                	jmp    c00300d3 <asm_do_irq>

c0030064 <vec3>:
c0030064:	6a 00                	push   $0x0
c0030066:	6a 03                	push   $0x3
c0030068:	eb 69                	jmp    c00300d3 <asm_do_irq>

c003006a <vec4>:
c003006a:	6a 00                	push   $0x0
c003006c:	6a 04                	push   $0x4
c003006e:	eb 63                	jmp    c00300d3 <asm_do_irq>

c0030070 <vec5>:
c0030070:	6a 00                	push   $0x0
c0030072:	6a 05                	push   $0x5
c0030074:	eb 5d                	jmp    c00300d3 <asm_do_irq>

c0030076 <vec6>:
c0030076:	6a 00                	push   $0x0
c0030078:	6a 06                	push   $0x6
c003007a:	eb 57                	jmp    c00300d3 <asm_do_irq>

c003007c <vec7>:
c003007c:	6a 00                	push   $0x0
c003007e:	6a 07                	push   $0x7
c0030080:	eb 51                	jmp    c00300d3 <asm_do_irq>

c0030082 <vec8>:
c0030082:	6a 08                	push   $0x8
c0030084:	eb 4d                	jmp    c00300d3 <asm_do_irq>

c0030086 <vec9>:
c0030086:	6a 00                	push   $0x0
c0030088:	6a 09                	push   $0x9
c003008a:	eb 47                	jmp    c00300d3 <asm_do_irq>

c003008c <vec10>:
c003008c:	6a 0a                	push   $0xa
c003008e:	eb 43                	jmp    c00300d3 <asm_do_irq>

c0030090 <vec11>:
c0030090:	6a 0b                	push   $0xb
c0030092:	eb 3f                	jmp    c00300d3 <asm_do_irq>

c0030094 <vec12>:
c0030094:	6a 0c                	push   $0xc
c0030096:	eb 3b                	jmp    c00300d3 <asm_do_irq>

c0030098 <vec13>:
c0030098:	6a 0d                	push   $0xd
c003009a:	eb 37                	jmp    c00300d3 <asm_do_irq>

c003009c <vec14>:
c003009c:	6a 0e                	push   $0xe
c003009e:	eb 33                	jmp    c00300d3 <asm_do_irq>

c00300a0 <vecsys>:
c00300a0:	6a 00                	push   $0x0
c00300a2:	68 80 00 00 00       	push   $0x80
c00300a7:	eb 2a                	jmp    c00300d3 <asm_do_irq>

c00300a9 <irq0>:
c00300a9:	6a 00                	push   $0x0
c00300ab:	68 e8 03 00 00       	push   $0x3e8
c00300b0:	eb 21                	jmp    c00300d3 <asm_do_irq>

c00300b2 <irq1>:
c00300b2:	6a 00                	push   $0x0
c00300b4:	68 e9 03 00 00       	push   $0x3e9
c00300b9:	eb 18                	jmp    c00300d3 <asm_do_irq>

c00300bb <irq2>:
c00300bb:	6a 00                	push   $0x0
c00300bd:	68 ea 03 00 00       	push   $0x3ea
c00300c2:	eb 0f                	jmp    c00300d3 <asm_do_irq>

c00300c4 <irq14>:
c00300c4:	6a 00                	push   $0x0
c00300c6:	68 f6 03 00 00       	push   $0x3f6
c00300cb:	eb 06                	jmp    c00300d3 <asm_do_irq>

c00300cd <irq_empty>:
c00300cd:	6a 00                	push   $0x0
c00300cf:	6a ff                	push   $0xffffffff
c00300d1:	eb 00                	jmp    c00300d3 <asm_do_irq>

c00300d3 <asm_do_irq>:
c00300d3:	60                   	pusha  
c00300d4:	54                   	push   %esp
c00300d5:	e8 19 12 00 00       	call   c00312f3 <irq_handle>
c00300da:	83 c4 04             	add    $0x4,%esp
c00300dd:	61                   	popa   
c00300de:	83 c4 08             	add    $0x8,%esp
c00300e1:	cf                   	iret   

c00300e2 <sti>:
c00300e2:	55                   	push   %ebp
c00300e3:	89 e5                	mov    %esp,%ebp
c00300e5:	e8 9d 00 00 00       	call   c0030187 <__x86.get_pc_thunk.ax>
c00300ea:	05 16 bf 00 00       	add    $0xbf16,%eax
c00300ef:	fb                   	sti    
c00300f0:	90                   	nop
c00300f1:	5d                   	pop    %ebp
c00300f2:	c3                   	ret    

c00300f3 <init>:
c00300f3:	55                   	push   %ebp
c00300f4:	89 e5                	mov    %esp,%ebp
c00300f6:	53                   	push   %ebx
c00300f7:	83 ec 04             	sub    $0x4,%esp
c00300fa:	e8 8c 00 00 00       	call   c003018b <__x86.get_pc_thunk.bx>
c00300ff:	81 c3 01 bf 00 00    	add    $0xbf01,%ebx
c0030105:	e8 00 04 00 00       	call   c003050a <init_page>
c003010a:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0030110:	8d 83 25 41 ff bf    	lea    -0x4000bedb(%ebx),%eax
c0030116:	ff e0                	jmp    *%eax
c0030118:	b8 01 00 00 00       	mov    $0x1,%eax
c003011d:	82 90 83 c4 04 5b 5d 	adcb   $0x5d,0x5b04c483(%eax)
c0030124:	c3                   	ret    

c0030125 <init_cond>:
c0030125:	55                   	push   %ebp
c0030126:	89 e5                	mov    %esp,%ebp
c0030128:	53                   	push   %ebx
c0030129:	83 ec 14             	sub    $0x14,%esp
c003012c:	e8 5a 00 00 00       	call   c003018b <__x86.get_pc_thunk.bx>
c0030131:	81 c3 cf be 00 00    	add    $0xbecf,%ebx
c0030137:	e8 ad 05 00 00       	call   c00306e9 <init_segment>
c003013c:	e8 0b 14 00 00       	call   c003154c <init_idt>
c0030141:	e8 9c ff ff ff       	call   c00300e2 <sti>
c0030146:	e8 4b 0e 00 00       	call   c0030f96 <init_ide>
c003014b:	e8 87 06 00 00       	call   c00307d7 <init_mm>
c0030150:	8d 83 00 c7 ff ff    	lea    -0x3900(%ebx),%eax
c0030156:	50                   	push   %eax
c0030157:	6a 4b                	push   $0x4b
c0030159:	8d 83 c0 c6 ff ff    	lea    -0x3940(%ebx),%eax
c003015f:	50                   	push   %eax
c0030160:	8d 83 cc c6 ff ff    	lea    -0x3934(%ebx),%eax
c0030166:	50                   	push   %eax
c0030167:	e8 ed 07 00 00       	call   c0030959 <printk>
c003016c:	83 c4 10             	add    $0x10,%esp
c003016f:	e8 4f 08 00 00       	call   c00309c3 <loader>
c0030174:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030177:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c003017c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003017f:	ff d0                	call   *%eax
c0030181:	90                   	nop
c0030182:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030185:	c9                   	leave  
c0030186:	c3                   	ret    

c0030187 <__x86.get_pc_thunk.ax>:
c0030187:	8b 04 24             	mov    (%esp),%eax
c003018a:	c3                   	ret    

c003018b <__x86.get_pc_thunk.bx>:
c003018b:	8b 1c 24             	mov    (%esp),%ebx
c003018e:	c3                   	ret    

c003018f <fs_open>:
c003018f:	55                   	push   %ebp
c0030190:	89 e5                	mov    %esp,%ebp
c0030192:	53                   	push   %ebx
c0030193:	83 ec 04             	sub    $0x4,%esp
c0030196:	e8 ec ff ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003019b:	05 65 be 00 00       	add    $0xbe65,%eax
c00301a0:	8d 90 a8 c9 ff ff    	lea    -0x3658(%eax),%edx
c00301a6:	52                   	push   %edx
c00301a7:	6a 2c                	push   $0x2c
c00301a9:	8d 90 df c7 ff ff    	lea    -0x3821(%eax),%edx
c00301af:	52                   	push   %edx
c00301b0:	8d 90 ec c7 ff ff    	lea    -0x3814(%eax),%edx
c00301b6:	52                   	push   %edx
c00301b7:	89 c3                	mov    %eax,%ebx
c00301b9:	e8 9b 07 00 00       	call   c0030959 <printk>
c00301be:	83 c4 10             	add    $0x10,%esp
c00301c1:	b8 01 00 00 00       	mov    $0x1,%eax
c00301c6:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c00301cd:	5d                   	pop    %ebp
c00301ce:	fc                   	cld    
c00301cf:	c9                   	leave  
c00301d0:	c3                   	ret    

c00301d1 <fs_read>:
c00301d1:	55                   	push   %ebp
c00301d2:	89 e5                	mov    %esp,%ebp
c00301d4:	53                   	push   %ebx
c00301d5:	83 ec 04             	sub    $0x4,%esp
c00301d8:	e8 ae ff ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00301dd:	81 c3 23 be 00 00    	add    $0xbe23,%ebx
c00301e3:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00301e7:	7f 2f                	jg     c0030218 <fs_read+0x47>
c00301e9:	83 ec 0c             	sub    $0xc,%esp
c00301ec:	8d 83 42 c8 ff ff    	lea    -0x37be(%ebx),%eax
c00301f2:	50                   	push   %eax
c00301f3:	8d 83 b0 c9 ff ff    	lea    -0x3650(%ebx),%eax
c00301f9:	50                   	push   %eax
c00301fa:	6a 31                	push   $0x31
c00301fc:	8d 83 df c7 ff ff    	lea    -0x3821(%ebx),%eax
c0030202:	50                   	push   %eax
c0030203:	8d 83 4c c8 ff ff    	lea    -0x37b4(%ebx),%eax
c0030209:	50                   	push   %eax
c003020a:	e8 4a 07 00 00       	call   c0030959 <printk>
c003020f:	83 c4 20             	add    $0x20,%esp
c0030212:	b8 01 00 00 00       	mov    $0x1,%eax
c0030217:	82 8d 83 b0 c9 ff ff 	orb    $0xff,-0x364f7d(%ebp)
c003021e:	50                   	push   %eax
c003021f:	6a 32                	push   $0x32
c0030221:	8d 83 df c7 ff ff    	lea    -0x3821(%ebx),%eax
c0030227:	50                   	push   %eax
c0030228:	8d 83 98 c8 ff ff    	lea    -0x3768(%ebx),%eax
c003022e:	50                   	push   %eax
c003022f:	e8 25 07 00 00       	call   c0030959 <printk>
c0030234:	83 c4 10             	add    $0x10,%esp
c0030237:	b8 01 00 00 00       	mov    $0x1,%eax
c003023c:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c0030243:	5d                   	pop    %ebp
c0030244:	fc                   	cld    
c0030245:	c9                   	leave  
c0030246:	c3                   	ret    

c0030247 <fs_write>:
c0030247:	55                   	push   %ebp
c0030248:	89 e5                	mov    %esp,%ebp
c003024a:	53                   	push   %ebx
c003024b:	83 ec 14             	sub    $0x14,%esp
c003024e:	e8 38 ff ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030253:	81 c3 ad bd 00 00    	add    $0xbdad,%ebx
c0030259:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003025d:	7e 2f                	jle    c003028e <fs_write+0x47>
c003025f:	83 ec 0c             	sub    $0xc,%esp
c0030262:	8d 83 ee c8 ff ff    	lea    -0x3712(%ebx),%eax
c0030268:	50                   	push   %eax
c0030269:	8d 83 b8 c9 ff ff    	lea    -0x3648(%ebx),%eax
c003026f:	50                   	push   %eax
c0030270:	6a 37                	push   $0x37
c0030272:	8d 83 df c7 ff ff    	lea    -0x3821(%ebx),%eax
c0030278:	50                   	push   %eax
c0030279:	8d 83 4c c8 ff ff    	lea    -0x37b4(%ebx),%eax
c003027f:	50                   	push   %eax
c0030280:	e8 d4 06 00 00       	call   c0030959 <printk>
c0030285:	83 c4 20             	add    $0x20,%esp
c0030288:	b8 01 00 00 00       	mov    $0x1,%eax
c003028d:	82 c7 45             	add    $0x45,%bh
c0030290:	f4                   	hlt    
c0030291:	00 00                	add    %al,(%eax)
c0030293:	00 00                	add    %al,(%eax)
c0030295:	eb 1c                	jmp    c00302b3 <fs_write+0x6c>
c0030297:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003029a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003029d:	01 d0                	add    %edx,%eax
c003029f:	8a 00                	mov    (%eax),%al
c00302a1:	0f be c0             	movsbl %al,%eax
c00302a4:	83 ec 0c             	sub    $0xc,%esp
c00302a7:	50                   	push   %eax
c00302a8:	e8 29 06 00 00       	call   c00308d6 <serial_printc>
c00302ad:	83 c4 10             	add    $0x10,%esp
c00302b0:	ff 45 f4             	incl   -0xc(%ebp)
c00302b3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302b6:	3b 45 10             	cmp    0x10(%ebp),%eax
c00302b9:	72 dc                	jb     c0030297 <fs_write+0x50>
c00302bb:	8b 45 10             	mov    0x10(%ebp),%eax
c00302be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00302c1:	c9                   	leave  
c00302c2:	c3                   	ret    

c00302c3 <fs_lseek>:
c00302c3:	55                   	push   %ebp
c00302c4:	89 e5                	mov    %esp,%ebp
c00302c6:	53                   	push   %ebx
c00302c7:	83 ec 04             	sub    $0x4,%esp
c00302ca:	e8 b8 fe ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00302cf:	05 31 bd 00 00       	add    $0xbd31,%eax
c00302d4:	8d 90 c4 c9 ff ff    	lea    -0x363c(%eax),%edx
c00302da:	52                   	push   %edx
c00302db:	6a 46                	push   $0x46
c00302dd:	8d 90 df c7 ff ff    	lea    -0x3821(%eax),%edx
c00302e3:	52                   	push   %edx
c00302e4:	8d 90 f8 c8 ff ff    	lea    -0x3708(%eax),%edx
c00302ea:	52                   	push   %edx
c00302eb:	89 c3                	mov    %eax,%ebx
c00302ed:	e8 67 06 00 00       	call   c0030959 <printk>
c00302f2:	83 c4 10             	add    $0x10,%esp
c00302f5:	b8 01 00 00 00       	mov    $0x1,%eax
c00302fa:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c0030301:	5d                   	pop    %ebp
c0030302:	fc                   	cld    
c0030303:	c9                   	leave  
c0030304:	c3                   	ret    

c0030305 <fs_close>:
c0030305:	55                   	push   %ebp
c0030306:	89 e5                	mov    %esp,%ebp
c0030308:	53                   	push   %ebx
c0030309:	83 ec 04             	sub    $0x4,%esp
c003030c:	e8 76 fe ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030311:	05 ef bc 00 00       	add    $0xbcef,%eax
c0030316:	8d 90 d0 c9 ff ff    	lea    -0x3630(%eax),%edx
c003031c:	52                   	push   %edx
c003031d:	6a 4b                	push   $0x4b
c003031f:	8d 90 df c7 ff ff    	lea    -0x3821(%eax),%edx
c0030325:	52                   	push   %edx
c0030326:	8d 90 50 c9 ff ff    	lea    -0x36b0(%eax),%edx
c003032c:	52                   	push   %edx
c003032d:	89 c3                	mov    %eax,%ebx
c003032f:	e8 25 06 00 00       	call   c0030959 <printk>
c0030334:	83 c4 10             	add    $0x10,%esp
c0030337:	b8 01 00 00 00       	mov    $0x1,%eax
c003033c:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c0030343:	5d                   	pop    %ebp
c0030344:	fc                   	cld    
c0030345:	c9                   	leave  
c0030346:	c3                   	ret    

c0030347 <create_video_mapping>:
c0030347:	55                   	push   %ebp
c0030348:	89 e5                	mov    %esp,%ebp
c003034a:	53                   	push   %ebx
c003034b:	83 ec 04             	sub    $0x4,%esp
c003034e:	e8 34 fe ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030353:	05 ad bc 00 00       	add    $0xbcad,%eax
c0030358:	8d 90 94 ca ff ff    	lea    -0x356c(%eax),%edx
c003035e:	52                   	push   %edx
c003035f:	6a 13                	push   $0x13
c0030361:	8d 90 dc c9 ff ff    	lea    -0x3624(%eax),%edx
c0030367:	52                   	push   %edx
c0030368:	8d 90 f0 c9 ff ff    	lea    -0x3610(%eax),%edx
c003036e:	52                   	push   %edx
c003036f:	89 c3                	mov    %eax,%ebx
c0030371:	e8 e3 05 00 00       	call   c0030959 <printk>
c0030376:	83 c4 10             	add    $0x10,%esp
c0030379:	b8 01 00 00 00       	mov    $0x1,%eax
c003037e:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c0030385 <video_mapping_write_test>:
c0030385:	55                   	push   %ebp
c0030386:	89 e5                	mov    %esp,%ebp
c0030388:	83 ec 10             	sub    $0x10,%esp
c003038b:	e8 f7 fd ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030390:	05 70 bc 00 00       	add    $0xbc70,%eax
c0030395:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c003039c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00303a3:	eb 17                	jmp    c00303bc <video_mapping_write_test+0x37>
c00303a5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00303a8:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00303af:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00303b2:	01 c2                	add    %eax,%edx
c00303b4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00303b7:	89 02                	mov    %eax,(%edx)
c00303b9:	ff 45 fc             	incl   -0x4(%ebp)
c00303bc:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c00303c3:	7e e0                	jle    c00303a5 <video_mapping_write_test+0x20>
c00303c5:	90                   	nop
c00303c6:	c9                   	leave  
c00303c7:	c3                   	ret    

c00303c8 <video_mapping_read_test>:
c00303c8:	55                   	push   %ebp
c00303c9:	89 e5                	mov    %esp,%ebp
c00303cb:	53                   	push   %ebx
c00303cc:	83 ec 14             	sub    $0x14,%esp
c00303cf:	e8 b7 fd ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00303d4:	81 c3 2c bc 00 00    	add    $0xbc2c,%ebx
c00303da:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c00303e1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00303e8:	eb 4a                	jmp    c0030434 <video_mapping_read_test+0x6c>
c00303ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00303ed:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00303f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00303f7:	01 d0                	add    %edx,%eax
c00303f9:	8b 10                	mov    (%eax),%edx
c00303fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00303fe:	39 c2                	cmp    %eax,%edx
c0030400:	74 2f                	je     c0030431 <video_mapping_read_test+0x69>
c0030402:	83 ec 0c             	sub    $0xc,%esp
c0030405:	8d 83 39 ca ff ff    	lea    -0x35c7(%ebx),%eax
c003040b:	50                   	push   %eax
c003040c:	8d 83 ac ca ff ff    	lea    -0x3554(%ebx),%eax
c0030412:	50                   	push   %eax
c0030413:	6a 22                	push   $0x22
c0030415:	8d 83 dc c9 ff ff    	lea    -0x3624(%ebx),%eax
c003041b:	50                   	push   %eax
c003041c:	8d 83 48 ca ff ff    	lea    -0x35b8(%ebx),%eax
c0030422:	50                   	push   %eax
c0030423:	e8 31 05 00 00       	call   c0030959 <printk>
c0030428:	83 c4 20             	add    $0x20,%esp
c003042b:	b8 01 00 00 00       	mov    $0x1,%eax
c0030430:	82 ff 45             	cmp    $0x45,%bh
c0030433:	f4                   	hlt    
c0030434:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c003043b:	7e ad                	jle    c00303ea <video_mapping_read_test+0x22>
c003043d:	90                   	nop
c003043e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030441:	c9                   	leave  
c0030442:	c3                   	ret    

c0030443 <video_mapping_clear>:
c0030443:	55                   	push   %ebp
c0030444:	89 e5                	mov    %esp,%ebp
c0030446:	53                   	push   %ebx
c0030447:	83 ec 04             	sub    $0x4,%esp
c003044a:	e8 38 fd ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003044f:	05 b1 bb 00 00       	add    $0xbbb1,%eax
c0030454:	83 ec 04             	sub    $0x4,%esp
c0030457:	68 00 fa 00 00       	push   $0xfa00
c003045c:	6a 00                	push   $0x0
c003045e:	68 00 00 0a 00       	push   $0xa0000
c0030463:	89 c3                	mov    %eax,%ebx
c0030465:	e8 e2 19 00 00       	call   c0031e4c <memset>
c003046a:	83 c4 10             	add    $0x10,%esp
c003046d:	90                   	nop
c003046e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030471:	c9                   	leave  
c0030472:	c3                   	ret    

c0030473 <read_cr0>:
c0030473:	55                   	push   %ebp
c0030474:	89 e5                	mov    %esp,%ebp
c0030476:	83 ec 10             	sub    $0x10,%esp
c0030479:	e8 09 fd ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003047e:	05 82 bb 00 00       	add    $0xbb82,%eax
c0030483:	0f 20 c0             	mov    %cr0,%eax
c0030486:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0030489:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003048c:	c9                   	leave  
c003048d:	c3                   	ret    

c003048e <write_cr0>:
c003048e:	55                   	push   %ebp
c003048f:	89 e5                	mov    %esp,%ebp
c0030491:	e8 f1 fc ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030496:	05 6a bb 00 00       	add    $0xbb6a,%eax
c003049b:	8b 45 08             	mov    0x8(%ebp),%eax
c003049e:	0f 22 c0             	mov    %eax,%cr0
c00304a1:	90                   	nop
c00304a2:	5d                   	pop    %ebp
c00304a3:	c3                   	ret    

c00304a4 <write_cr3>:
c00304a4:	55                   	push   %ebp
c00304a5:	89 e5                	mov    %esp,%ebp
c00304a7:	e8 db fc ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00304ac:	05 54 bb 00 00       	add    $0xbb54,%eax
c00304b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00304b4:	0f 22 d8             	mov    %eax,%cr3
c00304b7:	90                   	nop
c00304b8:	5d                   	pop    %ebp
c00304b9:	c3                   	ret    

c00304ba <write_gdtr>:
c00304ba:	55                   	push   %ebp
c00304bb:	89 e5                	mov    %esp,%ebp
c00304bd:	e8 c5 fc ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00304c2:	05 3e bb 00 00       	add    $0xbb3e,%eax
c00304c7:	8b 55 0c             	mov    0xc(%ebp),%edx
c00304ca:	4a                   	dec    %edx
c00304cb:	66 89 90 00 10 00 00 	mov    %dx,0x1000(%eax)
c00304d2:	8b 55 08             	mov    0x8(%ebp),%edx
c00304d5:	66 89 90 02 10 00 00 	mov    %dx,0x1002(%eax)
c00304dc:	8b 55 08             	mov    0x8(%ebp),%edx
c00304df:	c1 ea 10             	shr    $0x10,%edx
c00304e2:	66 89 90 04 10 00 00 	mov    %dx,0x1004(%eax)
c00304e9:	8d 80 00 10 00 00    	lea    0x1000(%eax),%eax
c00304ef:	0f 01 10             	lgdtl  (%eax)
c00304f2:	90                   	nop
c00304f3:	5d                   	pop    %ebp
c00304f4:	c3                   	ret    

c00304f5 <get_kpdir>:
c00304f5:	55                   	push   %ebp
c00304f6:	89 e5                	mov    %esp,%ebp
c00304f8:	e8 8a fc ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00304fd:	05 03 bb 00 00       	add    $0xbb03,%eax
c0030502:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0030508:	5d                   	pop    %ebp
c0030509:	c3                   	ret    

c003050a <init_page>:
c003050a:	55                   	push   %ebp
c003050b:	89 e5                	mov    %esp,%ebp
c003050d:	53                   	push   %ebx
c003050e:	83 ec 24             	sub    $0x24,%esp
c0030511:	e8 71 fc ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030516:	05 ea ba 00 00       	add    $0xbaea,%eax
c003051b:	c7 c2 00 10 07 c0    	mov    $0xc0071000,%edx
c0030521:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030527:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003052a:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c0030530:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030536:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0030539:	83 ec 04             	sub    $0x4,%esp
c003053c:	68 00 10 00 00       	push   $0x1000
c0030541:	6a 00                	push   $0x0
c0030543:	ff 75 e4             	pushl  -0x1c(%ebp)
c0030546:	89 c3                	mov    %eax,%ebx
c0030548:	e8 ff 18 00 00       	call   c0031e4c <memset>
c003054d:	83 c4 10             	add    $0x10,%esp
c0030550:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0030557:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003055e:	eb 6e                	jmp    c00305ce <init_page+0xc4>
c0030560:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030563:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003056a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003056d:	01 d0                	add    %edx,%eax
c003056f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030572:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0030578:	83 ca 07             	or     $0x7,%edx
c003057b:	89 10                	mov    %edx,(%eax)
c003057d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030580:	05 00 03 00 00       	add    $0x300,%eax
c0030585:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003058c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003058f:	01 d0                	add    %edx,%eax
c0030591:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030594:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c003059a:	83 ca 07             	or     $0x7,%edx
c003059d:	89 10                	mov    %edx,(%eax)
c003059f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c00305a6:	eb 1a                	jmp    c00305c2 <init_page+0xb8>
c00305a8:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00305ab:	c1 e0 0c             	shl    $0xc,%eax
c00305ae:	83 c8 07             	or     $0x7,%eax
c00305b1:	89 c2                	mov    %eax,%edx
c00305b3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305b6:	89 10                	mov    %edx,(%eax)
c00305b8:	ff 45 e8             	incl   -0x18(%ebp)
c00305bb:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c00305bf:	ff 45 ec             	incl   -0x14(%ebp)
c00305c2:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c00305c9:	76 dd                	jbe    c00305a8 <init_page+0x9e>
c00305cb:	ff 45 f0             	incl   -0x10(%ebp)
c00305ce:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c00305d2:	76 8c                	jbe    c0030560 <init_page+0x56>
c00305d4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00305db:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00305de:	c1 e8 0c             	shr    $0xc,%eax
c00305e1:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00305e6:	c1 e0 0c             	shl    $0xc,%eax
c00305e9:	89 c2                	mov    %eax,%edx
c00305eb:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00305ee:	25 ff 0f 00 00       	and    $0xfff,%eax
c00305f3:	09 d0                	or     %edx,%eax
c00305f5:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00305f8:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00305fb:	83 ec 0c             	sub    $0xc,%esp
c00305fe:	50                   	push   %eax
c00305ff:	e8 a0 fe ff ff       	call   c00304a4 <write_cr3>
c0030604:	83 c4 10             	add    $0x10,%esp
c0030607:	e8 67 fe ff ff       	call   c0030473 <read_cr0>
c003060c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003060f:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0030612:	83 c8 80             	or     $0xffffff80,%eax
c0030615:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0030618:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003061b:	83 ec 0c             	sub    $0xc,%esp
c003061e:	50                   	push   %eax
c003061f:	e8 6a fe ff ff       	call   c003048e <write_cr0>
c0030624:	83 c4 10             	add    $0x10,%esp
c0030627:	90                   	nop
c0030628:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003062b:	c9                   	leave  
c003062c:	c3                   	ret    

c003062d <set_segment>:
c003062d:	55                   	push   %ebp
c003062e:	89 e5                	mov    %esp,%ebp
c0030630:	e8 52 fb ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030635:	05 cb b9 00 00       	add    $0xb9cb,%eax
c003063a:	8b 45 08             	mov    0x8(%ebp),%eax
c003063d:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0030642:	8b 45 08             	mov    0x8(%ebp),%eax
c0030645:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c003064b:	8b 45 08             	mov    0x8(%ebp),%eax
c003064e:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030652:	8b 45 10             	mov    0x10(%ebp),%eax
c0030655:	83 e0 0f             	and    $0xf,%eax
c0030658:	88 c2                	mov    %al,%dl
c003065a:	8b 45 08             	mov    0x8(%ebp),%eax
c003065d:	88 d1                	mov    %dl,%cl
c003065f:	83 e1 0f             	and    $0xf,%ecx
c0030662:	8a 50 05             	mov    0x5(%eax),%dl
c0030665:	83 e2 f0             	and    $0xfffffff0,%edx
c0030668:	09 ca                	or     %ecx,%edx
c003066a:	88 50 05             	mov    %dl,0x5(%eax)
c003066d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030670:	8a 50 05             	mov    0x5(%eax),%dl
c0030673:	83 ca 10             	or     $0x10,%edx
c0030676:	88 50 05             	mov    %dl,0x5(%eax)
c0030679:	8b 45 0c             	mov    0xc(%ebp),%eax
c003067c:	83 e0 03             	and    $0x3,%eax
c003067f:	88 c2                	mov    %al,%dl
c0030681:	8b 45 08             	mov    0x8(%ebp),%eax
c0030684:	83 e2 03             	and    $0x3,%edx
c0030687:	88 d1                	mov    %dl,%cl
c0030689:	c1 e1 05             	shl    $0x5,%ecx
c003068c:	8a 50 05             	mov    0x5(%eax),%dl
c003068f:	83 e2 9f             	and    $0xffffff9f,%edx
c0030692:	09 ca                	or     %ecx,%edx
c0030694:	88 50 05             	mov    %dl,0x5(%eax)
c0030697:	8b 45 08             	mov    0x8(%ebp),%eax
c003069a:	8a 50 05             	mov    0x5(%eax),%dl
c003069d:	83 ca 80             	or     $0xffffff80,%edx
c00306a0:	88 50 05             	mov    %dl,0x5(%eax)
c00306a3:	8b 45 08             	mov    0x8(%ebp),%eax
c00306a6:	8a 50 06             	mov    0x6(%eax),%dl
c00306a9:	83 ca 0f             	or     $0xf,%edx
c00306ac:	88 50 06             	mov    %dl,0x6(%eax)
c00306af:	8b 45 08             	mov    0x8(%ebp),%eax
c00306b2:	8a 50 06             	mov    0x6(%eax),%dl
c00306b5:	83 e2 ef             	and    $0xffffffef,%edx
c00306b8:	88 50 06             	mov    %dl,0x6(%eax)
c00306bb:	8b 45 08             	mov    0x8(%ebp),%eax
c00306be:	8a 50 06             	mov    0x6(%eax),%dl
c00306c1:	83 e2 df             	and    $0xffffffdf,%edx
c00306c4:	88 50 06             	mov    %dl,0x6(%eax)
c00306c7:	8b 45 08             	mov    0x8(%ebp),%eax
c00306ca:	8a 50 06             	mov    0x6(%eax),%dl
c00306cd:	83 ca 40             	or     $0x40,%edx
c00306d0:	88 50 06             	mov    %dl,0x6(%eax)
c00306d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00306d6:	8a 50 06             	mov    0x6(%eax),%dl
c00306d9:	83 ca 80             	or     $0xffffff80,%edx
c00306dc:	88 50 06             	mov    %dl,0x6(%eax)
c00306df:	8b 45 08             	mov    0x8(%ebp),%eax
c00306e2:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c00306e6:	90                   	nop
c00306e7:	5d                   	pop    %ebp
c00306e8:	c3                   	ret    

c00306e9 <init_segment>:
c00306e9:	55                   	push   %ebp
c00306ea:	89 e5                	mov    %esp,%ebp
c00306ec:	53                   	push   %ebx
c00306ed:	83 ec 04             	sub    $0x4,%esp
c00306f0:	e8 96 fa ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00306f5:	81 c3 0b b9 00 00    	add    $0xb90b,%ebx
c00306fb:	83 ec 04             	sub    $0x4,%esp
c00306fe:	6a 18                	push   $0x18
c0030700:	6a 00                	push   $0x0
c0030702:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0030708:	50                   	push   %eax
c0030709:	e8 3e 17 00 00       	call   c0031e4c <memset>
c003070e:	83 c4 10             	add    $0x10,%esp
c0030711:	83 ec 04             	sub    $0x4,%esp
c0030714:	6a 0a                	push   $0xa
c0030716:	6a 00                	push   $0x0
c0030718:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c003071e:	8d 40 08             	lea    0x8(%eax),%eax
c0030721:	50                   	push   %eax
c0030722:	e8 06 ff ff ff       	call   c003062d <set_segment>
c0030727:	83 c4 10             	add    $0x10,%esp
c003072a:	83 ec 04             	sub    $0x4,%esp
c003072d:	6a 02                	push   $0x2
c003072f:	6a 00                	push   $0x0
c0030731:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0030737:	8d 40 10             	lea    0x10(%eax),%eax
c003073a:	50                   	push   %eax
c003073b:	e8 ed fe ff ff       	call   c003062d <set_segment>
c0030740:	83 c4 10             	add    $0x10,%esp
c0030743:	83 ec 08             	sub    $0x8,%esp
c0030746:	6a 18                	push   $0x18
c0030748:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c003074e:	50                   	push   %eax
c003074f:	e8 66 fd ff ff       	call   c00304ba <write_gdtr>
c0030754:	83 c4 10             	add    $0x10,%esp
c0030757:	90                   	nop
c0030758:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003075b:	c9                   	leave  
c003075c:	c3                   	ret    

c003075d <get_updir>:
c003075d:	55                   	push   %ebp
c003075e:	89 e5                	mov    %esp,%ebp
c0030760:	e8 22 fa ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030765:	05 9b b8 00 00       	add    $0xb89b,%eax
c003076a:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0030770:	5d                   	pop    %ebp
c0030771:	c3                   	ret    

c0030772 <get_ucr3>:
c0030772:	55                   	push   %ebp
c0030773:	89 e5                	mov    %esp,%ebp
c0030775:	e8 0d fa ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003077a:	05 86 b8 00 00       	add    $0xb886,%eax
c003077f:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0030785:	8b 00                	mov    (%eax),%eax
c0030787:	5d                   	pop    %ebp
c0030788:	c3                   	ret    

c0030789 <mm_brk>:
c0030789:	55                   	push   %ebp
c003078a:	89 e5                	mov    %esp,%ebp
c003078c:	53                   	push   %ebx
c003078d:	83 ec 04             	sub    $0x4,%esp
c0030790:	e8 f6 f9 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030795:	81 c3 6b b8 00 00    	add    $0xb86b,%ebx
c003079b:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c00307a1:	39 45 08             	cmp    %eax,0x8(%ebp)
c00307a4:	76 22                	jbe    c00307c8 <mm_brk+0x3f>
c00307a6:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c00307ac:	8b 55 08             	mov    0x8(%ebp),%edx
c00307af:	29 c2                	sub    %eax,%edx
c00307b1:	89 d0                	mov    %edx,%eax
c00307b3:	89 c2                	mov    %eax,%edx
c00307b5:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c00307bb:	83 ec 08             	sub    $0x8,%esp
c00307be:	52                   	push   %edx
c00307bf:	50                   	push   %eax
c00307c0:	e8 ab 13 00 00       	call   c0031b70 <mm_malloc>
c00307c5:	83 c4 10             	add    $0x10,%esp
c00307c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00307cb:	89 83 08 10 00 00    	mov    %eax,0x1008(%ebx)
c00307d1:	90                   	nop
c00307d2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00307d5:	c9                   	leave  
c00307d6:	c3                   	ret    

c00307d7 <init_mm>:
c00307d7:	55                   	push   %ebp
c00307d8:	89 e5                	mov    %esp,%ebp
c00307da:	53                   	push   %ebx
c00307db:	83 ec 14             	sub    $0x14,%esp
c00307de:	e8 a8 f9 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00307e3:	81 c3 1d b8 00 00    	add    $0xb81d,%ebx
c00307e9:	e8 07 fd ff ff       	call   c00304f5 <get_kpdir>
c00307ee:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00307f1:	83 ec 04             	sub    $0x4,%esp
c00307f4:	68 00 10 00 00       	push   $0x1000
c00307f9:	6a 00                	push   $0x0
c00307fb:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0030801:	50                   	push   %eax
c0030802:	e8 45 16 00 00       	call   c0031e4c <memset>
c0030807:	83 c4 10             	add    $0x10,%esp
c003080a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003080d:	05 00 0c 00 00       	add    $0xc00,%eax
c0030812:	83 ec 04             	sub    $0x4,%esp
c0030815:	68 80 00 00 00       	push   $0x80
c003081a:	50                   	push   %eax
c003081b:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0030821:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0030827:	50                   	push   %eax
c0030828:	e8 d7 15 00 00       	call   c0031e04 <memcpy>
c003082d:	83 c4 10             	add    $0x10,%esp
c0030830:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0030836:	05 00 00 00 40       	add    $0x40000000,%eax
c003083b:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0030840:	89 c2                	mov    %eax,%edx
c0030842:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0030848:	89 10                	mov    %edx,(%eax)
c003084a:	90                   	nop
c003084b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003084e:	c9                   	leave  
c003084f:	c3                   	ret    

c0030850 <in_byte>:
c0030850:	55                   	push   %ebp
c0030851:	89 e5                	mov    %esp,%ebp
c0030853:	83 ec 14             	sub    $0x14,%esp
c0030856:	e8 2c f9 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003085b:	05 a5 b7 00 00       	add    $0xb7a5,%eax
c0030860:	8b 45 08             	mov    0x8(%ebp),%eax
c0030863:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030867:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003086a:	89 c2                	mov    %eax,%edx
c003086c:	ec                   	in     (%dx),%al
c003086d:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030870:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030873:	c9                   	leave  
c0030874:	c3                   	ret    

c0030875 <out_byte>:
c0030875:	55                   	push   %ebp
c0030876:	89 e5                	mov    %esp,%ebp
c0030878:	83 ec 08             	sub    $0x8,%esp
c003087b:	e8 07 f9 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030880:	05 80 b7 00 00       	add    $0xb780,%eax
c0030885:	8b 45 08             	mov    0x8(%ebp),%eax
c0030888:	8b 55 0c             	mov    0xc(%ebp),%edx
c003088b:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c003088f:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030892:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030895:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030898:	ee                   	out    %al,(%dx)
c0030899:	90                   	nop
c003089a:	c9                   	leave  
c003089b:	c3                   	ret    

c003089c <init_serial>:
c003089c:	55                   	push   %ebp
c003089d:	89 e5                	mov    %esp,%ebp
c003089f:	e8 e3 f8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00308a4:	05 5c b7 00 00       	add    $0xb75c,%eax
c00308a9:	90                   	nop
c00308aa:	5d                   	pop    %ebp
c00308ab:	c3                   	ret    

c00308ac <serial_idle>:
c00308ac:	55                   	push   %ebp
c00308ad:	89 e5                	mov    %esp,%ebp
c00308af:	e8 d3 f8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00308b4:	05 4c b7 00 00       	add    $0xb74c,%eax
c00308b9:	68 fd 03 00 00       	push   $0x3fd
c00308be:	e8 8d ff ff ff       	call   c0030850 <in_byte>
c00308c3:	83 c4 04             	add    $0x4,%esp
c00308c6:	0f b6 c0             	movzbl %al,%eax
c00308c9:	83 e0 20             	and    $0x20,%eax
c00308cc:	85 c0                	test   %eax,%eax
c00308ce:	0f 95 c0             	setne  %al
c00308d1:	0f b6 c0             	movzbl %al,%eax
c00308d4:	c9                   	leave  
c00308d5:	c3                   	ret    

c00308d6 <serial_printc>:
c00308d6:	55                   	push   %ebp
c00308d7:	89 e5                	mov    %esp,%ebp
c00308d9:	83 ec 04             	sub    $0x4,%esp
c00308dc:	e8 a6 f8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00308e1:	05 1f b7 00 00       	add    $0xb71f,%eax
c00308e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00308e9:	88 45 fc             	mov    %al,-0x4(%ebp)
c00308ec:	90                   	nop
c00308ed:	e8 ba ff ff ff       	call   c00308ac <serial_idle>
c00308f2:	85 c0                	test   %eax,%eax
c00308f4:	74 f7                	je     c00308ed <serial_printc+0x17>
c00308f6:	8a 45 fc             	mov    -0x4(%ebp),%al
c00308f9:	0f b6 c0             	movzbl %al,%eax
c00308fc:	50                   	push   %eax
c00308fd:	68 f8 03 00 00       	push   $0x3f8
c0030902:	e8 6e ff ff ff       	call   c0030875 <out_byte>
c0030907:	83 c4 08             	add    $0x8,%esp
c003090a:	90                   	nop
c003090b:	c9                   	leave  
c003090c:	c3                   	ret    

c003090d <sbrk>:
c003090d:	55                   	push   %ebp
c003090e:	89 e5                	mov    %esp,%ebp
c0030910:	53                   	push   %ebx
c0030911:	83 ec 04             	sub    $0x4,%esp
c0030914:	e8 6e f8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030919:	05 e7 b6 00 00       	add    $0xb6e7,%eax
c003091e:	83 ec 0c             	sub    $0xc,%esp
c0030921:	8d 90 c4 ca ff ff    	lea    -0x353c(%eax),%edx
c0030927:	52                   	push   %edx
c0030928:	8d 90 24 cb ff ff    	lea    -0x34dc(%eax),%edx
c003092e:	52                   	push   %edx
c003092f:	6a 08                	push   $0x8
c0030931:	8d 90 c6 ca ff ff    	lea    -0x353a(%eax),%edx
c0030937:	52                   	push   %edx
c0030938:	8d 90 d8 ca ff ff    	lea    -0x3528(%eax),%edx
c003093e:	52                   	push   %edx
c003093f:	89 c3                	mov    %eax,%ebx
c0030941:	e8 13 00 00 00       	call   c0030959 <printk>
c0030946:	83 c4 20             	add    $0x20,%esp
c0030949:	b8 01 00 00 00       	mov    $0x1,%eax
c003094e:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
c0030955:	5d                   	pop    %ebp
c0030956:	fc                   	cld    
c0030957:	c9                   	leave  
c0030958:	c3                   	ret    

c0030959 <printk>:
c0030959:	55                   	push   %ebp
c003095a:	89 e5                	mov    %esp,%ebp
c003095c:	53                   	push   %ebx
c003095d:	83 ec 14             	sub    $0x14,%esp
c0030960:	e8 26 f8 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030965:	81 c3 9b b6 00 00    	add    $0xb69b,%ebx
c003096b:	8d 45 0c             	lea    0xc(%ebp),%eax
c003096e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030971:	8b 45 08             	mov    0x8(%ebp),%eax
c0030974:	ff 75 f4             	pushl  -0xc(%ebp)
c0030977:	50                   	push   %eax
c0030978:	68 00 01 00 00       	push   $0x100
c003097d:	8d 83 20 10 00 00    	lea    0x1020(%ebx),%eax
c0030983:	50                   	push   %eax
c0030984:	e8 e7 15 00 00       	call   c0031f70 <vsnprintf>
c0030989:	83 c4 10             	add    $0x10,%esp
c003098c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003098f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030992:	83 ec 04             	sub    $0x4,%esp
c0030995:	50                   	push   %eax
c0030996:	8d 83 20 10 00 00    	lea    0x1020(%ebx),%eax
c003099c:	50                   	push   %eax
c003099d:	6a 01                	push   $0x1
c003099f:	e8 a3 f8 ff ff       	call   c0030247 <fs_write>
c00309a4:	83 c4 10             	add    $0x10,%esp
c00309a7:	90                   	nop
c00309a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00309ab:	c9                   	leave  
c00309ac:	c3                   	ret    

c00309ad <write_cr3>:
c00309ad:	55                   	push   %ebp
c00309ae:	89 e5                	mov    %esp,%ebp
c00309b0:	e8 d2 f7 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00309b5:	05 4b b6 00 00       	add    $0xb64b,%eax
c00309ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00309bd:	0f 22 d8             	mov    %eax,%cr3
c00309c0:	90                   	nop
c00309c1:	5d                   	pop    %ebp
c00309c2:	c3                   	ret    

c00309c3 <loader>:
c00309c3:	55                   	push   %ebp
c00309c4:	89 e5                	mov    %esp,%ebp
c00309c6:	53                   	push   %ebx
c00309c7:	81 ec 24 10 00 00    	sub    $0x1024,%esp
c00309cd:	e8 b9 f7 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00309d2:	81 c3 2e b6 00 00    	add    $0xb62e,%ebx
c00309d8:	83 ec 04             	sub    $0x4,%esp
c00309db:	68 00 10 00 00       	push   $0x1000
c00309e0:	6a 00                	push   $0x0
c00309e2:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c00309e8:	50                   	push   %eax
c00309e9:	e8 6f 04 00 00       	call   c0030e5d <ide_read>
c00309ee:	83 c4 10             	add    $0x10,%esp
c00309f1:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c00309f7:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00309fa:	8d 83 78 cb ff ff    	lea    -0x3488(%ebx),%eax
c0030a00:	50                   	push   %eax
c0030a01:	6a 19                	push   $0x19
c0030a03:	8d 83 2c cb ff ff    	lea    -0x34d4(%ebx),%eax
c0030a09:	50                   	push   %eax
c0030a0a:	8d 83 3c cb ff ff    	lea    -0x34c4(%ebx),%eax
c0030a10:	50                   	push   %eax
c0030a11:	e8 43 ff ff ff       	call   c0030959 <printk>
c0030a16:	83 c4 10             	add    $0x10,%esp
c0030a19:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030a1c:	8b 50 1c             	mov    0x1c(%eax),%edx
c0030a1f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030a22:	01 d0                	add    %edx,%eax
c0030a24:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030a27:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030a2a:	8b 40 2c             	mov    0x2c(%eax),%eax
c0030a2d:	0f b7 c0             	movzwl %ax,%eax
c0030a30:	c1 e0 05             	shl    $0x5,%eax
c0030a33:	89 c2                	mov    %eax,%edx
c0030a35:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a38:	01 d0                	add    %edx,%eax
c0030a3a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0030a3d:	e9 9f 00 00 00       	jmp    c0030ae1 <loader+0x11e>
c0030a42:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a45:	8b 00                	mov    (%eax),%eax
c0030a47:	83 f8 01             	cmp    $0x1,%eax
c0030a4a:	0f 85 8d 00 00 00    	jne    c0030add <loader+0x11a>
c0030a50:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a53:	8b 40 14             	mov    0x14(%eax),%eax
c0030a56:	89 c2                	mov    %eax,%edx
c0030a58:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a5b:	8b 40 08             	mov    0x8(%eax),%eax
c0030a5e:	83 ec 08             	sub    $0x8,%esp
c0030a61:	52                   	push   %edx
c0030a62:	50                   	push   %eax
c0030a63:	e8 08 11 00 00       	call   c0031b70 <mm_malloc>
c0030a68:	83 c4 10             	add    $0x10,%esp
c0030a6b:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0030a6e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a71:	8b 48 10             	mov    0x10(%eax),%ecx
c0030a74:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a77:	8b 50 04             	mov    0x4(%eax),%edx
c0030a7a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030a7d:	83 ec 04             	sub    $0x4,%esp
c0030a80:	51                   	push   %ecx
c0030a81:	52                   	push   %edx
c0030a82:	50                   	push   %eax
c0030a83:	e8 d5 03 00 00       	call   c0030e5d <ide_read>
c0030a88:	83 c4 10             	add    $0x10,%esp
c0030a8b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a8e:	8b 50 14             	mov    0x14(%eax),%edx
c0030a91:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a94:	8b 40 10             	mov    0x10(%eax),%eax
c0030a97:	29 c2                	sub    %eax,%edx
c0030a99:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a9c:	8b 48 10             	mov    0x10(%eax),%ecx
c0030a9f:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030aa2:	01 c8                	add    %ecx,%eax
c0030aa4:	83 ec 04             	sub    $0x4,%esp
c0030aa7:	52                   	push   %edx
c0030aa8:	6a 00                	push   $0x0
c0030aaa:	50                   	push   %eax
c0030aab:	e8 9c 13 00 00       	call   c0031e4c <memset>
c0030ab0:	83 c4 10             	add    $0x10,%esp
c0030ab3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030ab6:	8b 50 08             	mov    0x8(%eax),%edx
c0030ab9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030abc:	8b 40 14             	mov    0x14(%eax),%eax
c0030abf:	01 d0                	add    %edx,%eax
c0030ac1:	48                   	dec    %eax
c0030ac2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0030ac5:	c7 c0 08 d0 03 c0    	mov    $0xc003d008,%eax
c0030acb:	8b 00                	mov    (%eax),%eax
c0030acd:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
c0030ad0:	73 0b                	jae    c0030add <loader+0x11a>
c0030ad2:	c7 c0 08 d0 03 c0    	mov    $0xc003d008,%eax
c0030ad8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0030adb:	89 10                	mov    %edx,(%eax)
c0030add:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0030ae1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030ae4:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0030ae7:	0f 82 55 ff ff ff    	jb     c0030a42 <loader+0x7f>
c0030aed:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030af0:	8b 40 18             	mov    0x18(%eax),%eax
c0030af3:	89 85 e0 ef ff ff    	mov    %eax,-0x1020(%ebp)
c0030af9:	83 ec 08             	sub    $0x8,%esp
c0030afc:	68 00 00 10 00       	push   $0x100000
c0030b01:	68 00 00 f0 bf       	push   $0xbff00000
c0030b06:	e8 65 10 00 00       	call   c0031b70 <mm_malloc>
c0030b0b:	83 c4 10             	add    $0x10,%esp
c0030b0e:	e8 5f fc ff ff       	call   c0030772 <get_ucr3>
c0030b13:	83 ec 0c             	sub    $0xc,%esp
c0030b16:	50                   	push   %eax
c0030b17:	e8 91 fe ff ff       	call   c00309ad <write_cr3>
c0030b1c:	83 c4 10             	add    $0x10,%esp
c0030b1f:	8b 85 e0 ef ff ff    	mov    -0x1020(%ebp),%eax
c0030b25:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b28:	c9                   	leave  
c0030b29:	c3                   	ret    

c0030b2a <cache_init>:
c0030b2a:	55                   	push   %ebp
c0030b2b:	89 e5                	mov    %esp,%ebp
c0030b2d:	53                   	push   %ebx
c0030b2e:	83 ec 10             	sub    $0x10,%esp
c0030b31:	e8 fd 01 00 00       	call   c0030d33 <__x86.get_pc_thunk.dx>
c0030b36:	81 c2 ca b4 00 00    	add    $0xb4ca,%edx
c0030b3c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030b43:	eb 1b                	jmp    c0030b60 <cache_init+0x36>
c0030b45:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0030b48:	8d 9a 24 11 00 00    	lea    0x1124(%edx),%ebx
c0030b4e:	89 c8                	mov    %ecx,%eax
c0030b50:	c1 e0 06             	shl    $0x6,%eax
c0030b53:	01 c8                	add    %ecx,%eax
c0030b55:	c1 e0 03             	shl    $0x3,%eax
c0030b58:	01 d8                	add    %ebx,%eax
c0030b5a:	c6 00 00             	movb   $0x0,(%eax)
c0030b5d:	ff 45 f8             	incl   -0x8(%ebp)
c0030b60:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c0030b64:	7e df                	jle    c0030b45 <cache_init+0x1b>
c0030b66:	90                   	nop
c0030b67:	83 c4 10             	add    $0x10,%esp
c0030b6a:	5b                   	pop    %ebx
c0030b6b:	5d                   	pop    %ebp
c0030b6c:	c3                   	ret    

c0030b6d <cache_writeback>:
c0030b6d:	55                   	push   %ebp
c0030b6e:	89 e5                	mov    %esp,%ebp
c0030b70:	53                   	push   %ebx
c0030b71:	83 ec 14             	sub    $0x14,%esp
c0030b74:	e8 12 f6 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030b79:	81 c3 87 b4 00 00    	add    $0xb487,%ebx
c0030b7f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030b86:	eb 72                	jmp    c0030bfa <cache_writeback+0x8d>
c0030b88:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030b8b:	8d 8b 25 11 00 00    	lea    0x1125(%ebx),%ecx
c0030b91:	89 d0                	mov    %edx,%eax
c0030b93:	c1 e0 06             	shl    $0x6,%eax
c0030b96:	01 d0                	add    %edx,%eax
c0030b98:	c1 e0 03             	shl    $0x3,%eax
c0030b9b:	01 c8                	add    %ecx,%eax
c0030b9d:	8a 00                	mov    (%eax),%al
c0030b9f:	3c 01                	cmp    $0x1,%al
c0030ba1:	75 54                	jne    c0030bf7 <cache_writeback+0x8a>
c0030ba3:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030ba6:	8d 8b 20 11 00 00    	lea    0x1120(%ebx),%ecx
c0030bac:	89 d0                	mov    %edx,%eax
c0030bae:	c1 e0 06             	shl    $0x6,%eax
c0030bb1:	01 d0                	add    %edx,%eax
c0030bb3:	c1 e0 03             	shl    $0x3,%eax
c0030bb6:	01 c8                	add    %ecx,%eax
c0030bb8:	8b 10                	mov    (%eax),%edx
c0030bba:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0030bbd:	89 c8                	mov    %ecx,%eax
c0030bbf:	c1 e0 06             	shl    $0x6,%eax
c0030bc2:	01 c8                	add    %ecx,%eax
c0030bc4:	c1 e0 03             	shl    $0x3,%eax
c0030bc7:	8d 8b 20 11 00 00    	lea    0x1120(%ebx),%ecx
c0030bcd:	01 c8                	add    %ecx,%eax
c0030bcf:	83 c0 06             	add    $0x6,%eax
c0030bd2:	83 ec 08             	sub    $0x8,%esp
c0030bd5:	52                   	push   %edx
c0030bd6:	50                   	push   %eax
c0030bd7:	e8 f4 05 00 00       	call   c00311d0 <disk_do_write>
c0030bdc:	83 c4 10             	add    $0x10,%esp
c0030bdf:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030be2:	8d 8b 25 11 00 00    	lea    0x1125(%ebx),%ecx
c0030be8:	89 d0                	mov    %edx,%eax
c0030bea:	c1 e0 06             	shl    $0x6,%eax
c0030bed:	01 d0                	add    %edx,%eax
c0030bef:	c1 e0 03             	shl    $0x3,%eax
c0030bf2:	01 c8                	add    %ecx,%eax
c0030bf4:	c6 00 00             	movb   $0x0,(%eax)
c0030bf7:	ff 45 f4             	incl   -0xc(%ebp)
c0030bfa:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c0030bfe:	7e 88                	jle    c0030b88 <cache_writeback+0x1b>
c0030c00:	90                   	nop
c0030c01:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c04:	c9                   	leave  
c0030c05:	c3                   	ret    

c0030c06 <cache_fetch>:
c0030c06:	55                   	push   %ebp
c0030c07:	89 e5                	mov    %esp,%ebp
c0030c09:	53                   	push   %ebx
c0030c0a:	83 ec 14             	sub    $0x14,%esp
c0030c0d:	e8 79 f5 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030c12:	81 c3 ee b3 00 00    	add    $0xb3ee,%ebx
c0030c18:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c1b:	83 e0 7f             	and    $0x7f,%eax
c0030c1e:	89 c2                	mov    %eax,%edx
c0030c20:	89 d0                	mov    %edx,%eax
c0030c22:	c1 e0 06             	shl    $0x6,%eax
c0030c25:	01 d0                	add    %edx,%eax
c0030c27:	c1 e0 03             	shl    $0x3,%eax
c0030c2a:	8d 93 20 11 00 00    	lea    0x1120(%ebx),%edx
c0030c30:	01 d0                	add    %edx,%eax
c0030c32:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030c35:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c38:	8a 40 04             	mov    0x4(%eax),%al
c0030c3b:	3c 01                	cmp    $0x1,%al
c0030c3d:	75 0a                	jne    c0030c49 <cache_fetch+0x43>
c0030c3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c42:	8b 00                	mov    (%eax),%eax
c0030c44:	3b 45 08             	cmp    0x8(%ebp),%eax
c0030c47:	74 57                	je     c0030ca0 <cache_fetch+0x9a>
c0030c49:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c4c:	8a 40 04             	mov    0x4(%eax),%al
c0030c4f:	3c 01                	cmp    $0x1,%al
c0030c51:	75 22                	jne    c0030c75 <cache_fetch+0x6f>
c0030c53:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c56:	8a 40 05             	mov    0x5(%eax),%al
c0030c59:	3c 01                	cmp    $0x1,%al
c0030c5b:	75 18                	jne    c0030c75 <cache_fetch+0x6f>
c0030c5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c60:	8b 00                	mov    (%eax),%eax
c0030c62:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030c65:	83 c2 06             	add    $0x6,%edx
c0030c68:	83 ec 08             	sub    $0x8,%esp
c0030c6b:	50                   	push   %eax
c0030c6c:	52                   	push   %edx
c0030c6d:	e8 5e 05 00 00       	call   c00311d0 <disk_do_write>
c0030c72:	83 c4 10             	add    $0x10,%esp
c0030c75:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c78:	83 c0 06             	add    $0x6,%eax
c0030c7b:	83 ec 08             	sub    $0x8,%esp
c0030c7e:	ff 75 08             	pushl  0x8(%ebp)
c0030c81:	50                   	push   %eax
c0030c82:	e8 de 04 00 00       	call   c0031165 <disk_do_read>
c0030c87:	83 c4 10             	add    $0x10,%esp
c0030c8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c8d:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c0030c91:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c94:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c97:	89 10                	mov    %edx,(%eax)
c0030c99:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c9c:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c0030ca0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030ca3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030ca6:	c9                   	leave  
c0030ca7:	c3                   	ret    

c0030ca8 <read_byte>:
c0030ca8:	55                   	push   %ebp
c0030ca9:	89 e5                	mov    %esp,%ebp
c0030cab:	83 ec 18             	sub    $0x18,%esp
c0030cae:	e8 d4 f4 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030cb3:	05 4d b3 00 00       	add    $0xb34d,%eax
c0030cb8:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cbb:	c1 e8 09             	shr    $0x9,%eax
c0030cbe:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030cc1:	83 ec 0c             	sub    $0xc,%esp
c0030cc4:	ff 75 f4             	pushl  -0xc(%ebp)
c0030cc7:	e8 3a ff ff ff       	call   c0030c06 <cache_fetch>
c0030ccc:	83 c4 10             	add    $0x10,%esp
c0030ccf:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030cd2:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cd5:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030cda:	89 c2                	mov    %eax,%edx
c0030cdc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030cdf:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c0030ce3:	c9                   	leave  
c0030ce4:	c3                   	ret    

c0030ce5 <write_byte>:
c0030ce5:	55                   	push   %ebp
c0030ce6:	89 e5                	mov    %esp,%ebp
c0030ce8:	83 ec 28             	sub    $0x28,%esp
c0030ceb:	e8 97 f4 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030cf0:	05 10 b3 00 00       	add    $0xb310,%eax
c0030cf5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030cf8:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0030cfb:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cfe:	c1 e8 09             	shr    $0x9,%eax
c0030d01:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030d04:	83 ec 0c             	sub    $0xc,%esp
c0030d07:	ff 75 f4             	pushl  -0xc(%ebp)
c0030d0a:	e8 f7 fe ff ff       	call   c0030c06 <cache_fetch>
c0030d0f:	83 c4 10             	add    $0x10,%esp
c0030d12:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030d15:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d18:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030d1d:	89 c1                	mov    %eax,%ecx
c0030d1f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030d22:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c0030d25:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c0030d29:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030d2c:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0030d30:	90                   	nop
c0030d31:	c9                   	leave  
c0030d32:	c3                   	ret    

c0030d33 <__x86.get_pc_thunk.dx>:
c0030d33:	8b 14 24             	mov    (%esp),%edx
c0030d36:	c3                   	ret    

c0030d37 <in_byte>:
c0030d37:	55                   	push   %ebp
c0030d38:	89 e5                	mov    %esp,%ebp
c0030d3a:	83 ec 14             	sub    $0x14,%esp
c0030d3d:	e8 45 f4 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030d42:	05 be b2 00 00       	add    $0xb2be,%eax
c0030d47:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d4a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030d4e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030d51:	89 c2                	mov    %eax,%edx
c0030d53:	ec                   	in     (%dx),%al
c0030d54:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030d57:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030d5a:	c9                   	leave  
c0030d5b:	c3                   	ret    

c0030d5c <out_byte>:
c0030d5c:	55                   	push   %ebp
c0030d5d:	89 e5                	mov    %esp,%ebp
c0030d5f:	83 ec 08             	sub    $0x8,%esp
c0030d62:	e8 20 f4 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030d67:	05 99 b2 00 00       	add    $0xb299,%eax
c0030d6c:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d6f:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030d72:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030d76:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030d79:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030d7c:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030d7f:	ee                   	out    %al,(%dx)
c0030d80:	90                   	nop
c0030d81:	c9                   	leave  
c0030d82:	c3                   	ret    

c0030d83 <out_long>:
c0030d83:	55                   	push   %ebp
c0030d84:	89 e5                	mov    %esp,%ebp
c0030d86:	83 ec 04             	sub    $0x4,%esp
c0030d89:	e8 f9 f3 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030d8e:	05 72 b2 00 00       	add    $0xb272,%eax
c0030d93:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d96:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030d9a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030d9d:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030da0:	ef                   	out    %eax,(%dx)
c0030da1:	90                   	nop
c0030da2:	c9                   	leave  
c0030da3:	c3                   	ret    

c0030da4 <dma_prepare>:
c0030da4:	55                   	push   %ebp
c0030da5:	89 e5                	mov    %esp,%ebp
c0030da7:	83 ec 10             	sub    $0x10,%esp
c0030daa:	e8 d8 f3 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030daf:	05 51 b2 00 00       	add    $0xb251,%eax
c0030db4:	8b 55 08             	mov    0x8(%ebp),%edx
c0030db7:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030dbd:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0030dc0:	c7 c2 04 30 09 c0    	mov    $0xc0093004,%edx
c0030dc6:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0030dc9:	89 0a                	mov    %ecx,(%edx)
c0030dcb:	c7 c2 04 30 09 c0    	mov    $0xc0093004,%edx
c0030dd1:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0030dd7:	c7 c2 04 30 09 c0    	mov    $0xc0093004,%edx
c0030ddd:	8a 4a 07             	mov    0x7(%edx),%cl
c0030de0:	83 c9 80             	or     $0xffffff80,%ecx
c0030de3:	88 4a 07             	mov    %cl,0x7(%edx)
c0030de6:	c7 c1 04 30 09 c0    	mov    $0xc0093004,%ecx
c0030dec:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0030df0:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0030df6:	66 89 51 06          	mov    %dx,0x6(%ecx)
c0030dfa:	c7 c0 04 30 09 c0    	mov    $0xc0093004,%eax
c0030e00:	05 00 00 00 40       	add    $0x40000000,%eax
c0030e05:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0030e08:	ff 75 f8             	pushl  -0x8(%ebp)
c0030e0b:	68 44 c0 00 00       	push   $0xc044
c0030e10:	e8 6e ff ff ff       	call   c0030d83 <out_long>
c0030e15:	83 c4 08             	add    $0x8,%esp
c0030e18:	90                   	nop
c0030e19:	c9                   	leave  
c0030e1a:	c3                   	ret    

c0030e1b <dma_issue_read>:
c0030e1b:	55                   	push   %ebp
c0030e1c:	89 e5                	mov    %esp,%ebp
c0030e1e:	e8 64 f3 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030e23:	05 dd b1 00 00       	add    $0xb1dd,%eax
c0030e28:	68 40 c0 00 00       	push   $0xc040
c0030e2d:	e8 05 ff ff ff       	call   c0030d37 <in_byte>
c0030e32:	83 c4 04             	add    $0x4,%esp
c0030e35:	83 c8 09             	or     $0x9,%eax
c0030e38:	0f b6 c0             	movzbl %al,%eax
c0030e3b:	50                   	push   %eax
c0030e3c:	68 40 c0 00 00       	push   $0xc040
c0030e41:	e8 16 ff ff ff       	call   c0030d5c <out_byte>
c0030e46:	83 c4 08             	add    $0x8,%esp
c0030e49:	90                   	nop
c0030e4a:	c9                   	leave  
c0030e4b:	c3                   	ret    

c0030e4c <wait_intr>:
c0030e4c:	55                   	push   %ebp
c0030e4d:	89 e5                	mov    %esp,%ebp
c0030e4f:	e8 33 f3 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030e54:	05 ac b1 00 00       	add    $0xb1ac,%eax
c0030e59:	f4                   	hlt    
c0030e5a:	90                   	nop
c0030e5b:	5d                   	pop    %ebp
c0030e5c:	c3                   	ret    

c0030e5d <ide_read>:
c0030e5d:	55                   	push   %ebp
c0030e5e:	89 e5                	mov    %esp,%ebp
c0030e60:	56                   	push   %esi
c0030e61:	53                   	push   %ebx
c0030e62:	83 ec 10             	sub    $0x10,%esp
c0030e65:	e8 21 f3 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030e6a:	81 c3 96 b1 00 00    	add    $0xb196,%ebx
c0030e70:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030e77:	eb 22                	jmp    c0030e9b <ide_read+0x3e>
c0030e79:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e7c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030e7f:	8d 34 02             	lea    (%edx,%eax,1),%esi
c0030e82:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030e85:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030e88:	01 d0                	add    %edx,%eax
c0030e8a:	83 ec 0c             	sub    $0xc,%esp
c0030e8d:	50                   	push   %eax
c0030e8e:	e8 15 fe ff ff       	call   c0030ca8 <read_byte>
c0030e93:	83 c4 10             	add    $0x10,%esp
c0030e96:	88 06                	mov    %al,(%esi)
c0030e98:	ff 45 f4             	incl   -0xc(%ebp)
c0030e9b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030e9e:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030ea1:	72 d6                	jb     c0030e79 <ide_read+0x1c>
c0030ea3:	90                   	nop
c0030ea4:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0030ea7:	5b                   	pop    %ebx
c0030ea8:	5e                   	pop    %esi
c0030ea9:	5d                   	pop    %ebp
c0030eaa:	c3                   	ret    

c0030eab <ide_write>:
c0030eab:	55                   	push   %ebp
c0030eac:	89 e5                	mov    %esp,%ebp
c0030eae:	53                   	push   %ebx
c0030eaf:	83 ec 14             	sub    $0x14,%esp
c0030eb2:	e8 d4 f2 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030eb7:	81 c3 49 b1 00 00    	add    $0xb149,%ebx
c0030ebd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030ec4:	eb 25                	jmp    c0030eeb <ide_write+0x40>
c0030ec6:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ec9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030ecc:	01 d0                	add    %edx,%eax
c0030ece:	8a 00                	mov    (%eax),%al
c0030ed0:	0f b6 c0             	movzbl %al,%eax
c0030ed3:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0030ed6:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030ed9:	01 ca                	add    %ecx,%edx
c0030edb:	83 ec 08             	sub    $0x8,%esp
c0030ede:	50                   	push   %eax
c0030edf:	52                   	push   %edx
c0030ee0:	e8 00 fe ff ff       	call   c0030ce5 <write_byte>
c0030ee5:	83 c4 10             	add    $0x10,%esp
c0030ee8:	ff 45 f4             	incl   -0xc(%ebp)
c0030eeb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030eee:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030ef1:	72 d3                	jb     c0030ec6 <ide_write+0x1b>
c0030ef3:	90                   	nop
c0030ef4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030ef7:	c9                   	leave  
c0030ef8:	c3                   	ret    

c0030ef9 <ide_writeback>:
c0030ef9:	55                   	push   %ebp
c0030efa:	89 e5                	mov    %esp,%ebp
c0030efc:	53                   	push   %ebx
c0030efd:	83 ec 04             	sub    $0x4,%esp
c0030f00:	e8 86 f2 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030f05:	81 c3 fb b0 00 00    	add    $0xb0fb,%ebx
c0030f0b:	8b 83 24 15 01 00    	mov    0x11524(%ebx),%eax
c0030f11:	40                   	inc    %eax
c0030f12:	89 83 24 15 01 00    	mov    %eax,0x11524(%ebx)
c0030f18:	8b 83 24 15 01 00    	mov    0x11524(%ebx),%eax
c0030f1e:	83 f8 64             	cmp    $0x64,%eax
c0030f21:	75 0f                	jne    c0030f32 <ide_writeback+0x39>
c0030f23:	e8 45 fc ff ff       	call   c0030b6d <cache_writeback>
c0030f28:	c7 83 24 15 01 00 00 	movl   $0x0,0x11524(%ebx)
c0030f2f:	00 00 00 
c0030f32:	90                   	nop
c0030f33:	83 c4 04             	add    $0x4,%esp
c0030f36:	5b                   	pop    %ebx
c0030f37:	5d                   	pop    %ebp
c0030f38:	c3                   	ret    

c0030f39 <ide_intr>:
c0030f39:	55                   	push   %ebp
c0030f3a:	89 e5                	mov    %esp,%ebp
c0030f3c:	e8 46 f2 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030f41:	05 bf b0 00 00       	add    $0xb0bf,%eax
c0030f46:	c7 80 20 15 01 00 01 	movl   $0x1,0x11520(%eax)
c0030f4d:	00 00 00 
c0030f50:	90                   	nop
c0030f51:	5d                   	pop    %ebp
c0030f52:	c3                   	ret    

c0030f53 <clear_ide_intr>:
c0030f53:	55                   	push   %ebp
c0030f54:	89 e5                	mov    %esp,%ebp
c0030f56:	e8 2c f2 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030f5b:	05 a5 b0 00 00       	add    $0xb0a5,%eax
c0030f60:	c7 80 20 15 01 00 00 	movl   $0x0,0x11520(%eax)
c0030f67:	00 00 00 
c0030f6a:	90                   	nop
c0030f6b:	5d                   	pop    %ebp
c0030f6c:	c3                   	ret    

c0030f6d <wait_ide_intr>:
c0030f6d:	55                   	push   %ebp
c0030f6e:	89 e5                	mov    %esp,%ebp
c0030f70:	53                   	push   %ebx
c0030f71:	e8 15 f2 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030f76:	81 c3 8a b0 00 00    	add    $0xb08a,%ebx
c0030f7c:	eb 05                	jmp    c0030f83 <wait_ide_intr+0x16>
c0030f7e:	e8 c9 fe ff ff       	call   c0030e4c <wait_intr>
c0030f83:	8b 83 20 15 01 00    	mov    0x11520(%ebx),%eax
c0030f89:	85 c0                	test   %eax,%eax
c0030f8b:	74 f1                	je     c0030f7e <wait_ide_intr+0x11>
c0030f8d:	e8 c1 ff ff ff       	call   c0030f53 <clear_ide_intr>
c0030f92:	90                   	nop
c0030f93:	5b                   	pop    %ebx
c0030f94:	5d                   	pop    %ebp
c0030f95:	c3                   	ret    

c0030f96 <init_ide>:
c0030f96:	55                   	push   %ebp
c0030f97:	89 e5                	mov    %esp,%ebp
c0030f99:	53                   	push   %ebx
c0030f9a:	83 ec 04             	sub    $0x4,%esp
c0030f9d:	e8 e9 f1 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030fa2:	81 c3 5e b0 00 00    	add    $0xb05e,%ebx
c0030fa8:	e8 7d fb ff ff       	call   c0030b2a <cache_init>
c0030fad:	83 ec 08             	sub    $0x8,%esp
c0030fb0:	8d 83 f9 4e ff ff    	lea    -0xb107(%ebx),%eax
c0030fb6:	50                   	push   %eax
c0030fb7:	6a 00                	push   $0x0
c0030fb9:	e8 68 02 00 00       	call   c0031226 <add_irq_handle>
c0030fbe:	83 c4 10             	add    $0x10,%esp
c0030fc1:	83 ec 08             	sub    $0x8,%esp
c0030fc4:	8d 83 39 4f ff ff    	lea    -0xb0c7(%ebx),%eax
c0030fca:	50                   	push   %eax
c0030fcb:	6a 0e                	push   $0xe
c0030fcd:	e8 54 02 00 00       	call   c0031226 <add_irq_handle>
c0030fd2:	83 c4 10             	add    $0x10,%esp
c0030fd5:	90                   	nop
c0030fd6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030fd9:	c9                   	leave  
c0030fda:	c3                   	ret    

c0030fdb <in_byte>:
c0030fdb:	55                   	push   %ebp
c0030fdc:	89 e5                	mov    %esp,%ebp
c0030fde:	83 ec 14             	sub    $0x14,%esp
c0030fe1:	e8 a1 f1 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030fe6:	05 1a b0 00 00       	add    $0xb01a,%eax
c0030feb:	8b 45 08             	mov    0x8(%ebp),%eax
c0030fee:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030ff2:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030ff5:	89 c2                	mov    %eax,%edx
c0030ff7:	ec                   	in     (%dx),%al
c0030ff8:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030ffb:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030ffe:	c9                   	leave  
c0030fff:	c3                   	ret    

c0031000 <in_long>:
c0031000:	55                   	push   %ebp
c0031001:	89 e5                	mov    %esp,%ebp
c0031003:	83 ec 14             	sub    $0x14,%esp
c0031006:	e8 7c f1 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003100b:	05 f5 af 00 00       	add    $0xaff5,%eax
c0031010:	8b 45 08             	mov    0x8(%ebp),%eax
c0031013:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0031017:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003101a:	89 c2                	mov    %eax,%edx
c003101c:	ed                   	in     (%dx),%eax
c003101d:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031020:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031023:	c9                   	leave  
c0031024:	c3                   	ret    

c0031025 <out_byte>:
c0031025:	55                   	push   %ebp
c0031026:	89 e5                	mov    %esp,%ebp
c0031028:	83 ec 08             	sub    $0x8,%esp
c003102b:	e8 57 f1 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031030:	05 d0 af 00 00       	add    $0xafd0,%eax
c0031035:	8b 45 08             	mov    0x8(%ebp),%eax
c0031038:	8b 55 0c             	mov    0xc(%ebp),%edx
c003103b:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c003103f:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0031042:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031045:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031048:	ee                   	out    %al,(%dx)
c0031049:	90                   	nop
c003104a:	c9                   	leave  
c003104b:	c3                   	ret    

c003104c <out_long>:
c003104c:	55                   	push   %ebp
c003104d:	89 e5                	mov    %esp,%ebp
c003104f:	83 ec 04             	sub    $0x4,%esp
c0031052:	e8 30 f1 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031057:	05 a9 af 00 00       	add    $0xafa9,%eax
c003105c:	8b 45 08             	mov    0x8(%ebp),%eax
c003105f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031063:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031066:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031069:	ef                   	out    %eax,(%dx)
c003106a:	90                   	nop
c003106b:	c9                   	leave  
c003106c:	c3                   	ret    

c003106d <waitdisk>:
c003106d:	55                   	push   %ebp
c003106e:	89 e5                	mov    %esp,%ebp
c0031070:	e8 12 f1 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031075:	05 8b af 00 00       	add    $0xaf8b,%eax
c003107a:	90                   	nop
c003107b:	68 f7 01 00 00       	push   $0x1f7
c0031080:	e8 56 ff ff ff       	call   c0030fdb <in_byte>
c0031085:	83 c4 04             	add    $0x4,%esp
c0031088:	0f b6 c0             	movzbl %al,%eax
c003108b:	25 c0 00 00 00       	and    $0xc0,%eax
c0031090:	83 f8 40             	cmp    $0x40,%eax
c0031093:	75 e6                	jne    c003107b <waitdisk+0xe>
c0031095:	90                   	nop
c0031096:	c9                   	leave  
c0031097:	c3                   	ret    

c0031098 <ide_prepare>:
c0031098:	55                   	push   %ebp
c0031099:	89 e5                	mov    %esp,%ebp
c003109b:	e8 e7 f0 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00310a0:	05 60 af 00 00       	add    $0xaf60,%eax
c00310a5:	e8 c3 ff ff ff       	call   c003106d <waitdisk>
c00310aa:	6a 00                	push   $0x0
c00310ac:	68 f1 01 00 00       	push   $0x1f1
c00310b1:	e8 6f ff ff ff       	call   c0031025 <out_byte>
c00310b6:	83 c4 08             	add    $0x8,%esp
c00310b9:	6a 01                	push   $0x1
c00310bb:	68 f2 01 00 00       	push   $0x1f2
c00310c0:	e8 60 ff ff ff       	call   c0031025 <out_byte>
c00310c5:	83 c4 08             	add    $0x8,%esp
c00310c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00310cb:	0f b6 c0             	movzbl %al,%eax
c00310ce:	50                   	push   %eax
c00310cf:	68 f3 01 00 00       	push   $0x1f3
c00310d4:	e8 4c ff ff ff       	call   c0031025 <out_byte>
c00310d9:	83 c4 08             	add    $0x8,%esp
c00310dc:	8b 45 08             	mov    0x8(%ebp),%eax
c00310df:	c1 e8 08             	shr    $0x8,%eax
c00310e2:	0f b6 c0             	movzbl %al,%eax
c00310e5:	50                   	push   %eax
c00310e6:	68 f4 01 00 00       	push   $0x1f4
c00310eb:	e8 35 ff ff ff       	call   c0031025 <out_byte>
c00310f0:	83 c4 08             	add    $0x8,%esp
c00310f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00310f6:	c1 e8 10             	shr    $0x10,%eax
c00310f9:	0f b6 c0             	movzbl %al,%eax
c00310fc:	50                   	push   %eax
c00310fd:	68 f5 01 00 00       	push   $0x1f5
c0031102:	e8 1e ff ff ff       	call   c0031025 <out_byte>
c0031107:	83 c4 08             	add    $0x8,%esp
c003110a:	8b 45 08             	mov    0x8(%ebp),%eax
c003110d:	c1 e8 18             	shr    $0x18,%eax
c0031110:	83 c8 e0             	or     $0xffffffe0,%eax
c0031113:	0f b6 c0             	movzbl %al,%eax
c0031116:	50                   	push   %eax
c0031117:	68 f6 01 00 00       	push   $0x1f6
c003111c:	e8 04 ff ff ff       	call   c0031025 <out_byte>
c0031121:	83 c4 08             	add    $0x8,%esp
c0031124:	90                   	nop
c0031125:	c9                   	leave  
c0031126:	c3                   	ret    

c0031127 <issue_read>:
c0031127:	55                   	push   %ebp
c0031128:	89 e5                	mov    %esp,%ebp
c003112a:	e8 58 f0 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003112f:	05 d1 ae 00 00       	add    $0xaed1,%eax
c0031134:	6a 20                	push   $0x20
c0031136:	68 f7 01 00 00       	push   $0x1f7
c003113b:	e8 e5 fe ff ff       	call   c0031025 <out_byte>
c0031140:	83 c4 08             	add    $0x8,%esp
c0031143:	90                   	nop
c0031144:	c9                   	leave  
c0031145:	c3                   	ret    

c0031146 <issue_write>:
c0031146:	55                   	push   %ebp
c0031147:	89 e5                	mov    %esp,%ebp
c0031149:	e8 39 f0 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003114e:	05 b2 ae 00 00       	add    $0xaeb2,%eax
c0031153:	6a 30                	push   $0x30
c0031155:	68 f7 01 00 00       	push   $0x1f7
c003115a:	e8 c6 fe ff ff       	call   c0031025 <out_byte>
c003115f:	83 c4 08             	add    $0x8,%esp
c0031162:	90                   	nop
c0031163:	c9                   	leave  
c0031164:	c3                   	ret    

c0031165 <disk_do_read>:
c0031165:	55                   	push   %ebp
c0031166:	89 e5                	mov    %esp,%ebp
c0031168:	53                   	push   %ebx
c0031169:	83 ec 14             	sub    $0x14,%esp
c003116c:	e8 1a f0 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0031171:	81 c3 8f ae 00 00    	add    $0xae8f,%ebx
c0031177:	e8 d7 fd ff ff       	call   c0030f53 <clear_ide_intr>
c003117c:	83 ec 0c             	sub    $0xc,%esp
c003117f:	ff 75 0c             	pushl  0xc(%ebp)
c0031182:	e8 11 ff ff ff       	call   c0031098 <ide_prepare>
c0031187:	83 c4 10             	add    $0x10,%esp
c003118a:	e8 98 ff ff ff       	call   c0031127 <issue_read>
c003118f:	e8 d9 fd ff ff       	call   c0030f6d <wait_ide_intr>
c0031194:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003119b:	eb 25                	jmp    c00311c2 <disk_do_read+0x5d>
c003119d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00311a0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00311a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00311aa:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c00311ad:	83 ec 0c             	sub    $0xc,%esp
c00311b0:	68 f0 01 00 00       	push   $0x1f0
c00311b5:	e8 46 fe ff ff       	call   c0031000 <in_long>
c00311ba:	83 c4 10             	add    $0x10,%esp
c00311bd:	89 03                	mov    %eax,(%ebx)
c00311bf:	ff 45 f4             	incl   -0xc(%ebp)
c00311c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00311c5:	83 f8 7f             	cmp    $0x7f,%eax
c00311c8:	76 d3                	jbe    c003119d <disk_do_read+0x38>
c00311ca:	90                   	nop
c00311cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00311ce:	c9                   	leave  
c00311cf:	c3                   	ret    

c00311d0 <disk_do_write>:
c00311d0:	55                   	push   %ebp
c00311d1:	89 e5                	mov    %esp,%ebp
c00311d3:	83 ec 10             	sub    $0x10,%esp
c00311d6:	e8 ac ef ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00311db:	05 25 ae 00 00       	add    $0xae25,%eax
c00311e0:	ff 75 0c             	pushl  0xc(%ebp)
c00311e3:	e8 b0 fe ff ff       	call   c0031098 <ide_prepare>
c00311e8:	83 c4 04             	add    $0x4,%esp
c00311eb:	e8 56 ff ff ff       	call   c0031146 <issue_write>
c00311f0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00311f7:	eb 22                	jmp    c003121b <disk_do_write+0x4b>
c00311f9:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00311fc:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031203:	8b 45 08             	mov    0x8(%ebp),%eax
c0031206:	01 d0                	add    %edx,%eax
c0031208:	8b 00                	mov    (%eax),%eax
c003120a:	50                   	push   %eax
c003120b:	68 f0 01 00 00       	push   $0x1f0
c0031210:	e8 37 fe ff ff       	call   c003104c <out_long>
c0031215:	83 c4 08             	add    $0x8,%esp
c0031218:	ff 45 fc             	incl   -0x4(%ebp)
c003121b:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003121e:	83 f8 7f             	cmp    $0x7f,%eax
c0031221:	76 d6                	jbe    c00311f9 <disk_do_write+0x29>
c0031223:	90                   	nop
c0031224:	c9                   	leave  
c0031225:	c3                   	ret    

c0031226 <add_irq_handle>:
c0031226:	55                   	push   %ebp
c0031227:	89 e5                	mov    %esp,%ebp
c0031229:	53                   	push   %ebx
c003122a:	83 ec 14             	sub    $0x14,%esp
c003122d:	e8 59 ef ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0031232:	81 c3 ce ad 00 00    	add    $0xadce,%ebx
c0031238:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c003123c:	7e 2f                	jle    c003126d <add_irq_handle+0x47>
c003123e:	83 ec 0c             	sub    $0xc,%esp
c0031241:	8d 83 80 cb ff ff    	lea    -0x3480(%ebx),%eax
c0031247:	50                   	push   %eax
c0031248:	8d 83 cc cc ff ff    	lea    -0x3334(%ebx),%eax
c003124e:	50                   	push   %eax
c003124f:	6a 16                	push   $0x16
c0031251:	8d 83 93 cb ff ff    	lea    -0x346d(%ebx),%eax
c0031257:	50                   	push   %eax
c0031258:	8d 83 a8 cb ff ff    	lea    -0x3458(%ebx),%eax
c003125e:	50                   	push   %eax
c003125f:	e8 f5 f6 ff ff       	call   c0030959 <printk>
c0031264:	83 c4 20             	add    $0x20,%esp
c0031267:	b8 01 00 00 00       	mov    $0x1,%eax
c003126c:	82 8b 83 80 16 01 00 	orb    $0x0,0x1168083(%ebx)
c0031273:	83 f8 20             	cmp    $0x20,%eax
c0031276:	7e 2f                	jle    c00312a7 <add_irq_handle+0x81>
c0031278:	83 ec 0c             	sub    $0xc,%esp
c003127b:	8d 83 f2 cb ff ff    	lea    -0x340e(%ebx),%eax
c0031281:	50                   	push   %eax
c0031282:	8d 83 cc cc ff ff    	lea    -0x3334(%ebx),%eax
c0031288:	50                   	push   %eax
c0031289:	6a 17                	push   $0x17
c003128b:	8d 83 93 cb ff ff    	lea    -0x346d(%ebx),%eax
c0031291:	50                   	push   %eax
c0031292:	8d 83 a8 cb ff ff    	lea    -0x3458(%ebx),%eax
c0031298:	50                   	push   %eax
c0031299:	e8 bb f6 ff ff       	call   c0030959 <printk>
c003129e:	83 c4 20             	add    $0x20,%esp
c00312a1:	b8 01 00 00 00       	mov    $0x1,%eax
c00312a6:	82 8b 83 80 16 01 00 	orb    $0x0,0x1168083(%ebx)
c00312ad:	8d 50 01             	lea    0x1(%eax),%edx
c00312b0:	89 93 80 16 01 00    	mov    %edx,0x11680(%ebx)
c00312b6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c00312bd:	8d 83 40 15 01 00    	lea    0x11540(%ebx),%eax
c00312c3:	01 d0                	add    %edx,%eax
c00312c5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00312c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00312cb:	8b 55 0c             	mov    0xc(%ebp),%edx
c00312ce:	89 10                	mov    %edx,(%eax)
c00312d0:	8b 45 08             	mov    0x8(%ebp),%eax
c00312d3:	8b 94 83 40 16 01 00 	mov    0x11640(%ebx,%eax,4),%edx
c00312da:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00312dd:	89 50 04             	mov    %edx,0x4(%eax)
c00312e0:	8b 45 08             	mov    0x8(%ebp),%eax
c00312e3:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00312e6:	89 94 83 40 16 01 00 	mov    %edx,0x11640(%ebx,%eax,4)
c00312ed:	90                   	nop
c00312ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312f1:	c9                   	leave  
c00312f2:	c3                   	ret    

c00312f3 <irq_handle>:
c00312f3:	55                   	push   %ebp
c00312f4:	89 e5                	mov    %esp,%ebp
c00312f6:	53                   	push   %ebx
c00312f7:	83 ec 14             	sub    $0x14,%esp
c00312fa:	e8 8c ee ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00312ff:	81 c3 01 ad 00 00    	add    $0xad01,%ebx
c0031305:	8b 45 08             	mov    0x8(%ebp),%eax
c0031308:	8b 40 20             	mov    0x20(%eax),%eax
c003130b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003130e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0031312:	79 2a                	jns    c003133e <irq_handle+0x4b>
c0031314:	8d 83 dc cc ff ff    	lea    -0x3324(%ebx),%eax
c003131a:	50                   	push   %eax
c003131b:	6a 24                	push   $0x24
c003131d:	8d 83 93 cb ff ff    	lea    -0x346d(%ebx),%eax
c0031323:	50                   	push   %eax
c0031324:	8d 83 10 cc ff ff    	lea    -0x33f0(%ebx),%eax
c003132a:	50                   	push   %eax
c003132b:	e8 29 f6 ff ff       	call   c0030959 <printk>
c0031330:	83 c4 10             	add    $0x10,%esp
c0031333:	b8 01 00 00 00       	mov    $0x1,%eax
c0031338:	82 e9 c7             	sub    $0xc7,%cl
c003133b:	00 00                	add    %al,(%eax)
c003133d:	00 81 7d f0 80 00    	add    %al,0x80f07d(%ecx)
c0031343:	00 00                	add    %al,(%eax)
c0031345:	75 13                	jne    c003135a <irq_handle+0x67>
c0031347:	83 ec 0c             	sub    $0xc,%esp
c003134a:	ff 75 08             	pushl  0x8(%ebp)
c003134d:	e8 21 07 00 00       	call   c0031a73 <do_syscall>
c0031352:	83 c4 10             	add    $0x10,%esp
c0031355:	e9 ab 00 00 00       	jmp    c0031405 <irq_handle+0x112>
c003135a:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0031361:	7f 34                	jg     c0031397 <irq_handle+0xa4>
c0031363:	8b 45 08             	mov    0x8(%ebp),%eax
c0031366:	8b 40 28             	mov    0x28(%eax),%eax
c0031369:	83 ec 08             	sub    $0x8,%esp
c003136c:	50                   	push   %eax
c003136d:	ff 75 f0             	pushl  -0x10(%ebp)
c0031370:	8d 83 dc cc ff ff    	lea    -0x3324(%ebx),%eax
c0031376:	50                   	push   %eax
c0031377:	6a 28                	push   $0x28
c0031379:	8d 83 93 cb ff ff    	lea    -0x346d(%ebx),%eax
c003137f:	50                   	push   %eax
c0031380:	8d 83 5c cc ff ff    	lea    -0x33a4(%ebx),%eax
c0031386:	50                   	push   %eax
c0031387:	e8 cd f5 ff ff       	call   c0030959 <printk>
c003138c:	83 c4 20             	add    $0x20,%esp
c003138f:	b8 01 00 00 00       	mov    $0x1,%eax
c0031394:	82 eb 6e             	sub    $0x6e,%bl
c0031397:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c003139e:	7e 65                	jle    c0031405 <irq_handle+0x112>
c00313a0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00313a3:	2d e8 03 00 00       	sub    $0x3e8,%eax
c00313a8:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00313ab:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c00313af:	7e 2f                	jle    c00313e0 <irq_handle+0xed>
c00313b1:	83 ec 0c             	sub    $0xc,%esp
c00313b4:	8d 83 b6 cc ff ff    	lea    -0x334a(%ebx),%eax
c00313ba:	50                   	push   %eax
c00313bb:	8d 83 dc cc ff ff    	lea    -0x3324(%ebx),%eax
c00313c1:	50                   	push   %eax
c00313c2:	6a 2b                	push   $0x2b
c00313c4:	8d 83 93 cb ff ff    	lea    -0x346d(%ebx),%eax
c00313ca:	50                   	push   %eax
c00313cb:	8d 83 a8 cb ff ff    	lea    -0x3458(%ebx),%eax
c00313d1:	50                   	push   %eax
c00313d2:	e8 82 f5 ff ff       	call   c0030959 <printk>
c00313d7:	83 c4 20             	add    $0x20,%esp
c00313da:	b8 01 00 00 00       	mov    $0x1,%eax
c00313df:	82 8b 45 ec 8b 84 83 	orb    $0x83,-0x7b7413bb(%ebx)
c00313e6:	40                   	inc    %eax
c00313e7:	16                   	push   %ss
c00313e8:	01 00                	add    %eax,(%eax)
c00313ea:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00313ed:	eb 10                	jmp    c00313ff <irq_handle+0x10c>
c00313ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313f2:	8b 00                	mov    (%eax),%eax
c00313f4:	ff d0                	call   *%eax
c00313f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313f9:	8b 40 04             	mov    0x4(%eax),%eax
c00313fc:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00313ff:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0031403:	75 ea                	jne    c00313ef <irq_handle+0xfc>
c0031405:	90                   	nop
c0031406:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031409:	c9                   	leave  
c003140a:	c3                   	ret    

c003140b <write_idtr>:
c003140b:	55                   	push   %ebp
c003140c:	89 e5                	mov    %esp,%ebp
c003140e:	e8 74 ed ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031413:	05 ed ab 00 00       	add    $0xabed,%eax
c0031418:	8b 55 0c             	mov    0xc(%ebp),%edx
c003141b:	4a                   	dec    %edx
c003141c:	66 89 90 a0 1e 01 00 	mov    %dx,0x11ea0(%eax)
c0031423:	8b 55 08             	mov    0x8(%ebp),%edx
c0031426:	66 89 90 a2 1e 01 00 	mov    %dx,0x11ea2(%eax)
c003142d:	8b 55 08             	mov    0x8(%ebp),%edx
c0031430:	c1 ea 10             	shr    $0x10,%edx
c0031433:	66 89 90 a4 1e 01 00 	mov    %dx,0x11ea4(%eax)
c003143a:	8d 80 a0 1e 01 00    	lea    0x11ea0(%eax),%eax
c0031440:	0f 01 18             	lidtl  (%eax)
c0031443:	90                   	nop
c0031444:	5d                   	pop    %ebp
c0031445:	c3                   	ret    

c0031446 <sti>:
c0031446:	55                   	push   %ebp
c0031447:	89 e5                	mov    %esp,%ebp
c0031449:	e8 39 ed ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003144e:	05 b2 ab 00 00       	add    $0xabb2,%eax
c0031453:	fb                   	sti    
c0031454:	90                   	nop
c0031455:	5d                   	pop    %ebp
c0031456:	c3                   	ret    

c0031457 <set_intr>:
c0031457:	55                   	push   %ebp
c0031458:	89 e5                	mov    %esp,%ebp
c003145a:	e8 28 ed ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003145f:	05 a1 ab 00 00       	add    $0xaba1,%eax
c0031464:	8b 45 10             	mov    0x10(%ebp),%eax
c0031467:	8b 55 08             	mov    0x8(%ebp),%edx
c003146a:	66 89 02             	mov    %ax,(%edx)
c003146d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031470:	8b 55 08             	mov    0x8(%ebp),%edx
c0031473:	66 89 42 02          	mov    %ax,0x2(%edx)
c0031477:	8b 45 08             	mov    0x8(%ebp),%eax
c003147a:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c003147e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031481:	8a 50 05             	mov    0x5(%eax),%dl
c0031484:	83 e2 f0             	and    $0xfffffff0,%edx
c0031487:	83 ca 0e             	or     $0xe,%edx
c003148a:	88 50 05             	mov    %dl,0x5(%eax)
c003148d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031490:	8a 50 05             	mov    0x5(%eax),%dl
c0031493:	83 e2 ef             	and    $0xffffffef,%edx
c0031496:	88 50 05             	mov    %dl,0x5(%eax)
c0031499:	8b 45 14             	mov    0x14(%ebp),%eax
c003149c:	83 e0 03             	and    $0x3,%eax
c003149f:	88 c2                	mov    %al,%dl
c00314a1:	8b 45 08             	mov    0x8(%ebp),%eax
c00314a4:	83 e2 03             	and    $0x3,%edx
c00314a7:	88 d1                	mov    %dl,%cl
c00314a9:	c1 e1 05             	shl    $0x5,%ecx
c00314ac:	8a 50 05             	mov    0x5(%eax),%dl
c00314af:	83 e2 9f             	and    $0xffffff9f,%edx
c00314b2:	09 ca                	or     %ecx,%edx
c00314b4:	88 50 05             	mov    %dl,0x5(%eax)
c00314b7:	8b 45 08             	mov    0x8(%ebp),%eax
c00314ba:	8a 50 05             	mov    0x5(%eax),%dl
c00314bd:	83 ca 80             	or     $0xffffff80,%edx
c00314c0:	88 50 05             	mov    %dl,0x5(%eax)
c00314c3:	8b 45 10             	mov    0x10(%ebp),%eax
c00314c6:	c1 e8 10             	shr    $0x10,%eax
c00314c9:	8b 55 08             	mov    0x8(%ebp),%edx
c00314cc:	66 89 42 06          	mov    %ax,0x6(%edx)
c00314d0:	90                   	nop
c00314d1:	5d                   	pop    %ebp
c00314d2:	c3                   	ret    

c00314d3 <set_trap>:
c00314d3:	55                   	push   %ebp
c00314d4:	89 e5                	mov    %esp,%ebp
c00314d6:	e8 ac ec ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00314db:	05 25 ab 00 00       	add    $0xab25,%eax
c00314e0:	8b 45 10             	mov    0x10(%ebp),%eax
c00314e3:	8b 55 08             	mov    0x8(%ebp),%edx
c00314e6:	66 89 02             	mov    %ax,(%edx)
c00314e9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00314ec:	8b 55 08             	mov    0x8(%ebp),%edx
c00314ef:	66 89 42 02          	mov    %ax,0x2(%edx)
c00314f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00314f6:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00314fa:	8b 45 08             	mov    0x8(%ebp),%eax
c00314fd:	8a 50 05             	mov    0x5(%eax),%dl
c0031500:	83 ca 0f             	or     $0xf,%edx
c0031503:	88 50 05             	mov    %dl,0x5(%eax)
c0031506:	8b 45 08             	mov    0x8(%ebp),%eax
c0031509:	8a 50 05             	mov    0x5(%eax),%dl
c003150c:	83 e2 ef             	and    $0xffffffef,%edx
c003150f:	88 50 05             	mov    %dl,0x5(%eax)
c0031512:	8b 45 14             	mov    0x14(%ebp),%eax
c0031515:	83 e0 03             	and    $0x3,%eax
c0031518:	88 c2                	mov    %al,%dl
c003151a:	8b 45 08             	mov    0x8(%ebp),%eax
c003151d:	83 e2 03             	and    $0x3,%edx
c0031520:	88 d1                	mov    %dl,%cl
c0031522:	c1 e1 05             	shl    $0x5,%ecx
c0031525:	8a 50 05             	mov    0x5(%eax),%dl
c0031528:	83 e2 9f             	and    $0xffffff9f,%edx
c003152b:	09 ca                	or     %ecx,%edx
c003152d:	88 50 05             	mov    %dl,0x5(%eax)
c0031530:	8b 45 08             	mov    0x8(%ebp),%eax
c0031533:	8a 50 05             	mov    0x5(%eax),%dl
c0031536:	83 ca 80             	or     $0xffffff80,%edx
c0031539:	88 50 05             	mov    %dl,0x5(%eax)
c003153c:	8b 45 10             	mov    0x10(%ebp),%eax
c003153f:	c1 e8 10             	shr    $0x10,%eax
c0031542:	8b 55 08             	mov    0x8(%ebp),%edx
c0031545:	66 89 42 06          	mov    %ax,0x6(%edx)
c0031549:	90                   	nop
c003154a:	5d                   	pop    %ebp
c003154b:	c3                   	ret    

c003154c <init_idt>:
c003154c:	55                   	push   %ebp
c003154d:	89 e5                	mov    %esp,%ebp
c003154f:	53                   	push   %ebx
c0031550:	83 ec 10             	sub    $0x10,%esp
c0031553:	e8 33 ec ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0031558:	81 c3 a8 aa 00 00    	add    $0xaaa8,%ebx
c003155e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0031565:	eb 2b                	jmp    c0031592 <init_idt+0x46>
c0031567:	c7 c0 cd 00 03 c0    	mov    $0xc00300cd,%eax
c003156d:	89 c2                	mov    %eax,%edx
c003156f:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0031572:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0031579:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
c003157f:	01 c8                	add    %ecx,%eax
c0031581:	6a 00                	push   $0x0
c0031583:	52                   	push   %edx
c0031584:	6a 08                	push   $0x8
c0031586:	50                   	push   %eax
c0031587:	e8 47 ff ff ff       	call   c00314d3 <set_trap>
c003158c:	83 c4 10             	add    $0x10,%esp
c003158f:	ff 45 f8             	incl   -0x8(%ebp)
c0031592:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0031599:	7e cc                	jle    c0031567 <init_idt+0x1b>
c003159b:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c00315a1:	6a 00                	push   $0x0
c00315a3:	50                   	push   %eax
c00315a4:	6a 08                	push   $0x8
c00315a6:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
c00315ac:	50                   	push   %eax
c00315ad:	e8 21 ff ff ff       	call   c00314d3 <set_trap>
c00315b2:	83 c4 10             	add    $0x10,%esp
c00315b5:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c00315bb:	89 c2                	mov    %eax,%edx
c00315bd:	8d 83 a8 16 01 00    	lea    0x116a8(%ebx),%eax
c00315c3:	6a 00                	push   $0x0
c00315c5:	52                   	push   %edx
c00315c6:	6a 08                	push   $0x8
c00315c8:	50                   	push   %eax
c00315c9:	e8 05 ff ff ff       	call   c00314d3 <set_trap>
c00315ce:	83 c4 10             	add    $0x10,%esp
c00315d1:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c00315d7:	89 c2                	mov    %eax,%edx
c00315d9:	8d 83 b0 16 01 00    	lea    0x116b0(%ebx),%eax
c00315df:	6a 00                	push   $0x0
c00315e1:	52                   	push   %edx
c00315e2:	6a 08                	push   $0x8
c00315e4:	50                   	push   %eax
c00315e5:	e8 e9 fe ff ff       	call   c00314d3 <set_trap>
c00315ea:	83 c4 10             	add    $0x10,%esp
c00315ed:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c00315f3:	89 c2                	mov    %eax,%edx
c00315f5:	8d 83 b8 16 01 00    	lea    0x116b8(%ebx),%eax
c00315fb:	6a 00                	push   $0x0
c00315fd:	52                   	push   %edx
c00315fe:	6a 08                	push   $0x8
c0031600:	50                   	push   %eax
c0031601:	e8 cd fe ff ff       	call   c00314d3 <set_trap>
c0031606:	83 c4 10             	add    $0x10,%esp
c0031609:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c003160f:	89 c2                	mov    %eax,%edx
c0031611:	8d 83 c0 16 01 00    	lea    0x116c0(%ebx),%eax
c0031617:	6a 00                	push   $0x0
c0031619:	52                   	push   %edx
c003161a:	6a 08                	push   $0x8
c003161c:	50                   	push   %eax
c003161d:	e8 b1 fe ff ff       	call   c00314d3 <set_trap>
c0031622:	83 c4 10             	add    $0x10,%esp
c0031625:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c003162b:	89 c2                	mov    %eax,%edx
c003162d:	8d 83 c8 16 01 00    	lea    0x116c8(%ebx),%eax
c0031633:	6a 00                	push   $0x0
c0031635:	52                   	push   %edx
c0031636:	6a 08                	push   $0x8
c0031638:	50                   	push   %eax
c0031639:	e8 95 fe ff ff       	call   c00314d3 <set_trap>
c003163e:	83 c4 10             	add    $0x10,%esp
c0031641:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0031647:	89 c2                	mov    %eax,%edx
c0031649:	8d 83 d0 16 01 00    	lea    0x116d0(%ebx),%eax
c003164f:	6a 00                	push   $0x0
c0031651:	52                   	push   %edx
c0031652:	6a 08                	push   $0x8
c0031654:	50                   	push   %eax
c0031655:	e8 79 fe ff ff       	call   c00314d3 <set_trap>
c003165a:	83 c4 10             	add    $0x10,%esp
c003165d:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0031663:	89 c2                	mov    %eax,%edx
c0031665:	8d 83 d8 16 01 00    	lea    0x116d8(%ebx),%eax
c003166b:	6a 00                	push   $0x0
c003166d:	52                   	push   %edx
c003166e:	6a 08                	push   $0x8
c0031670:	50                   	push   %eax
c0031671:	e8 5d fe ff ff       	call   c00314d3 <set_trap>
c0031676:	83 c4 10             	add    $0x10,%esp
c0031679:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c003167f:	89 c2                	mov    %eax,%edx
c0031681:	8d 83 e0 16 01 00    	lea    0x116e0(%ebx),%eax
c0031687:	6a 00                	push   $0x0
c0031689:	52                   	push   %edx
c003168a:	6a 08                	push   $0x8
c003168c:	50                   	push   %eax
c003168d:	e8 41 fe ff ff       	call   c00314d3 <set_trap>
c0031692:	83 c4 10             	add    $0x10,%esp
c0031695:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c003169b:	89 c2                	mov    %eax,%edx
c003169d:	8d 83 e8 16 01 00    	lea    0x116e8(%ebx),%eax
c00316a3:	6a 00                	push   $0x0
c00316a5:	52                   	push   %edx
c00316a6:	6a 08                	push   $0x8
c00316a8:	50                   	push   %eax
c00316a9:	e8 25 fe ff ff       	call   c00314d3 <set_trap>
c00316ae:	83 c4 10             	add    $0x10,%esp
c00316b1:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c00316b7:	89 c2                	mov    %eax,%edx
c00316b9:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
c00316bf:	6a 00                	push   $0x0
c00316c1:	52                   	push   %edx
c00316c2:	6a 08                	push   $0x8
c00316c4:	50                   	push   %eax
c00316c5:	e8 09 fe ff ff       	call   c00314d3 <set_trap>
c00316ca:	83 c4 10             	add    $0x10,%esp
c00316cd:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c00316d3:	89 c2                	mov    %eax,%edx
c00316d5:	8d 83 f8 16 01 00    	lea    0x116f8(%ebx),%eax
c00316db:	6a 00                	push   $0x0
c00316dd:	52                   	push   %edx
c00316de:	6a 08                	push   $0x8
c00316e0:	50                   	push   %eax
c00316e1:	e8 ed fd ff ff       	call   c00314d3 <set_trap>
c00316e6:	83 c4 10             	add    $0x10,%esp
c00316e9:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c00316ef:	89 c2                	mov    %eax,%edx
c00316f1:	8d 83 00 17 01 00    	lea    0x11700(%ebx),%eax
c00316f7:	6a 00                	push   $0x0
c00316f9:	52                   	push   %edx
c00316fa:	6a 08                	push   $0x8
c00316fc:	50                   	push   %eax
c00316fd:	e8 d1 fd ff ff       	call   c00314d3 <set_trap>
c0031702:	83 c4 10             	add    $0x10,%esp
c0031705:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c003170b:	89 c2                	mov    %eax,%edx
c003170d:	8d 83 08 17 01 00    	lea    0x11708(%ebx),%eax
c0031713:	6a 00                	push   $0x0
c0031715:	52                   	push   %edx
c0031716:	6a 08                	push   $0x8
c0031718:	50                   	push   %eax
c0031719:	e8 b5 fd ff ff       	call   c00314d3 <set_trap>
c003171e:	83 c4 10             	add    $0x10,%esp
c0031721:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0031727:	89 c2                	mov    %eax,%edx
c0031729:	8d 83 10 17 01 00    	lea    0x11710(%ebx),%eax
c003172f:	6a 00                	push   $0x0
c0031731:	52                   	push   %edx
c0031732:	6a 08                	push   $0x8
c0031734:	50                   	push   %eax
c0031735:	e8 99 fd ff ff       	call   c00314d3 <set_trap>
c003173a:	83 c4 10             	add    $0x10,%esp
c003173d:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0031743:	89 c2                	mov    %eax,%edx
c0031745:	8d 83 a0 1a 01 00    	lea    0x11aa0(%ebx),%eax
c003174b:	6a 03                	push   $0x3
c003174d:	52                   	push   %edx
c003174e:	6a 08                	push   $0x8
c0031750:	50                   	push   %eax
c0031751:	e8 7d fd ff ff       	call   c00314d3 <set_trap>
c0031756:	83 c4 10             	add    $0x10,%esp
c0031759:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c003175f:	89 c2                	mov    %eax,%edx
c0031761:	8d 83 a0 17 01 00    	lea    0x117a0(%ebx),%eax
c0031767:	6a 00                	push   $0x0
c0031769:	52                   	push   %edx
c003176a:	6a 08                	push   $0x8
c003176c:	50                   	push   %eax
c003176d:	e8 e5 fc ff ff       	call   c0031457 <set_intr>
c0031772:	83 c4 10             	add    $0x10,%esp
c0031775:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c003177b:	89 c2                	mov    %eax,%edx
c003177d:	8d 83 a8 17 01 00    	lea    0x117a8(%ebx),%eax
c0031783:	6a 00                	push   $0x0
c0031785:	52                   	push   %edx
c0031786:	6a 08                	push   $0x8
c0031788:	50                   	push   %eax
c0031789:	e8 c9 fc ff ff       	call   c0031457 <set_intr>
c003178e:	83 c4 10             	add    $0x10,%esp
c0031791:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c0031797:	89 c2                	mov    %eax,%edx
c0031799:	8d 83 b0 17 01 00    	lea    0x117b0(%ebx),%eax
c003179f:	6a 00                	push   $0x0
c00317a1:	52                   	push   %edx
c00317a2:	6a 08                	push   $0x8
c00317a4:	50                   	push   %eax
c00317a5:	e8 ad fc ff ff       	call   c0031457 <set_intr>
c00317aa:	83 c4 10             	add    $0x10,%esp
c00317ad:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c00317b3:	89 c2                	mov    %eax,%edx
c00317b5:	8d 83 10 18 01 00    	lea    0x11810(%ebx),%eax
c00317bb:	6a 00                	push   $0x0
c00317bd:	52                   	push   %edx
c00317be:	6a 08                	push   $0x8
c00317c0:	50                   	push   %eax
c00317c1:	e8 91 fc ff ff       	call   c0031457 <set_intr>
c00317c6:	83 c4 10             	add    $0x10,%esp
c00317c9:	68 00 08 00 00       	push   $0x800
c00317ce:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
c00317d4:	50                   	push   %eax
c00317d5:	e8 31 fc ff ff       	call   c003140b <write_idtr>
c00317da:	83 c4 08             	add    $0x8,%esp
c00317dd:	e8 64 fc ff ff       	call   c0031446 <sti>
c00317e2:	90                   	nop
c00317e3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00317e6:	c9                   	leave  
c00317e7:	c3                   	ret    

c00317e8 <out_byte>:
c00317e8:	55                   	push   %ebp
c00317e9:	89 e5                	mov    %esp,%ebp
c00317eb:	83 ec 08             	sub    $0x8,%esp
c00317ee:	e8 94 e9 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00317f3:	05 0d a8 00 00       	add    $0xa80d,%eax
c00317f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00317fb:	8b 55 0c             	mov    0xc(%ebp),%edx
c00317fe:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031802:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0031805:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031808:	8b 55 fc             	mov    -0x4(%ebp),%edx
c003180b:	ee                   	out    %al,(%dx)
c003180c:	90                   	nop
c003180d:	c9                   	leave  
c003180e:	c3                   	ret    

c003180f <init_i8259>:
c003180f:	55                   	push   %ebp
c0031810:	89 e5                	mov    %esp,%ebp
c0031812:	e8 70 e9 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031817:	05 e9 a7 00 00       	add    $0xa7e9,%eax
c003181c:	68 ff 00 00 00       	push   $0xff
c0031821:	6a 21                	push   $0x21
c0031823:	e8 c0 ff ff ff       	call   c00317e8 <out_byte>
c0031828:	83 c4 08             	add    $0x8,%esp
c003182b:	68 ff 00 00 00       	push   $0xff
c0031830:	68 a1 00 00 00       	push   $0xa1
c0031835:	e8 ae ff ff ff       	call   c00317e8 <out_byte>
c003183a:	83 c4 08             	add    $0x8,%esp
c003183d:	6a 11                	push   $0x11
c003183f:	6a 20                	push   $0x20
c0031841:	e8 a2 ff ff ff       	call   c00317e8 <out_byte>
c0031846:	83 c4 08             	add    $0x8,%esp
c0031849:	6a 20                	push   $0x20
c003184b:	6a 21                	push   $0x21
c003184d:	e8 96 ff ff ff       	call   c00317e8 <out_byte>
c0031852:	83 c4 08             	add    $0x8,%esp
c0031855:	6a 04                	push   $0x4
c0031857:	6a 21                	push   $0x21
c0031859:	e8 8a ff ff ff       	call   c00317e8 <out_byte>
c003185e:	83 c4 08             	add    $0x8,%esp
c0031861:	6a 03                	push   $0x3
c0031863:	6a 21                	push   $0x21
c0031865:	e8 7e ff ff ff       	call   c00317e8 <out_byte>
c003186a:	83 c4 08             	add    $0x8,%esp
c003186d:	6a 11                	push   $0x11
c003186f:	68 a0 00 00 00       	push   $0xa0
c0031874:	e8 6f ff ff ff       	call   c00317e8 <out_byte>
c0031879:	83 c4 08             	add    $0x8,%esp
c003187c:	6a 28                	push   $0x28
c003187e:	68 a1 00 00 00       	push   $0xa1
c0031883:	e8 60 ff ff ff       	call   c00317e8 <out_byte>
c0031888:	83 c4 08             	add    $0x8,%esp
c003188b:	6a 02                	push   $0x2
c003188d:	68 a1 00 00 00       	push   $0xa1
c0031892:	e8 51 ff ff ff       	call   c00317e8 <out_byte>
c0031897:	83 c4 08             	add    $0x8,%esp
c003189a:	6a 03                	push   $0x3
c003189c:	68 a1 00 00 00       	push   $0xa1
c00318a1:	e8 42 ff ff ff       	call   c00317e8 <out_byte>
c00318a6:	83 c4 08             	add    $0x8,%esp
c00318a9:	6a 68                	push   $0x68
c00318ab:	6a 20                	push   $0x20
c00318ad:	e8 36 ff ff ff       	call   c00317e8 <out_byte>
c00318b2:	83 c4 08             	add    $0x8,%esp
c00318b5:	6a 0a                	push   $0xa
c00318b7:	6a 20                	push   $0x20
c00318b9:	e8 2a ff ff ff       	call   c00317e8 <out_byte>
c00318be:	83 c4 08             	add    $0x8,%esp
c00318c1:	6a 68                	push   $0x68
c00318c3:	68 a0 00 00 00       	push   $0xa0
c00318c8:	e8 1b ff ff ff       	call   c00317e8 <out_byte>
c00318cd:	83 c4 08             	add    $0x8,%esp
c00318d0:	6a 0a                	push   $0xa
c00318d2:	68 a0 00 00 00       	push   $0xa0
c00318d7:	e8 0c ff ff ff       	call   c00317e8 <out_byte>
c00318dc:	83 c4 08             	add    $0x8,%esp
c00318df:	90                   	nop
c00318e0:	c9                   	leave  
c00318e1:	c3                   	ret    

c00318e2 <sti>:
c00318e2:	55                   	push   %ebp
c00318e3:	89 e5                	mov    %esp,%ebp
c00318e5:	e8 9d e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00318ea:	05 16 a7 00 00       	add    $0xa716,%eax
c00318ef:	fb                   	sti    
c00318f0:	90                   	nop
c00318f1:	5d                   	pop    %ebp
c00318f2:	c3                   	ret    

c00318f3 <cli>:
c00318f3:	55                   	push   %ebp
c00318f4:	89 e5                	mov    %esp,%ebp
c00318f6:	e8 8c e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00318fb:	05 05 a7 00 00       	add    $0xa705,%eax
c0031900:	fa                   	cli    
c0031901:	90                   	nop
c0031902:	5d                   	pop    %ebp
c0031903:	c3                   	ret    

c0031904 <sys_brk>:
c0031904:	55                   	push   %ebp
c0031905:	89 e5                	mov    %esp,%ebp
c0031907:	53                   	push   %ebx
c0031908:	83 ec 04             	sub    $0x4,%esp
c003190b:	e8 77 e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031910:	05 f0 a6 00 00       	add    $0xa6f0,%eax
c0031915:	8b 55 08             	mov    0x8(%ebp),%edx
c0031918:	8b 52 10             	mov    0x10(%edx),%edx
c003191b:	83 ec 0c             	sub    $0xc,%esp
c003191e:	52                   	push   %edx
c003191f:	89 c3                	mov    %eax,%ebx
c0031921:	e8 63 ee ff ff       	call   c0030789 <mm_brk>
c0031926:	83 c4 10             	add    $0x10,%esp
c0031929:	8b 45 08             	mov    0x8(%ebp),%eax
c003192c:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c0031933:	90                   	nop
c0031934:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031937:	c9                   	leave  
c0031938:	c3                   	ret    

c0031939 <sys_open>:
c0031939:	55                   	push   %ebp
c003193a:	89 e5                	mov    %esp,%ebp
c003193c:	53                   	push   %ebx
c003193d:	83 ec 04             	sub    $0x4,%esp
c0031940:	e8 42 e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031945:	05 bb a6 00 00       	add    $0xa6bb,%eax
c003194a:	8b 55 08             	mov    0x8(%ebp),%edx
c003194d:	8b 52 18             	mov    0x18(%edx),%edx
c0031950:	89 d1                	mov    %edx,%ecx
c0031952:	8b 55 08             	mov    0x8(%ebp),%edx
c0031955:	8b 52 10             	mov    0x10(%edx),%edx
c0031958:	83 ec 08             	sub    $0x8,%esp
c003195b:	51                   	push   %ecx
c003195c:	52                   	push   %edx
c003195d:	89 c3                	mov    %eax,%ebx
c003195f:	e8 2b e8 ff ff       	call   c003018f <fs_open>
c0031964:	83 c4 10             	add    $0x10,%esp
c0031967:	89 c2                	mov    %eax,%edx
c0031969:	8b 45 08             	mov    0x8(%ebp),%eax
c003196c:	89 50 1c             	mov    %edx,0x1c(%eax)
c003196f:	90                   	nop
c0031970:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031973:	c9                   	leave  
c0031974:	c3                   	ret    

c0031975 <sys_read>:
c0031975:	55                   	push   %ebp
c0031976:	89 e5                	mov    %esp,%ebp
c0031978:	53                   	push   %ebx
c0031979:	83 ec 04             	sub    $0x4,%esp
c003197c:	e8 06 e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031981:	05 7f a6 00 00       	add    $0xa67f,%eax
c0031986:	8b 55 08             	mov    0x8(%ebp),%edx
c0031989:	8b 52 14             	mov    0x14(%edx),%edx
c003198c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003198f:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031992:	89 cb                	mov    %ecx,%ebx
c0031994:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031997:	8b 49 10             	mov    0x10(%ecx),%ecx
c003199a:	83 ec 04             	sub    $0x4,%esp
c003199d:	52                   	push   %edx
c003199e:	53                   	push   %ebx
c003199f:	51                   	push   %ecx
c00319a0:	89 c3                	mov    %eax,%ebx
c00319a2:	e8 2a e8 ff ff       	call   c00301d1 <fs_read>
c00319a7:	83 c4 10             	add    $0x10,%esp
c00319aa:	89 c2                	mov    %eax,%edx
c00319ac:	8b 45 08             	mov    0x8(%ebp),%eax
c00319af:	89 50 1c             	mov    %edx,0x1c(%eax)
c00319b2:	90                   	nop
c00319b3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00319b6:	c9                   	leave  
c00319b7:	c3                   	ret    

c00319b8 <sys_write>:
c00319b8:	55                   	push   %ebp
c00319b9:	89 e5                	mov    %esp,%ebp
c00319bb:	53                   	push   %ebx
c00319bc:	83 ec 04             	sub    $0x4,%esp
c00319bf:	e8 c3 e7 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00319c4:	05 3c a6 00 00       	add    $0xa63c,%eax
c00319c9:	8b 55 08             	mov    0x8(%ebp),%edx
c00319cc:	8b 52 14             	mov    0x14(%edx),%edx
c00319cf:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00319d2:	8b 49 18             	mov    0x18(%ecx),%ecx
c00319d5:	89 cb                	mov    %ecx,%ebx
c00319d7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00319da:	8b 49 10             	mov    0x10(%ecx),%ecx
c00319dd:	83 ec 04             	sub    $0x4,%esp
c00319e0:	52                   	push   %edx
c00319e1:	53                   	push   %ebx
c00319e2:	51                   	push   %ecx
c00319e3:	89 c3                	mov    %eax,%ebx
c00319e5:	e8 5d e8 ff ff       	call   c0030247 <fs_write>
c00319ea:	83 c4 10             	add    $0x10,%esp
c00319ed:	89 c2                	mov    %eax,%edx
c00319ef:	8b 45 08             	mov    0x8(%ebp),%eax
c00319f2:	89 50 1c             	mov    %edx,0x1c(%eax)
c00319f5:	90                   	nop
c00319f6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00319f9:	c9                   	leave  
c00319fa:	c3                   	ret    

c00319fb <sys_lseek>:
c00319fb:	55                   	push   %ebp
c00319fc:	89 e5                	mov    %esp,%ebp
c00319fe:	53                   	push   %ebx
c00319ff:	83 ec 04             	sub    $0x4,%esp
c0031a02:	e8 80 e7 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031a07:	05 f9 a5 00 00       	add    $0xa5f9,%eax
c0031a0c:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a0f:	8b 52 14             	mov    0x14(%edx),%edx
c0031a12:	89 d3                	mov    %edx,%ebx
c0031a14:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a17:	8b 52 18             	mov    0x18(%edx),%edx
c0031a1a:	89 d1                	mov    %edx,%ecx
c0031a1c:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a1f:	8b 52 10             	mov    0x10(%edx),%edx
c0031a22:	83 ec 04             	sub    $0x4,%esp
c0031a25:	53                   	push   %ebx
c0031a26:	51                   	push   %ecx
c0031a27:	52                   	push   %edx
c0031a28:	89 c3                	mov    %eax,%ebx
c0031a2a:	e8 94 e8 ff ff       	call   c00302c3 <fs_lseek>
c0031a2f:	83 c4 10             	add    $0x10,%esp
c0031a32:	89 c2                	mov    %eax,%edx
c0031a34:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a37:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031a3a:	90                   	nop
c0031a3b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a3e:	c9                   	leave  
c0031a3f:	c3                   	ret    

c0031a40 <sys_close>:
c0031a40:	55                   	push   %ebp
c0031a41:	89 e5                	mov    %esp,%ebp
c0031a43:	53                   	push   %ebx
c0031a44:	83 ec 04             	sub    $0x4,%esp
c0031a47:	e8 3b e7 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031a4c:	05 b4 a5 00 00       	add    $0xa5b4,%eax
c0031a51:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a54:	8b 52 10             	mov    0x10(%edx),%edx
c0031a57:	83 ec 0c             	sub    $0xc,%esp
c0031a5a:	52                   	push   %edx
c0031a5b:	89 c3                	mov    %eax,%ebx
c0031a5d:	e8 a3 e8 ff ff       	call   c0030305 <fs_close>
c0031a62:	83 c4 10             	add    $0x10,%esp
c0031a65:	89 c2                	mov    %eax,%edx
c0031a67:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a6a:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031a6d:	90                   	nop
c0031a6e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a71:	c9                   	leave  
c0031a72:	c3                   	ret    

c0031a73 <do_syscall>:
c0031a73:	55                   	push   %ebp
c0031a74:	89 e5                	mov    %esp,%ebp
c0031a76:	53                   	push   %ebx
c0031a77:	83 ec 04             	sub    $0x4,%esp
c0031a7a:	e8 0c e7 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0031a7f:	81 c3 81 a5 00 00    	add    $0xa581,%ebx
c0031a85:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a88:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031a8b:	83 f8 2d             	cmp    $0x2d,%eax
c0031a8e:	0f 87 98 00 00 00    	ja     c0031b2c <.L10>
c0031a94:	c1 e0 02             	shl    $0x2,%eax
c0031a97:	8b 84 18 58 cd ff ff 	mov    -0x32a8(%eax,%ebx,1),%eax
c0031a9e:	01 d8                	add    %ebx,%eax
c0031aa0:	ff e0                	jmp    *%eax

c0031aa2 <.L11>:
c0031aa2:	e8 4c fe ff ff       	call   c00318f3 <cli>
c0031aa7:	8b 45 08             	mov    0x8(%ebp),%eax
c0031aaa:	8b 40 18             	mov    0x18(%eax),%eax
c0031aad:	89 c2                	mov    %eax,%edx
c0031aaf:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ab2:	8b 40 10             	mov    0x10(%eax),%eax
c0031ab5:	83 ec 08             	sub    $0x8,%esp
c0031ab8:	52                   	push   %edx
c0031ab9:	50                   	push   %eax
c0031aba:	e8 67 f7 ff ff       	call   c0031226 <add_irq_handle>
c0031abf:	83 c4 10             	add    $0x10,%esp
c0031ac2:	e8 1b fe ff ff       	call   c00318e2 <sti>
c0031ac7:	e9 8f 00 00 00       	jmp    c0031b5b <.L10+0x2f>

c0031acc <.L18>:
c0031acc:	83 ec 0c             	sub    $0xc,%esp
c0031acf:	ff 75 08             	pushl  0x8(%ebp)
c0031ad2:	e8 2d fe ff ff       	call   c0031904 <sys_brk>
c0031ad7:	83 c4 10             	add    $0x10,%esp
c0031ada:	eb 7f                	jmp    c0031b5b <.L10+0x2f>

c0031adc <.L15>:
c0031adc:	83 ec 0c             	sub    $0xc,%esp
c0031adf:	ff 75 08             	pushl  0x8(%ebp)
c0031ae2:	e8 52 fe ff ff       	call   c0031939 <sys_open>
c0031ae7:	83 c4 10             	add    $0x10,%esp
c0031aea:	eb 6f                	jmp    c0031b5b <.L10+0x2f>

c0031aec <.L13>:
c0031aec:	83 ec 0c             	sub    $0xc,%esp
c0031aef:	ff 75 08             	pushl  0x8(%ebp)
c0031af2:	e8 7e fe ff ff       	call   c0031975 <sys_read>
c0031af7:	83 c4 10             	add    $0x10,%esp
c0031afa:	eb 5f                	jmp    c0031b5b <.L10+0x2f>

c0031afc <.L14>:
c0031afc:	83 ec 0c             	sub    $0xc,%esp
c0031aff:	ff 75 08             	pushl  0x8(%ebp)
c0031b02:	e8 b1 fe ff ff       	call   c00319b8 <sys_write>
c0031b07:	83 c4 10             	add    $0x10,%esp
c0031b0a:	eb 4f                	jmp    c0031b5b <.L10+0x2f>

c0031b0c <.L17>:
c0031b0c:	83 ec 0c             	sub    $0xc,%esp
c0031b0f:	ff 75 08             	pushl  0x8(%ebp)
c0031b12:	e8 e4 fe ff ff       	call   c00319fb <sys_lseek>
c0031b17:	83 c4 10             	add    $0x10,%esp
c0031b1a:	eb 3f                	jmp    c0031b5b <.L10+0x2f>

c0031b1c <.L16>:
c0031b1c:	83 ec 0c             	sub    $0xc,%esp
c0031b1f:	ff 75 08             	pushl  0x8(%ebp)
c0031b22:	e8 19 ff ff ff       	call   c0031a40 <sys_close>
c0031b27:	83 c4 10             	add    $0x10,%esp
c0031b2a:	eb 2f                	jmp    c0031b5b <.L10+0x2f>

c0031b2c <.L10>:
c0031b2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b2f:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031b32:	83 ec 0c             	sub    $0xc,%esp
c0031b35:	50                   	push   %eax
c0031b36:	8d 83 10 ce ff ff    	lea    -0x31f0(%ebx),%eax
c0031b3c:	50                   	push   %eax
c0031b3d:	6a 35                	push   $0x35
c0031b3f:	8d 83 e8 cc ff ff    	lea    -0x3318(%ebx),%eax
c0031b45:	50                   	push   %eax
c0031b46:	8d 83 04 cd ff ff    	lea    -0x32fc(%ebx),%eax
c0031b4c:	50                   	push   %eax
c0031b4d:	e8 07 ee ff ff       	call   c0030959 <printk>
c0031b52:	83 c4 20             	add    $0x20,%esp
c0031b55:	b8 01 00 00 00       	mov    $0x1,%eax
c0031b5a:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)
c0031b61:	66 90                	xchg   %ax,%ax
c0031b63:	66 90                	xchg   %ax,%ax
c0031b65:	66 90                	xchg   %ax,%ax
c0031b67:	66 90                	xchg   %ax,%ax
c0031b69:	66 90                	xchg   %ax,%ax
c0031b6b:	66 90                	xchg   %ax,%ax
c0031b6d:	66 90                	xchg   %ax,%ax
c0031b6f:	90                   	nop

c0031b70 <mm_malloc>:
c0031b70:	55                   	push   %ebp
c0031b71:	31 c0                	xor    %eax,%eax
c0031b73:	89 e5                	mov    %esp,%ebp
c0031b75:	57                   	push   %edi
c0031b76:	56                   	push   %esi
c0031b77:	53                   	push   %ebx
c0031b78:	83 ec 3c             	sub    $0x3c,%esp
c0031b7b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031b7e:	85 db                	test   %ebx,%ebx
c0031b80:	0f 8e 36 02 00 00    	jle    c0031dbc <mm_malloc+0x24c>
c0031b86:	e8 d2 eb ff ff       	call   c003075d <get_updir>
c0031b8b:	89 c6                	mov    %eax,%esi
c0031b8d:	e8 e0 eb ff ff       	call   c0030772 <get_ucr3>
c0031b92:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b95:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031b99:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031b9c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031b9f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031ba4:	29 d0                	sub    %edx,%eax
c0031ba6:	89 da                	mov    %ebx,%edx
c0031ba8:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031bae:	01 d0                	add    %edx,%eax
c0031bb0:	85 c0                	test   %eax,%eax
c0031bb2:	0f 8e c0 00 00 00    	jle    c0031c78 <mm_malloc+0x108>
c0031bb8:	8b 55 08             	mov    0x8(%ebp),%edx
c0031bbb:	83 e8 01             	sub    $0x1,%eax
c0031bbe:	89 f7                	mov    %esi,%edi
c0031bc0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031bc5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031bcc:	89 d3                	mov    %edx,%ebx
c0031bce:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031bd1:	eb 51                	jmp    c0031c24 <mm_malloc+0xb4>
c0031bd3:	90                   	nop
c0031bd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031bd8:	8b 31                	mov    (%ecx),%esi
c0031bda:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031be0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031be6:	89 d8                	mov    %ebx,%eax
c0031be8:	c1 e8 0a             	shr    $0xa,%eax
c0031beb:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031bf0:	01 c6                	add    %eax,%esi
c0031bf2:	f6 06 01             	testb  $0x1,(%esi)
c0031bf5:	75 22                	jne    c0031c19 <mm_malloc+0xa9>
c0031bf7:	a1 20 c0 03 c0       	mov    0xc003c020,%eax
c0031bfc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031c01:	0f 8f c1 01 00 00    	jg     c0031dc8 <mm_malloc+0x258>
c0031c07:	89 c1                	mov    %eax,%ecx
c0031c09:	83 c0 01             	add    $0x1,%eax
c0031c0c:	c1 e1 0c             	shl    $0xc,%ecx
c0031c0f:	83 c9 07             	or     $0x7,%ecx
c0031c12:	89 0e                	mov    %ecx,(%esi)
c0031c14:	a3 20 c0 03 c0       	mov    %eax,0xc003c020
c0031c19:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031c1f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031c22:	74 54                	je     c0031c78 <mm_malloc+0x108>
c0031c24:	89 d8                	mov    %ebx,%eax
c0031c26:	c1 e8 16             	shr    $0x16,%eax
c0031c29:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031c2c:	f6 01 01             	testb  $0x1,(%ecx)
c0031c2f:	75 a7                	jne    c0031bd8 <mm_malloc+0x68>
c0031c31:	a1 00 e0 04 c0       	mov    0xc004e000,%eax
c0031c36:	89 c6                	mov    %eax,%esi
c0031c38:	83 c0 01             	add    $0x1,%eax
c0031c3b:	c1 e6 0c             	shl    $0xc,%esi
c0031c3e:	81 c6 00 f0 04 c0    	add    $0xc004f000,%esi
c0031c44:	a3 00 e0 04 c0       	mov    %eax,0xc004e000
c0031c49:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031c4f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c54:	83 c8 07             	or     $0x7,%eax
c0031c57:	89 01                	mov    %eax,(%ecx)
c0031c59:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031c60:	00 
c0031c61:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031c68:	00 
c0031c69:	89 34 24             	mov    %esi,(%esp)
c0031c6c:	e8 db 01 00 00       	call   c0031e4c <memset>
c0031c71:	e9 70 ff ff ff       	jmp    c0031be6 <mm_malloc+0x76>
c0031c76:	66 90                	xchg   %ax,%ax
c0031c78:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031c7b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031c7e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031c84:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031c8a:	c1 e8 16             	shr    $0x16,%eax
c0031c8d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031c90:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031c96:	75 32                	jne    c0031cca <mm_malloc+0x15a>
c0031c98:	c7 44 24 10 3f 8e 03 	movl   $0xc0038e3f,0x10(%esp)
c0031c9f:	c0 
c0031ca0:	c7 44 24 0c a6 8e 03 	movl   $0xc0038ea6,0xc(%esp)
c0031ca7:	c0 
c0031ca8:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031caf:	00 
c0031cb0:	c7 44 24 04 2e 8e 03 	movl   $0xc0038e2e,0x4(%esp)
c0031cb7:	c0 
c0031cb8:	c7 04 24 50 8e 03 c0 	movl   $0xc0038e50,(%esp)
c0031cbf:	e8 95 ec ff ff       	call   c0030959 <printk>
c0031cc4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031cc9:	82 8b 55 e0 8d 86 00 	orb    $0x0,-0x79721fab(%ebx)
c0031cd0:	00 00                	add    %al,(%eax)
c0031cd2:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031cd9:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031ce0:	00 f6                	add    %dh,%dh
c0031ce2:	04 90                	add    $0x90,%al
c0031ce4:	01 75 32             	add    %esi,0x32(%ebp)
c0031ce7:	c7 44 24 10 47 8e 03 	movl   $0xc0038e47,0x10(%esp)
c0031cee:	c0 
c0031cef:	c7 44 24 0c a6 8e 03 	movl   $0xc0038ea6,0xc(%esp)
c0031cf6:	c0 
c0031cf7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031cfe:	00 
c0031cff:	c7 44 24 04 2e 8e 03 	movl   $0xc0038e2e,0x4(%esp)
c0031d06:	c0 
c0031d07:	c7 04 24 50 8e 03 c0 	movl   $0xc0038e50,(%esp)
c0031d0e:	e8 46 ec ff ff       	call   c0030959 <printk>
c0031d13:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d18:	82 8b 45 08 c1 e8 16 	orb    $0x16,-0x173ef7bb(%ebx)
c0031d1f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031d22:	f6 c3 01             	test   $0x1,%bl
c0031d25:	75 32                	jne    c0031d59 <mm_malloc+0x1e9>
c0031d27:	c7 44 24 10 3f 8e 03 	movl   $0xc0038e3f,0x10(%esp)
c0031d2e:	c0 
c0031d2f:	c7 44 24 0c a6 8e 03 	movl   $0xc0038ea6,0xc(%esp)
c0031d36:	c0 
c0031d37:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031d3e:	00 
c0031d3f:	c7 44 24 04 2e 8e 03 	movl   $0xc0038e2e,0x4(%esp)
c0031d46:	c0 
c0031d47:	c7 04 24 50 8e 03 c0 	movl   $0xc0038e50,(%esp)
c0031d4e:	e8 06 ec ff ff       	call   c0030959 <printk>
c0031d53:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d58:	82 8b 55 08 8d 83 00 	orb    $0x0,-0x7c72f7ab(%ebx)
c0031d5f:	00 00                	add    %al,(%eax)
c0031d61:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031d68:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031d6f:	00 8b 1c 90 f6 c3    	add    %cl,-0x3c096fe4(%ebx)
c0031d75:	01 75 32             	add    %esi,0x32(%ebp)
c0031d78:	c7 44 24 10 47 8e 03 	movl   $0xc0038e47,0x10(%esp)
c0031d7f:	c0 
c0031d80:	c7 44 24 0c a6 8e 03 	movl   $0xc0038ea6,0xc(%esp)
c0031d87:	c0 
c0031d88:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d8f:	00 
c0031d90:	c7 44 24 04 2e 8e 03 	movl   $0xc0038e2e,0x4(%esp)
c0031d97:	c0 
c0031d98:	c7 04 24 50 8e 03 c0 	movl   $0xc0038e50,(%esp)
c0031d9f:	e8 b5 eb ff ff       	call   c0030959 <printk>
c0031da4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031da9:	82 8b 55 08 89 d8 25 	orb    $0x25,-0x2776f7ab(%ebx)
c0031db0:	00 f0                	add    %dh,%al
c0031db2:	ff                   	(bad)  
c0031db3:	ff 81 e2 ff 0f 00    	incl   0xfffe2(%ecx)
c0031db9:	00 09                	add    %cl,(%ecx)
c0031dbb:	d0 83 c4 3c 5b 5e    	rolb   0x5e5b3cc4(%ebx)
c0031dc1:	5f                   	pop    %edi
c0031dc2:	5d                   	pop    %ebp
c0031dc3:	c3                   	ret    
c0031dc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031dc8:	c7 44 24 10 1b 8e 03 	movl   $0xc0038e1b,0x10(%esp)
c0031dcf:	c0 
c0031dd0:	c7 44 24 0c 9c 8e 03 	movl   $0xc0038e9c,0xc(%esp)
c0031dd7:	c0 
c0031dd8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031ddf:	00 
c0031de0:	c7 44 24 04 2e 8e 03 	movl   $0xc0038e2e,0x4(%esp)
c0031de7:	c0 
c0031de8:	c7 04 24 50 8e 03 c0 	movl   $0xc0038e50,(%esp)
c0031def:	e8 65 eb ff ff       	call   c0030959 <printk>
c0031df4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031df9:	82 a1 20 c0 03 c0 e9 	andb   $0xe9,-0x3ffc3fe0(%ecx)
c0031e00:	03 fe                	add    %esi,%edi
c0031e02:	ff                   	(bad)  
c0031e03:	ff                   	.byte 0xff

c0031e04 <memcpy>:
c0031e04:	55                   	push   %ebp
c0031e05:	89 e5                	mov    %esp,%ebp
c0031e07:	56                   	push   %esi
c0031e08:	57                   	push   %edi
c0031e09:	53                   	push   %ebx
c0031e0a:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e0d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e10:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031e13:	fc                   	cld    
c0031e14:	83 f9 08             	cmp    $0x8,%ecx
c0031e17:	76 26                	jbe    c0031e3f <memcpy+0x3b>
c0031e19:	89 fa                	mov    %edi,%edx
c0031e1b:	89 cb                	mov    %ecx,%ebx
c0031e1d:	83 e2 03             	and    $0x3,%edx
c0031e20:	74 10                	je     c0031e32 <memcpy+0x2e>
c0031e22:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031e27:	29 d1                	sub    %edx,%ecx
c0031e29:	83 e1 03             	and    $0x3,%ecx
c0031e2c:	29 cb                	sub    %ecx,%ebx
c0031e2e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e30:	89 d9                	mov    %ebx,%ecx
c0031e32:	c1 e9 02             	shr    $0x2,%ecx
c0031e35:	8d 76 00             	lea    0x0(%esi),%esi
c0031e38:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031e3a:	89 d9                	mov    %ebx,%ecx
c0031e3c:	83 e1 03             	and    $0x3,%ecx
c0031e3f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e41:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e44:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031e47:	5b                   	pop    %ebx
c0031e48:	5f                   	pop    %edi
c0031e49:	5e                   	pop    %esi
c0031e4a:	c9                   	leave  
c0031e4b:	c3                   	ret    

c0031e4c <memset>:
c0031e4c:	55                   	push   %ebp
c0031e4d:	89 e5                	mov    %esp,%ebp
c0031e4f:	57                   	push   %edi
c0031e50:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e53:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031e57:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e5a:	fc                   	cld    
c0031e5b:	83 f9 10             	cmp    $0x10,%ecx
c0031e5e:	76 69                	jbe    c0031ec9 <memset+0x7d>
c0031e60:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e66:	74 4c                	je     c0031eb4 <memset+0x68>
c0031e68:	88 07                	mov    %al,(%edi)
c0031e6a:	47                   	inc    %edi
c0031e6b:	49                   	dec    %ecx
c0031e6c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e72:	74 40                	je     c0031eb4 <memset+0x68>
c0031e74:	88 07                	mov    %al,(%edi)
c0031e76:	47                   	inc    %edi
c0031e77:	49                   	dec    %ecx
c0031e78:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e7e:	74 34                	je     c0031eb4 <memset+0x68>
c0031e80:	88 07                	mov    %al,(%edi)
c0031e82:	47                   	inc    %edi
c0031e83:	49                   	dec    %ecx
c0031e84:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e8a:	74 28                	je     c0031eb4 <memset+0x68>
c0031e8c:	88 07                	mov    %al,(%edi)
c0031e8e:	47                   	inc    %edi
c0031e8f:	49                   	dec    %ecx
c0031e90:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e96:	74 1c                	je     c0031eb4 <memset+0x68>
c0031e98:	88 07                	mov    %al,(%edi)
c0031e9a:	47                   	inc    %edi
c0031e9b:	49                   	dec    %ecx
c0031e9c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ea2:	74 10                	je     c0031eb4 <memset+0x68>
c0031ea4:	88 07                	mov    %al,(%edi)
c0031ea6:	47                   	inc    %edi
c0031ea7:	49                   	dec    %ecx
c0031ea8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031eae:	74 04                	je     c0031eb4 <memset+0x68>
c0031eb0:	88 07                	mov    %al,(%edi)
c0031eb2:	47                   	inc    %edi
c0031eb3:	49                   	dec    %ecx
c0031eb4:	88 c4                	mov    %al,%ah
c0031eb6:	89 c2                	mov    %eax,%edx
c0031eb8:	c1 e2 10             	shl    $0x10,%edx
c0031ebb:	09 d0                	or     %edx,%eax
c0031ebd:	89 ca                	mov    %ecx,%edx
c0031ebf:	c1 e9 02             	shr    $0x2,%ecx
c0031ec2:	83 e2 03             	and    $0x3,%edx
c0031ec5:	f3 ab                	rep stos %eax,%es:(%edi)
c0031ec7:	89 d1                	mov    %edx,%ecx
c0031ec9:	f3 aa                	rep stos %al,%es:(%edi)
c0031ecb:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ece:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031ed1:	5f                   	pop    %edi
c0031ed2:	c9                   	leave  
c0031ed3:	c3                   	ret    
c0031ed4:	66 90                	xchg   %ax,%ax
c0031ed6:	66 90                	xchg   %ax,%ax
c0031ed8:	66 90                	xchg   %ax,%ax
c0031eda:	66 90                	xchg   %ax,%ax
c0031edc:	66 90                	xchg   %ax,%ax
c0031ede:	66 90                	xchg   %ax,%ax

c0031ee0 <_vsnprintf_r>:
c0031ee0:	55                   	push   %ebp
c0031ee1:	89 e5                	mov    %esp,%ebp
c0031ee3:	56                   	push   %esi
c0031ee4:	53                   	push   %ebx
c0031ee5:	83 c4 80             	add    $0xffffff80,%esp
c0031ee8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031eeb:	8b 75 08             	mov    0x8(%ebp),%esi
c0031eee:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031ef1:	85 db                	test   %ebx,%ebx
c0031ef3:	78 63                	js     c0031f58 <_vsnprintf_r+0x78>
c0031ef5:	ba 08 02 00 00       	mov    $0x208,%edx
c0031efa:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031eff:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031f03:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031f06:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031f09:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031f0c:	31 c0                	xor    %eax,%eax
c0031f0e:	85 db                	test   %ebx,%ebx
c0031f10:	0f 45 c2             	cmovne %edx,%eax
c0031f13:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031f16:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031f19:	8b 45 18             	mov    0x18(%ebp),%eax
c0031f1c:	89 34 24             	mov    %esi,(%esp)
c0031f1f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031f23:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031f27:	8b 45 14             	mov    0x14(%ebp),%eax
c0031f2a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031f2e:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031f31:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031f35:	e8 86 00 00 00       	call   c0031fc0 <_svfprintf_r>
c0031f3a:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031f3d:	7c 11                	jl     c0031f50 <_vsnprintf_r+0x70>
c0031f3f:	85 db                	test   %ebx,%ebx
c0031f41:	74 06                	je     c0031f49 <_vsnprintf_r+0x69>
c0031f43:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031f46:	c6 02 00             	movb   $0x0,(%edx)
c0031f49:	83 ec 80             	sub    $0xffffff80,%esp
c0031f4c:	5b                   	pop    %ebx
c0031f4d:	5e                   	pop    %esi
c0031f4e:	5d                   	pop    %ebp
c0031f4f:	c3                   	ret    
c0031f50:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f56:	eb e7                	jmp    c0031f3f <_vsnprintf_r+0x5f>
c0031f58:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031f63:	eb e4                	jmp    c0031f49 <_vsnprintf_r+0x69>
c0031f65:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031f69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031f70 <vsnprintf>:
c0031f70:	55                   	push   %ebp
c0031f71:	89 e5                	mov    %esp,%ebp
c0031f73:	83 ec 28             	sub    $0x28,%esp
c0031f76:	e8 35 00 00 00       	call   c0031fb0 <__getreent>
c0031f7b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031f7e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031f82:	8b 55 10             	mov    0x10(%ebp),%edx
c0031f85:	89 04 24             	mov    %eax,(%esp)
c0031f88:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031f8c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031f8f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031f93:	8b 55 08             	mov    0x8(%ebp),%edx
c0031f96:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031f9a:	e8 41 ff ff ff       	call   c0031ee0 <_vsnprintf_r>
c0031f9f:	c9                   	leave  
c0031fa0:	c3                   	ret    
c0031fa1:	66 90                	xchg   %ax,%ax
c0031fa3:	66 90                	xchg   %ax,%ax
c0031fa5:	66 90                	xchg   %ax,%ax
c0031fa7:	66 90                	xchg   %ax,%ax
c0031fa9:	66 90                	xchg   %ax,%ax
c0031fab:	66 90                	xchg   %ax,%ax
c0031fad:	66 90                	xchg   %ax,%ax
c0031faf:	90                   	nop

c0031fb0 <__getreent>:
c0031fb0:	55                   	push   %ebp
c0031fb1:	a1 40 c0 03 c0       	mov    0xc003c040,%eax
c0031fb6:	89 e5                	mov    %esp,%ebp
c0031fb8:	5d                   	pop    %ebp
c0031fb9:	c3                   	ret    
c0031fba:	66 90                	xchg   %ax,%ax
c0031fbc:	66 90                	xchg   %ax,%ax
c0031fbe:	66 90                	xchg   %ax,%ax

c0031fc0 <_svfprintf_r>:
c0031fc0:	55                   	push   %ebp
c0031fc1:	89 e5                	mov    %esp,%ebp
c0031fc3:	57                   	push   %edi
c0031fc4:	56                   	push   %esi
c0031fc5:	53                   	push   %ebx
c0031fc6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031fcc:	8b 45 08             	mov    0x8(%ebp),%eax
c0031fcf:	89 04 24             	mov    %eax,(%esp)
c0031fd2:	e8 89 33 00 00       	call   c0035360 <_localeconv_r>
c0031fd7:	8b 00                	mov    (%eax),%eax
c0031fd9:	89 04 24             	mov    %eax,(%esp)
c0031fdc:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0031fe2:	e8 d9 4a 00 00       	call   c0036ac0 <strlen>
c0031fe7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c0031fed:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031ff0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0031ff4:	74 0b                	je     c0032001 <_svfprintf_r+0x41>
c0031ff6:	8b 40 10             	mov    0x10(%eax),%eax
c0031ff9:	85 c0                	test   %eax,%eax
c0031ffb:	0f 84 62 18 00 00    	je     c0033863 <_svfprintf_r+0x18a3>
c0032001:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032004:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0032007:	89 c7                	mov    %eax,%edi
c0032009:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003200f:	d9 ee                	fldz   
c0032011:	29 d0                	sub    %edx,%eax
c0032013:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c003201a:	00 00 00 
c003201d:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032023:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003202a:	00 00 00 
c003202d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0032034:	00 00 00 
c0032037:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c003203e:	00 00 00 
c0032041:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0032048:	00 00 00 
c003204b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032052:	00 00 00 
c0032055:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003205b:	8b 45 10             	mov    0x10(%ebp),%eax
c003205e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032061:	0f b6 00             	movzbl (%eax),%eax
c0032064:	3c 25                	cmp    $0x25,%al
c0032066:	74 4d                	je     c00320b5 <_svfprintf_r+0xf5>
c0032068:	84 c0                	test   %al,%al
c003206a:	75 08                	jne    c0032074 <_svfprintf_r+0xb4>
c003206c:	eb 47                	jmp    c00320b5 <_svfprintf_r+0xf5>
c003206e:	66 90                	xchg   %ax,%ax
c0032070:	84 c0                	test   %al,%al
c0032072:	74 0a                	je     c003207e <_svfprintf_r+0xbe>
c0032074:	83 c3 01             	add    $0x1,%ebx
c0032077:	0f b6 03             	movzbl (%ebx),%eax
c003207a:	3c 25                	cmp    $0x25,%al
c003207c:	75 f2                	jne    c0032070 <_svfprintf_r+0xb0>
c003207e:	89 de                	mov    %ebx,%esi
c0032080:	2b 75 10             	sub    0x10(%ebp),%esi
c0032083:	74 30                	je     c00320b5 <_svfprintf_r+0xf5>
c0032085:	8b 45 10             	mov    0x10(%ebp),%eax
c0032088:	83 c7 08             	add    $0x8,%edi
c003208b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003208e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032094:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032097:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003209d:	83 c0 01             	add    $0x1,%eax
c00320a0:	83 f8 07             	cmp    $0x7,%eax
c00320a3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00320a9:	0f 8f 91 00 00 00    	jg     c0032140 <_svfprintf_r+0x180>
c00320af:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c00320b5:	80 3b 00             	cmpb   $0x0,(%ebx)
c00320b8:	0f 84 aa 00 00 00    	je     c0032168 <_svfprintf_r+0x1a8>
c00320be:	8d 43 01             	lea    0x1(%ebx),%eax
c00320c1:	be 20 00 00 00       	mov    $0x20,%esi
c00320c6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00320cd:	31 db                	xor    %ebx,%ebx
c00320cf:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c00320d6:	ff ff ff 
c00320d9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c00320e0:	00 00 00 
c00320e3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c00320ea:	00 00 00 
c00320ed:	8d 48 01             	lea    0x1(%eax),%ecx
c00320f0:	0f be 00             	movsbl (%eax),%eax
c00320f3:	8d 50 e0             	lea    -0x20(%eax),%edx
c00320f6:	83 fa 58             	cmp    $0x58,%edx
c00320f9:	0f 87 8f 07 00 00    	ja     c003288e <_svfprintf_r+0x8ce>
c00320ff:	ff 24 95 f0 8e 03 c0 	jmp    *-0x3ffc7110(,%edx,4)
c0032106:	66 90                	xchg   %ax,%ax
c0032108:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003210f:	89 c8                	mov    %ecx,%eax
c0032111:	eb da                	jmp    c00320ed <_svfprintf_r+0x12d>
c0032113:	8b 45 14             	mov    0x14(%ebp),%eax
c0032116:	8b 55 14             	mov    0x14(%ebp),%edx
c0032119:	8b 00                	mov    (%eax),%eax
c003211b:	83 c2 04             	add    $0x4,%edx
c003211e:	89 55 14             	mov    %edx,0x14(%ebp)
c0032121:	85 c0                	test   %eax,%eax
c0032123:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0032129:	79 e4                	jns    c003210f <_svfprintf_r+0x14f>
c003212b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0032131:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0032138:	89 c8                	mov    %ecx,%eax
c003213a:	eb b1                	jmp    c00320ed <_svfprintf_r+0x12d>
c003213c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032140:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032146:	89 44 24 08          	mov    %eax,0x8(%esp)
c003214a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003214d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032151:	8b 45 08             	mov    0x8(%ebp),%eax
c0032154:	89 04 24             	mov    %eax,(%esp)
c0032157:	e8 e4 49 00 00       	call   c0036b40 <__ssprint_r>
c003215c:	85 c0                	test   %eax,%eax
c003215e:	75 30                	jne    c0032190 <_svfprintf_r+0x1d0>
c0032160:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032163:	e9 47 ff ff ff       	jmp    c00320af <_svfprintf_r+0xef>
c0032168:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003216e:	85 c0                	test   %eax,%eax
c0032170:	74 1e                	je     c0032190 <_svfprintf_r+0x1d0>
c0032172:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032178:	89 44 24 08          	mov    %eax,0x8(%esp)
c003217c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003217f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032183:	8b 45 08             	mov    0x8(%ebp),%eax
c0032186:	89 04 24             	mov    %eax,(%esp)
c0032189:	e8 b2 49 00 00       	call   c0036b40 <__ssprint_r>
c003218e:	66 90                	xchg   %ax,%ax
c0032190:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032193:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032198:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003219c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c00321a3:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c00321a9:	5b                   	pop    %ebx
c00321aa:	5e                   	pop    %esi
c00321ab:	5f                   	pop    %edi
c00321ac:	5d                   	pop    %ebp
c00321ad:	c3                   	ret    
c00321ae:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c00321b3:	89 c8                	mov    %ecx,%eax
c00321b5:	e9 33 ff ff ff       	jmp    c00320ed <_svfprintf_r+0x12d>
c00321ba:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00321c0:	8b 45 14             	mov    0x14(%ebp),%eax
c00321c3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00321c6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00321cd:	8d 70 04             	lea    0x4(%eax),%esi
c00321d0:	8b 00                	mov    (%eax),%eax
c00321d2:	85 c0                	test   %eax,%eax
c00321d4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00321da:	0f 84 7f 18 00 00    	je     c0033a5f <_svfprintf_r+0x1a9f>
c00321e0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00321e6:	85 c0                	test   %eax,%eax
c00321e8:	0f 88 b6 17 00 00    	js     c00339a4 <_svfprintf_r+0x19e4>
c00321ee:	89 44 24 08          	mov    %eax,0x8(%esp)
c00321f2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00321f8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00321ff:	00 
c0032200:	89 04 24             	mov    %eax,(%esp)
c0032203:	e8 f8 38 00 00       	call   c0035b00 <memchr>
c0032208:	85 c0                	test   %eax,%eax
c003220a:	0f 84 a0 19 00 00    	je     c0033bb0 <_svfprintf_r+0x1bf0>
c0032210:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0032216:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003221c:	39 d0                	cmp    %edx,%eax
c003221e:	0f 4f c2             	cmovg  %edx,%eax
c0032221:	89 c2                	mov    %eax,%edx
c0032223:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003222a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032230:	31 c0                	xor    %eax,%eax
c0032232:	85 d2                	test   %edx,%edx
c0032234:	0f 49 c2             	cmovns %edx,%eax
c0032237:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c003223d:	89 75 14             	mov    %esi,0x14(%ebp)
c0032240:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032247:	00 00 00 
c003224a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032251:	00 00 00 
c0032254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032258:	84 db                	test   %bl,%bl
c003225a:	74 07                	je     c0032263 <_svfprintf_r+0x2a3>
c003225c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032263:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032269:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003226f:	89 c8                	mov    %ecx,%eax
c0032271:	89 f2                	mov    %esi,%edx
c0032273:	83 c0 02             	add    $0x2,%eax
c0032276:	83 e2 02             	and    $0x2,%edx
c0032279:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003227f:	89 f2                	mov    %esi,%edx
c0032281:	0f 44 c1             	cmove  %ecx,%eax
c0032284:	81 e2 84 00 00 00    	and    $0x84,%edx
c003228a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032290:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032296:	0f 85 1c 06 00 00    	jne    c00328b8 <_svfprintf_r+0x8f8>
c003229c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c00322a2:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c00322a8:	85 f6                	test   %esi,%esi
c00322aa:	0f 8e 08 06 00 00    	jle    c00328b8 <_svfprintf_r+0x8f8>
c00322b0:	83 fe 10             	cmp    $0x10,%esi
c00322b3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00322b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00322bf:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00322c5:	7f 11                	jg     c00322d8 <_svfprintf_r+0x318>
c00322c7:	eb 6b                	jmp    c0032334 <_svfprintf_r+0x374>
c00322c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00322d0:	83 ee 10             	sub    $0x10,%esi
c00322d3:	83 fe 10             	cmp    $0x10,%esi
c00322d6:	7e 5c                	jle    c0032334 <_svfprintf_r+0x374>
c00322d8:	83 c0 01             	add    $0x1,%eax
c00322db:	83 c1 10             	add    $0x10,%ecx
c00322de:	c7 07 64 90 03 c0    	movl   $0xc0039064,(%edi)
c00322e4:	83 c7 08             	add    $0x8,%edi
c00322e7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00322ee:	83 f8 07             	cmp    $0x7,%eax
c00322f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00322f7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00322fd:	7e d1                	jle    c00322d0 <_svfprintf_r+0x310>
c00322ff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032302:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032306:	89 44 24 04          	mov    %eax,0x4(%esp)
c003230a:	8b 45 08             	mov    0x8(%ebp),%eax
c003230d:	89 04 24             	mov    %eax,(%esp)
c0032310:	e8 2b 48 00 00       	call   c0036b40 <__ssprint_r>
c0032315:	85 c0                	test   %eax,%eax
c0032317:	0f 85 73 fe ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c003231d:	83 ee 10             	sub    $0x10,%esi
c0032320:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032326:	83 fe 10             	cmp    $0x10,%esi
c0032329:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003232f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032332:	7f a4                	jg     c00322d8 <_svfprintf_r+0x318>
c0032334:	83 c0 01             	add    $0x1,%eax
c0032337:	01 f1                	add    %esi,%ecx
c0032339:	83 f8 07             	cmp    $0x7,%eax
c003233c:	c7 07 64 90 03 c0    	movl   $0xc0039064,(%edi)
c0032342:	89 77 04             	mov    %esi,0x4(%edi)
c0032345:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003234b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032351:	0f 8f 16 0e 00 00    	jg     c003316d <_svfprintf_r+0x11ad>
c0032357:	83 c7 08             	add    $0x8,%edi
c003235a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032361:	e9 58 05 00 00       	jmp    c00328be <_svfprintf_r+0x8fe>
c0032366:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003236d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032373:	8b 45 14             	mov    0x14(%ebp),%eax
c0032376:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032379:	0f 85 fd 04 00 00    	jne    c003287c <_svfprintf_r+0x8bc>
c003237f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032386:	0f 84 f0 04 00 00    	je     c003287c <_svfprintf_r+0x8bc>
c003238c:	0f b7 08             	movzwl (%eax),%ecx
c003238f:	83 c0 04             	add    $0x4,%eax
c0032392:	89 45 14             	mov    %eax,0x14(%ebp)
c0032395:	b8 01 00 00 00       	mov    $0x1,%eax
c003239a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00323a0:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00323a7:	31 db                	xor    %ebx,%ebx
c00323a9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c00323af:	89 f2                	mov    %esi,%edx
c00323b1:	80 e2 7f             	and    $0x7f,%dl
c00323b4:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c00323bb:	0f 48 d6             	cmovs  %esi,%edx
c00323be:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c00323c4:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00323ca:	85 d2                	test   %edx,%edx
c00323cc:	75 08                	jne    c00323d6 <_svfprintf_r+0x416>
c00323ce:	85 c9                	test   %ecx,%ecx
c00323d0:	0f 84 ea 08 00 00    	je     c0032cc0 <_svfprintf_r+0xd00>
c00323d6:	3c 01                	cmp    $0x1,%al
c00323d8:	0f 84 6a 0d 00 00    	je     c0033148 <_svfprintf_r+0x1188>
c00323de:	3c 02                	cmp    $0x2,%al
c00323e0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00323e3:	0f 85 bf 0b 00 00    	jne    c0032fa8 <_svfprintf_r+0xfe8>
c00323e9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c00323ef:	90                   	nop
c00323f0:	89 ca                	mov    %ecx,%edx
c00323f2:	83 e8 01             	sub    $0x1,%eax
c00323f5:	83 e2 0f             	and    $0xf,%edx
c00323f8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c00323fc:	c1 e9 04             	shr    $0x4,%ecx
c00323ff:	85 c9                	test   %ecx,%ecx
c0032401:	88 10                	mov    %dl,(%eax)
c0032403:	75 eb                	jne    c00323f0 <_svfprintf_r+0x430>
c0032405:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0032408:	29 c2                	sub    %eax,%edx
c003240a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032410:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0032416:	66 90                	xchg   %ax,%ax
c0032418:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003241e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0032424:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003242b:	00 00 00 
c003242e:	39 c2                	cmp    %eax,%edx
c0032430:	0f 4d c2             	cmovge %edx,%eax
c0032433:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032439:	e9 1a fe ff ff       	jmp    c0032258 <_svfprintf_r+0x298>
c003243e:	84 db                	test   %bl,%bl
c0032440:	89 c8                	mov    %ecx,%eax
c0032442:	0f 44 de             	cmove  %esi,%ebx
c0032445:	e9 a3 fc ff ff       	jmp    c00320ed <_svfprintf_r+0x12d>
c003244a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032451:	89 c8                	mov    %ecx,%eax
c0032453:	e9 95 fc ff ff       	jmp    c00320ed <_svfprintf_r+0x12d>
c0032458:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003245f:	00 00 00 
c0032462:	89 c8                	mov    %ecx,%eax
c0032464:	e9 84 fc ff ff       	jmp    c00320ed <_svfprintf_r+0x12d>
c0032469:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003246f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032472:	31 ff                	xor    %edi,%edi
c0032474:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003247b:	00 00 00 
c003247e:	66 90                	xchg   %ax,%ax
c0032480:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032483:	83 c1 01             	add    $0x1,%ecx
c0032486:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032489:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003248d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032490:	83 fa 09             	cmp    $0x9,%edx
c0032493:	76 eb                	jbe    c0032480 <_svfprintf_r+0x4c0>
c0032495:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003249b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00324a1:	e9 4d fc ff ff       	jmp    c00320f3 <_svfprintf_r+0x133>
c00324a6:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00324ad:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00324b4:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00324ba:	8b 45 14             	mov    0x14(%ebp),%eax
c00324bd:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324c0:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324c6:	0f 85 61 02 00 00    	jne    c003272d <_svfprintf_r+0x76d>
c00324cc:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00324d3:	0f 84 54 02 00 00    	je     c003272d <_svfprintf_r+0x76d>
c00324d9:	0f bf 08             	movswl (%eax),%ecx
c00324dc:	83 c0 04             	add    $0x4,%eax
c00324df:	89 45 14             	mov    %eax,0x14(%ebp)
c00324e2:	85 c9                	test   %ecx,%ecx
c00324e4:	0f 88 53 02 00 00    	js     c003273d <_svfprintf_r+0x77d>
c00324ea:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00324f1:	b8 01 00 00 00       	mov    $0x1,%eax
c00324f6:	e9 ae fe ff ff       	jmp    c00323a9 <_svfprintf_r+0x3e9>
c00324fb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0032502:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032508:	8b 45 14             	mov    0x14(%ebp),%eax
c003250b:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003250e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032514:	0f 84 15 10 00 00    	je     c003352f <_svfprintf_r+0x156f>
c003251a:	db 28                	fldt   (%eax)
c003251c:	83 c0 0c             	add    $0xc,%eax
c003251f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032522:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032528:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c003252e:	dd 1c 24             	fstpl  (%esp)
c0032531:	e8 aa 44 00 00       	call   c00369e0 <__fpclassifyd>
c0032536:	83 f8 01             	cmp    $0x1,%eax
c0032539:	0f 85 82 0f 00 00    	jne    c00334c1 <_svfprintf_r+0x1501>
c003253f:	d9 ee                	fldz   
c0032541:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032547:	d9 c9                	fxch   %st(1)
c0032549:	df e9                	fucomip %st(1),%st
c003254b:	dd d8                	fstp   %st(0)
c003254d:	0f 87 59 15 00 00    	ja     c0033aac <_svfprintf_r+0x1aec>
c0032553:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003255a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032561:	ba b2 8e 03 c0       	mov    $0xc0038eb2,%edx
c0032566:	b8 b6 8e 03 c0       	mov    $0xc0038eb6,%eax
c003256b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032572:	00 00 00 
c0032575:	0f 4e c2             	cmovle %edx,%eax
c0032578:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003257e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032585:	ff ff ff 
c0032588:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003258f:	00 00 00 
c0032592:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032599:	00 00 00 
c003259c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00325a3:	00 00 00 
c00325a6:	e9 ad fc ff ff       	jmp    c0032258 <_svfprintf_r+0x298>
c00325ab:	8d 41 01             	lea    0x1(%ecx),%eax
c00325ae:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00325b4:	0f be 01             	movsbl (%ecx),%eax
c00325b7:	83 f8 2a             	cmp    $0x2a,%eax
c00325ba:	0f 84 84 18 00 00    	je     c0033e44 <_svfprintf_r+0x1e84>
c00325c0:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325c3:	31 c9                	xor    %ecx,%ecx
c00325c5:	83 fa 09             	cmp    $0x9,%edx
c00325c8:	0f 87 a8 16 00 00    	ja     c0033c76 <_svfprintf_r+0x1cb6>
c00325ce:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c00325d4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00325da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00325e0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c00325e3:	83 c7 01             	add    $0x1,%edi
c00325e6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c00325e9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c00325ed:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325f0:	83 fa 09             	cmp    $0x9,%edx
c00325f3:	76 eb                	jbe    c00325e0 <_svfprintf_r+0x620>
c00325f5:	85 c9                	test   %ecx,%ecx
c00325f7:	89 ca                	mov    %ecx,%edx
c00325f9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00325fe:	0f 48 d1             	cmovs  %ecx,%edx
c0032601:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032607:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c003260d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032613:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0032619:	e9 d5 fa ff ff       	jmp    c00320f3 <_svfprintf_r+0x133>
c003261e:	8b 45 14             	mov    0x14(%ebp),%eax
c0032621:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032624:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c003262b:	8b 08                	mov    (%eax),%ecx
c003262d:	83 c0 04             	add    $0x4,%eax
c0032630:	89 45 14             	mov    %eax,0x14(%ebp)
c0032633:	b8 02 00 00 00       	mov    $0x2,%eax
c0032638:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c003263f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032646:	c7 85 18 ff ff ff d3 	movl   $0xc0038ed3,-0xe8(%ebp)
c003264d:	8e 03 c0 
c0032650:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032657:	00 00 00 
c003265a:	e9 41 fd ff ff       	jmp    c00323a0 <_svfprintf_r+0x3e0>
c003265f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032666:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003266c:	8b 45 14             	mov    0x14(%ebp),%eax
c003266f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032672:	0f 85 87 00 00 00    	jne    c00326ff <_svfprintf_r+0x73f>
c0032678:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003267f:	74 7e                	je     c00326ff <_svfprintf_r+0x73f>
c0032681:	0f b7 08             	movzwl (%eax),%ecx
c0032684:	83 c0 04             	add    $0x4,%eax
c0032687:	89 45 14             	mov    %eax,0x14(%ebp)
c003268a:	31 c0                	xor    %eax,%eax
c003268c:	e9 0f fd ff ff       	jmp    c00323a0 <_svfprintf_r+0x3e0>
c0032691:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032698:	89 c8                	mov    %ecx,%eax
c003269a:	e9 4e fa ff ff       	jmp    c00320ed <_svfprintf_r+0x12d>
c003269f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326a6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326a9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00326af:	0f 85 97 0b 00 00    	jne    c003324c <_svfprintf_r+0x128c>
c00326b5:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00326bc:	0f 84 8a 0b 00 00    	je     c003324c <_svfprintf_r+0x128c>
c00326c2:	8b 45 14             	mov    0x14(%ebp),%eax
c00326c5:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c00326cc:	8b 00                	mov    (%eax),%eax
c00326ce:	66 89 10             	mov    %dx,(%eax)
c00326d1:	8b 45 14             	mov    0x14(%ebp),%eax
c00326d4:	83 c0 04             	add    $0x4,%eax
c00326d7:	89 45 14             	mov    %eax,0x14(%ebp)
c00326da:	e9 7c f9 ff ff       	jmp    c003205b <_svfprintf_r+0x9b>
c00326df:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00326e6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326ed:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326f3:	8b 45 14             	mov    0x14(%ebp),%eax
c00326f6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326f9:	0f 84 79 ff ff ff    	je     c0032678 <_svfprintf_r+0x6b8>
c00326ff:	8b 08                	mov    (%eax),%ecx
c0032701:	83 c0 04             	add    $0x4,%eax
c0032704:	89 45 14             	mov    %eax,0x14(%ebp)
c0032707:	31 c0                	xor    %eax,%eax
c0032709:	e9 92 fc ff ff       	jmp    c00323a0 <_svfprintf_r+0x3e0>
c003270e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032715:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003271b:	8b 45 14             	mov    0x14(%ebp),%eax
c003271e:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032721:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032727:	0f 84 9f fd ff ff    	je     c00324cc <_svfprintf_r+0x50c>
c003272d:	8b 08                	mov    (%eax),%ecx
c003272f:	83 c0 04             	add    $0x4,%eax
c0032732:	89 45 14             	mov    %eax,0x14(%ebp)
c0032735:	85 c9                	test   %ecx,%ecx
c0032737:	0f 89 ad fd ff ff    	jns    c00324ea <_svfprintf_r+0x52a>
c003273d:	f7 d9                	neg    %ecx
c003273f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032744:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c003274b:	b8 01 00 00 00       	mov    $0x1,%eax
c0032750:	e9 54 fc ff ff       	jmp    c00323a9 <_svfprintf_r+0x3e9>
c0032755:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003275c:	89 c8                	mov    %ecx,%eax
c003275e:	e9 8a f9 ff ff       	jmp    c00320ed <_svfprintf_r+0x12d>
c0032763:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003276a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032770:	8b 45 14             	mov    0x14(%ebp),%eax
c0032773:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032776:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003277c:	c7 85 18 ff ff ff d3 	movl   $0xc0038ed3,-0xe8(%ebp)
c0032783:	8e 03 c0 
c0032786:	75 71                	jne    c00327f9 <_svfprintf_r+0x839>
c0032788:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003278f:	74 68                	je     c00327f9 <_svfprintf_r+0x839>
c0032791:	0f b7 08             	movzwl (%eax),%ecx
c0032794:	83 c0 04             	add    $0x4,%eax
c0032797:	89 45 14             	mov    %eax,0x14(%ebp)
c003279a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00327a1:	b8 02 00 00 00       	mov    $0x2,%eax
c00327a6:	0f 84 f4 fb ff ff    	je     c00323a0 <_svfprintf_r+0x3e0>
c00327ac:	85 c9                	test   %ecx,%ecx
c00327ae:	0f 84 ec fb ff ff    	je     c00323a0 <_svfprintf_r+0x3e0>
c00327b4:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c00327bb:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00327c2:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00327c9:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c00327cf:	e9 cc fb ff ff       	jmp    c00323a0 <_svfprintf_r+0x3e0>
c00327d4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327db:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327e1:	8b 45 14             	mov    0x14(%ebp),%eax
c00327e4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327e7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00327ed:	c7 85 18 ff ff ff c2 	movl   $0xc0038ec2,-0xe8(%ebp)
c00327f4:	8e 03 c0 
c00327f7:	74 8f                	je     c0032788 <_svfprintf_r+0x7c8>
c00327f9:	8b 08                	mov    (%eax),%ecx
c00327fb:	83 c0 04             	add    $0x4,%eax
c00327fe:	89 45 14             	mov    %eax,0x14(%ebp)
c0032801:	eb 97                	jmp    c003279a <_svfprintf_r+0x7da>
c0032803:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032809:	8b 45 14             	mov    0x14(%ebp),%eax
c003280c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003280f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032816:	8b 00                	mov    (%eax),%eax
c0032818:	88 45 80             	mov    %al,-0x80(%ebp)
c003281b:	8b 45 14             	mov    0x14(%ebp),%eax
c003281e:	83 c0 04             	add    $0x4,%eax
c0032821:	89 45 14             	mov    %eax,0x14(%ebp)
c0032824:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032827:	31 db                	xor    %ebx,%ebx
c0032829:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032830:	00 00 00 
c0032833:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c003283a:	00 00 00 
c003283d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032844:	00 00 00 
c0032847:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003284e:	00 00 00 
c0032851:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032857:	e9 07 fa ff ff       	jmp    c0032263 <_svfprintf_r+0x2a3>
c003285c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032863:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003286a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032870:	8b 45 14             	mov    0x14(%ebp),%eax
c0032873:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032876:	0f 84 03 fb ff ff    	je     c003237f <_svfprintf_r+0x3bf>
c003287c:	8b 08                	mov    (%eax),%ecx
c003287e:	83 c0 04             	add    $0x4,%eax
c0032881:	89 45 14             	mov    %eax,0x14(%ebp)
c0032884:	b8 01 00 00 00       	mov    $0x1,%eax
c0032889:	e9 12 fb ff ff       	jmp    c00323a0 <_svfprintf_r+0x3e0>
c003288e:	85 c0                	test   %eax,%eax
c0032890:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032896:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032899:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003289f:	0f 84 c3 f8 ff ff    	je     c0032168 <_svfprintf_r+0x1a8>
c00328a5:	88 45 80             	mov    %al,-0x80(%ebp)
c00328a8:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00328af:	e9 70 ff ff ff       	jmp    c0032824 <_svfprintf_r+0x864>
c00328b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00328b8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00328be:	84 db                	test   %bl,%bl
c00328c0:	74 33                	je     c00328f5 <_svfprintf_r+0x935>
c00328c2:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c00328c8:	83 c1 01             	add    $0x1,%ecx
c00328cb:	89 07                	mov    %eax,(%edi)
c00328cd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328d3:	83 c7 08             	add    $0x8,%edi
c00328d6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c00328dd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328e3:	83 c0 01             	add    $0x1,%eax
c00328e6:	83 f8 07             	cmp    $0x7,%eax
c00328e9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328ef:	0f 8f 7b 06 00 00    	jg     c0032f70 <_svfprintf_r+0xfb0>
c00328f5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c00328fb:	85 db                	test   %ebx,%ebx
c00328fd:	74 33                	je     c0032932 <_svfprintf_r+0x972>
c00328ff:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0032905:	83 c1 02             	add    $0x2,%ecx
c0032908:	89 07                	mov    %eax,(%edi)
c003290a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032910:	83 c7 08             	add    $0x8,%edi
c0032913:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c003291a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032920:	83 c0 01             	add    $0x1,%eax
c0032923:	83 f8 07             	cmp    $0x7,%eax
c0032926:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003292c:	0f 8f 06 06 00 00    	jg     c0032f38 <_svfprintf_r+0xf78>
c0032932:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0032939:	00 00 00 
c003293c:	0f 84 c6 03 00 00    	je     c0032d08 <_svfprintf_r+0xd48>
c0032942:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032948:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c003294e:	85 f6                	test   %esi,%esi
c0032950:	0f 8e d2 00 00 00    	jle    c0032a28 <_svfprintf_r+0xa68>
c0032956:	83 fe 10             	cmp    $0x10,%esi
c0032959:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003295f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032965:	7f 11                	jg     c0032978 <_svfprintf_r+0x9b8>
c0032967:	eb 6b                	jmp    c00329d4 <_svfprintf_r+0xa14>
c0032969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032970:	83 ee 10             	sub    $0x10,%esi
c0032973:	83 fe 10             	cmp    $0x10,%esi
c0032976:	7e 5c                	jle    c00329d4 <_svfprintf_r+0xa14>
c0032978:	83 c0 01             	add    $0x1,%eax
c003297b:	83 c1 10             	add    $0x10,%ecx
c003297e:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c0032984:	83 c7 08             	add    $0x8,%edi
c0032987:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003298e:	83 f8 07             	cmp    $0x7,%eax
c0032991:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032997:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003299d:	7e d1                	jle    c0032970 <_svfprintf_r+0x9b0>
c003299f:	8b 45 0c             	mov    0xc(%ebp),%eax
c00329a2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00329a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00329aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00329ad:	89 04 24             	mov    %eax,(%esp)
c00329b0:	e8 8b 41 00 00       	call   c0036b40 <__ssprint_r>
c00329b5:	85 c0                	test   %eax,%eax
c00329b7:	0f 85 d3 f7 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c00329bd:	83 ee 10             	sub    $0x10,%esi
c00329c0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329c6:	83 fe 10             	cmp    $0x10,%esi
c00329c9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329cf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329d2:	7f a4                	jg     c0032978 <_svfprintf_r+0x9b8>
c00329d4:	83 c0 01             	add    $0x1,%eax
c00329d7:	01 f1                	add    %esi,%ecx
c00329d9:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c00329df:	83 c7 08             	add    $0x8,%edi
c00329e2:	89 77 fc             	mov    %esi,-0x4(%edi)
c00329e5:	83 f8 07             	cmp    $0x7,%eax
c00329e8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329ee:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329f4:	7e 32                	jle    c0032a28 <_svfprintf_r+0xa68>
c00329f6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00329fc:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032a00:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a03:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a07:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a0a:	89 04 24             	mov    %eax,(%esp)
c0032a0d:	e8 2e 41 00 00       	call   c0036b40 <__ssprint_r>
c0032a12:	85 c0                	test   %eax,%eax
c0032a14:	0f 85 76 f7 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0032a1a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a20:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a23:	90                   	nop
c0032a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032a28:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032a2f:	01 00 00 
c0032a32:	0f 85 50 01 00 00    	jne    c0032b88 <_svfprintf_r+0xbc8>
c0032a38:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032a3e:	89 07                	mov    %eax,(%edi)
c0032a40:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032a46:	01 c1                	add    %eax,%ecx
c0032a48:	89 47 04             	mov    %eax,0x4(%edi)
c0032a4b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a51:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a57:	83 c0 01             	add    $0x1,%eax
c0032a5a:	83 f8 07             	cmp    $0x7,%eax
c0032a5d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a63:	0f 8f 6a 04 00 00    	jg     c0032ed3 <_svfprintf_r+0xf13>
c0032a69:	83 c7 08             	add    $0x8,%edi
c0032a6c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032a73:	0f 84 d7 00 00 00    	je     c0032b50 <_svfprintf_r+0xb90>
c0032a79:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a7f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a85:	85 f6                	test   %esi,%esi
c0032a87:	0f 8e c3 00 00 00    	jle    c0032b50 <_svfprintf_r+0xb90>
c0032a8d:	83 fe 10             	cmp    $0x10,%esi
c0032a90:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a96:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a9c:	7f 0a                	jg     c0032aa8 <_svfprintf_r+0xae8>
c0032a9e:	eb 64                	jmp    c0032b04 <_svfprintf_r+0xb44>
c0032aa0:	83 ee 10             	sub    $0x10,%esi
c0032aa3:	83 fe 10             	cmp    $0x10,%esi
c0032aa6:	7e 5c                	jle    c0032b04 <_svfprintf_r+0xb44>
c0032aa8:	83 c0 01             	add    $0x1,%eax
c0032aab:	83 c1 10             	add    $0x10,%ecx
c0032aae:	c7 07 64 90 03 c0    	movl   $0xc0039064,(%edi)
c0032ab4:	83 c7 08             	add    $0x8,%edi
c0032ab7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032abe:	83 f8 07             	cmp    $0x7,%eax
c0032ac1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ac7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032acd:	7e d1                	jle    c0032aa0 <_svfprintf_r+0xae0>
c0032acf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ad2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032ad6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ada:	8b 45 08             	mov    0x8(%ebp),%eax
c0032add:	89 04 24             	mov    %eax,(%esp)
c0032ae0:	e8 5b 40 00 00       	call   c0036b40 <__ssprint_r>
c0032ae5:	85 c0                	test   %eax,%eax
c0032ae7:	0f 85 a3 f6 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0032aed:	83 ee 10             	sub    $0x10,%esi
c0032af0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032af6:	83 fe 10             	cmp    $0x10,%esi
c0032af9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032aff:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b02:	7f a4                	jg     c0032aa8 <_svfprintf_r+0xae8>
c0032b04:	83 c0 01             	add    $0x1,%eax
c0032b07:	01 f1                	add    %esi,%ecx
c0032b09:	83 f8 07             	cmp    $0x7,%eax
c0032b0c:	c7 07 64 90 03 c0    	movl   $0xc0039064,(%edi)
c0032b12:	89 77 04             	mov    %esi,0x4(%edi)
c0032b15:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b1b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b21:	7e 2d                	jle    c0032b50 <_svfprintf_r+0xb90>
c0032b23:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032b29:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032b2d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b30:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b34:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b37:	89 04 24             	mov    %eax,(%esp)
c0032b3a:	e8 01 40 00 00       	call   c0036b40 <__ssprint_r>
c0032b3f:	85 c0                	test   %eax,%eax
c0032b41:	0f 85 49 f6 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0032b47:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b4d:	8d 76 00             	lea    0x0(%esi),%esi
c0032b50:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032b56:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032b5c:	39 c2                	cmp    %eax,%edx
c0032b5e:	0f 4d c2             	cmovge %edx,%eax
c0032b61:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032b67:	85 c9                	test   %ecx,%ecx
c0032b69:	0f 85 99 03 00 00    	jne    c0032f08 <_svfprintf_r+0xf48>
c0032b6f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032b76:	00 00 00 
c0032b79:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b7c:	e9 da f4 ff ff       	jmp    c003205b <_svfprintf_r+0x9b>
c0032b81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032b88:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032b8f:	0f 8e 5b 02 00 00    	jle    c0032df0 <_svfprintf_r+0xe30>
c0032b95:	d9 ee                	fldz   
c0032b97:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032b9d:	df e9                	fucomip %st(1),%st
c0032b9f:	dd d8                	fstp   %st(0)
c0032ba1:	0f 8a 59 04 00 00    	jp     c0033000 <_svfprintf_r+0x1040>
c0032ba7:	0f 85 53 04 00 00    	jne    c0033000 <_svfprintf_r+0x1040>
c0032bad:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032bb3:	83 c1 01             	add    $0x1,%ecx
c0032bb6:	83 c7 08             	add    $0x8,%edi
c0032bb9:	c7 47 f8 eb 8e 03 c0 	movl   $0xc0038eeb,-0x8(%edi)
c0032bc0:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032bc7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bcd:	83 c0 01             	add    $0x1,%eax
c0032bd0:	83 f8 07             	cmp    $0x7,%eax
c0032bd3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bd9:	0f 8f 63 09 00 00    	jg     c0033542 <_svfprintf_r+0x1582>
c0032bdf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032be5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032beb:	7c 0d                	jl     c0032bfa <_svfprintf_r+0xc3a>
c0032bed:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032bf4:	0f 84 72 fe ff ff    	je     c0032a6c <_svfprintf_r+0xaac>
c0032bfa:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032c00:	83 c7 08             	add    $0x8,%edi
c0032c03:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032c06:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032c0c:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032c0f:	01 c1                	add    %eax,%ecx
c0032c11:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c17:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c1d:	83 c0 01             	add    $0x1,%eax
c0032c20:	83 f8 07             	cmp    $0x7,%eax
c0032c23:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c29:	0f 8f dc 0b 00 00    	jg     c003380b <_svfprintf_r+0x184b>
c0032c2f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c35:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032c38:	85 f6                	test   %esi,%esi
c0032c3a:	0f 8e 2c fe ff ff    	jle    c0032a6c <_svfprintf_r+0xaac>
c0032c40:	83 fe 10             	cmp    $0x10,%esi
c0032c43:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c49:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032c4f:	7f 13                	jg     c0032c64 <_svfprintf_r+0xca4>
c0032c51:	e9 e6 05 00 00       	jmp    c003323c <_svfprintf_r+0x127c>
c0032c56:	66 90                	xchg   %ax,%ax
c0032c58:	83 ee 10             	sub    $0x10,%esi
c0032c5b:	83 fe 10             	cmp    $0x10,%esi
c0032c5e:	0f 8e d8 05 00 00    	jle    c003323c <_svfprintf_r+0x127c>
c0032c64:	83 c0 01             	add    $0x1,%eax
c0032c67:	83 c1 10             	add    $0x10,%ecx
c0032c6a:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c0032c70:	83 c7 08             	add    $0x8,%edi
c0032c73:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c7a:	83 f8 07             	cmp    $0x7,%eax
c0032c7d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c83:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c89:	7e cd                	jle    c0032c58 <_svfprintf_r+0xc98>
c0032c8b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c8e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032c92:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c96:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c99:	89 04 24             	mov    %eax,(%esp)
c0032c9c:	e8 9f 3e 00 00       	call   c0036b40 <__ssprint_r>
c0032ca1:	85 c0                	test   %eax,%eax
c0032ca3:	0f 85 e7 f4 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0032ca9:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032caf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032cb2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cb8:	eb 9e                	jmp    c0032c58 <_svfprintf_r+0xc98>
c0032cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032cc0:	84 c0                	test   %al,%al
c0032cc2:	75 2c                	jne    c0032cf0 <_svfprintf_r+0xd30>
c0032cc4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032ccb:	74 23                	je     c0032cf0 <_svfprintf_r+0xd30>
c0032ccd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032cd3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032cd7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032cdd:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032ce0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032ce6:	e9 2d f7 ff ff       	jmp    c0032418 <_svfprintf_r+0x458>
c0032ceb:	90                   	nop
c0032cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032cf0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032cf3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032cfa:	00 00 00 
c0032cfd:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d03:	e9 10 f7 ff ff       	jmp    c0032418 <_svfprintf_r+0x458>
c0032d08:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032d0e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032d14:	85 f6                	test   %esi,%esi
c0032d16:	0f 8e 26 fc ff ff    	jle    c0032942 <_svfprintf_r+0x982>
c0032d1c:	83 fe 10             	cmp    $0x10,%esi
c0032d1f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d25:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032d2b:	7f 0b                	jg     c0032d38 <_svfprintf_r+0xd78>
c0032d2d:	eb 65                	jmp    c0032d94 <_svfprintf_r+0xdd4>
c0032d2f:	90                   	nop
c0032d30:	83 ee 10             	sub    $0x10,%esi
c0032d33:	83 fe 10             	cmp    $0x10,%esi
c0032d36:	7e 5c                	jle    c0032d94 <_svfprintf_r+0xdd4>
c0032d38:	83 c0 01             	add    $0x1,%eax
c0032d3b:	83 c1 10             	add    $0x10,%ecx
c0032d3e:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c0032d44:	83 c7 08             	add    $0x8,%edi
c0032d47:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032d4e:	83 f8 07             	cmp    $0x7,%eax
c0032d51:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d57:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d5d:	7e d1                	jle    c0032d30 <_svfprintf_r+0xd70>
c0032d5f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d62:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d6d:	89 04 24             	mov    %eax,(%esp)
c0032d70:	e8 cb 3d 00 00       	call   c0036b40 <__ssprint_r>
c0032d75:	85 c0                	test   %eax,%eax
c0032d77:	0f 85 13 f4 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0032d7d:	83 ee 10             	sub    $0x10,%esi
c0032d80:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d86:	83 fe 10             	cmp    $0x10,%esi
c0032d89:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d8f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d92:	7f a4                	jg     c0032d38 <_svfprintf_r+0xd78>
c0032d94:	83 c0 01             	add    $0x1,%eax
c0032d97:	01 f1                	add    %esi,%ecx
c0032d99:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c0032d9f:	83 c7 08             	add    $0x8,%edi
c0032da2:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032da5:	83 f8 07             	cmp    $0x7,%eax
c0032da8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032dae:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032db4:	0f 8e 88 fb ff ff    	jle    c0032942 <_svfprintf_r+0x982>
c0032dba:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032dc0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032dc4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032dc7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032dcb:	8b 45 08             	mov    0x8(%ebp),%eax
c0032dce:	89 04 24             	mov    %eax,(%esp)
c0032dd1:	e8 6a 3d 00 00       	call   c0036b40 <__ssprint_r>
c0032dd6:	85 c0                	test   %eax,%eax
c0032dd8:	0f 85 b2 f3 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0032dde:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032de4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032de7:	e9 56 fb ff ff       	jmp    c0032942 <_svfprintf_r+0x982>
c0032dec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032df0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032df7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032dfd:	0f 8e df 05 00 00    	jle    c00333e2 <_svfprintf_r+0x1422>
c0032e03:	89 07                	mov    %eax,(%edi)
c0032e05:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e0b:	8d 51 01             	lea    0x1(%ecx),%edx
c0032e0e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032e15:	83 c7 08             	add    $0x8,%edi
c0032e18:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e1e:	83 c0 01             	add    $0x1,%eax
c0032e21:	83 f8 07             	cmp    $0x7,%eax
c0032e24:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e2a:	0f 8f 59 06 00 00    	jg     c0033489 <_svfprintf_r+0x14c9>
c0032e30:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032e36:	83 c0 01             	add    $0x1,%eax
c0032e39:	83 c7 08             	add    $0x8,%edi
c0032e3c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e42:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032e45:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032e4b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032e4e:	01 da                	add    %ebx,%edx
c0032e50:	83 f8 07             	cmp    $0x7,%eax
c0032e53:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e59:	0f 8f f2 05 00 00    	jg     c0033451 <_svfprintf_r+0x1491>
c0032e5f:	d9 ee                	fldz   
c0032e61:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032e67:	df e9                	fucomip %st(1),%st
c0032e69:	dd d8                	fstp   %st(0)
c0032e6b:	7a 06                	jp     c0032e73 <_svfprintf_r+0xeb3>
c0032e6d:	0f 84 33 03 00 00    	je     c00331a6 <_svfprintf_r+0x11e6>
c0032e73:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032e79:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032e7f:	83 c1 01             	add    $0x1,%ecx
c0032e82:	89 0f                	mov    %ecx,(%edi)
c0032e84:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032e87:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032e8a:	01 ca                	add    %ecx,%edx
c0032e8c:	83 c0 01             	add    $0x1,%eax
c0032e8f:	83 f8 07             	cmp    $0x7,%eax
c0032e92:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e98:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e9e:	0f 8f 75 05 00 00    	jg     c0033419 <_svfprintf_r+0x1459>
c0032ea4:	83 c7 08             	add    $0x8,%edi
c0032ea7:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032ead:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032eb3:	89 0f                	mov    %ecx,(%edi)
c0032eb5:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032eb8:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032ebb:	83 c0 01             	add    $0x1,%eax
c0032ebe:	83 f8 07             	cmp    $0x7,%eax
c0032ec1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ec7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ecd:	0f 8e 96 fb ff ff    	jle    c0032a69 <_svfprintf_r+0xaa9>
c0032ed3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ed9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032edd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ee0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ee4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ee7:	89 04 24             	mov    %eax,(%esp)
c0032eea:	e8 51 3c 00 00       	call   c0036b40 <__ssprint_r>
c0032eef:	85 c0                	test   %eax,%eax
c0032ef1:	0f 85 99 f2 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0032ef7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032efd:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f00:	e9 67 fb ff ff       	jmp    c0032a6c <_svfprintf_r+0xaac>
c0032f05:	8d 76 00             	lea    0x0(%esi),%esi
c0032f08:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f0e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f12:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f15:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f19:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f1c:	89 04 24             	mov    %eax,(%esp)
c0032f1f:	e8 1c 3c 00 00       	call   c0036b40 <__ssprint_r>
c0032f24:	85 c0                	test   %eax,%eax
c0032f26:	0f 84 43 fc ff ff    	je     c0032b6f <_svfprintf_r+0xbaf>
c0032f2c:	e9 5f f2 ff ff       	jmp    c0032190 <_svfprintf_r+0x1d0>
c0032f31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032f38:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f3e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f42:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f45:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f49:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f4c:	89 04 24             	mov    %eax,(%esp)
c0032f4f:	e8 ec 3b 00 00       	call   c0036b40 <__ssprint_r>
c0032f54:	85 c0                	test   %eax,%eax
c0032f56:	0f 85 34 f2 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0032f5c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f62:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f65:	e9 c8 f9 ff ff       	jmp    c0032932 <_svfprintf_r+0x972>
c0032f6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f70:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f76:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f7a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f7d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f81:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f84:	89 04 24             	mov    %eax,(%esp)
c0032f87:	e8 b4 3b 00 00       	call   c0036b40 <__ssprint_r>
c0032f8c:	85 c0                	test   %eax,%eax
c0032f8e:	0f 85 fc f1 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0032f94:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f9a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f9d:	e9 53 f9 ff ff       	jmp    c00328f5 <_svfprintf_r+0x935>
c0032fa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fa8:	89 c2                	mov    %eax,%edx
c0032faa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fb0:	89 c8                	mov    %ecx,%eax
c0032fb2:	83 ea 01             	sub    $0x1,%edx
c0032fb5:	83 e0 07             	and    $0x7,%eax
c0032fb8:	c1 e9 03             	shr    $0x3,%ecx
c0032fbb:	83 c0 30             	add    $0x30,%eax
c0032fbe:	85 c9                	test   %ecx,%ecx
c0032fc0:	88 02                	mov    %al,(%edx)
c0032fc2:	75 ec                	jne    c0032fb0 <_svfprintf_r+0xff0>
c0032fc4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032fcb:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032fd1:	0f 84 5b 01 00 00    	je     c0033132 <_svfprintf_r+0x1172>
c0032fd7:	3c 30                	cmp    $0x30,%al
c0032fd9:	74 0b                	je     c0032fe6 <_svfprintf_r+0x1026>
c0032fdb:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0032fe2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0032fe6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032fe9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0032fef:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032ff5:	e9 1e f4 ff ff       	jmp    c0032418 <_svfprintf_r+0x458>
c0032ffa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033000:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033006:	85 db                	test   %ebx,%ebx
c0033008:	0f 8e 66 05 00 00    	jle    c0033574 <_svfprintf_r+0x15b4>
c003300e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033014:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c003301a:	01 d0                	add    %edx,%eax
c003301c:	89 c3                	mov    %eax,%ebx
c003301e:	29 d3                	sub    %edx,%ebx
c0033020:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033026:	89 d0                	mov    %edx,%eax
c0033028:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c003302e:	39 d3                	cmp    %edx,%ebx
c0033030:	0f 4f da             	cmovg  %edx,%ebx
c0033033:	85 db                	test   %ebx,%ebx
c0033035:	7e 28                	jle    c003305f <_svfprintf_r+0x109f>
c0033037:	89 07                	mov    %eax,(%edi)
c0033039:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003303f:	01 d9                	add    %ebx,%ecx
c0033041:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033044:	83 c7 08             	add    $0x8,%edi
c0033047:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003304d:	83 c0 01             	add    $0x1,%eax
c0033050:	83 f8 07             	cmp    $0x7,%eax
c0033053:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033059:	0f 8f 58 09 00 00    	jg     c00339b7 <_svfprintf_r+0x19f7>
c003305f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033065:	31 c0                	xor    %eax,%eax
c0033067:	85 db                	test   %ebx,%ebx
c0033069:	0f 49 c3             	cmovns %ebx,%eax
c003306c:	29 c6                	sub    %eax,%esi
c003306e:	85 f6                	test   %esi,%esi
c0033070:	0f 8e 40 02 00 00    	jle    c00332b6 <_svfprintf_r+0x12f6>
c0033076:	83 fe 10             	cmp    $0x10,%esi
c0033079:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003307f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033085:	7f 15                	jg     c003309c <_svfprintf_r+0x10dc>
c0033087:	e9 db 01 00 00       	jmp    c0033267 <_svfprintf_r+0x12a7>
c003308c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033090:	83 ee 10             	sub    $0x10,%esi
c0033093:	83 fe 10             	cmp    $0x10,%esi
c0033096:	0f 8e cb 01 00 00    	jle    c0033267 <_svfprintf_r+0x12a7>
c003309c:	83 c0 01             	add    $0x1,%eax
c003309f:	83 c1 10             	add    $0x10,%ecx
c00330a2:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c00330a8:	83 c7 08             	add    $0x8,%edi
c00330ab:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00330b2:	83 f8 07             	cmp    $0x7,%eax
c00330b5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330bb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330c1:	7e cd                	jle    c0033090 <_svfprintf_r+0x10d0>
c00330c3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00330c6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00330ca:	89 44 24 04          	mov    %eax,0x4(%esp)
c00330ce:	8b 45 08             	mov    0x8(%ebp),%eax
c00330d1:	89 04 24             	mov    %eax,(%esp)
c00330d4:	e8 67 3a 00 00       	call   c0036b40 <__ssprint_r>
c00330d9:	85 c0                	test   %eax,%eax
c00330db:	0f 85 af f0 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c00330e1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00330e7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00330ea:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330f0:	eb 9e                	jmp    c0033090 <_svfprintf_r+0x10d0>
c00330f2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00330f5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c00330fa:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0033100:	89 c7                	mov    %eax,%edi
c0033102:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033108:	89 c8                	mov    %ecx,%eax
c003310a:	83 ef 01             	sub    $0x1,%edi
c003310d:	f7 e6                	mul    %esi
c003310f:	c1 ea 03             	shr    $0x3,%edx
c0033112:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033115:	01 c0                	add    %eax,%eax
c0033117:	29 c1                	sub    %eax,%ecx
c0033119:	83 c1 30             	add    $0x30,%ecx
c003311c:	85 d2                	test   %edx,%edx
c003311e:	88 0f                	mov    %cl,(%edi)
c0033120:	89 d1                	mov    %edx,%ecx
c0033122:	75 e4                	jne    c0033108 <_svfprintf_r+0x1148>
c0033124:	89 fa                	mov    %edi,%edx
c0033126:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c003312c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0033132:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033135:	29 d0                	sub    %edx,%eax
c0033137:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003313d:	e9 d6 f2 ff ff       	jmp    c0032418 <_svfprintf_r+0x458>
c0033142:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033148:	83 f9 09             	cmp    $0x9,%ecx
c003314b:	77 a5                	ja     c00330f2 <_svfprintf_r+0x1132>
c003314d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033153:	83 c1 30             	add    $0x30,%ecx
c0033156:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033159:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003315f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033162:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033168:	e9 ab f2 ff ff       	jmp    c0032418 <_svfprintf_r+0x458>
c003316d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033173:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033177:	8b 45 0c             	mov    0xc(%ebp),%eax
c003317a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003317e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033181:	89 04 24             	mov    %eax,(%esp)
c0033184:	e8 b7 39 00 00       	call   c0036b40 <__ssprint_r>
c0033189:	85 c0                	test   %eax,%eax
c003318b:	0f 85 ff ef ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0033191:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033198:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003319b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00331a1:	e9 18 f7 ff ff       	jmp    c00328be <_svfprintf_r+0x8fe>
c00331a6:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00331ac:	8d 73 ff             	lea    -0x1(%ebx),%esi
c00331af:	85 f6                	test   %esi,%esi
c00331b1:	0f 8e f0 fc ff ff    	jle    c0032ea7 <_svfprintf_r+0xee7>
c00331b7:	83 fe 10             	cmp    $0x10,%esi
c00331ba:	7e 70                	jle    c003322c <_svfprintf_r+0x126c>
c00331bc:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00331c2:	eb 0c                	jmp    c00331d0 <_svfprintf_r+0x1210>
c00331c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00331c8:	83 ee 10             	sub    $0x10,%esi
c00331cb:	83 fe 10             	cmp    $0x10,%esi
c00331ce:	7e 5c                	jle    c003322c <_svfprintf_r+0x126c>
c00331d0:	83 c0 01             	add    $0x1,%eax
c00331d3:	83 c2 10             	add    $0x10,%edx
c00331d6:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c00331dc:	83 c7 08             	add    $0x8,%edi
c00331df:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00331e6:	83 f8 07             	cmp    $0x7,%eax
c00331e9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00331ef:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00331f5:	7e d1                	jle    c00331c8 <_svfprintf_r+0x1208>
c00331f7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00331fa:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00331fe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033202:	8b 45 08             	mov    0x8(%ebp),%eax
c0033205:	89 04 24             	mov    %eax,(%esp)
c0033208:	e8 33 39 00 00       	call   c0036b40 <__ssprint_r>
c003320d:	85 c0                	test   %eax,%eax
c003320f:	0f 85 7b ef ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0033215:	83 ee 10             	sub    $0x10,%esi
c0033218:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003321e:	83 fe 10             	cmp    $0x10,%esi
c0033221:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033227:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003322a:	7f a4                	jg     c00331d0 <_svfprintf_r+0x1210>
c003322c:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c0033232:	01 f2                	add    %esi,%edx
c0033234:	89 77 04             	mov    %esi,0x4(%edi)
c0033237:	e9 50 fc ff ff       	jmp    c0032e8c <_svfprintf_r+0xecc>
c003323c:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c0033242:	01 f1                	add    %esi,%ecx
c0033244:	89 77 04             	mov    %esi,0x4(%edi)
c0033247:	e9 6f fc ff ff       	jmp    c0032ebb <_svfprintf_r+0xefb>
c003324c:	8b 45 14             	mov    0x14(%ebp),%eax
c003324f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033255:	8b 00                	mov    (%eax),%eax
c0033257:	89 10                	mov    %edx,(%eax)
c0033259:	8b 45 14             	mov    0x14(%ebp),%eax
c003325c:	83 c0 04             	add    $0x4,%eax
c003325f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033262:	e9 f4 ed ff ff       	jmp    c003205b <_svfprintf_r+0x9b>
c0033267:	83 c0 01             	add    $0x1,%eax
c003326a:	01 f1                	add    %esi,%ecx
c003326c:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c0033272:	83 c7 08             	add    $0x8,%edi
c0033275:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033278:	83 f8 07             	cmp    $0x7,%eax
c003327b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033281:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033287:	7e 2d                	jle    c00332b6 <_svfprintf_r+0x12f6>
c0033289:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003328f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033293:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033296:	89 44 24 04          	mov    %eax,0x4(%esp)
c003329a:	8b 45 08             	mov    0x8(%ebp),%eax
c003329d:	89 04 24             	mov    %eax,(%esp)
c00332a0:	e8 9b 38 00 00       	call   c0036b40 <__ssprint_r>
c00332a5:	85 c0                	test   %eax,%eax
c00332a7:	0f 85 e3 ee ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c00332ad:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00332b3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332b6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00332bc:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c00332c2:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c00332c8:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c00332ce:	89 c6                	mov    %eax,%esi
c00332d0:	7c 0d                	jl     c00332df <_svfprintf_r+0x131f>
c00332d2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00332d9:	0f 84 5e 05 00 00    	je     c003383d <_svfprintf_r+0x187d>
c00332df:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00332e5:	89 07                	mov    %eax,(%edi)
c00332e7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00332ed:	01 c1                	add    %eax,%ecx
c00332ef:	89 47 04             	mov    %eax,0x4(%edi)
c00332f2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332f8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332fe:	83 c0 01             	add    $0x1,%eax
c0033301:	83 f8 07             	cmp    $0x7,%eax
c0033304:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003330a:	0f 8f d9 06 00 00    	jg     c00339e9 <_svfprintf_r+0x1a29>
c0033310:	83 c7 08             	add    $0x8,%edi
c0033313:	89 d0                	mov    %edx,%eax
c0033315:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c003331b:	89 f2                	mov    %esi,%edx
c003331d:	29 f3                	sub    %esi,%ebx
c003331f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033325:	29 c6                	sub    %eax,%esi
c0033327:	39 de                	cmp    %ebx,%esi
c0033329:	0f 4e de             	cmovle %esi,%ebx
c003332c:	85 db                	test   %ebx,%ebx
c003332e:	7e 29                	jle    c0033359 <_svfprintf_r+0x1399>
c0033330:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033336:	01 d9                	add    %ebx,%ecx
c0033338:	83 c7 08             	add    $0x8,%edi
c003333b:	89 57 f8             	mov    %edx,-0x8(%edi)
c003333e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033341:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033347:	83 c0 01             	add    $0x1,%eax
c003334a:	83 f8 07             	cmp    $0x7,%eax
c003334d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033353:	0f 8f c8 06 00 00    	jg     c0033a21 <_svfprintf_r+0x1a61>
c0033359:	31 c0                	xor    %eax,%eax
c003335b:	85 db                	test   %ebx,%ebx
c003335d:	0f 49 c3             	cmovns %ebx,%eax
c0033360:	29 c6                	sub    %eax,%esi
c0033362:	85 f6                	test   %esi,%esi
c0033364:	0f 8e 02 f7 ff ff    	jle    c0032a6c <_svfprintf_r+0xaac>
c003336a:	83 fe 10             	cmp    $0x10,%esi
c003336d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033373:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033379:	7f 11                	jg     c003338c <_svfprintf_r+0x13cc>
c003337b:	e9 bc fe ff ff       	jmp    c003323c <_svfprintf_r+0x127c>
c0033380:	83 ee 10             	sub    $0x10,%esi
c0033383:	83 fe 10             	cmp    $0x10,%esi
c0033386:	0f 8e b0 fe ff ff    	jle    c003323c <_svfprintf_r+0x127c>
c003338c:	83 c0 01             	add    $0x1,%eax
c003338f:	83 c1 10             	add    $0x10,%ecx
c0033392:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c0033398:	83 c7 08             	add    $0x8,%edi
c003339b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00333a2:	83 f8 07             	cmp    $0x7,%eax
c00333a5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00333ab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333b1:	7e cd                	jle    c0033380 <_svfprintf_r+0x13c0>
c00333b3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333b6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00333ba:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333be:	8b 45 08             	mov    0x8(%ebp),%eax
c00333c1:	89 04 24             	mov    %eax,(%esp)
c00333c4:	e8 77 37 00 00       	call   c0036b40 <__ssprint_r>
c00333c9:	85 c0                	test   %eax,%eax
c00333cb:	0f 85 bf ed ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c00333d1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00333d7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00333da:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333e0:	eb 9e                	jmp    c0033380 <_svfprintf_r+0x13c0>
c00333e2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00333e9:	0f 85 14 fa ff ff    	jne    c0032e03 <_svfprintf_r+0xe43>
c00333ef:	89 07                	mov    %eax,(%edi)
c00333f1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333f7:	8d 51 01             	lea    0x1(%ecx),%edx
c00333fa:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033401:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033407:	83 c0 01             	add    $0x1,%eax
c003340a:	83 f8 07             	cmp    $0x7,%eax
c003340d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033413:	0f 8e 8b fa ff ff    	jle    c0032ea4 <_svfprintf_r+0xee4>
c0033419:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003341f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033423:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033426:	89 44 24 04          	mov    %eax,0x4(%esp)
c003342a:	8b 45 08             	mov    0x8(%ebp),%eax
c003342d:	89 04 24             	mov    %eax,(%esp)
c0033430:	e8 0b 37 00 00       	call   c0036b40 <__ssprint_r>
c0033435:	85 c0                	test   %eax,%eax
c0033437:	0f 85 53 ed ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c003343d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033443:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033446:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003344c:	e9 56 fa ff ff       	jmp    c0032ea7 <_svfprintf_r+0xee7>
c0033451:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033457:	89 44 24 08          	mov    %eax,0x8(%esp)
c003345b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003345e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033462:	8b 45 08             	mov    0x8(%ebp),%eax
c0033465:	89 04 24             	mov    %eax,(%esp)
c0033468:	e8 d3 36 00 00       	call   c0036b40 <__ssprint_r>
c003346d:	85 c0                	test   %eax,%eax
c003346f:	0f 85 1b ed ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0033475:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003347b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003347e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033484:	e9 d6 f9 ff ff       	jmp    c0032e5f <_svfprintf_r+0xe9f>
c0033489:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003348f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033493:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033496:	89 44 24 04          	mov    %eax,0x4(%esp)
c003349a:	8b 45 08             	mov    0x8(%ebp),%eax
c003349d:	89 04 24             	mov    %eax,(%esp)
c00334a0:	e8 9b 36 00 00       	call   c0036b40 <__ssprint_r>
c00334a5:	85 c0                	test   %eax,%eax
c00334a7:	0f 85 e3 ec ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c00334ad:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00334b3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334b6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334bc:	e9 6f f9 ff ff       	jmp    c0032e30 <_svfprintf_r+0xe70>
c00334c1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00334c7:	dd 1c 24             	fstpl  (%esp)
c00334ca:	e8 11 35 00 00       	call   c00369e0 <__fpclassifyd>
c00334cf:	85 c0                	test   %eax,%eax
c00334d1:	0f 85 a3 01 00 00    	jne    c003367a <_svfprintf_r+0x16ba>
c00334d7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00334de:	ba ba 8e 03 c0       	mov    $0xc0038eba,%edx
c00334e3:	b8 be 8e 03 c0       	mov    $0xc0038ebe,%eax
c00334e8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00334ef:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00334f6:	00 00 00 
c00334f9:	0f 4e c2             	cmovle %edx,%eax
c00334fc:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033502:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0033509:	ff ff ff 
c003350c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0033513:	00 00 00 
c0033516:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003351d:	00 00 00 
c0033520:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033527:	00 00 00 
c003352a:	e9 29 ed ff ff       	jmp    c0032258 <_svfprintf_r+0x298>
c003352f:	dd 00                	fldl   (%eax)
c0033531:	83 c0 08             	add    $0x8,%eax
c0033534:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c003353a:	89 45 14             	mov    %eax,0x14(%ebp)
c003353d:	e9 e6 ef ff ff       	jmp    c0032528 <_svfprintf_r+0x568>
c0033542:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033548:	89 44 24 08          	mov    %eax,0x8(%esp)
c003354c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003354f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033553:	8b 45 08             	mov    0x8(%ebp),%eax
c0033556:	89 04 24             	mov    %eax,(%esp)
c0033559:	e8 e2 35 00 00       	call   c0036b40 <__ssprint_r>
c003355e:	85 c0                	test   %eax,%eax
c0033560:	0f 85 2a ec ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0033566:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003356c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003356f:	e9 6b f6 ff ff       	jmp    c0032bdf <_svfprintf_r+0xc1f>
c0033574:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003357a:	83 c1 01             	add    $0x1,%ecx
c003357d:	83 c7 08             	add    $0x8,%edi
c0033580:	c7 47 f8 eb 8e 03 c0 	movl   $0xc0038eeb,-0x8(%edi)
c0033587:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003358e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033594:	83 c0 01             	add    $0x1,%eax
c0033597:	83 f8 07             	cmp    $0x7,%eax
c003359a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335a0:	0f 8f ef 02 00 00    	jg     c0033895 <_svfprintf_r+0x18d5>
c00335a6:	85 db                	test   %ebx,%ebx
c00335a8:	75 17                	jne    c00335c1 <_svfprintf_r+0x1601>
c00335aa:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c00335b0:	85 d2                	test   %edx,%edx
c00335b2:	75 0d                	jne    c00335c1 <_svfprintf_r+0x1601>
c00335b4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00335bb:	0f 84 ab f4 ff ff    	je     c0032a6c <_svfprintf_r+0xaac>
c00335c1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00335c7:	83 c7 08             	add    $0x8,%edi
c00335ca:	89 47 f8             	mov    %eax,-0x8(%edi)
c00335cd:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00335d3:	89 47 fc             	mov    %eax,-0x4(%edi)
c00335d6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c00335d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335df:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335e5:	83 c0 01             	add    $0x1,%eax
c00335e8:	83 f8 07             	cmp    $0x7,%eax
c00335eb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335f1:	0f 8f 60 03 00 00    	jg     c0033957 <_svfprintf_r+0x1997>
c00335f7:	f7 db                	neg    %ebx
c00335f9:	85 db                	test   %ebx,%ebx
c00335fb:	0f 8e 21 03 00 00    	jle    c0033922 <_svfprintf_r+0x1962>
c0033601:	83 fb 10             	cmp    $0x10,%ebx
c0033604:	0f 8e c3 02 00 00    	jle    c00338cd <_svfprintf_r+0x190d>
c003360a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0033610:	eb 12                	jmp    c0033624 <_svfprintf_r+0x1664>
c0033612:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033618:	83 eb 10             	sub    $0x10,%ebx
c003361b:	83 fb 10             	cmp    $0x10,%ebx
c003361e:	0f 8e a9 02 00 00    	jle    c00338cd <_svfprintf_r+0x190d>
c0033624:	83 c0 01             	add    $0x1,%eax
c0033627:	83 c2 10             	add    $0x10,%edx
c003362a:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c0033630:	83 c7 08             	add    $0x8,%edi
c0033633:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003363a:	83 f8 07             	cmp    $0x7,%eax
c003363d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033643:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033649:	7e cd                	jle    c0033618 <_svfprintf_r+0x1658>
c003364b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003364e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033652:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033656:	8b 45 08             	mov    0x8(%ebp),%eax
c0033659:	89 04 24             	mov    %eax,(%esp)
c003365c:	e8 df 34 00 00       	call   c0036b40 <__ssprint_r>
c0033661:	85 c0                	test   %eax,%eax
c0033663:	0f 85 27 eb ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0033669:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003366f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033672:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033678:	eb 9e                	jmp    c0033618 <_svfprintf_r+0x1658>
c003367a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033680:	83 e3 df             	and    $0xffffffdf,%ebx
c0033683:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003368a:	0f 84 05 03 00 00    	je     c0033995 <_svfprintf_r+0x19d5>
c0033690:	83 fb 47             	cmp    $0x47,%ebx
c0033693:	75 16                	jne    c00336ab <_svfprintf_r+0x16eb>
c0033695:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003369b:	b8 01 00 00 00       	mov    $0x1,%eax
c00336a0:	85 d2                	test   %edx,%edx
c00336a2:	0f 45 c2             	cmovne %edx,%eax
c00336a5:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c00336ab:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00336b1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00336b7:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c00336bd:	80 cc 01             	or     $0x1,%ah
c00336c0:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c00336c6:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00336cc:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c00336d3:	85 c0                	test   %eax,%eax
c00336d5:	0f 88 ba 05 00 00    	js     c0033c95 <_svfprintf_r+0x1cd5>
c00336db:	83 fb 46             	cmp    $0x46,%ebx
c00336de:	0f 94 c0             	sete   %al
c00336e1:	89 c6                	mov    %eax,%esi
c00336e3:	0f 84 d4 03 00 00    	je     c0033abd <_svfprintf_r+0x1afd>
c00336e9:	83 fb 45             	cmp    $0x45,%ebx
c00336ec:	0f 85 99 05 00 00    	jne    c0033c8b <_svfprintf_r+0x1ccb>
c00336f2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00336f8:	dd 54 24 04          	fstl   0x4(%esp)
c00336fc:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033703:	00 
c0033704:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c003370a:	8d 70 01             	lea    0x1(%eax),%esi
c003370d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033713:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033717:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c003371d:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033721:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033727:	89 44 24 14          	mov    %eax,0x14(%esp)
c003372b:	8b 45 08             	mov    0x8(%ebp),%eax
c003372e:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033732:	89 04 24             	mov    %eax,(%esp)
c0033735:	e8 56 09 00 00       	call   c0034090 <_dtoa_r>
c003373a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033740:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033743:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033749:	d9 ee                	fldz   
c003374b:	d9 c9                	fxch   %st(1)
c003374d:	df e9                	fucomip %st(1),%st
c003374f:	dd d8                	fstp   %st(0)
c0033751:	0f 8a fd 00 00 00    	jp     c0033854 <_svfprintf_r+0x1894>
c0033757:	89 c8                	mov    %ecx,%eax
c0033759:	0f 85 f5 00 00 00    	jne    c0033854 <_svfprintf_r+0x1894>
c003375f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033765:	83 fb 47             	cmp    $0x47,%ebx
c0033768:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003376e:	0f 84 1e 04 00 00    	je     c0033b92 <_svfprintf_r+0x1bd2>
c0033774:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003377b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033781:	0f 8e 65 04 00 00    	jle    c0033bec <_svfprintf_r+0x1c2c>
c0033787:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003378e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033794:	0f 84 3c 05 00 00    	je     c0033cd6 <_svfprintf_r+0x1d16>
c003379a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c00337a0:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c00337a6:	0f 8f f7 04 00 00    	jg     c0033ca3 <_svfprintf_r+0x1ce3>
c00337ac:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00337b2:	83 e0 01             	and    $0x1,%eax
c00337b5:	0f 85 e2 05 00 00    	jne    c0033d9d <_svfprintf_r+0x1ddd>
c00337bb:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00337c1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c00337c8:	00 00 00 
c00337cb:	85 d2                	test   %edx,%edx
c00337cd:	0f 49 c2             	cmovns %edx,%eax
c00337d0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00337d6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c00337dd:	0f 85 68 03 00 00    	jne    c0033b4b <_svfprintf_r+0x1b8b>
c00337e3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00337e9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c00337ef:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00337f6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00337fd:	00 00 00 
c0033800:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033806:	e9 4d ea ff ff       	jmp    c0032258 <_svfprintf_r+0x298>
c003380b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033811:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033815:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033818:	89 44 24 04          	mov    %eax,0x4(%esp)
c003381c:	8b 45 08             	mov    0x8(%ebp),%eax
c003381f:	89 04 24             	mov    %eax,(%esp)
c0033822:	e8 19 33 00 00       	call   c0036b40 <__ssprint_r>
c0033827:	85 c0                	test   %eax,%eax
c0033829:	0f 85 61 e9 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c003382f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033835:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033838:	e9 f2 f3 ff ff       	jmp    c0032c2f <_svfprintf_r+0xc6f>
c003383d:	89 d0                	mov    %edx,%eax
c003383f:	e9 d1 fa ff ff       	jmp    c0033315 <_svfprintf_r+0x1355>
c0033844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033848:	8d 50 01             	lea    0x1(%eax),%edx
c003384b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033851:	c6 00 30             	movb   $0x30,(%eax)
c0033854:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c003385a:	39 c1                	cmp    %eax,%ecx
c003385c:	77 ea                	ja     c0033848 <_svfprintf_r+0x1888>
c003385e:	e9 fc fe ff ff       	jmp    c003375f <_svfprintf_r+0x179f>
c0033863:	8b 45 08             	mov    0x8(%ebp),%eax
c0033866:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003386d:	00 
c003386e:	89 04 24             	mov    %eax,(%esp)
c0033871:	e8 4a 1b 00 00       	call   c00353c0 <_malloc_r>
c0033876:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033879:	85 c0                	test   %eax,%eax
c003387b:	89 02                	mov    %eax,(%edx)
c003387d:	89 42 10             	mov    %eax,0x10(%edx)
c0033880:	0f 84 15 06 00 00    	je     c0033e9b <_svfprintf_r+0x1edb>
c0033886:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033889:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033890:	e9 6c e7 ff ff       	jmp    c0032001 <_svfprintf_r+0x41>
c0033895:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003389b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003389f:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338a2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338a6:	8b 45 08             	mov    0x8(%ebp),%eax
c00338a9:	89 04 24             	mov    %eax,(%esp)
c00338ac:	e8 8f 32 00 00       	call   c0036b40 <__ssprint_r>
c00338b1:	85 c0                	test   %eax,%eax
c00338b3:	0f 85 d7 e8 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c00338b9:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00338bf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338c2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338c8:	e9 d9 fc ff ff       	jmp    c00335a6 <_svfprintf_r+0x15e6>
c00338cd:	83 c0 01             	add    $0x1,%eax
c00338d0:	01 da                	add    %ebx,%edx
c00338d2:	c7 07 54 90 03 c0    	movl   $0xc0039054,(%edi)
c00338d8:	83 c7 08             	add    $0x8,%edi
c00338db:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00338de:	83 f8 07             	cmp    $0x7,%eax
c00338e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00338e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338ed:	7e 33                	jle    c0033922 <_svfprintf_r+0x1962>
c00338ef:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338f5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338f9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338fc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033900:	8b 45 08             	mov    0x8(%ebp),%eax
c0033903:	89 04 24             	mov    %eax,(%esp)
c0033906:	e8 35 32 00 00       	call   c0036b40 <__ssprint_r>
c003390b:	85 c0                	test   %eax,%eax
c003390d:	0f 85 7d e8 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0033913:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033919:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003391c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033922:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0033928:	83 c0 01             	add    $0x1,%eax
c003392b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033931:	89 1f                	mov    %ebx,(%edi)
c0033933:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033939:	01 da                	add    %ebx,%edx
c003393b:	83 f8 07             	cmp    $0x7,%eax
c003393e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033941:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033947:	0f 8f 86 f5 ff ff    	jg     c0032ed3 <_svfprintf_r+0xf13>
c003394d:	83 c7 08             	add    $0x8,%edi
c0033950:	89 d1                	mov    %edx,%ecx
c0033952:	e9 15 f1 ff ff       	jmp    c0032a6c <_svfprintf_r+0xaac>
c0033957:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003395d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033961:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033964:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033968:	8b 45 08             	mov    0x8(%ebp),%eax
c003396b:	89 04 24             	mov    %eax,(%esp)
c003396e:	e8 cd 31 00 00       	call   c0036b40 <__ssprint_r>
c0033973:	85 c0                	test   %eax,%eax
c0033975:	0f 85 15 e8 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c003397b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033981:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033984:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003398a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033990:	e9 62 fc ff ff       	jmp    c00335f7 <_svfprintf_r+0x1637>
c0033995:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c003399c:	00 00 00 
c003399f:	e9 07 fd ff ff       	jmp    c00336ab <_svfprintf_r+0x16eb>
c00339a4:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00339aa:	89 04 24             	mov    %eax,(%esp)
c00339ad:	e8 0e 31 00 00       	call   c0036ac0 <strlen>
c00339b2:	e9 6a e8 ff ff       	jmp    c0032221 <_svfprintf_r+0x261>
c00339b7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339bd:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339c1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339c4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00339cb:	89 04 24             	mov    %eax,(%esp)
c00339ce:	e8 6d 31 00 00       	call   c0036b40 <__ssprint_r>
c00339d3:	85 c0                	test   %eax,%eax
c00339d5:	0f 85 b5 e7 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c00339db:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339e1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339e4:	e9 76 f6 ff ff       	jmp    c003305f <_svfprintf_r+0x109f>
c00339e9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339ef:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339f3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339fa:	8b 45 08             	mov    0x8(%ebp),%eax
c00339fd:	89 04 24             	mov    %eax,(%esp)
c0033a00:	e8 3b 31 00 00       	call   c0036b40 <__ssprint_r>
c0033a05:	85 c0                	test   %eax,%eax
c0033a07:	0f 85 83 e7 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0033a0d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033a13:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a16:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a1c:	e9 f4 f8 ff ff       	jmp    c0033315 <_svfprintf_r+0x1355>
c0033a21:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a27:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a2b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a2e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a32:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a35:	89 04 24             	mov    %eax,(%esp)
c0033a38:	e8 03 31 00 00       	call   c0036b40 <__ssprint_r>
c0033a3d:	85 c0                	test   %eax,%eax
c0033a3f:	0f 85 4b e7 ff ff    	jne    c0032190 <_svfprintf_r+0x1d0>
c0033a45:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033a4b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a4e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033a54:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a5a:	e9 fa f8 ff ff       	jmp    c0033359 <_svfprintf_r+0x1399>
c0033a5f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033a65:	b0 06                	mov    $0x6,%al
c0033a67:	89 75 14             	mov    %esi,0x14(%ebp)
c0033a6a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a71:	00 00 00 
c0033a74:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a7b:	00 00 00 
c0033a7e:	83 fa 06             	cmp    $0x6,%edx
c0033a81:	0f 46 c2             	cmovbe %edx,%eax
c0033a84:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033a8a:	85 c0                	test   %eax,%eax
c0033a8c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033a92:	c7 85 28 ff ff ff e4 	movl   $0xc0038ee4,-0xd8(%ebp)
c0033a99:	8e 03 c0 
c0033a9c:	0f 49 d0             	cmovns %eax,%edx
c0033a9f:	31 db                	xor    %ebx,%ebx
c0033aa1:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033aa7:	e9 b7 e7 ff ff       	jmp    c0032263 <_svfprintf_r+0x2a3>
c0033aac:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033ab3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033ab8:	e9 9d ea ff ff       	jmp    c003255a <_svfprintf_r+0x59a>
c0033abd:	ba 03 00 00 00       	mov    $0x3,%edx
c0033ac2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033ac8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033acc:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033ad2:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033ad6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033adc:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033ae0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033ae6:	dd 54 24 04          	fstl   0x4(%esp)
c0033aea:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033aee:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033af4:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033af8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033afb:	89 04 24             	mov    %eax,(%esp)
c0033afe:	e8 8d 05 00 00       	call   c0034090 <_dtoa_r>
c0033b03:	83 fb 47             	cmp    $0x47,%ebx
c0033b06:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033b0c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033b12:	75 09                	jne    c0033b1d <_svfprintf_r+0x1b5d>
c0033b14:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033b1b:	74 5b                	je     c0033b78 <_svfprintf_r+0x1bb8>
c0033b1d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033b23:	89 f0                	mov    %esi,%eax
c0033b25:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033b2b:	01 d1                	add    %edx,%ecx
c0033b2d:	84 c0                	test   %al,%al
c0033b2f:	0f 84 14 fc ff ff    	je     c0033749 <_svfprintf_r+0x1789>
c0033b35:	80 3a 30             	cmpb   $0x30,(%edx)
c0033b38:	0f 84 37 02 00 00    	je     c0033d75 <_svfprintf_r+0x1db5>
c0033b3e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b44:	01 c1                	add    %eax,%ecx
c0033b46:	e9 fe fb ff ff       	jmp    c0033749 <_svfprintf_r+0x1789>
c0033b4b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b51:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033b57:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b5c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b63:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b6a:	00 00 00 
c0033b6d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b73:	e9 e4 e6 ff ff       	jmp    c003225c <_svfprintf_r+0x29c>
c0033b78:	dd d8                	fstp   %st(0)
c0033b7a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033b80:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033b86:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033b8c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033b92:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b98:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033b9b:	7c 48                	jl     c0033be5 <_svfprintf_r+0x1c25>
c0033b9d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033ba3:	7c 40                	jl     c0033be5 <_svfprintf_r+0x1c25>
c0033ba5:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033bab:	e9 ea fb ff ff       	jmp    c003379a <_svfprintf_r+0x17da>
c0033bb0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033bb6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033bbd:	89 75 14             	mov    %esi,0x14(%ebp)
c0033bc0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033bc7:	00 00 00 
c0033bca:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033bd0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033bd6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033bdd:	00 00 00 
c0033be0:	e9 73 e6 ff ff       	jmp    c0032258 <_svfprintf_r+0x298>
c0033be5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033bec:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033bef:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033bf6:	85 c9                	test   %ecx,%ecx
c0033bf8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033bfe:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033c04:	0f 88 2c 02 00 00    	js     c0033e36 <_svfprintf_r+0x1e76>
c0033c0a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033c11:	83 f9 09             	cmp    $0x9,%ecx
c0033c14:	0f 8f ea 00 00 00    	jg     c0033d04 <_svfprintf_r+0x1d44>
c0033c1a:	83 c1 30             	add    $0x30,%ecx
c0033c1d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033c24:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033c2a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033c30:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033c36:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033c3c:	29 d0                	sub    %edx,%eax
c0033c3e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033c44:	89 da                	mov    %ebx,%edx
c0033c46:	01 c2                	add    %eax,%edx
c0033c48:	83 fb 01             	cmp    $0x1,%ebx
c0033c4b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c51:	0f 8e 21 02 00 00    	jle    c0033e78 <_svfprintf_r+0x1eb8>
c0033c57:	31 c0                	xor    %eax,%eax
c0033c59:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033c60:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033c67:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c6e:	00 00 00 
c0033c71:	e9 60 fb ff ff       	jmp    c00337d6 <_svfprintf_r+0x1816>
c0033c76:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033c7c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c83:	00 00 00 
c0033c86:	e9 68 e4 ff ff       	jmp    c00320f3 <_svfprintf_r+0x133>
c0033c8b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033c90:	e9 2d fe ff ff       	jmp    c0033ac2 <_svfprintf_r+0x1b02>
c0033c95:	d9 e0                	fchs   
c0033c97:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033c9e:	e9 38 fa ff ff       	jmp    c00336db <_svfprintf_r+0x171b>
c0033ca3:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033ca9:	ba 01 00 00 00       	mov    $0x1,%edx
c0033cae:	85 c9                	test   %ecx,%ecx
c0033cb0:	0f 8e 5a 01 00 00    	jle    c0033e10 <_svfprintf_r+0x1e50>
c0033cb6:	31 c0                	xor    %eax,%eax
c0033cb8:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033cbe:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033cc5:	00 00 00 
c0033cc8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033cce:	0f 49 c2             	cmovns %edx,%eax
c0033cd1:	e9 00 fb ff ff       	jmp    c00337d6 <_svfprintf_r+0x1816>
c0033cd6:	85 c0                	test   %eax,%eax
c0033cd8:	0f 8e 06 01 00 00    	jle    c0033de4 <_svfprintf_r+0x1e24>
c0033cde:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033ce4:	85 f6                	test   %esi,%esi
c0033ce6:	0f 85 d4 00 00 00    	jne    c0033dc0 <_svfprintf_r+0x1e00>
c0033cec:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033cf3:	0f 85 c7 00 00 00    	jne    c0033dc0 <_svfprintf_r+0x1e00>
c0033cf9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033cff:	e9 d2 fa ff ff       	jmp    c00337d6 <_svfprintf_r+0x1816>
c0033d04:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033d0a:	89 f3                	mov    %esi,%ebx
c0033d0c:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033d11:	83 eb 01             	sub    $0x1,%ebx
c0033d14:	f7 e9                	imul   %ecx
c0033d16:	89 c8                	mov    %ecx,%eax
c0033d18:	c1 f8 1f             	sar    $0x1f,%eax
c0033d1b:	c1 fa 02             	sar    $0x2,%edx
c0033d1e:	29 c2                	sub    %eax,%edx
c0033d20:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033d23:	01 c0                	add    %eax,%eax
c0033d25:	29 c1                	sub    %eax,%ecx
c0033d27:	83 fa 09             	cmp    $0x9,%edx
c0033d2a:	8d 41 30             	lea    0x30(%ecx),%eax
c0033d2d:	89 d1                	mov    %edx,%ecx
c0033d2f:	88 03                	mov    %al,(%ebx)
c0033d31:	7f d9                	jg     c0033d0c <_svfprintf_r+0x1d4c>
c0033d33:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033d36:	83 c1 30             	add    $0x30,%ecx
c0033d39:	39 f0                	cmp    %esi,%eax
c0033d3b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033d3e:	0f 83 6a 01 00 00    	jae    c0033eae <_svfprintf_r+0x1eee>
c0033d44:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d4a:	eb 07                	jmp    c0033d53 <_svfprintf_r+0x1d93>
c0033d4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033d50:	0f b6 08             	movzbl (%eax),%ecx
c0033d53:	83 c0 01             	add    $0x1,%eax
c0033d56:	83 c2 01             	add    $0x1,%edx
c0033d59:	39 f0                	cmp    %esi,%eax
c0033d5b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033d5e:	75 f0                	jne    c0033d50 <_svfprintf_r+0x1d90>
c0033d60:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d66:	29 d8                	sub    %ebx,%eax
c0033d68:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d6e:	01 d0                	add    %edx,%eax
c0033d70:	e9 bb fe ff ff       	jmp    c0033c30 <_svfprintf_r+0x1c70>
c0033d75:	d9 ee                	fldz   
c0033d77:	d9 c9                	fxch   %st(1)
c0033d79:	db e9                	fucomi %st(1),%st
c0033d7b:	dd d9                	fstp   %st(1)
c0033d7d:	7a 06                	jp     c0033d85 <_svfprintf_r+0x1dc5>
c0033d7f:	0f 84 b9 fd ff ff    	je     c0033b3e <_svfprintf_r+0x1b7e>
c0033d85:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d8a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033d90:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033d96:	01 c1                	add    %eax,%ecx
c0033d98:	e9 ac f9 ff ff       	jmp    c0033749 <_svfprintf_r+0x1789>
c0033d9d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033da3:	31 c0                	xor    %eax,%eax
c0033da5:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033dac:	00 00 00 
c0033daf:	83 c2 01             	add    $0x1,%edx
c0033db2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033db8:	0f 49 c2             	cmovns %edx,%eax
c0033dbb:	e9 16 fa ff ff       	jmp    c00337d6 <_svfprintf_r+0x1816>
c0033dc0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033dc6:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033dcc:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033dd0:	89 c2                	mov    %eax,%edx
c0033dd2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033dd8:	31 c0                	xor    %eax,%eax
c0033dda:	85 d2                	test   %edx,%edx
c0033ddc:	0f 49 c2             	cmovns %edx,%eax
c0033ddf:	e9 f2 f9 ff ff       	jmp    c00337d6 <_svfprintf_r+0x1816>
c0033de4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033dea:	85 db                	test   %ebx,%ebx
c0033dec:	75 2f                	jne    c0033e1d <_svfprintf_r+0x1e5d>
c0033dee:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033df5:	75 26                	jne    c0033e1d <_svfprintf_r+0x1e5d>
c0033df7:	b8 01 00 00 00       	mov    $0x1,%eax
c0033dfc:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033e03:	00 00 00 
c0033e06:	e9 cb f9 ff ff       	jmp    c00337d6 <_svfprintf_r+0x1816>
c0033e0b:	90                   	nop
c0033e0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033e10:	b2 02                	mov    $0x2,%dl
c0033e12:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033e18:	e9 99 fe ff ff       	jmp    c0033cb6 <_svfprintf_r+0x1cf6>
c0033e1d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033e23:	31 c0                	xor    %eax,%eax
c0033e25:	83 c2 02             	add    $0x2,%edx
c0033e28:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033e2e:	0f 49 c2             	cmovns %edx,%eax
c0033e31:	e9 a0 f9 ff ff       	jmp    c00337d6 <_svfprintf_r+0x1816>
c0033e36:	f7 d9                	neg    %ecx
c0033e38:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033e3f:	e9 cd fd ff ff       	jmp    c0033c11 <_svfprintf_r+0x1c51>
c0033e44:	8b 55 14             	mov    0x14(%ebp),%edx
c0033e47:	8b 45 14             	mov    0x14(%ebp),%eax
c0033e4a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033e50:	8b 12                	mov    (%edx),%edx
c0033e52:	83 c0 04             	add    $0x4,%eax
c0033e55:	89 45 14             	mov    %eax,0x14(%ebp)
c0033e58:	85 d2                	test   %edx,%edx
c0033e5a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033e60:	0f 89 a9 e2 ff ff    	jns    c003210f <_svfprintf_r+0x14f>
c0033e66:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033e6d:	ff ff ff 
c0033e70:	89 c8                	mov    %ecx,%eax
c0033e72:	e9 76 e2 ff ff       	jmp    c00320ed <_svfprintf_r+0x12d>
c0033e77:	90                   	nop
c0033e78:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e7e:	83 e0 01             	and    $0x1,%eax
c0033e81:	0f 85 d0 fd ff ff    	jne    c0033c57 <_svfprintf_r+0x1c97>
c0033e87:	85 d2                	test   %edx,%edx
c0033e89:	0f 49 c2             	cmovns %edx,%eax
c0033e8c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033e93:	00 00 00 
c0033e96:	e9 3b f9 ff ff       	jmp    c00337d6 <_svfprintf_r+0x1816>
c0033e9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e9e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033ea4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033ea9:	e9 f5 e2 ff ff       	jmp    c00321a3 <_svfprintf_r+0x1e3>
c0033eae:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033eb4:	e9 77 fd ff ff       	jmp    c0033c30 <_svfprintf_r+0x1c70>
c0033eb9:	66 90                	xchg   %ax,%ax
c0033ebb:	66 90                	xchg   %ax,%ax
c0033ebd:	66 90                	xchg   %ax,%ax
c0033ebf:	90                   	nop

c0033ec0 <quorem>:
c0033ec0:	55                   	push   %ebp
c0033ec1:	89 c1                	mov    %eax,%ecx
c0033ec3:	89 e5                	mov    %esp,%ebp
c0033ec5:	57                   	push   %edi
c0033ec6:	89 d7                	mov    %edx,%edi
c0033ec8:	56                   	push   %esi
c0033ec9:	53                   	push   %ebx
c0033eca:	83 ec 3c             	sub    $0x3c,%esp
c0033ecd:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033ed0:	8b 42 10             	mov    0x10(%edx),%eax
c0033ed3:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033ed6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033ed9:	89 ca                	mov    %ecx,%edx
c0033edb:	0f 8f 9f 01 00 00    	jg     c0034080 <quorem+0x1c0>
c0033ee1:	83 e8 01             	sub    $0x1,%eax
c0033ee4:	83 c7 14             	add    $0x14,%edi
c0033ee7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033eea:	c1 e0 02             	shl    $0x2,%eax
c0033eed:	83 c2 14             	add    $0x14,%edx
c0033ef0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033ef3:	01 d0                	add    %edx,%eax
c0033ef5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033ef8:	8b 13                	mov    (%ebx),%edx
c0033efa:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033efd:	8b 00                	mov    (%eax),%eax
c0033eff:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033f02:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033f05:	31 d2                	xor    %edx,%edx
c0033f07:	f7 f1                	div    %ecx
c0033f09:	85 c0                	test   %eax,%eax
c0033f0b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033f0e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033f11:	0f 84 b5 00 00 00    	je     c0033fcc <quorem+0x10c>
c0033f17:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033f1a:	31 f6                	xor    %esi,%esi
c0033f1c:	89 fa                	mov    %edi,%edx
c0033f1e:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033f21:	89 f7                	mov    %esi,%edi
c0033f23:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033f2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033f30:	83 c2 04             	add    $0x4,%edx
c0033f33:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f36:	83 c0 04             	add    $0x4,%eax
c0033f39:	0f b7 ce             	movzwl %si,%ecx
c0033f3c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033f40:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033f43:	c1 ee 10             	shr    $0x10,%esi
c0033f46:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033f4a:	89 cb                	mov    %ecx,%ebx
c0033f4c:	0f b7 c9             	movzwl %cx,%ecx
c0033f4f:	c1 eb 10             	shr    $0x10,%ebx
c0033f52:	29 cf                	sub    %ecx,%edi
c0033f54:	01 f3                	add    %esi,%ebx
c0033f56:	89 de                	mov    %ebx,%esi
c0033f58:	0f b7 db             	movzwl %bx,%ebx
c0033f5b:	c1 ee 10             	shr    $0x10,%esi
c0033f5e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033f61:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033f64:	0f b7 ce             	movzwl %si,%ecx
c0033f67:	01 f9                	add    %edi,%ecx
c0033f69:	c1 ee 10             	shr    $0x10,%esi
c0033f6c:	29 de                	sub    %ebx,%esi
c0033f6e:	89 cb                	mov    %ecx,%ebx
c0033f70:	c1 fb 10             	sar    $0x10,%ebx
c0033f73:	0f b7 c9             	movzwl %cx,%ecx
c0033f76:	01 de                	add    %ebx,%esi
c0033f78:	89 f7                	mov    %esi,%edi
c0033f7a:	c1 e6 10             	shl    $0x10,%esi
c0033f7d:	09 ce                	or     %ecx,%esi
c0033f7f:	c1 ff 10             	sar    $0x10,%edi
c0033f82:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033f85:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033f88:	73 a6                	jae    c0033f30 <quorem+0x70>
c0033f8a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033f8d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033f90:	8b 10                	mov    (%eax),%edx
c0033f92:	85 d2                	test   %edx,%edx
c0033f94:	75 36                	jne    c0033fcc <quorem+0x10c>
c0033f96:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033f99:	89 c2                	mov    %eax,%edx
c0033f9b:	83 e8 04             	sub    $0x4,%eax
c0033f9e:	39 c1                	cmp    %eax,%ecx
c0033fa0:	73 21                	jae    c0033fc3 <quorem+0x103>
c0033fa2:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033fa5:	85 f6                	test   %esi,%esi
c0033fa7:	75 1a                	jne    c0033fc3 <quorem+0x103>
c0033fa9:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033fac:	eb 08                	jmp    c0033fb6 <quorem+0xf6>
c0033fae:	66 90                	xchg   %ax,%ax
c0033fb0:	8b 18                	mov    (%eax),%ebx
c0033fb2:	85 db                	test   %ebx,%ebx
c0033fb4:	75 0a                	jne    c0033fc0 <quorem+0x100>
c0033fb6:	83 e8 04             	sub    $0x4,%eax
c0033fb9:	83 ea 01             	sub    $0x1,%edx
c0033fbc:	39 c1                	cmp    %eax,%ecx
c0033fbe:	72 f0                	jb     c0033fb0 <quorem+0xf0>
c0033fc0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033fc3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033fc6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033fc9:	89 50 10             	mov    %edx,0x10(%eax)
c0033fcc:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033fcf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033fd3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033fd6:	89 04 24             	mov    %eax,(%esp)
c0033fd9:	e8 a2 23 00 00       	call   c0036380 <__mcmp>
c0033fde:	85 c0                	test   %eax,%eax
c0033fe0:	0f 88 8e 00 00 00    	js     c0034074 <quorem+0x1b4>
c0033fe6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0033fe9:	31 f6                	xor    %esi,%esi
c0033feb:	83 c0 01             	add    $0x1,%eax
c0033fee:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033ff1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033ff4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033ff8:	83 c7 04             	add    $0x4,%edi
c0033ffb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c0033ffe:	83 c0 04             	add    $0x4,%eax
c0034001:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0034004:	0f b7 d1             	movzwl %cx,%edx
c0034007:	29 d6                	sub    %edx,%esi
c0034009:	0f b7 d3             	movzwl %bx,%edx
c003400c:	01 f2                	add    %esi,%edx
c003400e:	c1 e9 10             	shr    $0x10,%ecx
c0034011:	c1 eb 10             	shr    $0x10,%ebx
c0034014:	29 cb                	sub    %ecx,%ebx
c0034016:	89 d1                	mov    %edx,%ecx
c0034018:	c1 f9 10             	sar    $0x10,%ecx
c003401b:	0f b7 d2             	movzwl %dx,%edx
c003401e:	01 cb                	add    %ecx,%ebx
c0034020:	89 de                	mov    %ebx,%esi
c0034022:	c1 e3 10             	shl    $0x10,%ebx
c0034025:	09 d3                	or     %edx,%ebx
c0034027:	c1 fe 10             	sar    $0x10,%esi
c003402a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c003402d:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0034030:	73 c6                	jae    c0033ff8 <quorem+0x138>
c0034032:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034035:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034038:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c003403b:	8b 02                	mov    (%edx),%eax
c003403d:	85 c0                	test   %eax,%eax
c003403f:	75 33                	jne    c0034074 <quorem+0x1b4>
c0034041:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034044:	8d 42 fc             	lea    -0x4(%edx),%eax
c0034047:	39 c1                	cmp    %eax,%ecx
c0034049:	73 20                	jae    c003406b <quorem+0x1ab>
c003404b:	8b 72 fc             	mov    -0x4(%edx),%esi
c003404e:	85 f6                	test   %esi,%esi
c0034050:	75 19                	jne    c003406b <quorem+0x1ab>
c0034052:	89 fa                	mov    %edi,%edx
c0034054:	eb 08                	jmp    c003405e <quorem+0x19e>
c0034056:	66 90                	xchg   %ax,%ax
c0034058:	8b 18                	mov    (%eax),%ebx
c003405a:	85 db                	test   %ebx,%ebx
c003405c:	75 0a                	jne    c0034068 <quorem+0x1a8>
c003405e:	83 e8 04             	sub    $0x4,%eax
c0034061:	83 ea 01             	sub    $0x1,%edx
c0034064:	39 c1                	cmp    %eax,%ecx
c0034066:	72 f0                	jb     c0034058 <quorem+0x198>
c0034068:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003406b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003406e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034071:	89 78 10             	mov    %edi,0x10(%eax)
c0034074:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034077:	83 c4 3c             	add    $0x3c,%esp
c003407a:	5b                   	pop    %ebx
c003407b:	5e                   	pop    %esi
c003407c:	5f                   	pop    %edi
c003407d:	5d                   	pop    %ebp
c003407e:	c3                   	ret    
c003407f:	90                   	nop
c0034080:	83 c4 3c             	add    $0x3c,%esp
c0034083:	31 c0                	xor    %eax,%eax
c0034085:	5b                   	pop    %ebx
c0034086:	5e                   	pop    %esi
c0034087:	5f                   	pop    %edi
c0034088:	5d                   	pop    %ebp
c0034089:	c3                   	ret    
c003408a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034090 <_dtoa_r>:
c0034090:	55                   	push   %ebp
c0034091:	89 e5                	mov    %esp,%ebp
c0034093:	57                   	push   %edi
c0034094:	56                   	push   %esi
c0034095:	53                   	push   %ebx
c0034096:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003409c:	8b 75 08             	mov    0x8(%ebp),%esi
c003409f:	dd 45 0c             	fldl   0xc(%ebp)
c00340a2:	8b 5d 20             	mov    0x20(%ebp),%ebx
c00340a5:	dd 5d c0             	fstpl  -0x40(%ebp)
c00340a8:	8b 46 40             	mov    0x40(%esi),%eax
c00340ab:	85 c0                	test   %eax,%eax
c00340ad:	74 23                	je     c00340d2 <_dtoa_r+0x42>
c00340af:	8b 4e 44             	mov    0x44(%esi),%ecx
c00340b2:	ba 01 00 00 00       	mov    $0x1,%edx
c00340b7:	d3 e2                	shl    %cl,%edx
c00340b9:	89 48 04             	mov    %ecx,0x4(%eax)
c00340bc:	89 50 08             	mov    %edx,0x8(%eax)
c00340bf:	89 44 24 04          	mov    %eax,0x4(%esp)
c00340c3:	89 34 24             	mov    %esi,(%esp)
c00340c6:	e8 95 1b 00 00       	call   c0035c60 <_Bfree>
c00340cb:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c00340d2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00340d5:	85 ff                	test   %edi,%edi
c00340d7:	0f 88 3b 02 00 00    	js     c0034318 <_dtoa_r+0x288>
c00340dd:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c00340e3:	89 f8                	mov    %edi,%eax
c00340e5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c00340ea:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c00340ef:	0f 84 e3 01 00 00    	je     c00342d8 <_dtoa_r+0x248>
c00340f5:	dd 45 c0             	fldl   -0x40(%ebp)
c00340f8:	d9 ee                	fldz   
c00340fa:	d9 c9                	fxch   %st(1)
c00340fc:	db e9                	fucomi %st(1),%st
c00340fe:	dd d9                	fstp   %st(1)
c0034100:	7a 36                	jp     c0034138 <_dtoa_r+0xa8>
c0034102:	75 34                	jne    c0034138 <_dtoa_r+0xa8>
c0034104:	dd d8                	fstp   %st(0)
c0034106:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0034109:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003410c:	85 c9                	test   %ecx,%ecx
c003410e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0034114:	0f 84 4e 02 00 00    	je     c0034368 <_dtoa_r+0x2d8>
c003411a:	8b 45 24             	mov    0x24(%ebp),%eax
c003411d:	c7 00 ec 8e 03 c0    	movl   $0xc0038eec,(%eax)
c0034123:	b8 eb 8e 03 c0       	mov    $0xc0038eeb,%eax
c0034128:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c003412e:	5b                   	pop    %ebx
c003412f:	5e                   	pop    %esi
c0034130:	5f                   	pop    %edi
c0034131:	5d                   	pop    %ebp
c0034132:	c3                   	ret    
c0034133:	90                   	nop
c0034134:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034138:	8d 45 e0             	lea    -0x20(%ebp),%eax
c003413b:	89 fb                	mov    %edi,%ebx
c003413d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034141:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0034144:	dd 54 24 04          	fstl   0x4(%esp)
c0034148:	89 44 24 0c          	mov    %eax,0xc(%esp)
c003414c:	dd 5d b8             	fstpl  -0x48(%ebp)
c003414f:	89 34 24             	mov    %esi,(%esp)
c0034152:	c1 eb 14             	shr    $0x14,%ebx
c0034155:	e8 76 25 00 00       	call   c00366d0 <__d2b>
c003415a:	85 db                	test   %ebx,%ebx
c003415c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003415f:	0f 85 db 01 00 00    	jne    c0034340 <_dtoa_r+0x2b0>
c0034165:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034168:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003416b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003416e:	01 c3                	add    %eax,%ebx
c0034170:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034176:	0f 8c ec 07 00 00    	jl     c0034968 <_dtoa_r+0x8d8>
c003417c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003417f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034184:	89 f8                	mov    %edi,%eax
c0034186:	29 d9                	sub    %ebx,%ecx
c0034188:	d3 e0                	shl    %cl,%eax
c003418a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034190:	d3 ea                	shr    %cl,%edx
c0034192:	09 d0                	or     %edx,%eax
c0034194:	31 d2                	xor    %edx,%edx
c0034196:	83 eb 01             	sub    $0x1,%ebx
c0034199:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003419c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003419f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c00341a2:	df 6d c8             	fildll -0x38(%ebp)
c00341a5:	dd 5d b8             	fstpl  -0x48(%ebp)
c00341a8:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c00341af:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c00341b6:	dd 45 b8             	fldl   -0x48(%ebp)
c00341b9:	d8 25 84 90 03 c0    	fsubs  0xc0039084
c00341bf:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c00341c2:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00341c5:	dc 0d a0 90 03 c0    	fmull  0xc00390a0
c00341cb:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00341cf:	b4 0c                	mov    $0xc,%ah
c00341d1:	dc 05 a8 90 03 c0    	faddl  0xc00390a8
c00341d7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00341db:	db 45 d4             	fildl  -0x2c(%ebp)
c00341de:	dc 0d b0 90 03 c0    	fmull  0xc00390b0
c00341e4:	de c1                	faddp  %st,%st(1)
c00341e6:	d9 6d d0             	fldcw  -0x30(%ebp)
c00341e9:	db 55 b8             	fistl  -0x48(%ebp)
c00341ec:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00341ef:	d9 ee                	fldz   
c00341f1:	df e9                	fucomip %st(1),%st
c00341f3:	0f 87 27 07 00 00    	ja     c0034920 <_dtoa_r+0x890>
c00341f9:	dd d8                	fstp   %st(0)
c00341fb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c00341ff:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0034206:	77 24                	ja     c003422c <_dtoa_r+0x19c>
c0034208:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003420b:	dd 04 c5 60 91 03 c0 	fldl   -0x3ffc6ea0(,%eax,8)
c0034212:	dd 45 c0             	fldl   -0x40(%ebp)
c0034215:	d9 c9                	fxch   %st(1)
c0034217:	df e9                	fucomip %st(1),%st
c0034219:	dd d8                	fstp   %st(0)
c003421b:	0f 86 5f 07 00 00    	jbe    c0034980 <_dtoa_r+0x8f0>
c0034221:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034225:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c003422c:	89 d0                	mov    %edx,%eax
c003422e:	29 d8                	sub    %ebx,%eax
c0034230:	83 e8 01             	sub    $0x1,%eax
c0034233:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c003423a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c003423d:	0f 88 0d 07 00 00    	js     c0034950 <_dtoa_r+0x8c0>
c0034243:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034246:	85 c0                	test   %eax,%eax
c0034248:	0f 88 ea 06 00 00    	js     c0034938 <_dtoa_r+0x8a8>
c003424e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034251:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034254:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003425b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003425f:	0f 87 0b 03 00 00    	ja     c0034570 <_dtoa_r+0x4e0>
c0034265:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034269:	0f 8e 23 10 00 00    	jle    c0035292 <_dtoa_r+0x1202>
c003426f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034273:	31 c0                	xor    %eax,%eax
c0034275:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034279:	0f 84 43 0d 00 00    	je     c0034fc2 <_dtoa_r+0xf32>
c003427f:	0f 8e f3 00 00 00    	jle    c0034378 <_dtoa_r+0x2e8>
c0034285:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034289:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034290:	0f 84 f3 00 00 00    	je     c0034389 <_dtoa_r+0x2f9>
c0034296:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003429a:	0f 85 d7 02 00 00    	jne    c0034577 <_dtoa_r+0x4e7>
c00342a0:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00342a3:	03 5d 18             	add    0x18(%ebp),%ebx
c00342a6:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c00342a9:	83 c3 01             	add    $0x1,%ebx
c00342ac:	83 fb 0e             	cmp    $0xe,%ebx
c00342af:	0f 96 c2             	setbe  %dl
c00342b2:	85 db                	test   %ebx,%ebx
c00342b4:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c00342b7:	0f 8e a7 08 00 00    	jle    c0034b64 <_dtoa_r+0xad4>
c00342bd:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00342c0:	83 fb 0e             	cmp    $0xe,%ebx
c00342c3:	89 df                	mov    %ebx,%edi
c00342c5:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c00342c9:	20 45 b4             	and    %al,-0x4c(%ebp)
c00342cc:	e9 d6 00 00 00       	jmp    c00343a7 <_dtoa_r+0x317>
c00342d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00342d8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00342db:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00342de:	85 d2                	test   %edx,%edx
c00342e0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c00342e6:	b8 7d 90 03 c0       	mov    $0xc003907d,%eax
c00342eb:	74 43                	je     c0034330 <_dtoa_r+0x2a0>
c00342ed:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00342f0:	85 db                	test   %ebx,%ebx
c00342f2:	0f 84 30 fe ff ff    	je     c0034128 <_dtoa_r+0x98>
c00342f8:	8b 75 24             	mov    0x24(%ebp),%esi
c00342fb:	8d 50 08             	lea    0x8(%eax),%edx
c00342fe:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0034302:	8d 48 03             	lea    0x3(%eax),%ecx
c0034305:	0f 44 d1             	cmove  %ecx,%edx
c0034308:	89 16                	mov    %edx,(%esi)
c003430a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034310:	5b                   	pop    %ebx
c0034311:	5e                   	pop    %esi
c0034312:	5f                   	pop    %edi
c0034313:	5d                   	pop    %ebp
c0034314:	c3                   	ret    
c0034315:	8d 76 00             	lea    0x0(%esi),%esi
c0034318:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c003431e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0034324:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0034327:	e9 b7 fd ff ff       	jmp    c00340e3 <_dtoa_r+0x53>
c003432c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034330:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034336:	ba 74 90 03 c0       	mov    $0xc0039074,%edx
c003433b:	0f 44 c2             	cmove  %edx,%eax
c003433e:	eb ad                	jmp    c00342ed <_dtoa_r+0x25d>
c0034340:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034343:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034349:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003434c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034353:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034358:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003435d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034360:	e9 51 fe ff ff       	jmp    c00341b6 <_dtoa_r+0x126>
c0034365:	8d 76 00             	lea    0x0(%esi),%esi
c0034368:	b8 eb 8e 03 c0       	mov    $0xc0038eeb,%eax
c003436d:	e9 b6 fd ff ff       	jmp    c0034128 <_dtoa_r+0x98>
c0034372:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034378:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003437c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034383:	0f 85 ee 01 00 00    	jne    c0034577 <_dtoa_r+0x4e7>
c0034389:	8b 55 18             	mov    0x18(%ebp),%edx
c003438c:	85 d2                	test   %edx,%edx
c003438e:	0f 8e b6 07 00 00    	jle    c0034b4a <_dtoa_r+0xaba>
c0034394:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034397:	83 ff 0e             	cmp    $0xe,%edi
c003439a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003439e:	20 45 b4             	and    %al,-0x4c(%ebp)
c00343a1:	89 7d 90             	mov    %edi,-0x70(%ebp)
c00343a4:	89 7d a8             	mov    %edi,-0x58(%ebp)
c00343a7:	83 ff 17             	cmp    $0x17,%edi
c00343aa:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c00343b1:	0f 86 e5 0e 00 00    	jbe    c003529c <_dtoa_r+0x120c>
c00343b7:	b9 01 00 00 00       	mov    $0x1,%ecx
c00343bc:	b8 04 00 00 00       	mov    $0x4,%eax
c00343c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00343c8:	01 c0                	add    %eax,%eax
c00343ca:	89 ca                	mov    %ecx,%edx
c00343cc:	8d 58 14             	lea    0x14(%eax),%ebx
c00343cf:	39 fb                	cmp    %edi,%ebx
c00343d1:	8d 49 01             	lea    0x1(%ecx),%ecx
c00343d4:	76 f2                	jbe    c00343c8 <_dtoa_r+0x338>
c00343d6:	89 56 44             	mov    %edx,0x44(%esi)
c00343d9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00343dd:	89 34 24             	mov    %esi,(%esp)
c00343e0:	e8 db 17 00 00       	call   c0035bc0 <_Balloc>
c00343e5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c00343e9:	89 c7                	mov    %eax,%edi
c00343eb:	89 46 40             	mov    %eax,0x40(%esi)
c00343ee:	0f 84 bb 01 00 00    	je     c00345af <_dtoa_r+0x51f>
c00343f4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00343f7:	dd 45 c0             	fldl   -0x40(%ebp)
c00343fa:	85 db                	test   %ebx,%ebx
c00343fc:	0f 8e de 07 00 00    	jle    c0034be0 <_dtoa_r+0xb50>
c0034402:	89 d8                	mov    %ebx,%eax
c0034404:	83 e0 0f             	and    $0xf,%eax
c0034407:	dd 04 c5 60 91 03 c0 	fldl   -0x3ffc6ea0(,%eax,8)
c003440e:	89 d8                	mov    %ebx,%eax
c0034410:	c1 f8 04             	sar    $0x4,%eax
c0034413:	a8 10                	test   $0x10,%al
c0034415:	0f 84 cd 05 00 00    	je     c00349e8 <_dtoa_r+0x958>
c003441b:	dd 05 40 91 03 c0    	fldl   0xc0039140
c0034421:	83 e0 0f             	and    $0xf,%eax
c0034424:	b9 03 00 00 00       	mov    $0x3,%ecx
c0034429:	d8 fa                	fdivr  %st(2),%st
c003442b:	85 c0                	test   %eax,%eax
c003442d:	74 22                	je     c0034451 <_dtoa_r+0x3c1>
c003442f:	31 d2                	xor    %edx,%edx
c0034431:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034438:	a8 01                	test   $0x1,%al
c003443a:	74 0e                	je     c003444a <_dtoa_r+0x3ba>
c003443c:	d9 c9                	fxch   %st(1)
c003443e:	dc 0c d5 20 91 03 c0 	fmull  -0x3ffc6ee0(,%edx,8)
c0034445:	d9 c9                	fxch   %st(1)
c0034447:	83 c1 01             	add    $0x1,%ecx
c003444a:	83 c2 01             	add    $0x1,%edx
c003444d:	d1 f8                	sar    %eax
c003444f:	75 e7                	jne    c0034438 <_dtoa_r+0x3a8>
c0034451:	de f1                	fdivp  %st,%st(1)
c0034453:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034456:	85 c0                	test   %eax,%eax
c0034458:	74 0a                	je     c0034464 <_dtoa_r+0x3d4>
c003445a:	d9 e8                	fld1   
c003445c:	df e9                	fucomip %st(1),%st
c003445e:	0f 87 92 0b 00 00    	ja     c0034ff6 <_dtoa_r+0xf66>
c0034464:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034467:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003446a:	db 45 d4             	fildl  -0x2c(%ebp)
c003446d:	d8 c9                	fmul   %st(1),%st
c003446f:	d8 05 90 90 03 c0    	fadds  0xc0039090
c0034475:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034478:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003447f:	85 c0                	test   %eax,%eax
c0034481:	0f 84 89 05 00 00    	je     c0034a10 <_dtoa_r+0x980>
c0034487:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003448a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003448d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034490:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034493:	85 c0                	test   %eax,%eax
c0034495:	0f 84 b5 07 00 00    	je     c0034c50 <_dtoa_r+0xbc0>
c003449b:	d9 05 98 90 03 c0    	flds   0xc0039098
c00344a1:	8d 57 01             	lea    0x1(%edi),%edx
c00344a4:	dc 34 cd 58 91 03 c0 	fdivl  -0x3ffc6ea8(,%ecx,8)
c00344ab:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00344ae:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00344b2:	b4 0c                	mov    $0xc,%ah
c00344b4:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00344b8:	dc 65 c0             	fsubl  -0x40(%ebp)
c00344bb:	d9 c9                	fxch   %st(1)
c00344bd:	d9 6d d0             	fldcw  -0x30(%ebp)
c00344c0:	db 55 d4             	fistl  -0x2c(%ebp)
c00344c3:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00344c6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00344c9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00344cc:	83 c0 30             	add    $0x30,%eax
c00344cf:	db 45 d4             	fildl  -0x2c(%ebp)
c00344d2:	de e9                	fsubrp %st,%st(1)
c00344d4:	d9 c9                	fxch   %st(1)
c00344d6:	88 07                	mov    %al,(%edi)
c00344d8:	db e9                	fucomi %st(1),%st
c00344da:	77 7f                	ja     c003455b <_dtoa_r+0x4cb>
c00344dc:	d9 c1                	fld    %st(1)
c00344de:	d8 2d 88 90 03 c0    	fsubrs 0xc0039088
c00344e4:	d9 c9                	fxch   %st(1)
c00344e6:	db e9                	fucomi %st(1),%st
c00344e8:	dd d9                	fstp   %st(1)
c00344ea:	0f 87 33 0c 00 00    	ja     c0035123 <_dtoa_r+0x1093>
c00344f0:	83 f9 01             	cmp    $0x1,%ecx
c00344f3:	0f 8e c4 06 00 00    	jle    c0034bbd <_dtoa_r+0xb2d>
c00344f9:	01 f9                	add    %edi,%ecx
c00344fb:	d9 05 8c 90 03 c0    	flds   0xc003908c
c0034501:	eb 25                	jmp    c0034528 <_dtoa_r+0x498>
c0034503:	90                   	nop
c0034504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034508:	d9 c1                	fld    %st(1)
c003450a:	d8 2d 88 90 03 c0    	fsubrs 0xc0039088
c0034510:	d9 c9                	fxch   %st(1)
c0034512:	db e9                	fucomi %st(1),%st
c0034514:	dd d9                	fstp   %st(1)
c0034516:	0f 87 14 0c 00 00    	ja     c0035130 <_dtoa_r+0x10a0>
c003451c:	39 ca                	cmp    %ecx,%edx
c003451e:	0f 84 a4 06 00 00    	je     c0034bc8 <_dtoa_r+0xb38>
c0034524:	d9 c9                	fxch   %st(1)
c0034526:	d9 ca                	fxch   %st(2)
c0034528:	dc c9                	fmul   %st,%st(1)
c003452a:	83 c2 01             	add    $0x1,%edx
c003452d:	dc ca                	fmul   %st,%st(2)
c003452f:	d9 ca                	fxch   %st(2)
c0034531:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034534:	db 55 d4             	fistl  -0x2c(%ebp)
c0034537:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003453a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003453d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034540:	83 c0 30             	add    $0x30,%eax
c0034543:	db 45 d4             	fildl  -0x2c(%ebp)
c0034546:	de e9                	fsubrp %st,%st(1)
c0034548:	d9 c9                	fxch   %st(1)
c003454a:	88 42 ff             	mov    %al,-0x1(%edx)
c003454d:	db e9                	fucomi %st(1),%st
c003454f:	76 b7                	jbe    c0034508 <_dtoa_r+0x478>
c0034551:	dd d8                	fstp   %st(0)
c0034553:	dd d8                	fstp   %st(0)
c0034555:	dd d8                	fstp   %st(0)
c0034557:	dd d8                	fstp   %st(0)
c0034559:	eb 06                	jmp    c0034561 <_dtoa_r+0x4d1>
c003455b:	dd d8                	fstp   %st(0)
c003455d:	dd d8                	fstp   %st(0)
c003455f:	dd d8                	fstp   %st(0)
c0034561:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034564:	89 fb                	mov    %edi,%ebx
c0034566:	89 d7                	mov    %edx,%edi
c0034568:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003456b:	e9 70 03 00 00       	jmp    c00348e0 <_dtoa_r+0x850>
c0034570:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034577:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003457e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034585:	00 
c0034586:	89 34 24             	mov    %esi,(%esp)
c0034589:	e8 32 16 00 00       	call   c0035bc0 <_Balloc>
c003458e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034595:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003459c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c00345a3:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c00345aa:	89 c7                	mov    %eax,%edi
c00345ac:	89 46 40             	mov    %eax,0x40(%esi)
c00345af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00345b2:	85 c0                	test   %eax,%eax
c00345b4:	0f 88 2e 01 00 00    	js     c00346e8 <_dtoa_r+0x658>
c00345ba:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c00345be:	0f 8f 24 01 00 00    	jg     c00346e8 <_dtoa_r+0x658>
c00345c4:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00345c7:	dd 04 c5 60 91 03 c0 	fldl   -0x3ffc6ea0(,%eax,8)
c00345ce:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00345d1:	85 c0                	test   %eax,%eax
c00345d3:	7f 0e                	jg     c00345e3 <_dtoa_r+0x553>
c00345d5:	8b 45 18             	mov    0x18(%ebp),%eax
c00345d8:	c1 e8 1f             	shr    $0x1f,%eax
c00345db:	84 c0                	test   %al,%al
c00345dd:	0f 85 9d 07 00 00    	jne    c0034d80 <_dtoa_r+0xcf0>
c00345e3:	dd 45 c0             	fldl   -0x40(%ebp)
c00345e6:	d9 c0                	fld    %st(0)
c00345e8:	d8 f2                	fdiv   %st(2),%st
c00345ea:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00345ed:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c00345f1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00345f5:	b4 0c                	mov    $0xc,%ah
c00345f7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00345fb:	8d 47 01             	lea    0x1(%edi),%eax
c00345fe:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034601:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034604:	db 5d d4             	fistpl -0x2c(%ebp)
c0034607:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003460a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003460d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034610:	8d 42 30             	lea    0x30(%edx),%eax
c0034613:	db 45 d4             	fildl  -0x2c(%ebp)
c0034616:	d8 ca                	fmul   %st(2),%st
c0034618:	88 07                	mov    %al,(%edi)
c003461a:	de e9                	fsubrp %st,%st(1)
c003461c:	74 66                	je     c0034684 <_dtoa_r+0x5f4>
c003461e:	d8 0d 8c 90 03 c0    	fmuls  0xc003908c
c0034624:	d9 ee                	fldz   
c0034626:	d9 c9                	fxch   %st(1)
c0034628:	db e9                	fucomi %st(1),%st
c003462a:	dd d9                	fstp   %st(1)
c003462c:	0f 8b 33 0c 00 00    	jnp    c0035265 <_dtoa_r+0x11d5>
c0034632:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034635:	8d 47 02             	lea    0x2(%edi),%eax
c0034638:	d9 05 8c 90 03 c0    	flds   0xc003908c
c003463e:	01 fb                	add    %edi,%ebx
c0034640:	eb 19                	jmp    c003465b <_dtoa_r+0x5cb>
c0034642:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034648:	dc c9                	fmul   %st,%st(1)
c003464a:	83 c0 01             	add    $0x1,%eax
c003464d:	d9 ee                	fldz   
c003464f:	d9 ca                	fxch   %st(2)
c0034651:	db ea                	fucomi %st(2),%st
c0034653:	dd da                	fstp   %st(2)
c0034655:	0f 8b 73 09 00 00    	jnp    c0034fce <_dtoa_r+0xf3e>
c003465b:	d9 c1                	fld    %st(1)
c003465d:	39 d8                	cmp    %ebx,%eax
c003465f:	d8 f3                	fdiv   %st(3),%st
c0034661:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034664:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034667:	db 5d d4             	fistpl -0x2c(%ebp)
c003466a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003466d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034670:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034673:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034676:	db 45 d4             	fildl  -0x2c(%ebp)
c0034679:	d8 cb                	fmul   %st(3),%st
c003467b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003467e:	de ea                	fsubrp %st,%st(2)
c0034680:	75 c6                	jne    c0034648 <_dtoa_r+0x5b8>
c0034682:	dd d8                	fstp   %st(0)
c0034684:	d8 c0                	fadd   %st(0),%st
c0034686:	db e9                	fucomi %st(1),%st
c0034688:	77 1e                	ja     c00346a8 <_dtoa_r+0x618>
c003468a:	d9 c9                	fxch   %st(1)
c003468c:	df e9                	fucomip %st(1),%st
c003468e:	dd d8                	fstp   %st(0)
c0034690:	0f 8a 44 09 00 00    	jp     c0034fda <_dtoa_r+0xf4a>
c0034696:	0f 85 3e 09 00 00    	jne    c0034fda <_dtoa_r+0xf4a>
c003469c:	83 e2 01             	and    $0x1,%edx
c003469f:	90                   	nop
c00346a0:	0f 84 34 09 00 00    	je     c0034fda <_dtoa_r+0xf4a>
c00346a6:	eb 04                	jmp    c00346ac <_dtoa_r+0x61c>
c00346a8:	dd d8                	fstp   %st(0)
c00346aa:	dd d8                	fstp   %st(0)
c00346ac:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00346af:	89 fb                	mov    %edi,%ebx
c00346b1:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c00346b5:	89 cf                	mov    %ecx,%edi
c00346b7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c00346ba:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c00346bd:	eb 0f                	jmp    c00346ce <_dtoa_r+0x63e>
c00346bf:	90                   	nop
c00346c0:	39 d3                	cmp    %edx,%ebx
c00346c2:	0f 84 75 09 00 00    	je     c003503d <_dtoa_r+0xfad>
c00346c8:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c00346cc:	89 d7                	mov    %edx,%edi
c00346ce:	3c 39                	cmp    $0x39,%al
c00346d0:	8d 57 ff             	lea    -0x1(%edi),%edx
c00346d3:	74 eb                	je     c00346c0 <_dtoa_r+0x630>
c00346d5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00346d8:	83 c0 01             	add    $0x1,%eax
c00346db:	88 02                	mov    %al,(%edx)
c00346dd:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c00346e0:	e9 fb 01 00 00       	jmp    c00348e0 <_dtoa_r+0x850>
c00346e5:	8d 76 00             	lea    0x0(%esi),%esi
c00346e8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00346eb:	85 c9                	test   %ecx,%ecx
c00346ed:	0f 85 9d 02 00 00    	jne    c0034990 <_dtoa_r+0x900>
c00346f3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00346f6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00346f9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034700:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034703:	85 c0                	test   %eax,%eax
c0034705:	7e 14                	jle    c003471b <_dtoa_r+0x68b>
c0034707:	85 db                	test   %ebx,%ebx
c0034709:	7e 10                	jle    c003471b <_dtoa_r+0x68b>
c003470b:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003470e:	39 d8                	cmp    %ebx,%eax
c0034710:	0f 4f c3             	cmovg  %ebx,%eax
c0034713:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034716:	29 c3                	sub    %eax,%ebx
c0034718:	29 45 ac             	sub    %eax,-0x54(%ebp)
c003471b:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003471e:	85 c0                	test   %eax,%eax
c0034720:	7e 61                	jle    c0034783 <_dtoa_r+0x6f3>
c0034722:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034725:	85 c0                	test   %eax,%eax
c0034727:	0f 84 72 04 00 00    	je     c0034b9f <_dtoa_r+0xb0f>
c003472d:	85 d2                	test   %edx,%edx
c003472f:	7e 47                	jle    c0034778 <_dtoa_r+0x6e8>
c0034731:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034734:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034738:	89 34 24             	mov    %esi,(%esp)
c003473b:	89 55 88             	mov    %edx,-0x78(%ebp)
c003473e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034742:	e8 f9 19 00 00       	call   c0036140 <__pow5mult>
c0034747:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c003474a:	89 34 24             	mov    %esi,(%esp)
c003474d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034751:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034755:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034758:	e8 13 18 00 00       	call   c0035f70 <__multiply>
c003475d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034760:	89 34 24             	mov    %esi,(%esp)
c0034763:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034767:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003476a:	e8 f1 14 00 00       	call   c0035c60 <_Bfree>
c003476f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034772:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034775:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034778:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003477b:	29 d0                	sub    %edx,%eax
c003477d:	0f 85 1f 04 00 00    	jne    c0034ba2 <_dtoa_r+0xb12>
c0034783:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003478a:	00 
c003478b:	89 34 24             	mov    %esi,(%esp)
c003478e:	e8 ad 17 00 00       	call   c0035f40 <__i2b>
c0034793:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034796:	85 c9                	test   %ecx,%ecx
c0034798:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003479b:	7e 13                	jle    c00347b0 <_dtoa_r+0x720>
c003479d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c00347a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347a5:	89 34 24             	mov    %esi,(%esp)
c00347a8:	e8 93 19 00 00       	call   c0036140 <__pow5mult>
c00347ad:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347b0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c00347b4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c00347bb:	0f 8e f7 05 00 00    	jle    c0034db8 <_dtoa_r+0xd28>
c00347c1:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00347c4:	ba 01 00 00 00       	mov    $0x1,%edx
c00347c9:	85 c0                	test   %eax,%eax
c00347cb:	0f 85 27 05 00 00    	jne    c0034cf8 <_dtoa_r+0xc68>
c00347d1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347d4:	01 d0                	add    %edx,%eax
c00347d6:	83 e0 1f             	and    $0x1f,%eax
c00347d9:	89 c2                	mov    %eax,%edx
c00347db:	0f 84 57 03 00 00    	je     c0034b38 <_dtoa_r+0xaa8>
c00347e1:	b8 20 00 00 00       	mov    $0x20,%eax
c00347e6:	29 d0                	sub    %edx,%eax
c00347e8:	83 f8 04             	cmp    $0x4,%eax
c00347eb:	0f 8e 8c 0a 00 00    	jle    c003527d <_dtoa_r+0x11ed>
c00347f1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00347f6:	29 d0                	sub    %edx,%eax
c00347f8:	01 45 a0             	add    %eax,-0x60(%ebp)
c00347fb:	01 c3                	add    %eax,%ebx
c00347fd:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034800:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034803:	85 c0                	test   %eax,%eax
c0034805:	7e 16                	jle    c003481d <_dtoa_r+0x78d>
c0034807:	89 44 24 08          	mov    %eax,0x8(%esp)
c003480b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003480e:	89 34 24             	mov    %esi,(%esp)
c0034811:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034815:	e8 46 1a 00 00       	call   c0036260 <__lshift>
c003481a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003481d:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034820:	85 c0                	test   %eax,%eax
c0034822:	7e 16                	jle    c003483a <_dtoa_r+0x7aa>
c0034824:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034828:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003482b:	89 34 24             	mov    %esi,(%esp)
c003482e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034832:	e8 29 1a 00 00       	call   c0036260 <__lshift>
c0034837:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003483a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c003483d:	85 c0                	test   %eax,%eax
c003483f:	0f 85 d3 04 00 00    	jne    c0034d18 <_dtoa_r+0xc88>
c0034845:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034849:	0f 8e 11 02 00 00    	jle    c0034a60 <_dtoa_r+0x9d0>
c003484f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034852:	85 c0                	test   %eax,%eax
c0034854:	0f 8f 06 02 00 00    	jg     c0034a60 <_dtoa_r+0x9d0>
c003485a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003485d:	85 c0                	test   %eax,%eax
c003485f:	0f 85 e0 01 00 00    	jne    c0034a45 <_dtoa_r+0x9b5>
c0034865:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034868:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003486f:	00 
c0034870:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034877:	00 
c0034878:	89 34 24             	mov    %esi,(%esp)
c003487b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003487f:	e8 fc 13 00 00       	call   c0035c80 <__multadd>
c0034884:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034887:	89 44 24 04          	mov    %eax,0x4(%esp)
c003488b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003488e:	89 04 24             	mov    %eax,(%esp)
c0034891:	e8 ea 1a 00 00       	call   c0036380 <__mcmp>
c0034896:	85 c0                	test   %eax,%eax
c0034898:	0f 8e a7 01 00 00    	jle    c0034a45 <_dtoa_r+0x9b5>
c003489e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c00348a2:	89 fb                	mov    %edi,%ebx
c00348a4:	83 c7 01             	add    $0x1,%edi
c00348a7:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c00348ab:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c00348b2:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00348b5:	89 34 24             	mov    %esi,(%esp)
c00348b8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348bc:	e8 9f 13 00 00       	call   c0035c60 <_Bfree>
c00348c1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348c4:	85 c0                	test   %eax,%eax
c00348c6:	74 18                	je     c00348e0 <_dtoa_r+0x850>
c00348c8:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c00348cb:	0f 85 a7 02 00 00    	jne    c0034b78 <_dtoa_r+0xae8>
c00348d1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348d4:	89 34 24             	mov    %esi,(%esp)
c00348d7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348db:	e8 80 13 00 00       	call   c0035c60 <_Bfree>
c00348e0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00348e3:	89 34 24             	mov    %esi,(%esp)
c00348e6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348ea:	e8 71 13 00 00       	call   c0035c60 <_Bfree>
c00348ef:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00348f2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c00348f5:	c6 07 00             	movb   $0x0,(%edi)
c00348f8:	83 c0 01             	add    $0x1,%eax
c00348fb:	89 06                	mov    %eax,(%esi)
c00348fd:	8b 45 24             	mov    0x24(%ebp),%eax
c0034900:	85 c0                	test   %eax,%eax
c0034902:	0f 84 90 02 00 00    	je     c0034b98 <_dtoa_r+0xb08>
c0034908:	8b 45 24             	mov    0x24(%ebp),%eax
c003490b:	89 38                	mov    %edi,(%eax)
c003490d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034913:	89 d8                	mov    %ebx,%eax
c0034915:	5b                   	pop    %ebx
c0034916:	5e                   	pop    %esi
c0034917:	5f                   	pop    %edi
c0034918:	5d                   	pop    %ebp
c0034919:	c3                   	ret    
c003491a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034920:	db 45 b8             	fildl  -0x48(%ebp)
c0034923:	df e9                	fucomip %st(1),%st
c0034925:	dd d8                	fstp   %st(0)
c0034927:	7a 06                	jp     c003492f <_dtoa_r+0x89f>
c0034929:	0f 84 cc f8 ff ff    	je     c00341fb <_dtoa_r+0x16b>
c003492f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034933:	e9 c3 f8 ff ff       	jmp    c00341fb <_dtoa_r+0x16b>
c0034938:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003493b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c003493e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034945:	f7 d8                	neg    %eax
c0034947:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003494a:	e9 0c f9 ff ff       	jmp    c003425b <_dtoa_r+0x1cb>
c003494f:	90                   	nop
c0034950:	f7 d8                	neg    %eax
c0034952:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034955:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c003495c:	e9 e2 f8 ff ff       	jmp    c0034243 <_dtoa_r+0x1b3>
c0034961:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034968:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003496b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034970:	29 d9                	sub    %ebx,%ecx
c0034972:	d3 e0                	shl    %cl,%eax
c0034974:	e9 1b f8 ff ff       	jmp    c0034194 <_dtoa_r+0x104>
c0034979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034980:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034987:	e9 a0 f8 ff ff       	jmp    c003422c <_dtoa_r+0x19c>
c003498c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034990:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034994:	0f 8e fe 06 00 00    	jle    c0035098 <_dtoa_r+0x1008>
c003499a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003499d:	83 e8 01             	sub    $0x1,%eax
c00349a0:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c00349a3:	0f 8c 3b 06 00 00    	jl     c0034fe4 <_dtoa_r+0xf54>
c00349a9:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00349ac:	29 c2                	sub    %eax,%edx
c00349ae:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c00349b1:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00349b4:	85 c9                	test   %ecx,%ecx
c00349b6:	89 c8                	mov    %ecx,%eax
c00349b8:	0f 88 83 07 00 00    	js     c0035141 <_dtoa_r+0x10b1>
c00349be:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00349c5:	00 
c00349c6:	89 34 24             	mov    %esi,(%esp)
c00349c9:	89 55 8c             	mov    %edx,-0x74(%ebp)
c00349cc:	01 45 a0             	add    %eax,-0x60(%ebp)
c00349cf:	01 45 ac             	add    %eax,-0x54(%ebp)
c00349d2:	e8 69 15 00 00       	call   c0035f40 <__i2b>
c00349d7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c00349da:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00349dd:	e9 1e fd ff ff       	jmp    c0034700 <_dtoa_r+0x670>
c00349e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00349e8:	d9 c1                	fld    %st(1)
c00349ea:	b9 02 00 00 00       	mov    $0x2,%ecx
c00349ef:	e9 37 fa ff ff       	jmp    c003442b <_dtoa_r+0x39b>
c00349f4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00349f7:	db 45 d4             	fildl  -0x2c(%ebp)
c00349fa:	d8 c9                	fmul   %st(1),%st
c00349fc:	d8 05 90 90 03 c0    	fadds  0xc0039090
c0034a02:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034a05:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034a0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a10:	d8 25 94 90 03 c0    	fsubs  0xc0039094
c0034a16:	dd 45 c0             	fldl   -0x40(%ebp)
c0034a19:	d9 c9                	fxch   %st(1)
c0034a1b:	db e9                	fucomi %st(1),%st
c0034a1d:	0f 87 0d 02 00 00    	ja     c0034c30 <_dtoa_r+0xba0>
c0034a23:	d9 c9                	fxch   %st(1)
c0034a25:	d9 e0                	fchs   
c0034a27:	df e9                	fucomip %st(1),%st
c0034a29:	dd d8                	fstp   %st(0)
c0034a2b:	0f 86 a7 01 00 00    	jbe    c0034bd8 <_dtoa_r+0xb48>
c0034a31:	dd d8                	fstp   %st(0)
c0034a33:	eb 02                	jmp    c0034a37 <_dtoa_r+0x9a7>
c0034a35:	dd d8                	fstp   %st(0)
c0034a37:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034a3e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034a45:	8b 45 18             	mov    0x18(%ebp),%eax
c0034a48:	89 fb                	mov    %edi,%ebx
c0034a4a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a51:	f7 d0                	not    %eax
c0034a53:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034a56:	e9 57 fe ff ff       	jmp    c00348b2 <_dtoa_r+0x822>
c0034a5b:	90                   	nop
c0034a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a60:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034a63:	85 c0                	test   %eax,%eax
c0034a65:	0f 85 c5 03 00 00    	jne    c0034e30 <_dtoa_r+0xda0>
c0034a6b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034a6e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034a73:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034a76:	eb 24                	jmp    c0034a9c <_dtoa_r+0xa0c>
c0034a78:	8b 45 08             	mov    0x8(%ebp),%eax
c0034a7b:	83 c3 01             	add    $0x1,%ebx
c0034a7e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034a82:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034a89:	00 
c0034a8a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034a91:	00 
c0034a92:	89 04 24             	mov    %eax,(%esp)
c0034a95:	e8 e6 11 00 00       	call   c0035c80 <__multadd>
c0034a9a:	89 c6                	mov    %eax,%esi
c0034a9c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a9f:	89 f0                	mov    %esi,%eax
c0034aa1:	e8 1a f4 ff ff       	call   c0033ec0 <quorem>
c0034aa6:	83 c0 30             	add    $0x30,%eax
c0034aa9:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034aac:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034ab0:	7c c6                	jl     c0034a78 <_dtoa_r+0x9e8>
c0034ab2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034ab5:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ab8:	ba 01 00 00 00       	mov    $0x1,%edx
c0034abd:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034ac0:	8b 75 08             	mov    0x8(%ebp),%esi
c0034ac3:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034aca:	85 c0                	test   %eax,%eax
c0034acc:	0f 4f d0             	cmovg  %eax,%edx
c0034acf:	01 fa                	add    %edi,%edx
c0034ad1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034ad4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034adb:	00 
c0034adc:	89 34 24             	mov    %esi,(%esp)
c0034adf:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034ae2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ae6:	e8 75 17 00 00       	call   c0036260 <__lshift>
c0034aeb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034aee:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034af2:	89 04 24             	mov    %eax,(%esp)
c0034af5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034af8:	e8 83 18 00 00       	call   c0036380 <__mcmp>
c0034afd:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034b00:	83 f8 00             	cmp    $0x0,%eax
c0034b03:	0f 8e 41 06 00 00    	jle    c003514a <_dtoa_r+0x10ba>
c0034b09:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034b0d:	eb 0f                	jmp    c0034b1e <_dtoa_r+0xa8e>
c0034b0f:	90                   	nop
c0034b10:	39 c7                	cmp    %eax,%edi
c0034b12:	0f 84 70 05 00 00    	je     c0035088 <_dtoa_r+0xff8>
c0034b18:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034b1c:	89 c2                	mov    %eax,%edx
c0034b1e:	80 f9 39             	cmp    $0x39,%cl
c0034b21:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034b24:	74 ea                	je     c0034b10 <_dtoa_r+0xa80>
c0034b26:	83 c1 01             	add    $0x1,%ecx
c0034b29:	89 fb                	mov    %edi,%ebx
c0034b2b:	88 08                	mov    %cl,(%eax)
c0034b2d:	89 d7                	mov    %edx,%edi
c0034b2f:	e9 7e fd ff ff       	jmp    c00348b2 <_dtoa_r+0x822>
c0034b34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b38:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034b3d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034b40:	01 c3                	add    %eax,%ebx
c0034b42:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034b45:	e9 b6 fc ff ff       	jmp    c0034800 <_dtoa_r+0x770>
c0034b4a:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b4f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034b56:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034b5d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034b64:	21 c2                	and    %eax,%edx
c0034b66:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034b69:	31 d2                	xor    %edx,%edx
c0034b6b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b72:	e9 62 f8 ff ff       	jmp    c00343d9 <_dtoa_r+0x349>
c0034b77:	90                   	nop
c0034b78:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034b7b:	85 d2                	test   %edx,%edx
c0034b7d:	0f 84 4e fd ff ff    	je     c00348d1 <_dtoa_r+0x841>
c0034b83:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034b86:	89 34 24             	mov    %esi,(%esp)
c0034b89:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b8d:	e8 ce 10 00 00       	call   c0035c60 <_Bfree>
c0034b92:	e9 3a fd ff ff       	jmp    c00348d1 <_dtoa_r+0x841>
c0034b97:	90                   	nop
c0034b98:	89 d8                	mov    %ebx,%eax
c0034b9a:	e9 89 f5 ff ff       	jmp    c0034128 <_dtoa_r+0x98>
c0034b9f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034ba2:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034ba6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034ba9:	89 34 24             	mov    %esi,(%esp)
c0034bac:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034bb0:	e8 8b 15 00 00       	call   c0036140 <__pow5mult>
c0034bb5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034bb8:	e9 c6 fb ff ff       	jmp    c0034783 <_dtoa_r+0x6f3>
c0034bbd:	dd d8                	fstp   %st(0)
c0034bbf:	dd d8                	fstp   %st(0)
c0034bc1:	eb 15                	jmp    c0034bd8 <_dtoa_r+0xb48>
c0034bc3:	90                   	nop
c0034bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034bc8:	dd d8                	fstp   %st(0)
c0034bca:	dd d8                	fstp   %st(0)
c0034bcc:	dd d8                	fstp   %st(0)
c0034bce:	eb 08                	jmp    c0034bd8 <_dtoa_r+0xb48>
c0034bd0:	dd d8                	fstp   %st(0)
c0034bd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034bd8:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034bdb:	e9 cf f9 ff ff       	jmp    c00345af <_dtoa_r+0x51f>
c0034be0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034be3:	f7 d8                	neg    %eax
c0034be5:	0f 84 6a 04 00 00    	je     c0035055 <_dtoa_r+0xfc5>
c0034beb:	89 c2                	mov    %eax,%edx
c0034bed:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034bf2:	83 e2 0f             	and    $0xf,%edx
c0034bf5:	c1 f8 04             	sar    $0x4,%eax
c0034bf8:	dd 04 d5 60 91 03 c0 	fldl   -0x3ffc6ea0(,%edx,8)
c0034bff:	85 c0                	test   %eax,%eax
c0034c01:	d8 c9                	fmul   %st(1),%st
c0034c03:	0f 84 4a f8 ff ff    	je     c0034453 <_dtoa_r+0x3c3>
c0034c09:	31 d2                	xor    %edx,%edx
c0034c0b:	90                   	nop
c0034c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c10:	a8 01                	test   $0x1,%al
c0034c12:	74 0a                	je     c0034c1e <_dtoa_r+0xb8e>
c0034c14:	dc 0c d5 20 91 03 c0 	fmull  -0x3ffc6ee0(,%edx,8)
c0034c1b:	83 c1 01             	add    $0x1,%ecx
c0034c1e:	83 c2 01             	add    $0x1,%edx
c0034c21:	d1 f8                	sar    %eax
c0034c23:	75 eb                	jne    c0034c10 <_dtoa_r+0xb80>
c0034c25:	e9 29 f8 ff ff       	jmp    c0034453 <_dtoa_r+0x3c3>
c0034c2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034c30:	dd d8                	fstp   %st(0)
c0034c32:	dd d8                	fstp   %st(0)
c0034c34:	dd d8                	fstp   %st(0)
c0034c36:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034c3d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034c44:	e9 55 fc ff ff       	jmp    c003489e <_dtoa_r+0x80e>
c0034c49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034c50:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034c53:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034c56:	dd 45 c0             	fldl   -0x40(%ebp)
c0034c59:	dc 0c c5 60 91 03 c0 	fmull  -0x3ffc6ea0(,%eax,8)
c0034c60:	d9 c9                	fxch   %st(1)
c0034c62:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034c65:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c69:	8d 57 01             	lea    0x1(%edi),%edx
c0034c6c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034c6f:	b4 0c                	mov    $0xc,%ah
c0034c71:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c75:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c78:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c7b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c7e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c81:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c84:	83 c0 30             	add    $0x30,%eax
c0034c87:	83 f9 01             	cmp    $0x1,%ecx
c0034c8a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c8d:	de e9                	fsubrp %st,%st(1)
c0034c8f:	88 07                	mov    %al,(%edi)
c0034c91:	89 d0                	mov    %edx,%eax
c0034c93:	74 37                	je     c0034ccc <_dtoa_r+0xc3c>
c0034c95:	d9 05 8c 90 03 c0    	flds   0xc003908c
c0034c9b:	eb 05                	jmp    c0034ca2 <_dtoa_r+0xc12>
c0034c9d:	8d 76 00             	lea    0x0(%esi),%esi
c0034ca0:	d9 c9                	fxch   %st(1)
c0034ca2:	dc c9                	fmul   %st,%st(1)
c0034ca4:	d9 c9                	fxch   %st(1)
c0034ca6:	83 c0 01             	add    $0x1,%eax
c0034ca9:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034cac:	db 55 d4             	fistl  -0x2c(%ebp)
c0034caf:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034cb2:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034cb5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034cb8:	83 c1 30             	add    $0x30,%ecx
c0034cbb:	39 d8                	cmp    %ebx,%eax
c0034cbd:	db 45 d4             	fildl  -0x2c(%ebp)
c0034cc0:	de e9                	fsubrp %st,%st(1)
c0034cc2:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034cc5:	75 d9                	jne    c0034ca0 <_dtoa_r+0xc10>
c0034cc7:	dd d9                	fstp   %st(1)
c0034cc9:	03 55 88             	add    -0x78(%ebp),%edx
c0034ccc:	d9 05 98 90 03 c0    	flds   0xc0039098
c0034cd2:	d9 c2                	fld    %st(2)
c0034cd4:	d8 c1                	fadd   %st(1),%st
c0034cd6:	d9 ca                	fxch   %st(2)
c0034cd8:	db ea                	fucomi %st(2),%st
c0034cda:	dd da                	fstp   %st(2)
c0034cdc:	0f 86 7f 03 00 00    	jbe    c0035061 <_dtoa_r+0xfd1>
c0034ce2:	dd d8                	fstp   %st(0)
c0034ce4:	dd d8                	fstp   %st(0)
c0034ce6:	dd d8                	fstp   %st(0)
c0034ce8:	dd d8                	fstp   %st(0)
c0034cea:	89 fb                	mov    %edi,%ebx
c0034cec:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034cf0:	89 d7                	mov    %edx,%edi
c0034cf2:	e9 d7 f9 ff ff       	jmp    c00346ce <_dtoa_r+0x63e>
c0034cf7:	90                   	nop
c0034cf8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034cfb:	8b 41 10             	mov    0x10(%ecx),%eax
c0034cfe:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034d02:	89 04 24             	mov    %eax,(%esp)
c0034d05:	e8 56 11 00 00       	call   c0035e60 <__hi0bits>
c0034d0a:	ba 20 00 00 00       	mov    $0x20,%edx
c0034d0f:	29 c2                	sub    %eax,%edx
c0034d11:	e9 bb fa ff ff       	jmp    c00347d1 <_dtoa_r+0x741>
c0034d16:	66 90                	xchg   %ax,%ax
c0034d18:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034d1b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d1f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d22:	89 04 24             	mov    %eax,(%esp)
c0034d25:	e8 56 16 00 00       	call   c0036380 <__mcmp>
c0034d2a:	85 c0                	test   %eax,%eax
c0034d2c:	0f 89 13 fb ff ff    	jns    c0034845 <_dtoa_r+0x7b5>
c0034d32:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d35:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d3c:	00 
c0034d3d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034d44:	00 
c0034d45:	89 34 24             	mov    %esi,(%esp)
c0034d48:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d4c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034d50:	e8 2b 0f 00 00       	call   c0035c80 <__multadd>
c0034d55:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034d58:	85 c9                	test   %ecx,%ecx
c0034d5a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034d5d:	0f 85 8d 00 00 00    	jne    c0034df0 <_dtoa_r+0xd60>
c0034d63:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034d67:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034d6a:	7f 0a                	jg     c0034d76 <_dtoa_r+0xce6>
c0034d6c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d70:	0f 8f ff 04 00 00    	jg     c0035275 <_dtoa_r+0x11e5>
c0034d76:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034d79:	e9 ed fc ff ff       	jmp    c0034a6b <_dtoa_r+0x9db>
c0034d7e:	66 90                	xchg   %ax,%ax
c0034d80:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034d83:	85 db                	test   %ebx,%ebx
c0034d85:	0f 85 aa fc ff ff    	jne    c0034a35 <_dtoa_r+0x9a5>
c0034d8b:	d8 0d 94 90 03 c0    	fmuls  0xc0039094
c0034d91:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034d98:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034d9f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034da2:	d9 c9                	fxch   %st(1)
c0034da4:	df e9                	fucomip %st(1),%st
c0034da6:	dd d8                	fstp   %st(0)
c0034da8:	0f 83 97 fc ff ff    	jae    c0034a45 <_dtoa_r+0x9b5>
c0034dae:	e9 eb fa ff ff       	jmp    c003489e <_dtoa_r+0x80e>
c0034db3:	90                   	nop
c0034db4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034db8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034dbb:	85 c0                	test   %eax,%eax
c0034dbd:	0f 85 fe f9 ff ff    	jne    c00347c1 <_dtoa_r+0x731>
c0034dc3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034dc6:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034dcb:	0f 85 f0 f9 ff ff    	jne    c00347c1 <_dtoa_r+0x731>
c0034dd1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034dd6:	0f 84 e5 f9 ff ff    	je     c00347c1 <_dtoa_r+0x731>
c0034ddc:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034de0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034de4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034deb:	e9 d1 f9 ff ff       	jmp    c00347c1 <_dtoa_r+0x731>
c0034df0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034df3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034dfa:	00 
c0034dfb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e02:	00 
c0034e03:	89 34 24             	mov    %esi,(%esp)
c0034e06:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e0a:	e8 71 0e 00 00       	call   c0035c80 <__multadd>
c0034e0f:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034e12:	85 d2                	test   %edx,%edx
c0034e14:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e17:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034e1a:	7f 0a                	jg     c0034e26 <_dtoa_r+0xd96>
c0034e1c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034e20:	0f 8f 4f 04 00 00    	jg     c0035275 <_dtoa_r+0x11e5>
c0034e26:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034e30:	85 db                	test   %ebx,%ebx
c0034e32:	7e 16                	jle    c0034e4a <_dtoa_r+0xdba>
c0034e34:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e37:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034e3b:	89 34 24             	mov    %esi,(%esp)
c0034e3e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e42:	e8 19 14 00 00       	call   c0036260 <__lshift>
c0034e47:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e4a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034e4d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e50:	85 db                	test   %ebx,%ebx
c0034e52:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e55:	0f 85 11 03 00 00    	jne    c003516c <_dtoa_r+0x10dc>
c0034e5b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034e5e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034e61:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034e64:	01 f8                	add    %edi,%eax
c0034e66:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034e69:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034e6c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e6f:	83 e0 01             	and    $0x1,%eax
c0034e72:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034e75:	eb 2e                	jmp    c0034ea5 <_dtoa_r+0xe15>
c0034e77:	90                   	nop
c0034e78:	e8 03 0e 00 00       	call   c0035c80 <__multadd>
c0034e7d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e84:	00 
c0034e85:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e8c:	00 
c0034e8d:	89 34 24             	mov    %esi,(%esp)
c0034e90:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e93:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e96:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e9a:	e8 e1 0d 00 00       	call   c0035c80 <__multadd>
c0034e9f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034ea2:	83 c3 01             	add    $0x1,%ebx
c0034ea5:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034ea8:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034eab:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034eae:	89 f8                	mov    %edi,%eax
c0034eb0:	e8 0b f0 ff ff       	call   c0033ec0 <quorem>
c0034eb5:	89 3c 24             	mov    %edi,(%esp)
c0034eb8:	8d 48 30             	lea    0x30(%eax),%ecx
c0034ebb:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034ebe:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034ec1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034ec4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034ec8:	e8 b3 14 00 00       	call   c0036380 <__mcmp>
c0034ecd:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034ed0:	89 34 24             	mov    %esi,(%esp)
c0034ed3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034ed7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034eda:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034edd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ee1:	e8 ea 14 00 00       	call   c00363d0 <__mdiff>
c0034ee6:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034ee9:	89 c2                	mov    %eax,%edx
c0034eeb:	85 c9                	test   %ecx,%ecx
c0034eed:	0f 85 c5 00 00 00    	jne    c0034fb8 <_dtoa_r+0xf28>
c0034ef3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ef7:	89 3c 24             	mov    %edi,(%esp)
c0034efa:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034efd:	e8 7e 14 00 00       	call   c0036380 <__mcmp>
c0034f02:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034f05:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034f09:	89 34 24             	mov    %esi,(%esp)
c0034f0c:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034f0f:	e8 4c 0d 00 00       	call   c0035c60 <_Bfree>
c0034f14:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034f17:	89 c1                	mov    %eax,%ecx
c0034f19:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f1c:	75 0b                	jne    c0034f29 <_dtoa_r+0xe99>
c0034f1e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034f21:	85 d2                	test   %edx,%edx
c0034f23:	0f 84 fb 02 00 00    	je     c0035224 <_dtoa_r+0x1194>
c0034f29:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034f2c:	85 d2                	test   %edx,%edx
c0034f2e:	0f 88 7f 01 00 00    	js     c00350b3 <_dtoa_r+0x1023>
c0034f34:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034f37:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f3a:	75 0b                	jne    c0034f47 <_dtoa_r+0xeb7>
c0034f3c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034f3f:	85 c9                	test   %ecx,%ecx
c0034f41:	0f 84 6c 01 00 00    	je     c00350b3 <_dtoa_r+0x1023>
c0034f47:	85 c0                	test   %eax,%eax
c0034f49:	0f 8f 82 02 00 00    	jg     c00351d1 <_dtoa_r+0x1141>
c0034f4f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034f53:	89 da                	mov    %ebx,%edx
c0034f55:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034f58:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034f5b:	0f 84 8d 02 00 00    	je     c00351ee <_dtoa_r+0x115e>
c0034f61:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034f65:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f6c:	00 
c0034f6d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f74:	00 
c0034f75:	89 34 24             	mov    %esi,(%esp)
c0034f78:	e8 03 0d 00 00       	call   c0035c80 <__multadd>
c0034f7d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f84:	00 
c0034f85:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f8c:	00 
c0034f8d:	89 34 24             	mov    %esi,(%esp)
c0034f90:	89 c7                	mov    %eax,%edi
c0034f92:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f95:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034f98:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034f9b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f9f:	0f 85 d3 fe ff ff    	jne    c0034e78 <_dtoa_r+0xde8>
c0034fa5:	e8 d6 0c 00 00       	call   c0035c80 <__multadd>
c0034faa:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034fad:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034fb0:	e9 ed fe ff ff       	jmp    c0034ea2 <_dtoa_r+0xe12>
c0034fb5:	8d 76 00             	lea    0x0(%esi),%esi
c0034fb8:	b8 01 00 00 00       	mov    $0x1,%eax
c0034fbd:	e9 43 ff ff ff       	jmp    c0034f05 <_dtoa_r+0xe75>
c0034fc2:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034fc9:	e9 d2 f2 ff ff       	jmp    c00342a0 <_dtoa_r+0x210>
c0034fce:	0f 85 87 f6 ff ff    	jne    c003465b <_dtoa_r+0x5cb>
c0034fd4:	dd d8                	fstp   %st(0)
c0034fd6:	dd d8                	fstp   %st(0)
c0034fd8:	dd d8                	fstp   %st(0)
c0034fda:	89 fb                	mov    %edi,%ebx
c0034fdc:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034fdf:	e9 fc f8 ff ff       	jmp    c00348e0 <_dtoa_r+0x850>
c0034fe4:	89 c2                	mov    %eax,%edx
c0034fe6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0034fe9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034fec:	01 55 94             	add    %edx,-0x6c(%ebp)
c0034fef:	31 d2                	xor    %edx,%edx
c0034ff1:	e9 b8 f9 ff ff       	jmp    c00349ae <_dtoa_r+0x91e>
c0034ff6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ff9:	85 c0                	test   %eax,%eax
c0034ffb:	0f 84 f3 f9 ff ff    	je     c00349f4 <_dtoa_r+0x964>
c0035001:	8b 45 90             	mov    -0x70(%ebp),%eax
c0035004:	85 c0                	test   %eax,%eax
c0035006:	0f 8e c4 fb ff ff    	jle    c0034bd0 <_dtoa_r+0xb40>
c003500c:	d8 0d 8c 90 03 c0    	fmuls  0xc003908c
c0035012:	83 c1 01             	add    $0x1,%ecx
c0035015:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035018:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c003501b:	89 c1                	mov    %eax,%ecx
c003501d:	83 eb 01             	sub    $0x1,%ebx
c0035020:	db 45 d4             	fildl  -0x2c(%ebp)
c0035023:	d8 c9                	fmul   %st(1),%st
c0035025:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0035028:	d8 05 90 90 03 c0    	fadds  0xc0039090
c003502e:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035031:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0035038:	e9 53 f4 ff ff       	jmp    c0034490 <_dtoa_r+0x400>
c003503d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035040:	c6 03 30             	movb   $0x30,(%ebx)
c0035043:	83 c0 01             	add    $0x1,%eax
c0035046:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0035049:	b8 31 00 00 00       	mov    $0x31,%eax
c003504e:	88 02                	mov    %al,(%edx)
c0035050:	e9 8b f8 ff ff       	jmp    c00348e0 <_dtoa_r+0x850>
c0035055:	d9 c0                	fld    %st(0)
c0035057:	b9 02 00 00 00       	mov    $0x2,%ecx
c003505c:	e9 f2 f3 ff ff       	jmp    c0034453 <_dtoa_r+0x3c3>
c0035061:	de e2                	fsubp  %st,%st(2)
c0035063:	d9 c9                	fxch   %st(1)
c0035065:	df e9                	fucomip %st(1),%st
c0035067:	dd d8                	fstp   %st(0)
c0035069:	0f 86 69 fb ff ff    	jbe    c0034bd8 <_dtoa_r+0xb48>
c003506f:	dd d8                	fstp   %st(0)
c0035071:	eb 07                	jmp    c003507a <_dtoa_r+0xfea>
c0035073:	90                   	nop
c0035074:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035078:	89 c2                	mov    %eax,%edx
c003507a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003507e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035081:	74 f5                	je     c0035078 <_dtoa_r+0xfe8>
c0035083:	e9 d9 f4 ff ff       	jmp    c0034561 <_dtoa_r+0x4d1>
c0035088:	c6 07 31             	movb   $0x31,(%edi)
c003508b:	89 fb                	mov    %edi,%ebx
c003508d:	89 d7                	mov    %edx,%edi
c003508f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035093:	e9 1a f8 ff ff       	jmp    c00348b2 <_dtoa_r+0x822>
c0035098:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003509b:	85 d2                	test   %edx,%edx
c003509d:	0f 84 1b 01 00 00    	je     c00351be <_dtoa_r+0x112e>
c00350a3:	05 33 04 00 00       	add    $0x433,%eax
c00350a8:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00350ab:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00350ae:	e9 0b f9 ff ff       	jmp    c00349be <_dtoa_r+0x92e>
c00350b3:	85 c0                	test   %eax,%eax
c00350b5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00350b8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00350bb:	7e 45                	jle    c0035102 <_dtoa_r+0x1072>
c00350bd:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00350c0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00350c7:	00 
c00350c8:	89 34 24             	mov    %esi,(%esp)
c00350cb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00350cf:	e8 8c 11 00 00       	call   c0036260 <__lshift>
c00350d4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c00350d7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00350db:	89 04 24             	mov    %eax,(%esp)
c00350de:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00350e1:	e8 9a 12 00 00       	call   c0036380 <__mcmp>
c00350e6:	83 f8 00             	cmp    $0x0,%eax
c00350e9:	0f 8e 5b 01 00 00    	jle    c003524a <_dtoa_r+0x11ba>
c00350ef:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00350f3:	0f 84 0c 01 00 00    	je     c0035205 <_dtoa_r+0x1175>
c00350f9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00350fc:	83 c0 31             	add    $0x31,%eax
c00350ff:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035102:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035105:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035109:	89 cb                	mov    %ecx,%ebx
c003510b:	88 03                	mov    %al,(%ebx)
c003510d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035110:	89 fb                	mov    %edi,%ebx
c0035112:	8d 79 01             	lea    0x1(%ecx),%edi
c0035115:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035118:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003511b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003511e:	e9 8f f7 ff ff       	jmp    c00348b2 <_dtoa_r+0x822>
c0035123:	dd d8                	fstp   %st(0)
c0035125:	dd d8                	fstp   %st(0)
c0035127:	dd d8                	fstp   %st(0)
c0035129:	eb 0d                	jmp    c0035138 <_dtoa_r+0x10a8>
c003512b:	90                   	nop
c003512c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035130:	dd d8                	fstp   %st(0)
c0035132:	dd d8                	fstp   %st(0)
c0035134:	dd d8                	fstp   %st(0)
c0035136:	dd d8                	fstp   %st(0)
c0035138:	89 fb                	mov    %edi,%ebx
c003513a:	89 d7                	mov    %edx,%edi
c003513c:	e9 8d f5 ff ff       	jmp    c00346ce <_dtoa_r+0x63e>
c0035141:	29 cb                	sub    %ecx,%ebx
c0035143:	31 c0                	xor    %eax,%eax
c0035145:	e9 74 f8 ff ff       	jmp    c00349be <_dtoa_r+0x92e>
c003514a:	75 0e                	jne    c003515a <_dtoa_r+0x10ca>
c003514c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035150:	74 08                	je     c003515a <_dtoa_r+0x10ca>
c0035152:	e9 b2 f9 ff ff       	jmp    c0034b09 <_dtoa_r+0xa79>
c0035157:	90                   	nop
c0035158:	89 c2                	mov    %eax,%edx
c003515a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003515e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035161:	74 f5                	je     c0035158 <_dtoa_r+0x10c8>
c0035163:	89 fb                	mov    %edi,%ebx
c0035165:	89 d7                	mov    %edx,%edi
c0035167:	e9 46 f7 ff ff       	jmp    c00348b2 <_dtoa_r+0x822>
c003516c:	8b 40 04             	mov    0x4(%eax),%eax
c003516f:	89 34 24             	mov    %esi,(%esp)
c0035172:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035176:	e8 45 0a 00 00       	call   c0035bc0 <_Balloc>
c003517b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003517e:	89 c3                	mov    %eax,%ebx
c0035180:	8b 41 10             	mov    0x10(%ecx),%eax
c0035183:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003518a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003518e:	89 c8                	mov    %ecx,%eax
c0035190:	83 c0 0c             	add    $0xc,%eax
c0035193:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035197:	8d 43 0c             	lea    0xc(%ebx),%eax
c003519a:	89 04 24             	mov    %eax,(%esp)
c003519d:	e8 62 cc ff ff       	call   c0031e04 <memcpy>
c00351a2:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00351a9:	00 
c00351aa:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00351ae:	89 34 24             	mov    %esi,(%esp)
c00351b1:	e8 aa 10 00 00       	call   c0036260 <__lshift>
c00351b6:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00351b9:	e9 9d fc ff ff       	jmp    c0034e5b <_dtoa_r+0xdcb>
c00351be:	b8 36 00 00 00       	mov    $0x36,%eax
c00351c3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00351c6:	2b 45 e0             	sub    -0x20(%ebp),%eax
c00351c9:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00351cc:	e9 ed f7 ff ff       	jmp    c00349be <_dtoa_r+0x92e>
c00351d1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00351d5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351d8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351db:	74 28                	je     c0035205 <_dtoa_r+0x1175>
c00351dd:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00351e1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00351e4:	83 c0 01             	add    $0x1,%eax
c00351e7:	89 cb                	mov    %ecx,%ebx
c00351e9:	e9 1d ff ff ff       	jmp    c003510b <_dtoa_r+0x107b>
c00351ee:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351f1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351f4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351f7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351fa:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351fd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035200:	e9 cc f8 ff ff       	jmp    c0034ad1 <_dtoa_r+0xa41>
c0035205:	8b 45 98             	mov    -0x68(%ebp),%eax
c0035208:	b9 39 00 00 00       	mov    $0x39,%ecx
c003520d:	8d 50 01             	lea    0x1(%eax),%edx
c0035210:	c6 00 39             	movb   $0x39,(%eax)
c0035213:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035216:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035219:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003521c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003521f:	e9 fa f8 ff ff       	jmp    c0034b1e <_dtoa_r+0xa8e>
c0035224:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0035227:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c003522a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003522d:	83 fb 39             	cmp    $0x39,%ebx
c0035230:	74 d3                	je     c0035205 <_dtoa_r+0x1175>
c0035232:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035235:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0035238:	83 c0 31             	add    $0x31,%eax
c003523b:	85 c9                	test   %ecx,%ecx
c003523d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035240:	0f 4e c3             	cmovle %ebx,%eax
c0035243:	89 cb                	mov    %ecx,%ebx
c0035245:	e9 c1 fe ff ff       	jmp    c003510b <_dtoa_r+0x107b>
c003524a:	0f 85 b2 fe ff ff    	jne    c0035102 <_dtoa_r+0x1072>
c0035250:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035254:	0f 84 a8 fe ff ff    	je     c0035102 <_dtoa_r+0x1072>
c003525a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035260:	e9 8a fe ff ff       	jmp    c00350ef <_dtoa_r+0x105f>
c0035265:	0f 85 c7 f3 ff ff    	jne    c0034632 <_dtoa_r+0x5a2>
c003526b:	dd d8                	fstp   %st(0)
c003526d:	dd d8                	fstp   %st(0)
c003526f:	90                   	nop
c0035270:	e9 65 fd ff ff       	jmp    c0034fda <_dtoa_r+0xf4a>
c0035275:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035278:	e9 dd f5 ff ff       	jmp    c003485a <_dtoa_r+0x7ca>
c003527d:	8d 76 00             	lea    0x0(%esi),%esi
c0035280:	0f 84 7a f5 ff ff    	je     c0034800 <_dtoa_r+0x770>
c0035286:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003528b:	29 d0                	sub    %edx,%eax
c003528d:	e9 ab f8 ff ff       	jmp    c0034b3d <_dtoa_r+0xaad>
c0035292:	b8 01 00 00 00       	mov    $0x1,%eax
c0035297:	e9 d9 ef ff ff       	jmp    c0034275 <_dtoa_r+0x1e5>
c003529c:	31 d2                	xor    %edx,%edx
c003529e:	e9 36 f1 ff ff       	jmp    c00343d9 <_dtoa_r+0x349>
c00352a3:	66 90                	xchg   %ax,%ax
c00352a5:	66 90                	xchg   %ax,%ax
c00352a7:	66 90                	xchg   %ax,%ax
c00352a9:	66 90                	xchg   %ax,%ax
c00352ab:	66 90                	xchg   %ax,%ax
c00352ad:	66 90                	xchg   %ax,%ax
c00352af:	90                   	nop

c00352b0 <_setlocale_r>:
c00352b0:	55                   	push   %ebp
c00352b1:	89 e5                	mov    %esp,%ebp
c00352b3:	53                   	push   %ebx
c00352b4:	83 ec 14             	sub    $0x14,%esp
c00352b7:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00352ba:	85 db                	test   %ebx,%ebx
c00352bc:	74 14                	je     c00352d2 <_setlocale_r+0x22>
c00352be:	c7 44 24 04 b8 90 03 	movl   $0xc00390b8,0x4(%esp)
c00352c5:	c0 
c00352c6:	89 1c 24             	mov    %ebx,(%esp)
c00352c9:	e8 82 17 00 00       	call   c0036a50 <strcmp>
c00352ce:	85 c0                	test   %eax,%eax
c00352d0:	75 0e                	jne    c00352e0 <_setlocale_r+0x30>
c00352d2:	83 c4 14             	add    $0x14,%esp
c00352d5:	b8 b0 8e 03 c0       	mov    $0xc0038eb0,%eax
c00352da:	5b                   	pop    %ebx
c00352db:	5d                   	pop    %ebp
c00352dc:	c3                   	ret    
c00352dd:	8d 76 00             	lea    0x0(%esi),%esi
c00352e0:	c7 44 24 04 b0 8e 03 	movl   $0xc0038eb0,0x4(%esp)
c00352e7:	c0 
c00352e8:	89 1c 24             	mov    %ebx,(%esp)
c00352eb:	e8 60 17 00 00       	call   c0036a50 <strcmp>
c00352f0:	85 c0                	test   %eax,%eax
c00352f2:	74 de                	je     c00352d2 <_setlocale_r+0x22>
c00352f4:	89 1c 24             	mov    %ebx,(%esp)
c00352f7:	c7 44 24 04 ea 8e 03 	movl   $0xc0038eea,0x4(%esp)
c00352fe:	c0 
c00352ff:	e8 4c 17 00 00       	call   c0036a50 <strcmp>
c0035304:	89 c2                	mov    %eax,%edx
c0035306:	31 c0                	xor    %eax,%eax
c0035308:	85 d2                	test   %edx,%edx
c003530a:	ba b0 8e 03 c0       	mov    $0xc0038eb0,%edx
c003530f:	0f 44 c2             	cmove  %edx,%eax
c0035312:	83 c4 14             	add    $0x14,%esp
c0035315:	5b                   	pop    %ebx
c0035316:	5d                   	pop    %ebp
c0035317:	c3                   	ret    
c0035318:	90                   	nop
c0035319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035320 <__locale_charset>:
c0035320:	55                   	push   %ebp
c0035321:	b8 c0 c4 03 c0       	mov    $0xc003c4c0,%eax
c0035326:	89 e5                	mov    %esp,%ebp
c0035328:	5d                   	pop    %ebp
c0035329:	c3                   	ret    
c003532a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035330 <__locale_mb_cur_max>:
c0035330:	55                   	push   %ebp
c0035331:	a1 18 c5 03 c0       	mov    0xc003c518,%eax
c0035336:	89 e5                	mov    %esp,%ebp
c0035338:	5d                   	pop    %ebp
c0035339:	c3                   	ret    
c003533a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035340 <__locale_msgcharset>:
c0035340:	55                   	push   %ebp
c0035341:	b8 a0 c4 03 c0       	mov    $0xc003c4a0,%eax
c0035346:	89 e5                	mov    %esp,%ebp
c0035348:	5d                   	pop    %ebp
c0035349:	c3                   	ret    
c003534a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035350 <__locale_cjk_lang>:
c0035350:	55                   	push   %ebp
c0035351:	31 c0                	xor    %eax,%eax
c0035353:	89 e5                	mov    %esp,%ebp
c0035355:	5d                   	pop    %ebp
c0035356:	c3                   	ret    
c0035357:	89 f6                	mov    %esi,%esi
c0035359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035360 <_localeconv_r>:
c0035360:	55                   	push   %ebp
c0035361:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035366:	89 e5                	mov    %esp,%ebp
c0035368:	5d                   	pop    %ebp
c0035369:	c3                   	ret    
c003536a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035370 <setlocale>:
c0035370:	55                   	push   %ebp
c0035371:	89 e5                	mov    %esp,%ebp
c0035373:	83 ec 18             	sub    $0x18,%esp
c0035376:	e8 35 cc ff ff       	call   c0031fb0 <__getreent>
c003537b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003537e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035382:	8b 55 08             	mov    0x8(%ebp),%edx
c0035385:	89 04 24             	mov    %eax,(%esp)
c0035388:	89 54 24 04          	mov    %edx,0x4(%esp)
c003538c:	e8 1f ff ff ff       	call   c00352b0 <_setlocale_r>
c0035391:	c9                   	leave  
c0035392:	c3                   	ret    
c0035393:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00353a0 <localeconv>:
c00353a0:	55                   	push   %ebp
c00353a1:	89 e5                	mov    %esp,%ebp
c00353a3:	83 ec 08             	sub    $0x8,%esp
c00353a6:	e8 05 cc ff ff       	call   c0031fb0 <__getreent>
c00353ab:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c00353b0:	c9                   	leave  
c00353b1:	c3                   	ret    
c00353b2:	66 90                	xchg   %ax,%ax
c00353b4:	66 90                	xchg   %ax,%ax
c00353b6:	66 90                	xchg   %ax,%ax
c00353b8:	66 90                	xchg   %ax,%ax
c00353ba:	66 90                	xchg   %ax,%ax
c00353bc:	66 90                	xchg   %ax,%ax
c00353be:	66 90                	xchg   %ax,%ax

c00353c0 <_malloc_r>:
c00353c0:	55                   	push   %ebp
c00353c1:	89 e5                	mov    %esp,%ebp
c00353c3:	57                   	push   %edi
c00353c4:	56                   	push   %esi
c00353c5:	53                   	push   %ebx
c00353c6:	83 ec 2c             	sub    $0x2c,%esp
c00353c9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00353cc:	8d 50 0b             	lea    0xb(%eax),%edx
c00353cf:	83 fa 16             	cmp    $0x16,%edx
c00353d2:	76 6c                	jbe    c0035440 <_malloc_r+0x80>
c00353d4:	89 d7                	mov    %edx,%edi
c00353d6:	83 e7 f8             	and    $0xfffffff8,%edi
c00353d9:	89 fe                	mov    %edi,%esi
c00353db:	c1 ee 1f             	shr    $0x1f,%esi
c00353de:	39 c7                	cmp    %eax,%edi
c00353e0:	8b 45 08             	mov    0x8(%ebp),%eax
c00353e3:	89 f2                	mov    %esi,%edx
c00353e5:	72 67                	jb     c003544e <_malloc_r+0x8e>
c00353e7:	84 d2                	test   %dl,%dl
c00353e9:	75 63                	jne    c003544e <_malloc_r+0x8e>
c00353eb:	89 04 24             	mov    %eax,(%esp)
c00353ee:	e8 ad 07 00 00       	call   c0035ba0 <__malloc_lock>
c00353f3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c00353f9:	77 65                	ja     c0035460 <_malloc_r+0xa0>
c00353fb:	89 fa                	mov    %edi,%edx
c00353fd:	c1 ea 03             	shr    $0x3,%edx
c0035400:	8d 04 d5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%edx,8),%eax
c0035407:	8b 58 0c             	mov    0xc(%eax),%ebx
c003540a:	39 c3                	cmp    %eax,%ebx
c003540c:	0f 84 3e 05 00 00    	je     c0035950 <_malloc_r+0x590>
c0035412:	8b 43 04             	mov    0x4(%ebx),%eax
c0035415:	83 e0 fc             	and    $0xfffffffc,%eax
c0035418:	8b 53 0c             	mov    0xc(%ebx),%edx
c003541b:	8b 4b 08             	mov    0x8(%ebx),%ecx
c003541e:	89 51 0c             	mov    %edx,0xc(%ecx)
c0035421:	89 4a 08             	mov    %ecx,0x8(%edx)
c0035424:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035429:	8b 45 08             	mov    0x8(%ebp),%eax
c003542c:	89 04 24             	mov    %eax,(%esp)
c003542f:	e8 7c 07 00 00       	call   c0035bb0 <__malloc_unlock>
c0035434:	8d 43 08             	lea    0x8(%ebx),%eax
c0035437:	83 c4 2c             	add    $0x2c,%esp
c003543a:	5b                   	pop    %ebx
c003543b:	5e                   	pop    %esi
c003543c:	5f                   	pop    %edi
c003543d:	5d                   	pop    %ebp
c003543e:	c3                   	ret    
c003543f:	90                   	nop
c0035440:	bf 10 00 00 00       	mov    $0x10,%edi
c0035445:	31 d2                	xor    %edx,%edx
c0035447:	39 c7                	cmp    %eax,%edi
c0035449:	8b 45 08             	mov    0x8(%ebp),%eax
c003544c:	73 99                	jae    c00353e7 <_malloc_r+0x27>
c003544e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035454:	83 c4 2c             	add    $0x2c,%esp
c0035457:	31 c0                	xor    %eax,%eax
c0035459:	5b                   	pop    %ebx
c003545a:	5e                   	pop    %esi
c003545b:	5f                   	pop    %edi
c003545c:	5d                   	pop    %ebp
c003545d:	c3                   	ret    
c003545e:	66 90                	xchg   %ax,%ax
c0035460:	89 fe                	mov    %edi,%esi
c0035462:	c1 ee 09             	shr    $0x9,%esi
c0035465:	85 f6                	test   %esi,%esi
c0035467:	0f 84 ab 01 00 00    	je     c0035618 <_malloc_r+0x258>
c003546d:	83 fe 04             	cmp    $0x4,%esi
c0035470:	0f 87 8a 03 00 00    	ja     c0035800 <_malloc_r+0x440>
c0035476:	89 fe                	mov    %edi,%esi
c0035478:	c1 ee 06             	shr    $0x6,%esi
c003547b:	83 c6 38             	add    $0x38,%esi
c003547e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035481:	8d 0c 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%ecx
c0035488:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003548b:	39 d9                	cmp    %ebx,%ecx
c003548d:	75 18                	jne    c00354a7 <_malloc_r+0xe7>
c003548f:	eb 28                	jmp    c00354b9 <_malloc_r+0xf9>
c0035491:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035498:	85 d2                	test   %edx,%edx
c003549a:	0f 89 78 ff ff ff    	jns    c0035418 <_malloc_r+0x58>
c00354a0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c00354a3:	39 d9                	cmp    %ebx,%ecx
c00354a5:	74 12                	je     c00354b9 <_malloc_r+0xf9>
c00354a7:	8b 43 04             	mov    0x4(%ebx),%eax
c00354aa:	83 e0 fc             	and    $0xfffffffc,%eax
c00354ad:	89 c2                	mov    %eax,%edx
c00354af:	29 fa                	sub    %edi,%edx
c00354b1:	83 fa 0f             	cmp    $0xf,%edx
c00354b4:	7e e2                	jle    c0035498 <_malloc_r+0xd8>
c00354b6:	83 ee 01             	sub    $0x1,%esi
c00354b9:	8d 46 01             	lea    0x1(%esi),%eax
c00354bc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00354bf:	8b 1d 50 c5 03 c0    	mov    0xc003c550,%ebx
c00354c5:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c00354ca:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c00354d0:	74 6b                	je     c003553d <_malloc_r+0x17d>
c00354d2:	8b 73 04             	mov    0x4(%ebx),%esi
c00354d5:	83 e6 fc             	and    $0xfffffffc,%esi
c00354d8:	89 f0                	mov    %esi,%eax
c00354da:	29 f8                	sub    %edi,%eax
c00354dc:	83 f8 0f             	cmp    $0xf,%eax
c00354df:	0f 8f a3 03 00 00    	jg     c0035888 <_malloc_r+0x4c8>
c00354e5:	85 c0                	test   %eax,%eax
c00354e7:	c7 05 54 c5 03 c0 48 	movl   $0xc003c548,0xc003c554
c00354ee:	c5 03 c0 
c00354f1:	c7 05 50 c5 03 c0 48 	movl   $0xc003c548,0xc003c550
c00354f8:	c5 03 c0 
c00354fb:	0f 89 27 01 00 00    	jns    c0035628 <_malloc_r+0x268>
c0035501:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0035507:	0f 87 1b 03 00 00    	ja     c0035828 <_malloc_r+0x468>
c003550d:	c1 ee 03             	shr    $0x3,%esi
c0035510:	b8 01 00 00 00       	mov    $0x1,%eax
c0035515:	89 f1                	mov    %esi,%ecx
c0035517:	8d 14 f5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%esi,8),%edx
c003551e:	c1 f9 02             	sar    $0x2,%ecx
c0035521:	d3 e0                	shl    %cl,%eax
c0035523:	8b 4a 08             	mov    0x8(%edx),%ecx
c0035526:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c003552c:	89 53 0c             	mov    %edx,0xc(%ebx)
c003552f:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035532:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035537:	89 5a 08             	mov    %ebx,0x8(%edx)
c003553a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c003553d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035540:	be 01 00 00 00       	mov    $0x1,%esi
c0035545:	c1 f9 02             	sar    $0x2,%ecx
c0035548:	d3 e6                	shl    %cl,%esi
c003554a:	39 c6                	cmp    %eax,%esi
c003554c:	0f 87 f6 00 00 00    	ja     c0035648 <_malloc_r+0x288>
c0035552:	85 f0                	test   %esi,%eax
c0035554:	0f 85 76 03 00 00    	jne    c00358d0 <_malloc_r+0x510>
c003555a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003555d:	01 f6                	add    %esi,%esi
c003555f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035562:	85 f0                	test   %esi,%eax
c0035564:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035567:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003556a:	0f 85 60 03 00 00    	jne    c00358d0 <_malloc_r+0x510>
c0035570:	89 ca                	mov    %ecx,%edx
c0035572:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035578:	01 f6                	add    %esi,%esi
c003557a:	83 c2 04             	add    $0x4,%edx
c003557d:	85 f0                	test   %esi,%eax
c003557f:	74 f7                	je     c0035578 <_malloc_r+0x1b8>
c0035581:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035584:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035587:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003558a:	8d 34 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%esi
c0035591:	89 f1                	mov    %esi,%ecx
c0035593:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035596:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035599:	39 d9                	cmp    %ebx,%ecx
c003559b:	75 1e                	jne    c00355bb <_malloc_r+0x1fb>
c003559d:	e9 36 03 00 00       	jmp    c00358d8 <_malloc_r+0x518>
c00355a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00355a8:	85 d2                	test   %edx,%edx
c00355aa:	0f 89 c0 03 00 00    	jns    c0035970 <_malloc_r+0x5b0>
c00355b0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c00355b3:	39 d9                	cmp    %ebx,%ecx
c00355b5:	0f 84 1d 03 00 00    	je     c00358d8 <_malloc_r+0x518>
c00355bb:	8b 43 04             	mov    0x4(%ebx),%eax
c00355be:	83 e0 fc             	and    $0xfffffffc,%eax
c00355c1:	89 c2                	mov    %eax,%edx
c00355c3:	29 fa                	sub    %edi,%edx
c00355c5:	83 fa 0f             	cmp    $0xf,%edx
c00355c8:	7e de                	jle    c00355a8 <_malloc_r+0x1e8>
c00355ca:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c00355cd:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c00355d0:	83 cf 01             	or     $0x1,%edi
c00355d3:	8b 73 08             	mov    0x8(%ebx),%esi
c00355d6:	89 7b 04             	mov    %edi,0x4(%ebx)
c00355d9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c00355dc:	89 71 08             	mov    %esi,0x8(%ecx)
c00355df:	89 d1                	mov    %edx,%ecx
c00355e1:	83 c9 01             	or     $0x1,%ecx
c00355e4:	a3 54 c5 03 c0       	mov    %eax,0xc003c554
c00355e9:	a3 50 c5 03 c0       	mov    %eax,0xc003c550
c00355ee:	c7 40 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%eax)
c00355f5:	c7 40 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%eax)
c00355fc:	89 48 04             	mov    %ecx,0x4(%eax)
c00355ff:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035602:	8b 45 08             	mov    0x8(%ebp),%eax
c0035605:	89 04 24             	mov    %eax,(%esp)
c0035608:	e8 a3 05 00 00       	call   c0035bb0 <__malloc_unlock>
c003560d:	8d 43 08             	lea    0x8(%ebx),%eax
c0035610:	e9 22 fe ff ff       	jmp    c0035437 <_malloc_r+0x77>
c0035615:	8d 76 00             	lea    0x0(%esi),%esi
c0035618:	b8 7e 00 00 00       	mov    $0x7e,%eax
c003561d:	be 3f 00 00 00       	mov    $0x3f,%esi
c0035622:	e9 5a fe ff ff       	jmp    c0035481 <_malloc_r+0xc1>
c0035627:	90                   	nop
c0035628:	8b 45 08             	mov    0x8(%ebp),%eax
c003562b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035630:	89 04 24             	mov    %eax,(%esp)
c0035633:	e8 78 05 00 00       	call   c0035bb0 <__malloc_unlock>
c0035638:	83 c4 2c             	add    $0x2c,%esp
c003563b:	8d 43 08             	lea    0x8(%ebx),%eax
c003563e:	5b                   	pop    %ebx
c003563f:	5e                   	pop    %esi
c0035640:	5f                   	pop    %edi
c0035641:	5d                   	pop    %ebp
c0035642:	c3                   	ret    
c0035643:	90                   	nop
c0035644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035648:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c003564e:	8b 73 04             	mov    0x4(%ebx),%esi
c0035651:	83 e6 fc             	and    $0xfffffffc,%esi
c0035654:	39 f7                	cmp    %esi,%edi
c0035656:	77 0d                	ja     c0035665 <_malloc_r+0x2a5>
c0035658:	89 f0                	mov    %esi,%eax
c003565a:	29 f8                	sub    %edi,%eax
c003565c:	83 f8 0f             	cmp    $0xf,%eax
c003565f:	0f 8f 6b 01 00 00    	jg     c00357d0 <_malloc_r+0x410>
c0035665:	8b 0d 50 f0 06 c0    	mov    0xc006f050,%ecx
c003566b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003566e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035671:	01 f9                	add    %edi,%ecx
c0035673:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035679:	83 c1 10             	add    $0x10,%ecx
c003567c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035681:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035688:	0f 44 c1             	cmove  %ecx,%eax
c003568b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003568e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035692:	8b 45 08             	mov    0x8(%ebp),%eax
c0035695:	89 04 24             	mov    %eax,(%esp)
c0035698:	e8 03 13 00 00       	call   c00369a0 <_sbrk_r>
c003569d:	83 f8 ff             	cmp    $0xffffffff,%eax
c00356a0:	89 c1                	mov    %eax,%ecx
c00356a2:	0f 84 17 03 00 00    	je     c00359bf <_malloc_r+0x5ff>
c00356a8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00356ab:	0f 87 02 03 00 00    	ja     c00359b3 <_malloc_r+0x5f3>
c00356b1:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00356b4:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c00356ba:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c00356bd:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c00356c3:	0f 84 a9 03 00 00    	je     c0035a72 <_malloc_r+0x6b2>
c00356c9:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c00356d0:	0f 84 ca 03 00 00    	je     c0035aa0 <_malloc_r+0x6e0>
c00356d6:	89 c8                	mov    %ecx,%eax
c00356d8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c00356db:	01 d0                	add    %edx,%eax
c00356dd:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c00356e2:	89 c8                	mov    %ecx,%eax
c00356e4:	ba 00 10 00 00       	mov    $0x1000,%edx
c00356e9:	83 e0 07             	and    $0x7,%eax
c00356ec:	74 0c                	je     c00356fa <_malloc_r+0x33a>
c00356ee:	29 c1                	sub    %eax,%ecx
c00356f0:	ba 08 10 00 00       	mov    $0x1008,%edx
c00356f5:	8d 49 08             	lea    0x8(%ecx),%ecx
c00356f8:	29 c2                	sub    %eax,%edx
c00356fa:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00356fd:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035700:	01 c8                	add    %ecx,%eax
c0035702:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035707:	29 c2                	sub    %eax,%edx
c0035709:	8b 45 08             	mov    0x8(%ebp),%eax
c003570c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035710:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0035713:	89 04 24             	mov    %eax,(%esp)
c0035716:	e8 85 12 00 00       	call   c00369a0 <_sbrk_r>
c003571b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003571e:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035721:	0f 84 6d 03 00 00    	je     c0035a94 <_malloc_r+0x6d4>
c0035727:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003572a:	29 c8                	sub    %ecx,%eax
c003572c:	01 d0                	add    %edx,%eax
c003572e:	83 c8 01             	or     $0x1,%eax
c0035731:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c0035737:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c003573d:	89 0d 48 c5 03 c0    	mov    %ecx,0xc003c548
c0035743:	89 41 04             	mov    %eax,0x4(%ecx)
c0035746:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c003574c:	0f 84 f2 02 00 00    	je     c0035a44 <_malloc_r+0x684>
c0035752:	83 fe 0f             	cmp    $0xf,%esi
c0035755:	0f 86 8d 02 00 00    	jbe    c00359e8 <_malloc_r+0x628>
c003575b:	8b 43 04             	mov    0x4(%ebx),%eax
c003575e:	83 ee 0c             	sub    $0xc,%esi
c0035761:	83 e6 f8             	and    $0xfffffff8,%esi
c0035764:	83 e0 01             	and    $0x1,%eax
c0035767:	09 f0                	or     %esi,%eax
c0035769:	83 fe 0f             	cmp    $0xf,%esi
c003576c:	89 43 04             	mov    %eax,0x4(%ebx)
c003576f:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035774:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003577b:	00 
c003577c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035783:	00 
c0035784:	0f 87 a2 02 00 00    	ja     c0035a2c <_malloc_r+0x66c>
c003578a:	3b 15 4c f0 06 c0    	cmp    0xc006f04c,%edx
c0035790:	76 06                	jbe    c0035798 <_malloc_r+0x3d8>
c0035792:	89 15 4c f0 06 c0    	mov    %edx,0xc006f04c
c0035798:	3b 15 48 f0 06 c0    	cmp    0xc006f048,%edx
c003579e:	76 06                	jbe    c00357a6 <_malloc_r+0x3e6>
c00357a0:	89 15 48 f0 06 c0    	mov    %edx,0xc006f048
c00357a6:	8b 50 04             	mov    0x4(%eax),%edx
c00357a9:	89 c3                	mov    %eax,%ebx
c00357ab:	83 e2 fc             	and    $0xfffffffc,%edx
c00357ae:	89 d0                	mov    %edx,%eax
c00357b0:	29 f8                	sub    %edi,%eax
c00357b2:	39 d7                	cmp    %edx,%edi
c00357b4:	77 05                	ja     c00357bb <_malloc_r+0x3fb>
c00357b6:	83 f8 0f             	cmp    $0xf,%eax
c00357b9:	7f 15                	jg     c00357d0 <_malloc_r+0x410>
c00357bb:	8b 45 08             	mov    0x8(%ebp),%eax
c00357be:	89 04 24             	mov    %eax,(%esp)
c00357c1:	e8 ea 03 00 00       	call   c0035bb0 <__malloc_unlock>
c00357c6:	31 c0                	xor    %eax,%eax
c00357c8:	e9 6a fc ff ff       	jmp    c0035437 <_malloc_r+0x77>
c00357cd:	8d 76 00             	lea    0x0(%esi),%esi
c00357d0:	89 fa                	mov    %edi,%edx
c00357d2:	83 c8 01             	or     $0x1,%eax
c00357d5:	83 ca 01             	or     $0x1,%edx
c00357d8:	89 53 04             	mov    %edx,0x4(%ebx)
c00357db:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c00357de:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c00357e4:	89 42 04             	mov    %eax,0x4(%edx)
c00357e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00357ea:	89 04 24             	mov    %eax,(%esp)
c00357ed:	e8 be 03 00 00       	call   c0035bb0 <__malloc_unlock>
c00357f2:	83 c4 2c             	add    $0x2c,%esp
c00357f5:	8d 43 08             	lea    0x8(%ebx),%eax
c00357f8:	5b                   	pop    %ebx
c00357f9:	5e                   	pop    %esi
c00357fa:	5f                   	pop    %edi
c00357fb:	5d                   	pop    %ebp
c00357fc:	c3                   	ret    
c00357fd:	8d 76 00             	lea    0x0(%esi),%esi
c0035800:	83 fe 14             	cmp    $0x14,%esi
c0035803:	0f 86 8f 01 00 00    	jbe    c0035998 <_malloc_r+0x5d8>
c0035809:	83 fe 54             	cmp    $0x54,%esi
c003580c:	0f 87 be 01 00 00    	ja     c00359d0 <_malloc_r+0x610>
c0035812:	89 fe                	mov    %edi,%esi
c0035814:	c1 ee 0c             	shr    $0xc,%esi
c0035817:	83 c6 6e             	add    $0x6e,%esi
c003581a:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003581d:	e9 5f fc ff ff       	jmp    c0035481 <_malloc_r+0xc1>
c0035822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035828:	89 f1                	mov    %esi,%ecx
c003582a:	c1 e9 09             	shr    $0x9,%ecx
c003582d:	83 f9 04             	cmp    $0x4,%ecx
c0035830:	0f 86 6d 01 00 00    	jbe    c00359a3 <_malloc_r+0x5e3>
c0035836:	83 f9 14             	cmp    $0x14,%ecx
c0035839:	0f 87 0f 02 00 00    	ja     c0035a4e <_malloc_r+0x68e>
c003583f:	83 c1 5b             	add    $0x5b,%ecx
c0035842:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035845:	8d 04 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%eax
c003584c:	8b 50 08             	mov    0x8(%eax),%edx
c003584f:	39 c2                	cmp    %eax,%edx
c0035851:	0f 84 a1 01 00 00    	je     c00359f8 <_malloc_r+0x638>
c0035857:	90                   	nop
c0035858:	8b 4a 04             	mov    0x4(%edx),%ecx
c003585b:	83 e1 fc             	and    $0xfffffffc,%ecx
c003585e:	39 ce                	cmp    %ecx,%esi
c0035860:	73 07                	jae    c0035869 <_malloc_r+0x4a9>
c0035862:	8b 52 08             	mov    0x8(%edx),%edx
c0035865:	39 d0                	cmp    %edx,%eax
c0035867:	75 ef                	jne    c0035858 <_malloc_r+0x498>
c0035869:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003586c:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035871:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035874:	89 53 08             	mov    %edx,0x8(%ebx)
c0035877:	89 59 08             	mov    %ebx,0x8(%ecx)
c003587a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003587d:	e9 bb fc ff ff       	jmp    c003553d <_malloc_r+0x17d>
c0035882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035888:	89 c1                	mov    %eax,%ecx
c003588a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003588d:	83 c9 01             	or     $0x1,%ecx
c0035890:	83 cf 01             	or     $0x1,%edi
c0035893:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035896:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c003589c:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c00358a2:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c00358a9:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c00358b0:	89 4a 04             	mov    %ecx,0x4(%edx)
c00358b3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c00358b6:	8b 45 08             	mov    0x8(%ebp),%eax
c00358b9:	89 04 24             	mov    %eax,(%esp)
c00358bc:	e8 ef 02 00 00       	call   c0035bb0 <__malloc_unlock>
c00358c1:	8d 43 08             	lea    0x8(%ebx),%eax
c00358c4:	e9 6e fb ff ff       	jmp    c0035437 <_malloc_r+0x77>
c00358c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00358d0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c00358d3:	e9 af fc ff ff       	jmp    c0035587 <_malloc_r+0x1c7>
c00358d8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c00358dc:	83 c1 08             	add    $0x8,%ecx
c00358df:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c00358e3:	0f 85 ad fc ff ff    	jne    c0035596 <_malloc_r+0x1d6>
c00358e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00358ec:	eb 12                	jmp    c0035900 <_malloc_r+0x540>
c00358ee:	66 90                	xchg   %ax,%ax
c00358f0:	8d 56 f8             	lea    -0x8(%esi),%edx
c00358f3:	8b 36                	mov    (%esi),%esi
c00358f5:	83 e8 01             	sub    $0x1,%eax
c00358f8:	39 d6                	cmp    %edx,%esi
c00358fa:	0f 85 ea 01 00 00    	jne    c0035aea <_malloc_r+0x72a>
c0035900:	a8 03                	test   $0x3,%al
c0035902:	75 ec                	jne    c00358f0 <_malloc_r+0x530>
c0035904:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0035907:	f7 d0                	not    %eax
c0035909:	23 05 44 c5 03 c0    	and    0xc003c544,%eax
c003590f:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035914:	d1 65 dc             	shll   -0x24(%ebp)
c0035917:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003591a:	39 c2                	cmp    %eax,%edx
c003591c:	0f 87 26 fd ff ff    	ja     c0035648 <_malloc_r+0x288>
c0035922:	85 d2                	test   %edx,%edx
c0035924:	0f 84 1e fd ff ff    	je     c0035648 <_malloc_r+0x288>
c003592a:	85 c2                	test   %eax,%edx
c003592c:	0f 85 c2 01 00 00    	jne    c0035af4 <_malloc_r+0x734>
c0035932:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035935:	89 f1                	mov    %esi,%ecx
c0035937:	01 d2                	add    %edx,%edx
c0035939:	83 c1 04             	add    $0x4,%ecx
c003593c:	85 d0                	test   %edx,%eax
c003593e:	74 f7                	je     c0035937 <_malloc_r+0x577>
c0035940:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035943:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035946:	e9 3c fc ff ff       	jmp    c0035587 <_malloc_r+0x1c7>
c003594b:	90                   	nop
c003594c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035950:	8d 43 08             	lea    0x8(%ebx),%eax
c0035953:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035956:	39 d8                	cmp    %ebx,%eax
c0035958:	0f 85 b4 fa ff ff    	jne    c0035412 <_malloc_r+0x52>
c003595e:	8d 42 02             	lea    0x2(%edx),%eax
c0035961:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035964:	e9 56 fb ff ff       	jmp    c00354bf <_malloc_r+0xff>
c0035969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035970:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035975:	8b 53 08             	mov    0x8(%ebx),%edx
c0035978:	8b 43 0c             	mov    0xc(%ebx),%eax
c003597b:	89 42 0c             	mov    %eax,0xc(%edx)
c003597e:	89 50 08             	mov    %edx,0x8(%eax)
c0035981:	8b 45 08             	mov    0x8(%ebp),%eax
c0035984:	89 04 24             	mov    %eax,(%esp)
c0035987:	e8 24 02 00 00       	call   c0035bb0 <__malloc_unlock>
c003598c:	8d 43 08             	lea    0x8(%ebx),%eax
c003598f:	e9 a3 fa ff ff       	jmp    c0035437 <_malloc_r+0x77>
c0035994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035998:	83 c6 5b             	add    $0x5b,%esi
c003599b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003599e:	e9 de fa ff ff       	jmp    c0035481 <_malloc_r+0xc1>
c00359a3:	89 f1                	mov    %esi,%ecx
c00359a5:	c1 e9 06             	shr    $0x6,%ecx
c00359a8:	83 c1 38             	add    $0x38,%ecx
c00359ab:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00359ae:	e9 92 fe ff ff       	jmp    c0035845 <_malloc_r+0x485>
c00359b3:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c00359b9:	0f 84 f2 fc ff ff    	je     c00356b1 <_malloc_r+0x2f1>
c00359bf:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c00359c5:	8b 53 04             	mov    0x4(%ebx),%edx
c00359c8:	83 e2 fc             	and    $0xfffffffc,%edx
c00359cb:	e9 de fd ff ff       	jmp    c00357ae <_malloc_r+0x3ee>
c00359d0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c00359d6:	77 3c                	ja     c0035a14 <_malloc_r+0x654>
c00359d8:	89 fe                	mov    %edi,%esi
c00359da:	c1 ee 0f             	shr    $0xf,%esi
c00359dd:	83 c6 77             	add    $0x77,%esi
c00359e0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359e3:	e9 99 fa ff ff       	jmp    c0035481 <_malloc_r+0xc1>
c00359e8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c00359ef:	89 cb                	mov    %ecx,%ebx
c00359f1:	31 d2                	xor    %edx,%edx
c00359f3:	e9 b6 fd ff ff       	jmp    c00357ae <_malloc_r+0x3ee>
c00359f8:	c1 f9 02             	sar    $0x2,%ecx
c00359fb:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a00:	d3 e0                	shl    %cl,%eax
c0035a02:	89 d1                	mov    %edx,%ecx
c0035a04:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c0035a0a:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035a0f:	e9 5d fe ff ff       	jmp    c0035871 <_malloc_r+0x4b1>
c0035a14:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c0035a1a:	77 47                	ja     c0035a63 <_malloc_r+0x6a3>
c0035a1c:	89 fe                	mov    %edi,%esi
c0035a1e:	c1 ee 12             	shr    $0x12,%esi
c0035a21:	83 c6 7c             	add    $0x7c,%esi
c0035a24:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a27:	e9 55 fa ff ff       	jmp    c0035481 <_malloc_r+0xc1>
c0035a2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035a2f:	83 c3 08             	add    $0x8,%ebx
c0035a32:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035a36:	89 04 24             	mov    %eax,(%esp)
c0035a39:	e8 c2 22 00 00       	call   c0037d00 <_free_r>
c0035a3e:	8b 15 20 f0 06 c0    	mov    0xc006f020,%edx
c0035a44:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035a49:	e9 3c fd ff ff       	jmp    c003578a <_malloc_r+0x3ca>
c0035a4e:	83 f9 54             	cmp    $0x54,%ecx
c0035a51:	77 58                	ja     c0035aab <_malloc_r+0x6eb>
c0035a53:	89 f1                	mov    %esi,%ecx
c0035a55:	c1 e9 0c             	shr    $0xc,%ecx
c0035a58:	83 c1 6e             	add    $0x6e,%ecx
c0035a5b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a5e:	e9 e2 fd ff ff       	jmp    c0035845 <_malloc_r+0x485>
c0035a63:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a68:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035a6d:	e9 0f fa ff ff       	jmp    c0035481 <_malloc_r+0xc1>
c0035a72:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035a79:	0f 85 4a fc ff ff    	jne    c00356c9 <_malloc_r+0x309>
c0035a7f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035a82:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035a87:	01 f1                	add    %esi,%ecx
c0035a89:	83 c9 01             	or     $0x1,%ecx
c0035a8c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035a8f:	e9 f6 fc ff ff       	jmp    c003578a <_malloc_r+0x3ca>
c0035a94:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a99:	31 d2                	xor    %edx,%edx
c0035a9b:	e9 91 fc ff ff       	jmp    c0035731 <_malloc_r+0x371>
c0035aa0:	89 0d 20 c5 03 c0    	mov    %ecx,0xc003c520
c0035aa6:	e9 37 fc ff ff       	jmp    c00356e2 <_malloc_r+0x322>
c0035aab:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035ab1:	77 10                	ja     c0035ac3 <_malloc_r+0x703>
c0035ab3:	89 f1                	mov    %esi,%ecx
c0035ab5:	c1 e9 0f             	shr    $0xf,%ecx
c0035ab8:	83 c1 77             	add    $0x77,%ecx
c0035abb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035abe:	e9 82 fd ff ff       	jmp    c0035845 <_malloc_r+0x485>
c0035ac3:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035ac9:	77 10                	ja     c0035adb <_malloc_r+0x71b>
c0035acb:	89 f1                	mov    %esi,%ecx
c0035acd:	c1 e9 12             	shr    $0x12,%ecx
c0035ad0:	83 c1 7c             	add    $0x7c,%ecx
c0035ad3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035ad6:	e9 6a fd ff ff       	jmp    c0035845 <_malloc_r+0x485>
c0035adb:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035ae0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035ae5:	e9 5b fd ff ff       	jmp    c0035845 <_malloc_r+0x485>
c0035aea:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035aef:	e9 20 fe ff ff       	jmp    c0035914 <_malloc_r+0x554>
c0035af4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035af7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035afa:	e9 88 fa ff ff       	jmp    c0035587 <_malloc_r+0x1c7>
c0035aff:	90                   	nop

c0035b00 <memchr>:
c0035b00:	55                   	push   %ebp
c0035b01:	89 e5                	mov    %esp,%ebp
c0035b03:	57                   	push   %edi
c0035b04:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035b08:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035b0b:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035b0e:	31 d2                	xor    %edx,%edx
c0035b10:	85 c9                	test   %ecx,%ecx
c0035b12:	74 79                	je     c0035b8d <L20>
c0035b14:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b1a:	74 28                	je     c0035b44 <L5>
c0035b1c:	3a 07                	cmp    (%edi),%al
c0035b1e:	74 6a                	je     c0035b8a <L15>
c0035b20:	47                   	inc    %edi
c0035b21:	49                   	dec    %ecx
c0035b22:	74 69                	je     c0035b8d <L20>
c0035b24:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b2a:	74 18                	je     c0035b44 <L5>
c0035b2c:	3a 07                	cmp    (%edi),%al
c0035b2e:	74 5a                	je     c0035b8a <L15>
c0035b30:	47                   	inc    %edi
c0035b31:	49                   	dec    %ecx
c0035b32:	74 59                	je     c0035b8d <L20>
c0035b34:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b3a:	74 08                	je     c0035b44 <L5>
c0035b3c:	3a 07                	cmp    (%edi),%al
c0035b3e:	74 4a                	je     c0035b8a <L15>
c0035b40:	47                   	inc    %edi
c0035b41:	49                   	dec    %ecx
c0035b42:	74 49                	je     c0035b8d <L20>

c0035b44 <L5>:
c0035b44:	88 c4                	mov    %al,%ah
c0035b46:	89 c2                	mov    %eax,%edx
c0035b48:	c1 e2 10             	shl    $0x10,%edx
c0035b4b:	09 d0                	or     %edx,%eax
c0035b4d:	53                   	push   %ebx
c0035b4e:	66 90                	xchg   %ax,%ax

c0035b50 <L8>:
c0035b50:	83 e9 04             	sub    $0x4,%ecx
c0035b53:	72 1c                	jb     c0035b71 <L9>
c0035b55:	8b 17                	mov    (%edi),%edx
c0035b57:	83 c7 04             	add    $0x4,%edi
c0035b5a:	31 c2                	xor    %eax,%edx
c0035b5c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035b62:	f7 d2                	not    %edx
c0035b64:	21 d3                	and    %edx,%ebx
c0035b66:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035b6c:	74 e2                	je     c0035b50 <L8>
c0035b6e:	83 ef 04             	sub    $0x4,%edi

c0035b71 <L9>:
c0035b71:	5b                   	pop    %ebx
c0035b72:	31 d2                	xor    %edx,%edx
c0035b74:	83 c1 04             	add    $0x4,%ecx
c0035b77:	74 14                	je     c0035b8d <L20>
c0035b79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035b80 <L10>:
c0035b80:	3a 07                	cmp    (%edi),%al
c0035b82:	74 06                	je     c0035b8a <L15>
c0035b84:	47                   	inc    %edi
c0035b85:	49                   	dec    %ecx
c0035b86:	75 f8                	jne    c0035b80 <L10>
c0035b88:	31 ff                	xor    %edi,%edi

c0035b8a <L15>:
c0035b8a:	4a                   	dec    %edx
c0035b8b:	21 fa                	and    %edi,%edx

c0035b8d <L20>:
c0035b8d:	89 d0                	mov    %edx,%eax
c0035b8f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035b92:	5f                   	pop    %edi
c0035b93:	c9                   	leave  
c0035b94:	c3                   	ret    
c0035b95:	66 90                	xchg   %ax,%ax
c0035b97:	66 90                	xchg   %ax,%ax
c0035b99:	66 90                	xchg   %ax,%ax
c0035b9b:	66 90                	xchg   %ax,%ax
c0035b9d:	66 90                	xchg   %ax,%ax
c0035b9f:	90                   	nop

c0035ba0 <__malloc_lock>:
c0035ba0:	55                   	push   %ebp
c0035ba1:	89 e5                	mov    %esp,%ebp
c0035ba3:	5d                   	pop    %ebp
c0035ba4:	c3                   	ret    
c0035ba5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035ba9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035bb0 <__malloc_unlock>:
c0035bb0:	55                   	push   %ebp
c0035bb1:	89 e5                	mov    %esp,%ebp
c0035bb3:	5d                   	pop    %ebp
c0035bb4:	c3                   	ret    
c0035bb5:	66 90                	xchg   %ax,%ax
c0035bb7:	66 90                	xchg   %ax,%ax
c0035bb9:	66 90                	xchg   %ax,%ax
c0035bbb:	66 90                	xchg   %ax,%ax
c0035bbd:	66 90                	xchg   %ax,%ax
c0035bbf:	90                   	nop

c0035bc0 <_Balloc>:
c0035bc0:	55                   	push   %ebp
c0035bc1:	89 e5                	mov    %esp,%ebp
c0035bc3:	57                   	push   %edi
c0035bc4:	56                   	push   %esi
c0035bc5:	53                   	push   %ebx
c0035bc6:	83 ec 1c             	sub    $0x1c,%esp
c0035bc9:	8b 75 08             	mov    0x8(%ebp),%esi
c0035bcc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035bcf:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035bd2:	85 c0                	test   %eax,%eax
c0035bd4:	74 2a                	je     c0035c00 <_Balloc+0x40>
c0035bd6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035bd9:	8b 02                	mov    (%edx),%eax
c0035bdb:	85 c0                	test   %eax,%eax
c0035bdd:	74 49                	je     c0035c28 <_Balloc+0x68>
c0035bdf:	8b 08                	mov    (%eax),%ecx
c0035be1:	89 0a                	mov    %ecx,(%edx)
c0035be3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035bea:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035bf1:	83 c4 1c             	add    $0x1c,%esp
c0035bf4:	5b                   	pop    %ebx
c0035bf5:	5e                   	pop    %esi
c0035bf6:	5f                   	pop    %edi
c0035bf7:	5d                   	pop    %ebp
c0035bf8:	c3                   	ret    
c0035bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035c00:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035c07:	00 
c0035c08:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035c0f:	00 
c0035c10:	89 34 24             	mov    %esi,(%esp)
c0035c13:	e8 38 1f 00 00       	call   c0037b50 <_calloc_r>
c0035c18:	85 c0                	test   %eax,%eax
c0035c1a:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035c1d:	75 b7                	jne    c0035bd6 <_Balloc+0x16>
c0035c1f:	31 c0                	xor    %eax,%eax
c0035c21:	eb ce                	jmp    c0035bf1 <_Balloc+0x31>
c0035c23:	90                   	nop
c0035c24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035c28:	89 d9                	mov    %ebx,%ecx
c0035c2a:	bf 01 00 00 00       	mov    $0x1,%edi
c0035c2f:	d3 e7                	shl    %cl,%edi
c0035c31:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035c38:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035c3c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035c43:	00 
c0035c44:	89 34 24             	mov    %esi,(%esp)
c0035c47:	e8 04 1f 00 00       	call   c0037b50 <_calloc_r>
c0035c4c:	85 c0                	test   %eax,%eax
c0035c4e:	74 cf                	je     c0035c1f <_Balloc+0x5f>
c0035c50:	89 58 04             	mov    %ebx,0x4(%eax)
c0035c53:	89 78 08             	mov    %edi,0x8(%eax)
c0035c56:	eb 8b                	jmp    c0035be3 <_Balloc+0x23>
c0035c58:	90                   	nop
c0035c59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c60 <_Bfree>:
c0035c60:	55                   	push   %ebp
c0035c61:	89 e5                	mov    %esp,%ebp
c0035c63:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c66:	85 c0                	test   %eax,%eax
c0035c68:	74 12                	je     c0035c7c <_Bfree+0x1c>
c0035c6a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035c6d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035c70:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035c73:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035c76:	8b 0a                	mov    (%edx),%ecx
c0035c78:	89 08                	mov    %ecx,(%eax)
c0035c7a:	89 02                	mov    %eax,(%edx)
c0035c7c:	5d                   	pop    %ebp
c0035c7d:	c3                   	ret    
c0035c7e:	66 90                	xchg   %ax,%ax

c0035c80 <__multadd>:
c0035c80:	55                   	push   %ebp
c0035c81:	89 e5                	mov    %esp,%ebp
c0035c83:	57                   	push   %edi
c0035c84:	56                   	push   %esi
c0035c85:	53                   	push   %ebx
c0035c86:	83 ec 2c             	sub    $0x2c,%esp
c0035c89:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c8c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035c8f:	8b 40 10             	mov    0x10(%eax),%eax
c0035c92:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035c95:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c98:	8d 78 14             	lea    0x14(%eax),%edi
c0035c9b:	31 c0                	xor    %eax,%eax
c0035c9d:	8d 76 00             	lea    0x0(%esi),%esi
c0035ca0:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035ca3:	0f b7 d1             	movzwl %cx,%edx
c0035ca6:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035caa:	c1 e9 10             	shr    $0x10,%ecx
c0035cad:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035cb1:	01 da                	add    %ebx,%edx
c0035cb3:	89 d3                	mov    %edx,%ebx
c0035cb5:	0f b7 d2             	movzwl %dx,%edx
c0035cb8:	c1 eb 10             	shr    $0x10,%ebx
c0035cbb:	01 d9                	add    %ebx,%ecx
c0035cbd:	89 ce                	mov    %ecx,%esi
c0035cbf:	c1 e1 10             	shl    $0x10,%ecx
c0035cc2:	01 d1                	add    %edx,%ecx
c0035cc4:	c1 ee 10             	shr    $0x10,%esi
c0035cc7:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035cca:	83 c0 01             	add    $0x1,%eax
c0035ccd:	89 f3                	mov    %esi,%ebx
c0035ccf:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035cd2:	7f cc                	jg     c0035ca0 <__multadd+0x20>
c0035cd4:	85 f6                	test   %esi,%esi
c0035cd6:	74 1b                	je     c0035cf3 <__multadd+0x73>
c0035cd8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cdb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035cde:	3b 78 08             	cmp    0x8(%eax),%edi
c0035ce1:	7d 1d                	jge    c0035d00 <__multadd+0x80>
c0035ce3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035ce6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035ce9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035ced:	83 c0 01             	add    $0x1,%eax
c0035cf0:	89 47 10             	mov    %eax,0x10(%edi)
c0035cf3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cf6:	83 c4 2c             	add    $0x2c,%esp
c0035cf9:	5b                   	pop    %ebx
c0035cfa:	5e                   	pop    %esi
c0035cfb:	5f                   	pop    %edi
c0035cfc:	5d                   	pop    %ebp
c0035cfd:	c3                   	ret    
c0035cfe:	66 90                	xchg   %ax,%ax
c0035d00:	8b 40 04             	mov    0x4(%eax),%eax
c0035d03:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035d06:	83 c0 01             	add    $0x1,%eax
c0035d09:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d0d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d10:	89 04 24             	mov    %eax,(%esp)
c0035d13:	e8 a8 fe ff ff       	call   c0035bc0 <_Balloc>
c0035d18:	89 c3                	mov    %eax,%ebx
c0035d1a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d1d:	8b 40 10             	mov    0x10(%eax),%eax
c0035d20:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035d27:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035d2b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d2e:	83 c0 0c             	add    $0xc,%eax
c0035d31:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d35:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035d38:	89 04 24             	mov    %eax,(%esp)
c0035d3b:	e8 c4 c0 ff ff       	call   c0031e04 <memcpy>
c0035d40:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d43:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d46:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035d49:	8b 50 04             	mov    0x4(%eax),%edx
c0035d4c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d4f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035d52:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035d55:	8b 10                	mov    (%eax),%edx
c0035d57:	89 17                	mov    %edx,(%edi)
c0035d59:	89 38                	mov    %edi,(%eax)
c0035d5b:	eb 86                	jmp    c0035ce3 <__multadd+0x63>
c0035d5d:	8d 76 00             	lea    0x0(%esi),%esi

c0035d60 <__s2b>:
c0035d60:	55                   	push   %ebp
c0035d61:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035d66:	89 e5                	mov    %esp,%ebp
c0035d68:	57                   	push   %edi
c0035d69:	56                   	push   %esi
c0035d6a:	53                   	push   %ebx
c0035d6b:	83 ec 2c             	sub    $0x2c,%esp
c0035d6e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035d71:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d74:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035d77:	8d 48 08             	lea    0x8(%eax),%ecx
c0035d7a:	89 c8                	mov    %ecx,%eax
c0035d7c:	f7 ea                	imul   %edx
c0035d7e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035d81:	d1 fa                	sar    %edx
c0035d83:	29 ca                	sub    %ecx,%edx
c0035d85:	83 fa 01             	cmp    $0x1,%edx
c0035d88:	0f 8e be 00 00 00    	jle    c0035e4c <__s2b+0xec>
c0035d8e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035d93:	31 c9                	xor    %ecx,%ecx
c0035d95:	8d 76 00             	lea    0x0(%esi),%esi
c0035d98:	01 c0                	add    %eax,%eax
c0035d9a:	83 c1 01             	add    $0x1,%ecx
c0035d9d:	39 c2                	cmp    %eax,%edx
c0035d9f:	7f f7                	jg     c0035d98 <__s2b+0x38>
c0035da1:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035da5:	89 1c 24             	mov    %ebx,(%esp)
c0035da8:	e8 13 fe ff ff       	call   c0035bc0 <_Balloc>
c0035dad:	8b 55 18             	mov    0x18(%ebp),%edx
c0035db0:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035db4:	89 50 14             	mov    %edx,0x14(%eax)
c0035db7:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035dbe:	0f 8e 7c 00 00 00    	jle    c0035e40 <__s2b+0xe0>
c0035dc4:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035dc7:	03 75 10             	add    0x10(%ebp),%esi
c0035dca:	89 cf                	mov    %ecx,%edi
c0035dcc:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035dcf:	90                   	nop
c0035dd0:	83 c7 01             	add    $0x1,%edi
c0035dd3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035dd7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dde:	00 
c0035ddf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035de3:	89 1c 24             	mov    %ebx,(%esp)
c0035de6:	83 ea 30             	sub    $0x30,%edx
c0035de9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035ded:	e8 8e fe ff ff       	call   c0035c80 <__multadd>
c0035df2:	39 f7                	cmp    %esi,%edi
c0035df4:	75 da                	jne    c0035dd0 <__s2b+0x70>
c0035df6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035df9:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035dfc:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035e00:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035e03:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035e06:	7e 2e                	jle    c0035e36 <__s2b+0xd6>
c0035e08:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035e0b:	29 cf                	sub    %ecx,%edi
c0035e0d:	01 f7                	add    %esi,%edi
c0035e0f:	90                   	nop
c0035e10:	83 c6 01             	add    $0x1,%esi
c0035e13:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035e17:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035e1e:	00 
c0035e1f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e23:	89 1c 24             	mov    %ebx,(%esp)
c0035e26:	83 ea 30             	sub    $0x30,%edx
c0035e29:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035e2d:	e8 4e fe ff ff       	call   c0035c80 <__multadd>
c0035e32:	39 fe                	cmp    %edi,%esi
c0035e34:	75 da                	jne    c0035e10 <__s2b+0xb0>
c0035e36:	83 c4 2c             	add    $0x2c,%esp
c0035e39:	5b                   	pop    %ebx
c0035e3a:	5e                   	pop    %esi
c0035e3b:	5f                   	pop    %edi
c0035e3c:	5d                   	pop    %ebp
c0035e3d:	c3                   	ret    
c0035e3e:	66 90                	xchg   %ax,%ax
c0035e40:	83 c6 0a             	add    $0xa,%esi
c0035e43:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035e4a:	eb b4                	jmp    c0035e00 <__s2b+0xa0>
c0035e4c:	31 c9                	xor    %ecx,%ecx
c0035e4e:	e9 4e ff ff ff       	jmp    c0035da1 <__s2b+0x41>
c0035e53:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035e59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035e60 <__hi0bits>:
c0035e60:	55                   	push   %ebp
c0035e61:	31 c9                	xor    %ecx,%ecx
c0035e63:	89 e5                	mov    %esp,%ebp
c0035e65:	8b 55 08             	mov    0x8(%ebp),%edx
c0035e68:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035e6e:	75 05                	jne    c0035e75 <__hi0bits+0x15>
c0035e70:	c1 e2 10             	shl    $0x10,%edx
c0035e73:	b1 10                	mov    $0x10,%cl
c0035e75:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035e7b:	75 06                	jne    c0035e83 <__hi0bits+0x23>
c0035e7d:	83 c1 08             	add    $0x8,%ecx
c0035e80:	c1 e2 08             	shl    $0x8,%edx
c0035e83:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035e89:	75 06                	jne    c0035e91 <__hi0bits+0x31>
c0035e8b:	83 c1 04             	add    $0x4,%ecx
c0035e8e:	c1 e2 04             	shl    $0x4,%edx
c0035e91:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035e97:	75 06                	jne    c0035e9f <__hi0bits+0x3f>
c0035e99:	83 c1 02             	add    $0x2,%ecx
c0035e9c:	c1 e2 02             	shl    $0x2,%edx
c0035e9f:	85 d2                	test   %edx,%edx
c0035ea1:	89 c8                	mov    %ecx,%eax
c0035ea3:	78 0d                	js     c0035eb2 <__hi0bits+0x52>
c0035ea5:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035eab:	b8 20 00 00 00       	mov    $0x20,%eax
c0035eb0:	75 06                	jne    c0035eb8 <__hi0bits+0x58>
c0035eb2:	5d                   	pop    %ebp
c0035eb3:	c3                   	ret    
c0035eb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035eb8:	8d 41 01             	lea    0x1(%ecx),%eax
c0035ebb:	5d                   	pop    %ebp
c0035ebc:	c3                   	ret    
c0035ebd:	8d 76 00             	lea    0x0(%esi),%esi

c0035ec0 <__lo0bits>:
c0035ec0:	55                   	push   %ebp
c0035ec1:	89 e5                	mov    %esp,%ebp
c0035ec3:	53                   	push   %ebx
c0035ec4:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035ec7:	8b 13                	mov    (%ebx),%edx
c0035ec9:	f6 c2 07             	test   $0x7,%dl
c0035ecc:	74 1a                	je     c0035ee8 <__lo0bits+0x28>
c0035ece:	31 c0                	xor    %eax,%eax
c0035ed0:	f6 c2 01             	test   $0x1,%dl
c0035ed3:	75 0f                	jne    c0035ee4 <__lo0bits+0x24>
c0035ed5:	f6 c2 02             	test   $0x2,%dl
c0035ed8:	75 56                	jne    c0035f30 <__lo0bits+0x70>
c0035eda:	c1 ea 02             	shr    $0x2,%edx
c0035edd:	b8 02 00 00 00       	mov    $0x2,%eax
c0035ee2:	89 13                	mov    %edx,(%ebx)
c0035ee4:	5b                   	pop    %ebx
c0035ee5:	5d                   	pop    %ebp
c0035ee6:	c3                   	ret    
c0035ee7:	90                   	nop
c0035ee8:	31 c9                	xor    %ecx,%ecx
c0035eea:	66 85 d2             	test   %dx,%dx
c0035eed:	75 05                	jne    c0035ef4 <__lo0bits+0x34>
c0035eef:	c1 ea 10             	shr    $0x10,%edx
c0035ef2:	b1 10                	mov    $0x10,%cl
c0035ef4:	84 d2                	test   %dl,%dl
c0035ef6:	75 06                	jne    c0035efe <__lo0bits+0x3e>
c0035ef8:	83 c1 08             	add    $0x8,%ecx
c0035efb:	c1 ea 08             	shr    $0x8,%edx
c0035efe:	f6 c2 0f             	test   $0xf,%dl
c0035f01:	75 06                	jne    c0035f09 <__lo0bits+0x49>
c0035f03:	83 c1 04             	add    $0x4,%ecx
c0035f06:	c1 ea 04             	shr    $0x4,%edx
c0035f09:	f6 c2 03             	test   $0x3,%dl
c0035f0c:	75 06                	jne    c0035f14 <__lo0bits+0x54>
c0035f0e:	83 c1 02             	add    $0x2,%ecx
c0035f11:	c1 ea 02             	shr    $0x2,%edx
c0035f14:	f6 c2 01             	test   $0x1,%dl
c0035f17:	75 0c                	jne    c0035f25 <__lo0bits+0x65>
c0035f19:	d1 ea                	shr    %edx
c0035f1b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035f20:	74 c2                	je     c0035ee4 <__lo0bits+0x24>
c0035f22:	83 c1 01             	add    $0x1,%ecx
c0035f25:	89 13                	mov    %edx,(%ebx)
c0035f27:	89 c8                	mov    %ecx,%eax
c0035f29:	5b                   	pop    %ebx
c0035f2a:	5d                   	pop    %ebp
c0035f2b:	c3                   	ret    
c0035f2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f30:	d1 ea                	shr    %edx
c0035f32:	b0 01                	mov    $0x1,%al
c0035f34:	89 13                	mov    %edx,(%ebx)
c0035f36:	5b                   	pop    %ebx
c0035f37:	5d                   	pop    %ebp
c0035f38:	c3                   	ret    
c0035f39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f40 <__i2b>:
c0035f40:	55                   	push   %ebp
c0035f41:	89 e5                	mov    %esp,%ebp
c0035f43:	83 ec 18             	sub    $0x18,%esp
c0035f46:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f49:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035f50:	00 
c0035f51:	89 04 24             	mov    %eax,(%esp)
c0035f54:	e8 67 fc ff ff       	call   c0035bc0 <_Balloc>
c0035f59:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035f5c:	89 50 14             	mov    %edx,0x14(%eax)
c0035f5f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035f66:	c9                   	leave  
c0035f67:	c3                   	ret    
c0035f68:	90                   	nop
c0035f69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f70 <__multiply>:
c0035f70:	55                   	push   %ebp
c0035f71:	89 e5                	mov    %esp,%ebp
c0035f73:	57                   	push   %edi
c0035f74:	56                   	push   %esi
c0035f75:	53                   	push   %ebx
c0035f76:	83 ec 3c             	sub    $0x3c,%esp
c0035f79:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f7c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f7f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035f82:	8b 58 10             	mov    0x10(%eax),%ebx
c0035f85:	39 df                	cmp    %ebx,%edi
c0035f87:	7d 0e                	jge    c0035f97 <__multiply+0x27>
c0035f89:	89 f8                	mov    %edi,%eax
c0035f8b:	89 df                	mov    %ebx,%edi
c0035f8d:	89 c3                	mov    %eax,%ebx
c0035f8f:	89 f0                	mov    %esi,%eax
c0035f91:	8b 75 10             	mov    0x10(%ebp),%esi
c0035f94:	89 45 10             	mov    %eax,0x10(%ebp)
c0035f97:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035f9a:	3b 46 08             	cmp    0x8(%esi),%eax
c0035f9d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035fa0:	0f 9f c0             	setg   %al
c0035fa3:	0f b6 c0             	movzbl %al,%eax
c0035fa6:	03 46 04             	add    0x4(%esi),%eax
c0035fa9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035fad:	8b 45 08             	mov    0x8(%ebp),%eax
c0035fb0:	89 04 24             	mov    %eax,(%esp)
c0035fb3:	e8 08 fc ff ff       	call   c0035bc0 <_Balloc>
c0035fb8:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035fbb:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035fbe:	8d 40 14             	lea    0x14(%eax),%eax
c0035fc1:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035fc4:	89 d1                	mov    %edx,%ecx
c0035fc6:	39 c8                	cmp    %ecx,%eax
c0035fc8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035fcb:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035fce:	73 15                	jae    c0035fe5 <__multiply+0x75>
c0035fd0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035fd3:	90                   	nop
c0035fd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035fd8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035fde:	83 c0 04             	add    $0x4,%eax
c0035fe1:	39 c2                	cmp    %eax,%edx
c0035fe3:	77 f3                	ja     c0035fd8 <__multiply+0x68>
c0035fe5:	8d 46 14             	lea    0x14(%esi),%eax
c0035fe8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0035feb:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c0035fee:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0035ff1:	8b 45 10             	mov    0x10(%ebp),%eax
c0035ff4:	83 c0 14             	add    $0x14,%eax
c0035ff7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c0035ffa:	39 f8                	cmp    %edi,%eax
c0035ffc:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0035fff:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0036002:	0f 83 e8 00 00 00    	jae    c00360f0 <__multiply+0x180>
c0036008:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003600b:	8b 00                	mov    (%eax),%eax
c003600d:	0f b7 f8             	movzwl %ax,%edi
c0036010:	85 ff                	test   %edi,%edi
c0036012:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036015:	74 5a                	je     c0036071 <__multiply+0x101>
c0036017:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003601a:	31 db                	xor    %ebx,%ebx
c003601c:	8b 75 d0             	mov    -0x30(%ebp),%esi
c003601f:	eb 09                	jmp    c003602a <__multiply+0xba>
c0036021:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036028:	89 fa                	mov    %edi,%edx
c003602a:	8b 0e                	mov    (%esi),%ecx
c003602c:	83 c6 04             	add    $0x4,%esi
c003602f:	0f b7 3a             	movzwl (%edx),%edi
c0036032:	0f b7 c1             	movzwl %cx,%eax
c0036035:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0036039:	c1 e9 10             	shr    $0x10,%ecx
c003603c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036040:	01 f8                	add    %edi,%eax
c0036042:	01 d8                	add    %ebx,%eax
c0036044:	8b 1a                	mov    (%edx),%ebx
c0036046:	8d 7a 04             	lea    0x4(%edx),%edi
c0036049:	c1 eb 10             	shr    $0x10,%ebx
c003604c:	01 d9                	add    %ebx,%ecx
c003604e:	89 c3                	mov    %eax,%ebx
c0036050:	c1 eb 10             	shr    $0x10,%ebx
c0036053:	0f b7 c0             	movzwl %ax,%eax
c0036056:	01 d9                	add    %ebx,%ecx
c0036058:	89 cb                	mov    %ecx,%ebx
c003605a:	c1 e1 10             	shl    $0x10,%ecx
c003605d:	09 c1                	or     %eax,%ecx
c003605f:	c1 eb 10             	shr    $0x10,%ebx
c0036062:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036065:	89 0a                	mov    %ecx,(%edx)
c0036067:	77 bf                	ja     c0036028 <__multiply+0xb8>
c0036069:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003606c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003606f:	8b 00                	mov    (%eax),%eax
c0036071:	c1 e8 10             	shr    $0x10,%eax
c0036074:	85 c0                	test   %eax,%eax
c0036076:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036079:	74 61                	je     c00360dc <__multiply+0x16c>
c003607b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003607e:	31 ff                	xor    %edi,%edi
c0036080:	89 fe                	mov    %edi,%esi
c0036082:	8b 10                	mov    (%eax),%edx
c0036084:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036087:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003608a:	89 d3                	mov    %edx,%ebx
c003608c:	eb 05                	jmp    c0036093 <__multiply+0x123>
c003608e:	66 90                	xchg   %ax,%ax
c0036090:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036093:	0f b7 08             	movzwl (%eax),%ecx
c0036096:	c1 eb 10             	shr    $0x10,%ebx
c0036099:	0f b7 d2             	movzwl %dx,%edx
c003609c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c00360a0:	83 c0 04             	add    $0x4,%eax
c00360a3:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c00360a6:	01 f7                	add    %esi,%edi
c00360a8:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00360ab:	89 fb                	mov    %edi,%ebx
c00360ad:	c1 e3 10             	shl    $0x10,%ebx
c00360b0:	09 d3                	or     %edx,%ebx
c00360b2:	89 1e                	mov    %ebx,(%esi)
c00360b4:	8b 5e 04             	mov    0x4(%esi),%ebx
c00360b7:	8d 4e 04             	lea    0x4(%esi),%ecx
c00360ba:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c00360be:	c1 ef 10             	shr    $0x10,%edi
c00360c1:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c00360c5:	0f b7 f3             	movzwl %bx,%esi
c00360c8:	01 f2                	add    %esi,%edx
c00360ca:	01 fa                	add    %edi,%edx
c00360cc:	89 d6                	mov    %edx,%esi
c00360ce:	c1 ee 10             	shr    $0x10,%esi
c00360d1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c00360d4:	77 ba                	ja     c0036090 <__multiply+0x120>
c00360d6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00360d9:	89 50 04             	mov    %edx,0x4(%eax)
c00360dc:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c00360e0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00360e3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c00360e7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c00360ea:	0f 87 18 ff ff ff    	ja     c0036008 <__multiply+0x98>
c00360f0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c00360f3:	85 f6                	test   %esi,%esi
c00360f5:	7e 29                	jle    c0036120 <__multiply+0x1b0>
c00360f7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00360fa:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00360fd:	85 db                	test   %ebx,%ebx
c00360ff:	75 1f                	jne    c0036120 <__multiply+0x1b0>
c0036101:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0036104:	89 d0                	mov    %edx,%eax
c0036106:	c1 e0 02             	shl    $0x2,%eax
c0036109:	29 c7                	sub    %eax,%edi
c003610b:	89 f8                	mov    %edi,%eax
c003610d:	eb 09                	jmp    c0036118 <__multiply+0x1a8>
c003610f:	90                   	nop
c0036110:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0036114:	85 c9                	test   %ecx,%ecx
c0036116:	75 05                	jne    c003611d <__multiply+0x1ad>
c0036118:	83 ea 01             	sub    $0x1,%edx
c003611b:	75 f3                	jne    c0036110 <__multiply+0x1a0>
c003611d:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0036120:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0036123:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0036126:	89 78 10             	mov    %edi,0x10(%eax)
c0036129:	83 c4 3c             	add    $0x3c,%esp
c003612c:	5b                   	pop    %ebx
c003612d:	5e                   	pop    %esi
c003612e:	5f                   	pop    %edi
c003612f:	5d                   	pop    %ebp
c0036130:	c3                   	ret    
c0036131:	eb 0d                	jmp    c0036140 <__pow5mult>
c0036133:	90                   	nop
c0036134:	90                   	nop
c0036135:	90                   	nop
c0036136:	90                   	nop
c0036137:	90                   	nop
c0036138:	90                   	nop
c0036139:	90                   	nop
c003613a:	90                   	nop
c003613b:	90                   	nop
c003613c:	90                   	nop
c003613d:	90                   	nop
c003613e:	90                   	nop
c003613f:	90                   	nop

c0036140 <__pow5mult>:
c0036140:	55                   	push   %ebp
c0036141:	89 e5                	mov    %esp,%ebp
c0036143:	57                   	push   %edi
c0036144:	56                   	push   %esi
c0036145:	53                   	push   %ebx
c0036146:	83 ec 2c             	sub    $0x2c,%esp
c0036149:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003614c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003614f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036152:	89 d8                	mov    %ebx,%eax
c0036154:	83 e0 03             	and    $0x3,%eax
c0036157:	0f 85 a3 00 00 00    	jne    c0036200 <__pow5mult+0xc0>
c003615d:	c1 fb 02             	sar    $0x2,%ebx
c0036160:	85 db                	test   %ebx,%ebx
c0036162:	74 5c                	je     c00361c0 <__pow5mult+0x80>
c0036164:	8b 71 48             	mov    0x48(%ecx),%esi
c0036167:	85 f6                	test   %esi,%esi
c0036169:	0f 84 bd 00 00 00    	je     c003622c <__pow5mult+0xec>
c003616f:	f6 c3 01             	test   $0x1,%bl
c0036172:	75 15                	jne    c0036189 <__pow5mult+0x49>
c0036174:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036178:	d1 fb                	sar    %ebx
c003617a:	74 44                	je     c00361c0 <__pow5mult+0x80>
c003617c:	8b 06                	mov    (%esi),%eax
c003617e:	85 c0                	test   %eax,%eax
c0036180:	74 4e                	je     c00361d0 <__pow5mult+0x90>
c0036182:	89 c6                	mov    %eax,%esi
c0036184:	f6 c3 01             	test   $0x1,%bl
c0036187:	74 ef                	je     c0036178 <__pow5mult+0x38>
c0036189:	89 0c 24             	mov    %ecx,(%esp)
c003618c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036190:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036194:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036197:	e8 d4 fd ff ff       	call   c0035f70 <__multiply>
c003619c:	85 ff                	test   %edi,%edi
c003619e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361a1:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00361a4:	74 52                	je     c00361f8 <__pow5mult+0xb8>
c00361a6:	8b 57 04             	mov    0x4(%edi),%edx
c00361a9:	d1 fb                	sar    %ebx
c00361ab:	8b 41 4c             	mov    0x4c(%ecx),%eax
c00361ae:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00361b1:	8b 10                	mov    (%eax),%edx
c00361b3:	89 17                	mov    %edx,(%edi)
c00361b5:	89 38                	mov    %edi,(%eax)
c00361b7:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00361ba:	75 c0                	jne    c003617c <__pow5mult+0x3c>
c00361bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00361c0:	83 c4 2c             	add    $0x2c,%esp
c00361c3:	89 f8                	mov    %edi,%eax
c00361c5:	5b                   	pop    %ebx
c00361c6:	5e                   	pop    %esi
c00361c7:	5f                   	pop    %edi
c00361c8:	5d                   	pop    %ebp
c00361c9:	c3                   	ret    
c00361ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361d0:	89 74 24 08          	mov    %esi,0x8(%esp)
c00361d4:	89 74 24 04          	mov    %esi,0x4(%esp)
c00361d8:	89 0c 24             	mov    %ecx,(%esp)
c00361db:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361de:	e8 8d fd ff ff       	call   c0035f70 <__multiply>
c00361e3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361e6:	89 06                	mov    %eax,(%esi)
c00361e8:	89 c6                	mov    %eax,%esi
c00361ea:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00361f0:	eb 92                	jmp    c0036184 <__pow5mult+0x44>
c00361f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361f8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00361fb:	e9 78 ff ff ff       	jmp    c0036178 <__pow5mult+0x38>
c0036200:	8b 04 85 bc 90 03 c0 	mov    -0x3ffc6f44(,%eax,4),%eax
c0036207:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003620b:	89 0c 24             	mov    %ecx,(%esp)
c003620e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0036215:	00 
c0036216:	89 44 24 08          	mov    %eax,0x8(%esp)
c003621a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003621d:	e8 5e fa ff ff       	call   c0035c80 <__multadd>
c0036222:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036225:	89 c7                	mov    %eax,%edi
c0036227:	e9 31 ff ff ff       	jmp    c003615d <__pow5mult+0x1d>
c003622c:	89 0c 24             	mov    %ecx,(%esp)
c003622f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036236:	00 
c0036237:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003623a:	e8 81 f9 ff ff       	call   c0035bc0 <_Balloc>
c003623f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036242:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0036249:	89 c6                	mov    %eax,%esi
c003624b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036252:	89 41 48             	mov    %eax,0x48(%ecx)
c0036255:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003625b:	e9 0f ff ff ff       	jmp    c003616f <__pow5mult+0x2f>

c0036260 <__lshift>:
c0036260:	55                   	push   %ebp
c0036261:	89 e5                	mov    %esp,%ebp
c0036263:	57                   	push   %edi
c0036264:	56                   	push   %esi
c0036265:	53                   	push   %ebx
c0036266:	83 ec 2c             	sub    $0x2c,%esp
c0036269:	8b 45 0c             	mov    0xc(%ebp),%eax
c003626c:	8b 75 10             	mov    0x10(%ebp),%esi
c003626f:	89 c7                	mov    %eax,%edi
c0036271:	8b 50 04             	mov    0x4(%eax),%edx
c0036274:	8b 40 10             	mov    0x10(%eax),%eax
c0036277:	89 f3                	mov    %esi,%ebx
c0036279:	c1 fb 05             	sar    $0x5,%ebx
c003627c:	01 d8                	add    %ebx,%eax
c003627e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036281:	83 c0 01             	add    $0x1,%eax
c0036284:	89 c1                	mov    %eax,%ecx
c0036286:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036289:	8b 47 08             	mov    0x8(%edi),%eax
c003628c:	39 c1                	cmp    %eax,%ecx
c003628e:	7e 09                	jle    c0036299 <__lshift+0x39>
c0036290:	01 c0                	add    %eax,%eax
c0036292:	83 c2 01             	add    $0x1,%edx
c0036295:	39 c1                	cmp    %eax,%ecx
c0036297:	7f f7                	jg     c0036290 <__lshift+0x30>
c0036299:	8b 45 08             	mov    0x8(%ebp),%eax
c003629c:	89 54 24 04          	mov    %edx,0x4(%esp)
c00362a0:	89 04 24             	mov    %eax,(%esp)
c00362a3:	e8 18 f9 ff ff       	call   c0035bc0 <_Balloc>
c00362a8:	85 db                	test   %ebx,%ebx
c00362aa:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00362ad:	8d 50 14             	lea    0x14(%eax),%edx
c00362b0:	7e 17                	jle    c00362c9 <__lshift+0x69>
c00362b2:	31 c0                	xor    %eax,%eax
c00362b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00362b8:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c00362bf:	83 c0 01             	add    $0x1,%eax
c00362c2:	39 d8                	cmp    %ebx,%eax
c00362c4:	75 f2                	jne    c00362b8 <__lshift+0x58>
c00362c6:	8d 14 82             	lea    (%edx,%eax,4),%edx
c00362c9:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00362cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362cf:	8b 4f 10             	mov    0x10(%edi),%ecx
c00362d2:	83 c0 14             	add    $0x14,%eax
c00362d5:	83 e6 1f             	and    $0x1f,%esi
c00362d8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c00362db:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c00362de:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00362e1:	74 7d                	je     c0036360 <__lshift+0x100>
c00362e3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c00362ea:	29 75 dc             	sub    %esi,-0x24(%ebp)
c00362ed:	31 f6                	xor    %esi,%esi
c00362ef:	eb 09                	jmp    c00362fa <__lshift+0x9a>
c00362f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00362f8:	89 fa                	mov    %edi,%edx
c00362fa:	8b 18                	mov    (%eax),%ebx
c00362fc:	83 c0 04             	add    $0x4,%eax
c00362ff:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036303:	8d 7a 04             	lea    0x4(%edx),%edi
c0036306:	d3 e3                	shl    %cl,%ebx
c0036308:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c003630c:	09 f3                	or     %esi,%ebx
c003630e:	89 1a                	mov    %ebx,(%edx)
c0036310:	8b 70 fc             	mov    -0x4(%eax),%esi
c0036313:	d3 ee                	shr    %cl,%esi
c0036315:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036318:	77 de                	ja     c00362f8 <__lshift+0x98>
c003631a:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003631d:	89 72 04             	mov    %esi,0x4(%edx)
c0036320:	83 c0 02             	add    $0x2,%eax
c0036323:	85 f6                	test   %esi,%esi
c0036325:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0036329:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003632c:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003632f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036332:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036335:	83 e8 01             	sub    $0x1,%eax
c0036338:	89 47 10             	mov    %eax,0x10(%edi)
c003633b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003633e:	8b 50 04             	mov    0x4(%eax),%edx
c0036341:	8b 45 08             	mov    0x8(%ebp),%eax
c0036344:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036347:	8d 04 90             	lea    (%eax,%edx,4),%eax
c003634a:	8b 10                	mov    (%eax),%edx
c003634c:	89 16                	mov    %edx,(%esi)
c003634e:	89 30                	mov    %esi,(%eax)
c0036350:	83 c4 2c             	add    $0x2c,%esp
c0036353:	89 f8                	mov    %edi,%eax
c0036355:	5b                   	pop    %ebx
c0036356:	5e                   	pop    %esi
c0036357:	5f                   	pop    %edi
c0036358:	5d                   	pop    %ebp
c0036359:	c3                   	ret    
c003635a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036360:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036363:	90                   	nop
c0036364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036368:	83 c0 04             	add    $0x4,%eax
c003636b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003636e:	83 c2 04             	add    $0x4,%edx
c0036371:	39 c3                	cmp    %eax,%ebx
c0036373:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036376:	77 f0                	ja     c0036368 <__lshift+0x108>
c0036378:	eb b2                	jmp    c003632c <__lshift+0xcc>
c003637a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036380 <__mcmp>:
c0036380:	55                   	push   %ebp
c0036381:	89 e5                	mov    %esp,%ebp
c0036383:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036386:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036389:	53                   	push   %ebx
c003638a:	8b 41 10             	mov    0x10(%ecx),%eax
c003638d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036390:	29 d8                	sub    %ebx,%eax
c0036392:	85 c0                	test   %eax,%eax
c0036394:	75 27                	jne    c00363bd <__mcmp+0x3d>
c0036396:	c1 e3 02             	shl    $0x2,%ebx
c0036399:	83 c1 14             	add    $0x14,%ecx
c003639c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003639f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c00363a3:	eb 07                	jmp    c00363ac <__mcmp+0x2c>
c00363a5:	8d 76 00             	lea    0x0(%esi),%esi
c00363a8:	39 c1                	cmp    %eax,%ecx
c00363aa:	73 14                	jae    c00363c0 <__mcmp+0x40>
c00363ac:	83 ea 04             	sub    $0x4,%edx
c00363af:	83 e8 04             	sub    $0x4,%eax
c00363b2:	8b 1a                	mov    (%edx),%ebx
c00363b4:	39 18                	cmp    %ebx,(%eax)
c00363b6:	74 f0                	je     c00363a8 <__mcmp+0x28>
c00363b8:	19 c0                	sbb    %eax,%eax
c00363ba:	83 c8 01             	or     $0x1,%eax
c00363bd:	5b                   	pop    %ebx
c00363be:	5d                   	pop    %ebp
c00363bf:	c3                   	ret    
c00363c0:	31 c0                	xor    %eax,%eax
c00363c2:	5b                   	pop    %ebx
c00363c3:	5d                   	pop    %ebp
c00363c4:	c3                   	ret    
c00363c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00363c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00363d0 <__mdiff>:
c00363d0:	55                   	push   %ebp
c00363d1:	89 e5                	mov    %esp,%ebp
c00363d3:	57                   	push   %edi
c00363d4:	56                   	push   %esi
c00363d5:	53                   	push   %ebx
c00363d6:	83 ec 2c             	sub    $0x2c,%esp
c00363d9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00363dc:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00363df:	89 34 24             	mov    %esi,(%esp)
c00363e2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00363e6:	e8 95 ff ff ff       	call   c0036380 <__mcmp>
c00363eb:	85 c0                	test   %eax,%eax
c00363ed:	0f 84 25 01 00 00    	je     c0036518 <__mdiff+0x148>
c00363f3:	0f 88 0f 01 00 00    	js     c0036508 <__mdiff+0x138>
c00363f9:	31 ff                	xor    %edi,%edi
c00363fb:	8b 46 04             	mov    0x4(%esi),%eax
c00363fe:	83 c6 14             	add    $0x14,%esi
c0036401:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036405:	8b 45 08             	mov    0x8(%ebp),%eax
c0036408:	89 04 24             	mov    %eax,(%esp)
c003640b:	e8 b0 f7 ff ff       	call   c0035bc0 <_Balloc>
c0036410:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0036413:	89 c2                	mov    %eax,%edx
c0036415:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036418:	89 78 0c             	mov    %edi,0xc(%eax)
c003641b:	8b 46 fc             	mov    -0x4(%esi),%eax
c003641e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0036421:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036424:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0036427:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003642a:	8b 43 10             	mov    0x10(%ebx),%eax
c003642d:	31 db                	xor    %ebx,%ebx
c003642f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036432:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036435:	89 d0                	mov    %edx,%eax
c0036437:	83 c0 14             	add    $0x14,%eax
c003643a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036440:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036443:	83 c0 04             	add    $0x4,%eax
c0036446:	83 c1 04             	add    $0x4,%ecx
c0036449:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c003644d:	8b 3e                	mov    (%esi),%edi
c003644f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036452:	0f b7 d7             	movzwl %di,%edx
c0036455:	01 da                	add    %ebx,%edx
c0036457:	0f b7 de             	movzwl %si,%ebx
c003645a:	29 da                	sub    %ebx,%edx
c003645c:	c1 ef 10             	shr    $0x10,%edi
c003645f:	89 d3                	mov    %edx,%ebx
c0036461:	c1 ee 10             	shr    $0x10,%esi
c0036464:	0f b7 d2             	movzwl %dx,%edx
c0036467:	c1 fb 10             	sar    $0x10,%ebx
c003646a:	29 f7                	sub    %esi,%edi
c003646c:	01 df                	add    %ebx,%edi
c003646e:	89 fb                	mov    %edi,%ebx
c0036470:	c1 e7 10             	shl    $0x10,%edi
c0036473:	09 d7                	or     %edx,%edi
c0036475:	c1 fb 10             	sar    $0x10,%ebx
c0036478:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003647b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003647e:	77 c0                	ja     c0036440 <__mdiff+0x70>
c0036480:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036483:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036486:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036489:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003648c:	39 f1                	cmp    %esi,%ecx
c003648e:	76 3f                	jbe    c00364cf <__mdiff+0xff>
c0036490:	8b 3e                	mov    (%esi),%edi
c0036492:	83 c6 04             	add    $0x4,%esi
c0036495:	83 c0 04             	add    $0x4,%eax
c0036498:	0f b7 d7             	movzwl %di,%edx
c003649b:	01 da                	add    %ebx,%edx
c003649d:	89 d3                	mov    %edx,%ebx
c003649f:	0f b7 d2             	movzwl %dx,%edx
c00364a2:	c1 fb 10             	sar    $0x10,%ebx
c00364a5:	c1 ef 10             	shr    $0x10,%edi
c00364a8:	01 df                	add    %ebx,%edi
c00364aa:	89 fb                	mov    %edi,%ebx
c00364ac:	c1 e7 10             	shl    $0x10,%edi
c00364af:	09 d7                	or     %edx,%edi
c00364b1:	c1 fb 10             	sar    $0x10,%ebx
c00364b4:	39 f1                	cmp    %esi,%ecx
c00364b6:	89 78 fc             	mov    %edi,-0x4(%eax)
c00364b9:	77 d5                	ja     c0036490 <__mdiff+0xc0>
c00364bb:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00364be:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00364c1:	f7 d0                	not    %eax
c00364c3:	01 c8                	add    %ecx,%eax
c00364c5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00364c8:	c1 e8 02             	shr    $0x2,%eax
c00364cb:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c00364cf:	85 ff                	test   %edi,%edi
c00364d1:	75 23                	jne    c00364f6 <__mdiff+0x126>
c00364d3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364d6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c00364dd:	29 d0                	sub    %edx,%eax
c00364df:	89 ca                	mov    %ecx,%edx
c00364e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00364e8:	83 ea 01             	sub    $0x1,%edx
c00364eb:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00364ef:	85 c9                	test   %ecx,%ecx
c00364f1:	74 f5                	je     c00364e8 <__mdiff+0x118>
c00364f3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00364f6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00364f9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364fc:	89 48 10             	mov    %ecx,0x10(%eax)
c00364ff:	83 c4 2c             	add    $0x2c,%esp
c0036502:	5b                   	pop    %ebx
c0036503:	5e                   	pop    %esi
c0036504:	5f                   	pop    %edi
c0036505:	5d                   	pop    %ebp
c0036506:	c3                   	ret    
c0036507:	90                   	nop
c0036508:	89 f0                	mov    %esi,%eax
c003650a:	bf 01 00 00 00       	mov    $0x1,%edi
c003650f:	89 de                	mov    %ebx,%esi
c0036511:	89 c3                	mov    %eax,%ebx
c0036513:	e9 e3 fe ff ff       	jmp    c00363fb <__mdiff+0x2b>
c0036518:	8b 45 08             	mov    0x8(%ebp),%eax
c003651b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0036522:	00 
c0036523:	89 04 24             	mov    %eax,(%esp)
c0036526:	e8 95 f6 ff ff       	call   c0035bc0 <_Balloc>
c003652b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036532:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036539:	83 c4 2c             	add    $0x2c,%esp
c003653c:	5b                   	pop    %ebx
c003653d:	5e                   	pop    %esi
c003653e:	5f                   	pop    %edi
c003653f:	5d                   	pop    %ebp
c0036540:	c3                   	ret    
c0036541:	eb 0d                	jmp    c0036550 <__ulp>
c0036543:	90                   	nop
c0036544:	90                   	nop
c0036545:	90                   	nop
c0036546:	90                   	nop
c0036547:	90                   	nop
c0036548:	90                   	nop
c0036549:	90                   	nop
c003654a:	90                   	nop
c003654b:	90                   	nop
c003654c:	90                   	nop
c003654d:	90                   	nop
c003654e:	90                   	nop
c003654f:	90                   	nop

c0036550 <__ulp>:
c0036550:	55                   	push   %ebp
c0036551:	89 e5                	mov    %esp,%ebp
c0036553:	83 ec 08             	sub    $0x8,%esp
c0036556:	dd 45 08             	fldl   0x8(%ebp)
c0036559:	dd 5d f8             	fstpl  -0x8(%ebp)
c003655c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003655f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036565:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003656b:	85 c9                	test   %ecx,%ecx
c003656d:	7e 11                	jle    c0036580 <__ulp+0x30>
c003656f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036572:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036579:	dd 45 f8             	fldl   -0x8(%ebp)
c003657c:	c9                   	leave  
c003657d:	c3                   	ret    
c003657e:	66 90                	xchg   %ax,%ax
c0036580:	f7 d9                	neg    %ecx
c0036582:	c1 f9 14             	sar    $0x14,%ecx
c0036585:	83 f9 13             	cmp    $0x13,%ecx
c0036588:	7e 26                	jle    c00365b0 <__ulp+0x60>
c003658a:	83 f9 32             	cmp    $0x32,%ecx
c003658d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036592:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036599:	7f 0b                	jg     c00365a6 <__ulp+0x56>
c003659b:	ba 33 00 00 00       	mov    $0x33,%edx
c00365a0:	29 ca                	sub    %ecx,%edx
c00365a2:	89 d1                	mov    %edx,%ecx
c00365a4:	d3 e0                	shl    %cl,%eax
c00365a6:	89 45 f8             	mov    %eax,-0x8(%ebp)
c00365a9:	dd 45 f8             	fldl   -0x8(%ebp)
c00365ac:	c9                   	leave  
c00365ad:	c3                   	ret    
c00365ae:	66 90                	xchg   %ax,%ax
c00365b0:	b8 00 00 08 00       	mov    $0x80000,%eax
c00365b5:	d3 f8                	sar    %cl,%eax
c00365b7:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00365ba:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00365c1:	dd 45 f8             	fldl   -0x8(%ebp)
c00365c4:	c9                   	leave  
c00365c5:	c3                   	ret    
c00365c6:	8d 76 00             	lea    0x0(%esi),%esi
c00365c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00365d0 <__b2d>:
c00365d0:	55                   	push   %ebp
c00365d1:	89 e5                	mov    %esp,%ebp
c00365d3:	57                   	push   %edi
c00365d4:	56                   	push   %esi
c00365d5:	53                   	push   %ebx
c00365d6:	83 ec 18             	sub    $0x18,%esp
c00365d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00365dc:	8d 78 14             	lea    0x14(%eax),%edi
c00365df:	8b 40 10             	mov    0x10(%eax),%eax
c00365e2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c00365e5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c00365e8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00365eb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00365ee:	89 34 24             	mov    %esi,(%esp)
c00365f1:	e8 6a f8 ff ff       	call   c0035e60 <__hi0bits>
c00365f6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00365f9:	ba 20 00 00 00       	mov    $0x20,%edx
c00365fe:	29 c2                	sub    %eax,%edx
c0036600:	83 f8 0a             	cmp    $0xa,%eax
c0036603:	89 11                	mov    %edx,(%ecx)
c0036605:	7f 41                	jg     c0036648 <__b2d+0x78>
c0036607:	b9 0b 00 00 00       	mov    $0xb,%ecx
c003660c:	89 f2                	mov    %esi,%edx
c003660e:	29 c1                	sub    %eax,%ecx
c0036610:	d3 ea                	shr    %cl,%edx
c0036612:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0036618:	89 55 ec             	mov    %edx,-0x14(%ebp)
c003661b:	31 d2                	xor    %edx,%edx
c003661d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036620:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036627:	73 05                	jae    c003662e <__b2d+0x5e>
c0036629:	8b 53 f8             	mov    -0x8(%ebx),%edx
c003662c:	d3 ea                	shr    %cl,%edx
c003662e:	8d 48 15             	lea    0x15(%eax),%ecx
c0036631:	d3 e6                	shl    %cl,%esi
c0036633:	09 f2                	or     %esi,%edx
c0036635:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036638:	dd 45 e8             	fldl   -0x18(%ebp)
c003663b:	83 c4 18             	add    $0x18,%esp
c003663e:	5b                   	pop    %ebx
c003663f:	5e                   	pop    %esi
c0036640:	5f                   	pop    %edi
c0036641:	5d                   	pop    %ebp
c0036642:	c3                   	ret    
c0036643:	90                   	nop
c0036644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036648:	31 d2                	xor    %edx,%edx
c003664a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c003664d:	73 09                	jae    c0036658 <__b2d+0x88>
c003664f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036652:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036655:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036658:	89 c3                	mov    %eax,%ebx
c003665a:	83 eb 0b             	sub    $0xb,%ebx
c003665d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036660:	74 4e                	je     c00366b0 <__b2d+0xe0>
c0036662:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036666:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003666b:	29 c3                	sub    %eax,%ebx
c003666d:	89 d0                	mov    %edx,%eax
c003666f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036676:	d3 e6                	shl    %cl,%esi
c0036678:	89 d9                	mov    %ebx,%ecx
c003667a:	d3 e8                	shr    %cl,%eax
c003667c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003667f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036685:	09 c6                	or     %eax,%esi
c0036687:	31 c0                	xor    %eax,%eax
c0036689:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003668c:	39 f9                	cmp    %edi,%ecx
c003668e:	76 07                	jbe    c0036697 <__b2d+0xc7>
c0036690:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036693:	89 d9                	mov    %ebx,%ecx
c0036695:	d3 e8                	shr    %cl,%eax
c0036697:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003669b:	d3 e2                	shl    %cl,%edx
c003669d:	09 d0                	or     %edx,%eax
c003669f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c00366a2:	dd 45 e8             	fldl   -0x18(%ebp)
c00366a5:	83 c4 18             	add    $0x18,%esp
c00366a8:	5b                   	pop    %ebx
c00366a9:	5e                   	pop    %esi
c00366aa:	5f                   	pop    %edi
c00366ab:	5d                   	pop    %ebp
c00366ac:	c3                   	ret    
c00366ad:	8d 76 00             	lea    0x0(%esi),%esi
c00366b0:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c00366b6:	89 75 ec             	mov    %esi,-0x14(%ebp)
c00366b9:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00366bc:	dd 45 e8             	fldl   -0x18(%ebp)
c00366bf:	83 c4 18             	add    $0x18,%esp
c00366c2:	5b                   	pop    %ebx
c00366c3:	5e                   	pop    %esi
c00366c4:	5f                   	pop    %edi
c00366c5:	5d                   	pop    %ebp
c00366c6:	c3                   	ret    
c00366c7:	89 f6                	mov    %esi,%esi
c00366c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00366d0 <__d2b>:
c00366d0:	55                   	push   %ebp
c00366d1:	89 e5                	mov    %esp,%ebp
c00366d3:	57                   	push   %edi
c00366d4:	56                   	push   %esi
c00366d5:	53                   	push   %ebx
c00366d6:	83 ec 2c             	sub    $0x2c,%esp
c00366d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00366dc:	dd 45 0c             	fldl   0xc(%ebp)
c00366df:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00366e6:	00 
c00366e7:	dd 5d d0             	fstpl  -0x30(%ebp)
c00366ea:	89 04 24             	mov    %eax,(%esp)
c00366ed:	e8 ce f4 ff ff       	call   c0035bc0 <_Balloc>
c00366f2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c00366f5:	89 c6                	mov    %eax,%esi
c00366f7:	89 d8                	mov    %ebx,%eax
c00366f9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c00366ff:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036704:	c1 eb 14             	shr    $0x14,%ebx
c0036707:	85 db                	test   %ebx,%ebx
c0036709:	74 05                	je     c0036710 <__d2b+0x40>
c003670b:	0d 00 00 10 00       	or     $0x100000,%eax
c0036710:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036713:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036716:	85 c0                	test   %eax,%eax
c0036718:	74 56                	je     c0036770 <__d2b+0xa0>
c003671a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003671d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036720:	89 04 24             	mov    %eax,(%esp)
c0036723:	e8 98 f7 ff ff       	call   c0035ec0 <__lo0bits>
c0036728:	85 c0                	test   %eax,%eax
c003672a:	0f 85 90 00 00 00    	jne    c00367c0 <__d2b+0xf0>
c0036730:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036733:	89 56 14             	mov    %edx,0x14(%esi)
c0036736:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036739:	83 fa 01             	cmp    $0x1,%edx
c003673c:	19 ff                	sbb    %edi,%edi
c003673e:	83 c7 02             	add    $0x2,%edi
c0036741:	85 db                	test   %ebx,%ebx
c0036743:	89 56 18             	mov    %edx,0x18(%esi)
c0036746:	89 7e 10             	mov    %edi,0x10(%esi)
c0036749:	74 49                	je     c0036794 <__d2b+0xc4>
c003674b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c003674e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036755:	89 11                	mov    %edx,(%ecx)
c0036757:	ba 35 00 00 00       	mov    $0x35,%edx
c003675c:	29 c2                	sub    %eax,%edx
c003675e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036761:	89 10                	mov    %edx,(%eax)
c0036763:	83 c4 2c             	add    $0x2c,%esp
c0036766:	89 f0                	mov    %esi,%eax
c0036768:	5b                   	pop    %ebx
c0036769:	5e                   	pop    %esi
c003676a:	5f                   	pop    %edi
c003676b:	5d                   	pop    %ebp
c003676c:	c3                   	ret    
c003676d:	8d 76 00             	lea    0x0(%esi),%esi
c0036770:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036773:	bf 01 00 00 00       	mov    $0x1,%edi
c0036778:	89 04 24             	mov    %eax,(%esp)
c003677b:	e8 40 f7 ff ff       	call   c0035ec0 <__lo0bits>
c0036780:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036783:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003678a:	89 56 14             	mov    %edx,0x14(%esi)
c003678d:	83 c0 20             	add    $0x20,%eax
c0036790:	85 db                	test   %ebx,%ebx
c0036792:	75 b7                	jne    c003674b <__d2b+0x7b>
c0036794:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036797:	2d 32 04 00 00       	sub    $0x432,%eax
c003679c:	89 01                	mov    %eax,(%ecx)
c003679e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c00367a2:	c1 e7 05             	shl    $0x5,%edi
c00367a5:	89 04 24             	mov    %eax,(%esp)
c00367a8:	e8 b3 f6 ff ff       	call   c0035e60 <__hi0bits>
c00367ad:	29 c7                	sub    %eax,%edi
c00367af:	8b 45 18             	mov    0x18(%ebp),%eax
c00367b2:	89 38                	mov    %edi,(%eax)
c00367b4:	83 c4 2c             	add    $0x2c,%esp
c00367b7:	89 f0                	mov    %esi,%eax
c00367b9:	5b                   	pop    %ebx
c00367ba:	5e                   	pop    %esi
c00367bb:	5f                   	pop    %edi
c00367bc:	5d                   	pop    %ebp
c00367bd:	c3                   	ret    
c00367be:	66 90                	xchg   %ax,%ax
c00367c0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00367c3:	b9 20 00 00 00       	mov    $0x20,%ecx
c00367c8:	29 c1                	sub    %eax,%ecx
c00367ca:	89 d7                	mov    %edx,%edi
c00367cc:	d3 e7                	shl    %cl,%edi
c00367ce:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00367d1:	09 f9                	or     %edi,%ecx
c00367d3:	89 4e 14             	mov    %ecx,0x14(%esi)
c00367d6:	89 c1                	mov    %eax,%ecx
c00367d8:	d3 ea                	shr    %cl,%edx
c00367da:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00367dd:	e9 57 ff ff ff       	jmp    c0036739 <__d2b+0x69>
c00367e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00367e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00367f0 <__ratio>:
c00367f0:	55                   	push   %ebp
c00367f1:	89 e5                	mov    %esp,%ebp
c00367f3:	56                   	push   %esi
c00367f4:	53                   	push   %ebx
c00367f5:	83 ec 30             	sub    $0x30,%esp
c00367f8:	8b 75 08             	mov    0x8(%ebp),%esi
c00367fb:	8d 45 f0             	lea    -0x10(%ebp),%eax
c00367fe:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036801:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036805:	89 34 24             	mov    %esi,(%esp)
c0036808:	e8 c3 fd ff ff       	call   c00365d0 <__b2d>
c003680d:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0036810:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036814:	89 1c 24             	mov    %ebx,(%esp)
c0036817:	dd 55 e0             	fstl   -0x20(%ebp)
c003681a:	dd 5d d8             	fstpl  -0x28(%ebp)
c003681d:	e8 ae fd ff ff       	call   c00365d0 <__b2d>
c0036822:	8b 46 10             	mov    0x10(%esi),%eax
c0036825:	2b 43 10             	sub    0x10(%ebx),%eax
c0036828:	8b 55 f0             	mov    -0x10(%ebp),%edx
c003682b:	2b 55 f4             	sub    -0xc(%ebp),%edx
c003682e:	c1 e0 05             	shl    $0x5,%eax
c0036831:	01 d0                	add    %edx,%eax
c0036833:	dd 55 d0             	fstl   -0x30(%ebp)
c0036836:	85 c0                	test   %eax,%eax
c0036838:	dd 45 d8             	fldl   -0x28(%ebp)
c003683b:	7e 1b                	jle    c0036858 <__ratio+0x68>
c003683d:	dd d8                	fstp   %st(0)
c003683f:	c1 e0 14             	shl    $0x14,%eax
c0036842:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036845:	dd 45 e0             	fldl   -0x20(%ebp)
c0036848:	83 c4 30             	add    $0x30,%esp
c003684b:	5b                   	pop    %ebx
c003684c:	de f1                	fdivp  %st,%st(1)
c003684e:	5e                   	pop    %esi
c003684f:	5d                   	pop    %ebp
c0036850:	c3                   	ret    
c0036851:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036858:	dd d9                	fstp   %st(1)
c003685a:	c1 e0 14             	shl    $0x14,%eax
c003685d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036860:	dd 45 d0             	fldl   -0x30(%ebp)
c0036863:	83 c4 30             	add    $0x30,%esp
c0036866:	5b                   	pop    %ebx
c0036867:	de f9                	fdivrp %st,%st(1)
c0036869:	5e                   	pop    %esi
c003686a:	5d                   	pop    %ebp
c003686b:	c3                   	ret    
c003686c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036870 <_mprec_log10>:
c0036870:	55                   	push   %ebp
c0036871:	89 e5                	mov    %esp,%ebp
c0036873:	8b 45 08             	mov    0x8(%ebp),%eax
c0036876:	83 f8 17             	cmp    $0x17,%eax
c0036879:	7e 1d                	jle    c0036898 <_mprec_log10+0x28>
c003687b:	d9 e8                	fld1   
c003687d:	d9 05 8c 90 03 c0    	flds   0xc003908c
c0036883:	90                   	nop
c0036884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036888:	83 e8 01             	sub    $0x1,%eax
c003688b:	dc c9                	fmul   %st,%st(1)
c003688d:	75 f9                	jne    c0036888 <_mprec_log10+0x18>
c003688f:	dd d8                	fstp   %st(0)
c0036891:	5d                   	pop    %ebp
c0036892:	c3                   	ret    
c0036893:	90                   	nop
c0036894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036898:	dd 04 c5 60 91 03 c0 	fldl   -0x3ffc6ea0(,%eax,8)
c003689f:	5d                   	pop    %ebp
c00368a0:	c3                   	ret    
c00368a1:	eb 0d                	jmp    c00368b0 <__copybits>
c00368a3:	90                   	nop
c00368a4:	90                   	nop
c00368a5:	90                   	nop
c00368a6:	90                   	nop
c00368a7:	90                   	nop
c00368a8:	90                   	nop
c00368a9:	90                   	nop
c00368aa:	90                   	nop
c00368ab:	90                   	nop
c00368ac:	90                   	nop
c00368ad:	90                   	nop
c00368ae:	90                   	nop
c00368af:	90                   	nop

c00368b0 <__copybits>:
c00368b0:	55                   	push   %ebp
c00368b1:	89 e5                	mov    %esp,%ebp
c00368b3:	57                   	push   %edi
c00368b4:	8b 7d 10             	mov    0x10(%ebp),%edi
c00368b7:	56                   	push   %esi
c00368b8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00368bb:	8b 45 08             	mov    0x8(%ebp),%eax
c00368be:	53                   	push   %ebx
c00368bf:	8b 4f 10             	mov    0x10(%edi),%ecx
c00368c2:	8d 56 ff             	lea    -0x1(%esi),%edx
c00368c5:	c1 fa 05             	sar    $0x5,%edx
c00368c8:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c00368cc:	8d 57 14             	lea    0x14(%edi),%edx
c00368cf:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c00368d2:	39 da                	cmp    %ebx,%edx
c00368d4:	73 34                	jae    c003690a <__copybits+0x5a>
c00368d6:	89 c1                	mov    %eax,%ecx
c00368d8:	83 c2 04             	add    $0x4,%edx
c00368db:	8b 42 fc             	mov    -0x4(%edx),%eax
c00368de:	83 c1 04             	add    $0x4,%ecx
c00368e1:	39 d3                	cmp    %edx,%ebx
c00368e3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c00368e6:	77 f0                	ja     c00368d8 <__copybits+0x28>
c00368e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00368eb:	29 fb                	sub    %edi,%ebx
c00368ed:	8d 53 eb             	lea    -0x15(%ebx),%edx
c00368f0:	c1 ea 02             	shr    $0x2,%edx
c00368f3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c00368f7:	39 c6                	cmp    %eax,%esi
c00368f9:	76 13                	jbe    c003690e <__copybits+0x5e>
c00368fb:	90                   	nop
c00368fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036900:	83 c0 04             	add    $0x4,%eax
c0036903:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c003690a:	39 c6                	cmp    %eax,%esi
c003690c:	77 f2                	ja     c0036900 <__copybits+0x50>
c003690e:	5b                   	pop    %ebx
c003690f:	5e                   	pop    %esi
c0036910:	5f                   	pop    %edi
c0036911:	5d                   	pop    %ebp
c0036912:	c3                   	ret    
c0036913:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036919:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036920 <__any_on>:
c0036920:	55                   	push   %ebp
c0036921:	89 e5                	mov    %esp,%ebp
c0036923:	8b 45 08             	mov    0x8(%ebp),%eax
c0036926:	57                   	push   %edi
c0036927:	56                   	push   %esi
c0036928:	53                   	push   %ebx
c0036929:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003692c:	8d 50 14             	lea    0x14(%eax),%edx
c003692f:	8b 40 10             	mov    0x10(%eax),%eax
c0036932:	c1 fb 05             	sar    $0x5,%ebx
c0036935:	39 d8                	cmp    %ebx,%eax
c0036937:	7d 2f                	jge    c0036968 <__any_on+0x48>
c0036939:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c003693c:	39 da                	cmp    %ebx,%edx
c003693e:	73 1d                	jae    c003695d <__any_on+0x3d>
c0036940:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036943:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036946:	85 db                	test   %ebx,%ebx
c0036948:	74 0f                	je     c0036959 <__any_on+0x39>
c003694a:	eb 44                	jmp    c0036990 <__any_on+0x70>
c003694c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036950:	83 e8 04             	sub    $0x4,%eax
c0036953:	8b 08                	mov    (%eax),%ecx
c0036955:	85 c9                	test   %ecx,%ecx
c0036957:	75 37                	jne    c0036990 <__any_on+0x70>
c0036959:	39 c2                	cmp    %eax,%edx
c003695b:	72 f3                	jb     c0036950 <__any_on+0x30>
c003695d:	31 c0                	xor    %eax,%eax
c003695f:	5b                   	pop    %ebx
c0036960:	5e                   	pop    %esi
c0036961:	5f                   	pop    %edi
c0036962:	5d                   	pop    %ebp
c0036963:	c3                   	ret    
c0036964:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036968:	7e 1e                	jle    c0036988 <__any_on+0x68>
c003696a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003696d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036970:	83 e1 1f             	and    $0x1f,%ecx
c0036973:	74 c7                	je     c003693c <__any_on+0x1c>
c0036975:	8b 3b                	mov    (%ebx),%edi
c0036977:	b8 01 00 00 00       	mov    $0x1,%eax
c003697c:	89 fe                	mov    %edi,%esi
c003697e:	d3 ee                	shr    %cl,%esi
c0036980:	d3 e6                	shl    %cl,%esi
c0036982:	39 fe                	cmp    %edi,%esi
c0036984:	75 d9                	jne    c003695f <__any_on+0x3f>
c0036986:	eb b4                	jmp    c003693c <__any_on+0x1c>
c0036988:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003698b:	eb af                	jmp    c003693c <__any_on+0x1c>
c003698d:	8d 76 00             	lea    0x0(%esi),%esi
c0036990:	5b                   	pop    %ebx
c0036991:	b8 01 00 00 00       	mov    $0x1,%eax
c0036996:	5e                   	pop    %esi
c0036997:	5f                   	pop    %edi
c0036998:	5d                   	pop    %ebp
c0036999:	c3                   	ret    
c003699a:	66 90                	xchg   %ax,%ax
c003699c:	66 90                	xchg   %ax,%ax
c003699e:	66 90                	xchg   %ax,%ax

c00369a0 <_sbrk_r>:
c00369a0:	55                   	push   %ebp
c00369a1:	89 e5                	mov    %esp,%ebp
c00369a3:	83 ec 18             	sub    $0x18,%esp
c00369a6:	8b 45 0c             	mov    0xc(%ebp),%eax
c00369a9:	c7 05 0c 30 09 c0 00 	movl   $0x0,0xc009300c
c00369b0:	00 00 00 
c00369b3:	89 04 24             	mov    %eax,(%esp)
c00369b6:	e8 52 9f ff ff       	call   c003090d <sbrk>
c00369bb:	83 f8 ff             	cmp    $0xffffffff,%eax
c00369be:	74 08                	je     c00369c8 <_sbrk_r+0x28>
c00369c0:	c9                   	leave  
c00369c1:	c3                   	ret    
c00369c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00369c8:	8b 15 0c 30 09 c0    	mov    0xc009300c,%edx
c00369ce:	85 d2                	test   %edx,%edx
c00369d0:	74 ee                	je     c00369c0 <_sbrk_r+0x20>
c00369d2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00369d5:	89 11                	mov    %edx,(%ecx)
c00369d7:	c9                   	leave  
c00369d8:	c3                   	ret    
c00369d9:	66 90                	xchg   %ax,%ax
c00369db:	66 90                	xchg   %ax,%ax
c00369dd:	66 90                	xchg   %ax,%ax
c00369df:	90                   	nop

c00369e0 <__fpclassifyd>:
c00369e0:	55                   	push   %ebp
c00369e1:	b8 02 00 00 00       	mov    $0x2,%eax
c00369e6:	89 e5                	mov    %esp,%ebp
c00369e8:	53                   	push   %ebx
c00369e9:	83 ec 0c             	sub    $0xc,%esp
c00369ec:	dd 45 08             	fldl   0x8(%ebp)
c00369ef:	dd 5d f0             	fstpl  -0x10(%ebp)
c00369f2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00369f5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00369f8:	89 d3                	mov    %edx,%ebx
c00369fa:	09 cb                	or     %ecx,%ebx
c00369fc:	75 0a                	jne    c0036a08 <__fpclassifyd+0x28>
c00369fe:	83 c4 0c             	add    $0xc,%esp
c0036a01:	5b                   	pop    %ebx
c0036a02:	5d                   	pop    %ebp
c0036a03:	c3                   	ret    
c0036a04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a08:	85 d2                	test   %edx,%edx
c0036a0a:	0f 94 c2             	sete   %dl
c0036a0d:	75 08                	jne    c0036a17 <__fpclassifyd+0x37>
c0036a0f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0036a15:	74 e7                	je     c00369fe <__fpclassifyd+0x1e>
c0036a17:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c0036a1d:	b8 04 00 00 00       	mov    $0x4,%eax
c0036a22:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036a28:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036a2e:	76 ce                	jbe    c00369fe <__fpclassifyd+0x1e>
c0036a30:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036a36:	b0 03                	mov    $0x3,%al
c0036a38:	76 c4                	jbe    c00369fe <__fpclassifyd+0x1e>
c0036a3a:	31 c0                	xor    %eax,%eax
c0036a3c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036a42:	0f 94 c0             	sete   %al
c0036a45:	21 d0                	and    %edx,%eax
c0036a47:	eb b5                	jmp    c00369fe <__fpclassifyd+0x1e>
c0036a49:	66 90                	xchg   %ax,%ax
c0036a4b:	66 90                	xchg   %ax,%ax
c0036a4d:	66 90                	xchg   %ax,%ax
c0036a4f:	90                   	nop

c0036a50 <strcmp>:
c0036a50:	55                   	push   %ebp
c0036a51:	89 e5                	mov    %esp,%ebp
c0036a53:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a56:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036a59:	53                   	push   %ebx
c0036a5a:	89 c1                	mov    %eax,%ecx
c0036a5c:	09 d1                	or     %edx,%ecx
c0036a5e:	83 e1 03             	and    $0x3,%ecx
c0036a61:	75 17                	jne    c0036a7a <strcmp+0x2a>
c0036a63:	8b 08                	mov    (%eax),%ecx
c0036a65:	3b 0a                	cmp    (%edx),%ecx
c0036a67:	74 33                	je     c0036a9c <strcmp+0x4c>
c0036a69:	eb 0f                	jmp    c0036a7a <strcmp+0x2a>
c0036a6b:	90                   	nop
c0036a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a70:	3a 0a                	cmp    (%edx),%cl
c0036a72:	75 0d                	jne    c0036a81 <strcmp+0x31>
c0036a74:	83 c0 01             	add    $0x1,%eax
c0036a77:	83 c2 01             	add    $0x1,%edx
c0036a7a:	0f b6 08             	movzbl (%eax),%ecx
c0036a7d:	84 c9                	test   %cl,%cl
c0036a7f:	75 ef                	jne    c0036a70 <strcmp+0x20>
c0036a81:	0f b6 00             	movzbl (%eax),%eax
c0036a84:	0f b6 12             	movzbl (%edx),%edx
c0036a87:	5b                   	pop    %ebx
c0036a88:	5d                   	pop    %ebp
c0036a89:	29 d0                	sub    %edx,%eax
c0036a8b:	c3                   	ret    
c0036a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a90:	83 c0 04             	add    $0x4,%eax
c0036a93:	83 c2 04             	add    $0x4,%edx
c0036a96:	8b 08                	mov    (%eax),%ecx
c0036a98:	3b 0a                	cmp    (%edx),%ecx
c0036a9a:	75 de                	jne    c0036a7a <strcmp+0x2a>
c0036a9c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036aa2:	f7 d1                	not    %ecx
c0036aa4:	21 cb                	and    %ecx,%ebx
c0036aa6:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036aac:	74 e2                	je     c0036a90 <strcmp+0x40>
c0036aae:	31 c0                	xor    %eax,%eax
c0036ab0:	5b                   	pop    %ebx
c0036ab1:	5d                   	pop    %ebp
c0036ab2:	c3                   	ret    
c0036ab3:	66 90                	xchg   %ax,%ax
c0036ab5:	66 90                	xchg   %ax,%ax
c0036ab7:	66 90                	xchg   %ax,%ax
c0036ab9:	66 90                	xchg   %ax,%ax
c0036abb:	66 90                	xchg   %ax,%ax
c0036abd:	66 90                	xchg   %ax,%ax
c0036abf:	90                   	nop

c0036ac0 <strlen>:
c0036ac0:	55                   	push   %ebp
c0036ac1:	89 e5                	mov    %esp,%ebp
c0036ac3:	57                   	push   %edi
c0036ac4:	8b 55 08             	mov    0x8(%ebp),%edx
c0036ac7:	89 d7                	mov    %edx,%edi
c0036ac9:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036acf:	74 25                	je     c0036af6 <L5>
c0036ad1:	8a 0f                	mov    (%edi),%cl
c0036ad3:	47                   	inc    %edi
c0036ad4:	84 c9                	test   %cl,%cl
c0036ad6:	74 56                	je     c0036b2e <L15>
c0036ad8:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036ade:	74 16                	je     c0036af6 <L5>
c0036ae0:	8a 0f                	mov    (%edi),%cl
c0036ae2:	47                   	inc    %edi
c0036ae3:	84 c9                	test   %cl,%cl
c0036ae5:	74 47                	je     c0036b2e <L15>
c0036ae7:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036aed:	74 07                	je     c0036af6 <L5>
c0036aef:	8a 0f                	mov    (%edi),%cl
c0036af1:	47                   	inc    %edi
c0036af2:	84 c9                	test   %cl,%cl
c0036af4:	74 38                	je     c0036b2e <L15>

c0036af6 <L5>:
c0036af6:	83 ef 04             	sub    $0x4,%edi
c0036af9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036b00 <L10>:
c0036b00:	83 c7 04             	add    $0x4,%edi
c0036b03:	8b 0f                	mov    (%edi),%ecx
c0036b05:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036b0b:	f7 d1                	not    %ecx
c0036b0d:	21 c8                	and    %ecx,%eax
c0036b0f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036b14:	74 ea                	je     c0036b00 <L10>
c0036b16:	f7 d1                	not    %ecx
c0036b18:	47                   	inc    %edi
c0036b19:	84 c9                	test   %cl,%cl
c0036b1b:	74 11                	je     c0036b2e <L15>
c0036b1d:	47                   	inc    %edi
c0036b1e:	c1 e9 08             	shr    $0x8,%ecx
c0036b21:	84 c9                	test   %cl,%cl
c0036b23:	74 09                	je     c0036b2e <L15>
c0036b25:	47                   	inc    %edi
c0036b26:	c1 e9 08             	shr    $0x8,%ecx
c0036b29:	84 c9                	test   %cl,%cl
c0036b2b:	74 01                	je     c0036b2e <L15>
c0036b2d:	47                   	inc    %edi

c0036b2e <L15>:
c0036b2e:	29 d7                	sub    %edx,%edi
c0036b30:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036b33:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036b36:	5f                   	pop    %edi
c0036b37:	c9                   	leave  
c0036b38:	c3                   	ret    
c0036b39:	66 90                	xchg   %ax,%ax
c0036b3b:	66 90                	xchg   %ax,%ax
c0036b3d:	66 90                	xchg   %ax,%ax
c0036b3f:	90                   	nop

c0036b40 <__ssprint_r>:
c0036b40:	55                   	push   %ebp
c0036b41:	89 e5                	mov    %esp,%ebp
c0036b43:	57                   	push   %edi
c0036b44:	56                   	push   %esi
c0036b45:	53                   	push   %ebx
c0036b46:	83 ec 2c             	sub    $0x2c,%esp
c0036b49:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b4c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036b4f:	8b 00                	mov    (%eax),%eax
c0036b51:	89 c7                	mov    %eax,%edi
c0036b53:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b56:	8b 40 08             	mov    0x8(%eax),%eax
c0036b59:	85 c0                	test   %eax,%eax
c0036b5b:	0f 84 af 01 00 00    	je     c0036d10 <__ssprint_r+0x1d0>
c0036b61:	31 c9                	xor    %ecx,%ecx
c0036b63:	31 d2                	xor    %edx,%edx
c0036b65:	8b 03                	mov    (%ebx),%eax
c0036b67:	89 ce                	mov    %ecx,%esi
c0036b69:	85 f6                	test   %esi,%esi
c0036b6b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036b6e:	0f 84 ec 00 00 00    	je     c0036c60 <__ssprint_r+0x120>
c0036b74:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b77:	39 d6                	cmp    %edx,%esi
c0036b79:	0f 82 fc 00 00 00    	jb     c0036c7b <__ssprint_r+0x13b>
c0036b7f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036b83:	66 f7 c1 80 04       	test   $0x480,%cx
c0036b88:	0f 84 fa 00 00 00    	je     c0036c88 <__ssprint_r+0x148>
c0036b8e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036b91:	29 d0                	sub    %edx,%eax
c0036b93:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036b96:	8b 43 14             	mov    0x14(%ebx),%eax
c0036b99:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b9c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036b9f:	89 c2                	mov    %eax,%edx
c0036ba1:	c1 ea 1f             	shr    $0x1f,%edx
c0036ba4:	01 d0                	add    %edx,%eax
c0036ba6:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036ba9:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bac:	d1 7d e0             	sarl   -0x20(%ebp)
c0036baf:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036bb3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036bb6:	0f 83 34 01 00 00    	jae    c0036cf0 <__ssprint_r+0x1b0>
c0036bbc:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036bbf:	80 e5 04             	and    $0x4,%ch
c0036bc2:	0f 84 c8 00 00 00    	je     c0036c90 <__ssprint_r+0x150>
c0036bc8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036bcc:	8b 45 08             	mov    0x8(%ebp),%eax
c0036bcf:	89 04 24             	mov    %eax,(%esp)
c0036bd2:	e8 e9 e7 ff ff       	call   c00353c0 <_malloc_r>
c0036bd7:	85 c0                	test   %eax,%eax
c0036bd9:	89 c2                	mov    %eax,%edx
c0036bdb:	0f 84 e1 00 00 00    	je     c0036cc2 <__ssprint_r+0x182>
c0036be1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036be4:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036be7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036beb:	8b 43 10             	mov    0x10(%ebx),%eax
c0036bee:	89 14 24             	mov    %edx,(%esp)
c0036bf1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036bf5:	e8 0a b2 ff ff       	call   c0031e04 <memcpy>
c0036bfa:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036bfe:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036c01:	66 25 7f fb          	and    $0xfb7f,%ax
c0036c05:	0c 80                	or     $0x80,%al
c0036c07:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036c0b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c0e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c11:	89 53 10             	mov    %edx,0x10(%ebx)
c0036c14:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036c17:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036c1a:	01 d0                	add    %edx,%eax
c0036c1c:	89 03                	mov    %eax,(%ebx)
c0036c1e:	89 f2                	mov    %esi,%edx
c0036c20:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036c23:	89 f1                	mov    %esi,%ecx
c0036c25:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036c29:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036c2c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036c2f:	89 04 24             	mov    %eax,(%esp)
c0036c32:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036c35:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036c39:	e8 22 13 00 00       	call   c0037f60 <memmove>
c0036c3e:	8b 03                	mov    (%ebx),%eax
c0036c40:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c43:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036c46:	29 53 08             	sub    %edx,0x8(%ebx)
c0036c49:	01 c8                	add    %ecx,%eax
c0036c4b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036c4e:	89 03                	mov    %eax,(%ebx)
c0036c50:	8b 51 08             	mov    0x8(%ecx),%edx
c0036c53:	29 f2                	sub    %esi,%edx
c0036c55:	85 d2                	test   %edx,%edx
c0036c57:	89 51 08             	mov    %edx,0x8(%ecx)
c0036c5a:	0f 84 98 00 00 00    	je     c0036cf8 <__ssprint_r+0x1b8>
c0036c60:	8b 77 04             	mov    0x4(%edi),%esi
c0036c63:	83 c7 08             	add    $0x8,%edi
c0036c66:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036c69:	85 f6                	test   %esi,%esi
c0036c6b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036c6e:	74 f0                	je     c0036c60 <__ssprint_r+0x120>
c0036c70:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c73:	39 d6                	cmp    %edx,%esi
c0036c75:	0f 83 04 ff ff ff    	jae    c0036b7f <__ssprint_r+0x3f>
c0036c7b:	89 f2                	mov    %esi,%edx
c0036c7d:	89 f1                	mov    %esi,%ecx
c0036c7f:	eb a4                	jmp    c0036c25 <__ssprint_r+0xe5>
c0036c81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c88:	89 d1                	mov    %edx,%ecx
c0036c8a:	eb 99                	jmp    c0036c25 <__ssprint_r+0xe5>
c0036c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c90:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c94:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036c97:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c9e:	89 04 24             	mov    %eax,(%esp)
c0036ca1:	e8 4a 13 00 00       	call   c0037ff0 <_realloc_r>
c0036ca6:	85 c0                	test   %eax,%eax
c0036ca8:	89 c2                	mov    %eax,%edx
c0036caa:	0f 85 5b ff ff ff    	jne    c0036c0b <__ssprint_r+0xcb>
c0036cb0:	8b 43 10             	mov    0x10(%ebx),%eax
c0036cb3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036cb7:	8b 45 08             	mov    0x8(%ebp),%eax
c0036cba:	89 04 24             	mov    %eax,(%esp)
c0036cbd:	e8 3e 10 00 00       	call   c0037d00 <_free_r>
c0036cc2:	8b 45 08             	mov    0x8(%ebp),%eax
c0036cc5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036ccb:	8b 45 10             	mov    0x10(%ebp),%eax
c0036cce:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036cd3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036cda:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036ce1:	83 c4 2c             	add    $0x2c,%esp
c0036ce4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036ce9:	5b                   	pop    %ebx
c0036cea:	5e                   	pop    %esi
c0036ceb:	5f                   	pop    %edi
c0036cec:	5d                   	pop    %ebp
c0036ced:	c3                   	ret    
c0036cee:	66 90                	xchg   %ax,%ax
c0036cf0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036cf3:	e9 c7 fe ff ff       	jmp    c0036bbf <__ssprint_r+0x7f>
c0036cf8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036cff:	83 c4 2c             	add    $0x2c,%esp
c0036d02:	31 c0                	xor    %eax,%eax
c0036d04:	5b                   	pop    %ebx
c0036d05:	5e                   	pop    %esi
c0036d06:	5f                   	pop    %edi
c0036d07:	5d                   	pop    %ebp
c0036d08:	c3                   	ret    
c0036d09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d10:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d13:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036d1a:	83 c4 2c             	add    $0x2c,%esp
c0036d1d:	31 c0                	xor    %eax,%eax
c0036d1f:	5b                   	pop    %ebx
c0036d20:	5e                   	pop    %esi
c0036d21:	5f                   	pop    %edi
c0036d22:	5d                   	pop    %ebp
c0036d23:	c3                   	ret    
c0036d24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036d30 <_svfiprintf_r>:
c0036d30:	55                   	push   %ebp
c0036d31:	89 e5                	mov    %esp,%ebp
c0036d33:	57                   	push   %edi
c0036d34:	56                   	push   %esi
c0036d35:	53                   	push   %ebx
c0036d36:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036d3c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036d3f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036d43:	74 0b                	je     c0036d50 <_svfiprintf_r+0x20>
c0036d45:	8b 50 10             	mov    0x10(%eax),%edx
c0036d48:	85 d2                	test   %edx,%edx
c0036d4a:	0f 84 1c 0d 00 00    	je     c0037a6c <_svfiprintf_r+0xd3c>
c0036d50:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036d53:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036d56:	89 c6                	mov    %eax,%esi
c0036d58:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036d5e:	29 d8                	sub    %ebx,%eax
c0036d60:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036d67:	00 00 00 
c0036d6a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036d71:	00 00 00 
c0036d74:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036d7b:	00 00 00 
c0036d7e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036d85:	00 00 00 
c0036d88:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036d8e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d91:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036d94:	0f b6 00             	movzbl (%eax),%eax
c0036d97:	84 c0                	test   %al,%al
c0036d99:	74 58                	je     c0036df3 <_svfiprintf_r+0xc3>
c0036d9b:	3c 25                	cmp    $0x25,%al
c0036d9d:	75 13                	jne    c0036db2 <_svfiprintf_r+0x82>
c0036d9f:	eb 52                	jmp    c0036df3 <_svfiprintf_r+0xc3>
c0036da1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036da8:	84 c0                	test   %al,%al
c0036daa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036db0:	74 0a                	je     c0036dbc <_svfiprintf_r+0x8c>
c0036db2:	83 c3 01             	add    $0x1,%ebx
c0036db5:	0f b6 03             	movzbl (%ebx),%eax
c0036db8:	3c 25                	cmp    $0x25,%al
c0036dba:	75 ec                	jne    c0036da8 <_svfiprintf_r+0x78>
c0036dbc:	89 df                	mov    %ebx,%edi
c0036dbe:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036dc1:	74 30                	je     c0036df3 <_svfiprintf_r+0xc3>
c0036dc3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036dc6:	83 c6 08             	add    $0x8,%esi
c0036dc9:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036dcc:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036dd2:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036dd5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036ddb:	83 c0 01             	add    $0x1,%eax
c0036dde:	83 f8 07             	cmp    $0x7,%eax
c0036de1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036de7:	0f 8f eb 0a 00 00    	jg     c00378d8 <_svfiprintf_r+0xba8>
c0036ded:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036df3:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036df6:	0f 84 11 09 00 00    	je     c003770d <_svfiprintf_r+0x9dd>
c0036dfc:	8d 43 01             	lea    0x1(%ebx),%eax
c0036dff:	31 ff                	xor    %edi,%edi
c0036e01:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e08:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036e0f:	ff ff ff 
c0036e12:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036e19:	00 00 00 
c0036e1c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036e23:	00 00 00 
c0036e26:	8d 50 01             	lea    0x1(%eax),%edx
c0036e29:	0f be 00             	movsbl (%eax),%eax
c0036e2c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036e2f:	83 f9 58             	cmp    $0x58,%ecx
c0036e32:	0f 87 63 03 00 00    	ja     c003719b <_svfiprintf_r+0x46b>
c0036e38:	ff 24 8d 28 92 03 c0 	jmp    *-0x3ffc6dd8(,%ecx,4)
c0036e3f:	90                   	nop
c0036e40:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036e47:	89 d0                	mov    %edx,%eax
c0036e49:	eb db                	jmp    c0036e26 <_svfiprintf_r+0xf6>
c0036e4b:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e4e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036e51:	8b 00                	mov    (%eax),%eax
c0036e53:	83 c3 04             	add    $0x4,%ebx
c0036e56:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036e59:	85 c0                	test   %eax,%eax
c0036e5b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036e61:	79 e4                	jns    c0036e47 <_svfiprintf_r+0x117>
c0036e63:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036e69:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036e70:	89 d0                	mov    %edx,%eax
c0036e72:	eb b2                	jmp    c0036e26 <_svfiprintf_r+0xf6>
c0036e74:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036e79:	89 d0                	mov    %edx,%eax
c0036e7b:	eb a9                	jmp    c0036e26 <_svfiprintf_r+0xf6>
c0036e7d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e80:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036e87:	89 55 10             	mov    %edx,0x10(%ebp)
c0036e8a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036e8f:	8b 08                	mov    (%eax),%ecx
c0036e91:	83 c0 04             	add    $0x4,%eax
c0036e94:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036e9b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036ea2:	89 45 14             	mov    %eax,0x14(%ebp)
c0036ea5:	c7 85 44 ff ff ff d3 	movl   $0xc0038ed3,-0xbc(%ebp)
c0036eac:	8e 03 c0 
c0036eaf:	90                   	nop
c0036eb0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036eb7:	31 ff                	xor    %edi,%edi
c0036eb9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036ebf:	89 d8                	mov    %ebx,%eax
c0036ec1:	24 7f                	and    $0x7f,%al
c0036ec3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036eca:	0f 48 c3             	cmovs  %ebx,%eax
c0036ecd:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036ed3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036ed9:	85 c0                	test   %eax,%eax
c0036edb:	75 08                	jne    c0036ee5 <_svfiprintf_r+0x1b5>
c0036edd:	85 c9                	test   %ecx,%ecx
c0036edf:	0f 84 03 08 00 00    	je     c00376e8 <_svfiprintf_r+0x9b8>
c0036ee5:	80 fa 01             	cmp    $0x1,%dl
c0036ee8:	0f 84 8a 0a 00 00    	je     c0037978 <_svfiprintf_r+0xc48>
c0036eee:	80 fa 02             	cmp    $0x2,%dl
c0036ef1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036ef4:	0f 85 86 01 00 00    	jne    c0037080 <_svfiprintf_r+0x350>
c0036efa:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036f00:	89 c8                	mov    %ecx,%eax
c0036f02:	83 eb 01             	sub    $0x1,%ebx
c0036f05:	83 e0 0f             	and    $0xf,%eax
c0036f08:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036f0c:	c1 e9 04             	shr    $0x4,%ecx
c0036f0f:	85 c9                	test   %ecx,%ecx
c0036f11:	88 03                	mov    %al,(%ebx)
c0036f13:	75 eb                	jne    c0036f00 <_svfiprintf_r+0x1d0>
c0036f15:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036f18:	29 d8                	sub    %ebx,%eax
c0036f1a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036f20:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036f26:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036f2c:	39 c1                	cmp    %eax,%ecx
c0036f2e:	0f 4d c1             	cmovge %ecx,%eax
c0036f31:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f37:	89 f8                	mov    %edi,%eax
c0036f39:	3c 01                	cmp    $0x1,%al
c0036f3b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036f42:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036f48:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036f4e:	89 d0                	mov    %edx,%eax
c0036f50:	89 cf                	mov    %ecx,%edi
c0036f52:	83 c0 02             	add    $0x2,%eax
c0036f55:	83 e7 02             	and    $0x2,%edi
c0036f58:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036f5e:	89 cf                	mov    %ecx,%edi
c0036f60:	0f 44 c2             	cmove  %edx,%eax
c0036f63:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036f69:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f6f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036f75:	0f 85 cd 04 00 00    	jne    c0037448 <_svfiprintf_r+0x718>
c0036f7b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036f81:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036f87:	85 ff                	test   %edi,%edi
c0036f89:	0f 8e b9 04 00 00    	jle    c0037448 <_svfiprintf_r+0x718>
c0036f8f:	83 ff 10             	cmp    $0x10,%edi
c0036f92:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036f98:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f9e:	7e 7c                	jle    c003701c <_svfiprintf_r+0x2ec>
c0036fa0:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036fa6:	89 f1                	mov    %esi,%ecx
c0036fa8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036fab:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036fae:	eb 08                	jmp    c0036fb8 <_svfiprintf_r+0x288>
c0036fb0:	83 ef 10             	sub    $0x10,%edi
c0036fb3:	83 ff 10             	cmp    $0x10,%edi
c0036fb6:	7e 5c                	jle    c0037014 <_svfiprintf_r+0x2e4>
c0036fb8:	83 c0 01             	add    $0x1,%eax
c0036fbb:	83 c2 10             	add    $0x10,%edx
c0036fbe:	c7 01 9c 93 03 c0    	movl   $0xc003939c,(%ecx)
c0036fc4:	83 c1 08             	add    $0x8,%ecx
c0036fc7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036fce:	83 f8 07             	cmp    $0x7,%eax
c0036fd1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036fd7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036fdd:	7e d1                	jle    c0036fb0 <_svfiprintf_r+0x280>
c0036fdf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036fe5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036fe9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036fed:	89 1c 24             	mov    %ebx,(%esp)
c0036ff0:	e8 4b fb ff ff       	call   c0036b40 <__ssprint_r>
c0036ff5:	85 c0                	test   %eax,%eax
c0036ff7:	0f 85 3b 07 00 00    	jne    c0037738 <_svfiprintf_r+0xa08>
c0036ffd:	83 ef 10             	sub    $0x10,%edi
c0037000:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037006:	83 ff 10             	cmp    $0x10,%edi
c0037009:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003700f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037012:	7f a4                	jg     c0036fb8 <_svfiprintf_r+0x288>
c0037014:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c003701a:	89 ce                	mov    %ecx,%esi
c003701c:	83 c0 01             	add    $0x1,%eax
c003701f:	01 fa                	add    %edi,%edx
c0037021:	c7 06 9c 93 03 c0    	movl   $0xc003939c,(%esi)
c0037027:	83 c6 08             	add    $0x8,%esi
c003702a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003702d:	83 f8 07             	cmp    $0x7,%eax
c0037030:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037036:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003703c:	0f 8e 12 04 00 00    	jle    c0037454 <_svfiprintf_r+0x724>
c0037042:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037048:	89 44 24 08          	mov    %eax,0x8(%esp)
c003704c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003704f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037053:	8b 45 08             	mov    0x8(%ebp),%eax
c0037056:	89 04 24             	mov    %eax,(%esp)
c0037059:	e8 e2 fa ff ff       	call   c0036b40 <__ssprint_r>
c003705e:	85 c0                	test   %eax,%eax
c0037060:	0f 85 d2 06 00 00    	jne    c0037738 <_svfiprintf_r+0xa08>
c0037066:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003706c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003706f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037075:	e9 da 03 00 00       	jmp    c0037454 <_svfiprintf_r+0x724>
c003707a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037080:	89 c8                	mov    %ecx,%eax
c0037082:	83 eb 01             	sub    $0x1,%ebx
c0037085:	83 e0 07             	and    $0x7,%eax
c0037088:	c1 e9 03             	shr    $0x3,%ecx
c003708b:	83 c0 30             	add    $0x30,%eax
c003708e:	85 c9                	test   %ecx,%ecx
c0037090:	88 03                	mov    %al,(%ebx)
c0037092:	75 ec                	jne    c0037080 <_svfiprintf_r+0x350>
c0037094:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003709b:	89 da                	mov    %ebx,%edx
c003709d:	0f 84 72 fe ff ff    	je     c0036f15 <_svfiprintf_r+0x1e5>
c00370a3:	3c 30                	cmp    $0x30,%al
c00370a5:	0f 84 6a fe ff ff    	je     c0036f15 <_svfiprintf_r+0x1e5>
c00370ab:	83 eb 01             	sub    $0x1,%ebx
c00370ae:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00370b1:	29 d8                	sub    %ebx,%eax
c00370b3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c00370b7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00370bd:	e9 5e fe ff ff       	jmp    c0036f20 <_svfiprintf_r+0x1f0>
c00370c2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370c9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370d0:	89 55 10             	mov    %edx,0x10(%ebp)
c00370d3:	8b 45 14             	mov    0x14(%ebp),%eax
c00370d6:	0f 85 48 01 00 00    	jne    c0037224 <_svfiprintf_r+0x4f4>
c00370dc:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370e3:	0f 84 3b 01 00 00    	je     c0037224 <_svfiprintf_r+0x4f4>
c00370e9:	0f b7 08             	movzwl (%eax),%ecx
c00370ec:	83 c0 04             	add    $0x4,%eax
c00370ef:	31 d2                	xor    %edx,%edx
c00370f1:	89 45 14             	mov    %eax,0x14(%ebp)
c00370f4:	e9 b7 fd ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x180>
c00370f9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037100:	89 f8                	mov    %edi,%eax
c0037102:	89 55 10             	mov    %edx,0x10(%ebp)
c0037105:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c003710b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037112:	8b 45 14             	mov    0x14(%ebp),%eax
c0037115:	75 0d                	jne    c0037124 <_svfiprintf_r+0x3f4>
c0037117:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003711e:	0f 85 f2 08 00 00    	jne    c0037a16 <_svfiprintf_r+0xce6>
c0037124:	8b 08                	mov    (%eax),%ecx
c0037126:	83 c0 04             	add    $0x4,%eax
c0037129:	89 45 14             	mov    %eax,0x14(%ebp)
c003712c:	85 c9                	test   %ecx,%ecx
c003712e:	0f 88 f3 08 00 00    	js     c0037a27 <_svfiprintf_r+0xcf7>
c0037134:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003713b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037140:	e9 74 fd ff ff       	jmp    c0036eb9 <_svfiprintf_r+0x189>
c0037145:	0f be 02             	movsbl (%edx),%eax
c0037148:	8d 5a 01             	lea    0x1(%edx),%ebx
c003714b:	83 f8 2a             	cmp    $0x2a,%eax
c003714e:	0f 84 af 09 00 00    	je     c0037b03 <_svfiprintf_r+0xdd3>
c0037154:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037157:	31 d2                	xor    %edx,%edx
c0037159:	83 f9 09             	cmp    $0x9,%ecx
c003715c:	0f 87 90 09 00 00    	ja     c0037af2 <_svfiprintf_r+0xdc2>
c0037162:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037168:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003716b:	83 c3 01             	add    $0x1,%ebx
c003716e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037171:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037175:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037178:	83 f9 09             	cmp    $0x9,%ecx
c003717b:	76 eb                	jbe    c0037168 <_svfiprintf_r+0x438>
c003717d:	85 d2                	test   %edx,%edx
c003717f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037184:	0f 48 d1             	cmovs  %ecx,%edx
c0037187:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003718a:	83 f9 58             	cmp    $0x58,%ecx
c003718d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037193:	89 da                	mov    %ebx,%edx
c0037195:	0f 86 9d fc ff ff    	jbe    c0036e38 <_svfiprintf_r+0x108>
c003719b:	89 fb                	mov    %edi,%ebx
c003719d:	85 c0                	test   %eax,%eax
c003719f:	89 55 10             	mov    %edx,0x10(%ebp)
c00371a2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00371a8:	0f 84 5f 05 00 00    	je     c003770d <_svfiprintf_r+0x9dd>
c00371ae:	88 45 80             	mov    %al,-0x80(%ebp)
c00371b1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00371b4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00371bb:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00371c2:	00 00 00 
c00371c5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00371cc:	00 00 00 
c00371cf:	e9 5a 01 00 00       	jmp    c003732e <_svfiprintf_r+0x5fe>
c00371d4:	31 db                	xor    %ebx,%ebx
c00371d6:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00371e0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c00371e3:	83 c2 01             	add    $0x1,%edx
c00371e6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c00371e9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c00371ed:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371f0:	83 f9 09             	cmp    $0x9,%ecx
c00371f3:	76 eb                	jbe    c00371e0 <_svfiprintf_r+0x4b0>
c00371f5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c00371fb:	e9 2c fc ff ff       	jmp    c0036e2c <_svfiprintf_r+0xfc>
c0037200:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0037207:	00 00 00 
c003720a:	89 d0                	mov    %edx,%eax
c003720c:	e9 15 fc ff ff       	jmp    c0036e26 <_svfiprintf_r+0xf6>
c0037211:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037218:	89 55 10             	mov    %edx,0x10(%ebp)
c003721b:	8b 45 14             	mov    0x14(%ebp),%eax
c003721e:	0f 84 b8 fe ff ff    	je     c00370dc <_svfiprintf_r+0x3ac>
c0037224:	8b 08                	mov    (%eax),%ecx
c0037226:	83 c0 04             	add    $0x4,%eax
c0037229:	31 d2                	xor    %edx,%edx
c003722b:	89 45 14             	mov    %eax,0x14(%ebp)
c003722e:	e9 7d fc ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x180>
c0037233:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003723a:	89 f8                	mov    %edi,%eax
c003723c:	89 55 10             	mov    %edx,0x10(%ebp)
c003723f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037245:	0f 85 a2 07 00 00    	jne    c00379ed <_svfiprintf_r+0xcbd>
c003724b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037252:	0f 84 95 07 00 00    	je     c00379ed <_svfiprintf_r+0xcbd>
c0037258:	8b 45 14             	mov    0x14(%ebp),%eax
c003725b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037262:	8b 00                	mov    (%eax),%eax
c0037264:	66 89 18             	mov    %bx,(%eax)
c0037267:	8b 45 14             	mov    0x14(%ebp),%eax
c003726a:	83 c0 04             	add    $0x4,%eax
c003726d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037270:	e9 19 fb ff ff       	jmp    c0036d8e <_svfiprintf_r+0x5e>
c0037275:	89 fb                	mov    %edi,%ebx
c0037277:	89 55 10             	mov    %edx,0x10(%ebp)
c003727a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037280:	c7 85 44 ff ff ff d3 	movl   $0xc0038ed3,-0xbc(%ebp)
c0037287:	8e 03 c0 
c003728a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037291:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037294:	75 0d                	jne    c00372a3 <_svfiprintf_r+0x573>
c0037296:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003729d:	0f 85 65 07 00 00    	jne    c0037a08 <_svfiprintf_r+0xcd8>
c00372a3:	8b 0b                	mov    (%ebx),%ecx
c00372a5:	83 c3 04             	add    $0x4,%ebx
c00372a8:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00372ab:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00372b2:	ba 02 00 00 00       	mov    $0x2,%edx
c00372b7:	0f 84 f3 fb ff ff    	je     c0036eb0 <_svfiprintf_r+0x180>
c00372bd:	85 c9                	test   %ecx,%ecx
c00372bf:	0f 84 eb fb ff ff    	je     c0036eb0 <_svfiprintf_r+0x180>
c00372c5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00372cc:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c00372d2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c00372d9:	e9 d2 fb ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x180>
c00372de:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c00372e5:	89 d0                	mov    %edx,%eax
c00372e7:	e9 3a fb ff ff       	jmp    c0036e26 <_svfiprintf_r+0xf6>
c00372ec:	89 f8                	mov    %edi,%eax
c00372ee:	89 55 10             	mov    %edx,0x10(%ebp)
c00372f1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00372f7:	e9 0f fe ff ff       	jmp    c003710b <_svfiprintf_r+0x3db>
c00372fc:	8b 45 14             	mov    0x14(%ebp),%eax
c00372ff:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037302:	89 55 10             	mov    %edx,0x10(%ebp)
c0037305:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003730c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037313:	00 00 00 
c0037316:	8b 00                	mov    (%eax),%eax
c0037318:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003731f:	00 00 00 
c0037322:	88 45 80             	mov    %al,-0x80(%ebp)
c0037325:	8b 45 14             	mov    0x14(%ebp),%eax
c0037328:	83 c0 04             	add    $0x4,%eax
c003732b:	89 45 14             	mov    %eax,0x14(%ebp)
c003732e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037335:	00 00 00 
c0037338:	e9 05 fc ff ff       	jmp    c0036f42 <_svfiprintf_r+0x212>
c003733d:	89 fb                	mov    %edi,%ebx
c003733f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037342:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037348:	c7 85 44 ff ff ff c2 	movl   $0xc0038ec2,-0xbc(%ebp)
c003734f:	8e 03 c0 
c0037352:	e9 33 ff ff ff       	jmp    c003728a <_svfiprintf_r+0x55a>
c0037357:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003735e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037365:	89 55 10             	mov    %edx,0x10(%ebp)
c0037368:	8b 45 14             	mov    0x14(%ebp),%eax
c003736b:	75 39                	jne    c00373a6 <_svfiprintf_r+0x676>
c003736d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037374:	74 30                	je     c00373a6 <_svfiprintf_r+0x676>
c0037376:	0f b7 08             	movzwl (%eax),%ecx
c0037379:	83 c0 04             	add    $0x4,%eax
c003737c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037381:	89 45 14             	mov    %eax,0x14(%ebp)
c0037384:	e9 27 fb ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x180>
c0037389:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037390:	89 d0                	mov    %edx,%eax
c0037392:	e9 8f fa ff ff       	jmp    c0036e26 <_svfiprintf_r+0xf6>
c0037397:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003739e:	89 55 10             	mov    %edx,0x10(%ebp)
c00373a1:	8b 45 14             	mov    0x14(%ebp),%eax
c00373a4:	74 c7                	je     c003736d <_svfiprintf_r+0x63d>
c00373a6:	8b 08                	mov    (%eax),%ecx
c00373a8:	83 c0 04             	add    $0x4,%eax
c00373ab:	ba 01 00 00 00       	mov    $0x1,%edx
c00373b0:	89 45 14             	mov    %eax,0x14(%ebp)
c00373b3:	e9 f8 fa ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x180>
c00373b8:	8b 45 14             	mov    0x14(%ebp),%eax
c00373bb:	89 55 10             	mov    %edx,0x10(%ebp)
c00373be:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00373c5:	8b 18                	mov    (%eax),%ebx
c00373c7:	8d 50 04             	lea    0x4(%eax),%edx
c00373ca:	85 db                	test   %ebx,%ebx
c00373cc:	0f 84 cc 06 00 00    	je     c0037a9e <_svfiprintf_r+0xd6e>
c00373d2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00373d8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c00373de:	85 ff                	test   %edi,%edi
c00373e0:	0f 88 59 06 00 00    	js     c0037a3f <_svfiprintf_r+0xd0f>
c00373e6:	89 7c 24 08          	mov    %edi,0x8(%esp)
c00373ea:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00373f1:	00 
c00373f2:	89 1c 24             	mov    %ebx,(%esp)
c00373f5:	e8 06 e7 ff ff       	call   c0035b00 <memchr>
c00373fa:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037400:	85 c0                	test   %eax,%eax
c0037402:	0f 84 c5 06 00 00    	je     c0037acd <_svfiprintf_r+0xd9d>
c0037408:	29 d8                	sub    %ebx,%eax
c003740a:	39 f8                	cmp    %edi,%eax
c003740c:	0f 4f c7             	cmovg  %edi,%eax
c003740f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037416:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003741c:	89 55 14             	mov    %edx,0x14(%ebp)
c003741f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037426:	00 00 00 
c0037429:	e9 f2 fa ff ff       	jmp    c0036f20 <_svfiprintf_r+0x1f0>
c003742e:	89 f8                	mov    %edi,%eax
c0037430:	84 c0                	test   %al,%al
c0037432:	b8 20 00 00 00       	mov    $0x20,%eax
c0037437:	0f 44 f8             	cmove  %eax,%edi
c003743a:	89 d0                	mov    %edx,%eax
c003743c:	e9 e5 f9 ff ff       	jmp    c0036e26 <_svfiprintf_r+0xf6>
c0037441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037448:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003744e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037454:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003745b:	74 2e                	je     c003748b <_svfiprintf_r+0x75b>
c003745d:	83 c0 01             	add    $0x1,%eax
c0037460:	83 c2 01             	add    $0x1,%edx
c0037463:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037469:	83 c6 08             	add    $0x8,%esi
c003746c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003746f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037476:	83 f8 07             	cmp    $0x7,%eax
c0037479:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003747f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037485:	0f 8f b5 04 00 00    	jg     c0037940 <_svfiprintf_r+0xc10>
c003748b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037491:	85 c9                	test   %ecx,%ecx
c0037493:	74 2e                	je     c00374c3 <_svfiprintf_r+0x793>
c0037495:	83 c0 01             	add    $0x1,%eax
c0037498:	83 c2 02             	add    $0x2,%edx
c003749b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c00374a1:	83 c6 08             	add    $0x8,%esi
c00374a4:	89 4e f8             	mov    %ecx,-0x8(%esi)
c00374a7:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c00374ae:	83 f8 07             	cmp    $0x7,%eax
c00374b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374bd:	0f 8f 45 04 00 00    	jg     c0037908 <_svfiprintf_r+0xbd8>
c00374c3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c00374ca:	00 00 00 
c00374cd:	0f 84 9d 02 00 00    	je     c0037770 <_svfiprintf_r+0xa40>
c00374d3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00374d9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c00374df:	85 ff                	test   %edi,%edi
c00374e1:	0f 8e e1 00 00 00    	jle    c00375c8 <_svfiprintf_r+0x898>
c00374e7:	83 ff 10             	cmp    $0x10,%edi
c00374ea:	0f 8e 7c 00 00 00    	jle    c003756c <_svfiprintf_r+0x83c>
c00374f0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c00374f6:	89 f1                	mov    %esi,%ecx
c00374f8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00374fb:	8b 75 0c             	mov    0xc(%ebp),%esi
c00374fe:	eb 08                	jmp    c0037508 <_svfiprintf_r+0x7d8>
c0037500:	83 ef 10             	sub    $0x10,%edi
c0037503:	83 ff 10             	cmp    $0x10,%edi
c0037506:	7e 5c                	jle    c0037564 <_svfiprintf_r+0x834>
c0037508:	83 c0 01             	add    $0x1,%eax
c003750b:	83 c2 10             	add    $0x10,%edx
c003750e:	c7 01 8c 93 03 c0    	movl   $0xc003938c,(%ecx)
c0037514:	83 c1 08             	add    $0x8,%ecx
c0037517:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003751e:	83 f8 07             	cmp    $0x7,%eax
c0037521:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037527:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003752d:	7e d1                	jle    c0037500 <_svfiprintf_r+0x7d0>
c003752f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037535:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037539:	89 74 24 04          	mov    %esi,0x4(%esp)
c003753d:	89 1c 24             	mov    %ebx,(%esp)
c0037540:	e8 fb f5 ff ff       	call   c0036b40 <__ssprint_r>
c0037545:	85 c0                	test   %eax,%eax
c0037547:	0f 85 eb 01 00 00    	jne    c0037738 <_svfiprintf_r+0xa08>
c003754d:	83 ef 10             	sub    $0x10,%edi
c0037550:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037556:	83 ff 10             	cmp    $0x10,%edi
c0037559:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003755f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037562:	7f a4                	jg     c0037508 <_svfiprintf_r+0x7d8>
c0037564:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003756a:	89 ce                	mov    %ecx,%esi
c003756c:	83 c0 01             	add    $0x1,%eax
c003756f:	01 fa                	add    %edi,%edx
c0037571:	c7 06 8c 93 03 c0    	movl   $0xc003938c,(%esi)
c0037577:	83 c6 08             	add    $0x8,%esi
c003757a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003757d:	83 f8 07             	cmp    $0x7,%eax
c0037580:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037586:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003758c:	7e 3a                	jle    c00375c8 <_svfiprintf_r+0x898>
c003758e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037594:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037598:	8b 45 0c             	mov    0xc(%ebp),%eax
c003759b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003759f:	8b 45 08             	mov    0x8(%ebp),%eax
c00375a2:	89 04 24             	mov    %eax,(%esp)
c00375a5:	e8 96 f5 ff ff       	call   c0036b40 <__ssprint_r>
c00375aa:	85 c0                	test   %eax,%eax
c00375ac:	0f 85 86 01 00 00    	jne    c0037738 <_svfiprintf_r+0xa08>
c00375b2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00375b8:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00375bb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00375c8:	89 1e                	mov    %ebx,(%esi)
c00375ca:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c00375d0:	83 c0 01             	add    $0x1,%eax
c00375d3:	83 c6 08             	add    $0x8,%esi
c00375d6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375dc:	89 5e fc             	mov    %ebx,-0x4(%esi)
c00375df:	01 da                	add    %ebx,%edx
c00375e1:	83 f8 07             	cmp    $0x7,%eax
c00375e4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375ea:	0f 8f 80 02 00 00    	jg     c0037870 <_svfiprintf_r+0xb40>
c00375f0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c00375f7:	0f 84 b9 00 00 00    	je     c00376b6 <_svfiprintf_r+0x986>
c00375fd:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037603:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037609:	85 ff                	test   %edi,%edi
c003760b:	0f 8e a5 00 00 00    	jle    c00376b6 <_svfiprintf_r+0x986>
c0037611:	83 ff 10             	cmp    $0x10,%edi
c0037614:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003761a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0037620:	7e 71                	jle    c0037693 <_svfiprintf_r+0x963>
c0037622:	89 f1                	mov    %esi,%ecx
c0037624:	8b 75 08             	mov    0x8(%ebp),%esi
c0037627:	eb 0f                	jmp    c0037638 <_svfiprintf_r+0x908>
c0037629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037630:	83 ef 10             	sub    $0x10,%edi
c0037633:	83 ff 10             	cmp    $0x10,%edi
c0037636:	7e 59                	jle    c0037691 <_svfiprintf_r+0x961>
c0037638:	83 c0 01             	add    $0x1,%eax
c003763b:	83 c2 10             	add    $0x10,%edx
c003763e:	c7 01 9c 93 03 c0    	movl   $0xc003939c,(%ecx)
c0037644:	83 c1 08             	add    $0x8,%ecx
c0037647:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003764e:	83 f8 07             	cmp    $0x7,%eax
c0037651:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037657:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003765d:	7e d1                	jle    c0037630 <_svfiprintf_r+0x900>
c003765f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037662:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037666:	89 34 24             	mov    %esi,(%esp)
c0037669:	89 44 24 04          	mov    %eax,0x4(%esp)
c003766d:	e8 ce f4 ff ff       	call   c0036b40 <__ssprint_r>
c0037672:	85 c0                	test   %eax,%eax
c0037674:	0f 85 be 00 00 00    	jne    c0037738 <_svfiprintf_r+0xa08>
c003767a:	83 ef 10             	sub    $0x10,%edi
c003767d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037683:	83 ff 10             	cmp    $0x10,%edi
c0037686:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003768c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003768f:	7f a7                	jg     c0037638 <_svfiprintf_r+0x908>
c0037691:	89 ce                	mov    %ecx,%esi
c0037693:	83 c0 01             	add    $0x1,%eax
c0037696:	01 fa                	add    %edi,%edx
c0037698:	83 f8 07             	cmp    $0x7,%eax
c003769b:	c7 06 9c 93 03 c0    	movl   $0xc003939c,(%esi)
c00376a1:	89 7e 04             	mov    %edi,0x4(%esi)
c00376a4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00376aa:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00376b0:	0f 8f ee 02 00 00    	jg     c00379a4 <_svfiprintf_r+0xc74>
c00376b6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c00376bc:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c00376c2:	39 c6                	cmp    %eax,%esi
c00376c4:	0f 4d c6             	cmovge %esi,%eax
c00376c7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c00376cd:	85 d2                	test   %edx,%edx
c00376cf:	0f 85 d3 01 00 00    	jne    c00378a8 <_svfiprintf_r+0xb78>
c00376d5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00376dc:	00 00 00 
c00376df:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00376e2:	e9 a7 f6 ff ff       	jmp    c0036d8e <_svfiprintf_r+0x5e>
c00376e7:	90                   	nop
c00376e8:	84 d2                	test   %dl,%dl
c00376ea:	75 6c                	jne    c0037758 <_svfiprintf_r+0xa28>
c00376ec:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00376f3:	74 63                	je     c0037758 <_svfiprintf_r+0xa28>
c00376f5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00376fb:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00376fe:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037702:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037708:	e9 13 f8 ff ff       	jmp    c0036f20 <_svfiprintf_r+0x1f0>
c003770d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0037713:	85 c0                	test   %eax,%eax
c0037715:	74 21                	je     c0037738 <_svfiprintf_r+0xa08>
c0037717:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003771d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037721:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037724:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037728:	8b 45 08             	mov    0x8(%ebp),%eax
c003772b:	89 04 24             	mov    %eax,(%esp)
c003772e:	e8 0d f4 ff ff       	call   c0036b40 <__ssprint_r>
c0037733:	90                   	nop
c0037734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037738:	8b 75 0c             	mov    0xc(%ebp),%esi
c003773b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037740:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037744:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c003774b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037751:	5b                   	pop    %ebx
c0037752:	5e                   	pop    %esi
c0037753:	5f                   	pop    %edi
c0037754:	5d                   	pop    %ebp
c0037755:	c3                   	ret    
c0037756:	66 90                	xchg   %ax,%ax
c0037758:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c003775f:	00 00 00 
c0037762:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037765:	e9 b6 f7 ff ff       	jmp    c0036f20 <_svfiprintf_r+0x1f0>
c003776a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037770:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037776:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003777c:	85 ff                	test   %edi,%edi
c003777e:	0f 8e 4f fd ff ff    	jle    c00374d3 <_svfiprintf_r+0x7a3>
c0037784:	83 ff 10             	cmp    $0x10,%edi
c0037787:	0f 8e 7f 00 00 00    	jle    c003780c <_svfiprintf_r+0xadc>
c003778d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037793:	89 f1                	mov    %esi,%ecx
c0037795:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037798:	8b 75 0c             	mov    0xc(%ebp),%esi
c003779b:	eb 0b                	jmp    c00377a8 <_svfiprintf_r+0xa78>
c003779d:	8d 76 00             	lea    0x0(%esi),%esi
c00377a0:	83 ef 10             	sub    $0x10,%edi
c00377a3:	83 ff 10             	cmp    $0x10,%edi
c00377a6:	7e 5c                	jle    c0037804 <_svfiprintf_r+0xad4>
c00377a8:	83 c0 01             	add    $0x1,%eax
c00377ab:	83 c2 10             	add    $0x10,%edx
c00377ae:	c7 01 8c 93 03 c0    	movl   $0xc003938c,(%ecx)
c00377b4:	83 c1 08             	add    $0x8,%ecx
c00377b7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00377be:	83 f8 07             	cmp    $0x7,%eax
c00377c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377cd:	7e d1                	jle    c00377a0 <_svfiprintf_r+0xa70>
c00377cf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377d5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377d9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00377dd:	89 1c 24             	mov    %ebx,(%esp)
c00377e0:	e8 5b f3 ff ff       	call   c0036b40 <__ssprint_r>
c00377e5:	85 c0                	test   %eax,%eax
c00377e7:	0f 85 4b ff ff ff    	jne    c0037738 <_svfiprintf_r+0xa08>
c00377ed:	83 ef 10             	sub    $0x10,%edi
c00377f0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00377f6:	83 ff 10             	cmp    $0x10,%edi
c00377f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00377ff:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037802:	7f a4                	jg     c00377a8 <_svfiprintf_r+0xa78>
c0037804:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c003780a:	89 ce                	mov    %ecx,%esi
c003780c:	83 c0 01             	add    $0x1,%eax
c003780f:	01 fa                	add    %edi,%edx
c0037811:	c7 06 8c 93 03 c0    	movl   $0xc003938c,(%esi)
c0037817:	83 c6 08             	add    $0x8,%esi
c003781a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003781d:	83 f8 07             	cmp    $0x7,%eax
c0037820:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037826:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003782c:	0f 8e a1 fc ff ff    	jle    c00374d3 <_svfiprintf_r+0x7a3>
c0037832:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037838:	89 44 24 08          	mov    %eax,0x8(%esp)
c003783c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003783f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037843:	8b 45 08             	mov    0x8(%ebp),%eax
c0037846:	89 04 24             	mov    %eax,(%esp)
c0037849:	e8 f2 f2 ff ff       	call   c0036b40 <__ssprint_r>
c003784e:	85 c0                	test   %eax,%eax
c0037850:	0f 85 e2 fe ff ff    	jne    c0037738 <_svfiprintf_r+0xa08>
c0037856:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003785c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003785f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037865:	e9 69 fc ff ff       	jmp    c00374d3 <_svfiprintf_r+0x7a3>
c003786a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037870:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037876:	89 44 24 08          	mov    %eax,0x8(%esp)
c003787a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003787d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037881:	8b 45 08             	mov    0x8(%ebp),%eax
c0037884:	89 04 24             	mov    %eax,(%esp)
c0037887:	e8 b4 f2 ff ff       	call   c0036b40 <__ssprint_r>
c003788c:	85 c0                	test   %eax,%eax
c003788e:	0f 85 a4 fe ff ff    	jne    c0037738 <_svfiprintf_r+0xa08>
c0037894:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003789a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003789d:	e9 4e fd ff ff       	jmp    c00375f0 <_svfiprintf_r+0x8c0>
c00378a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00378a8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378ae:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378b2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378b5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378bc:	89 04 24             	mov    %eax,(%esp)
c00378bf:	e8 7c f2 ff ff       	call   c0036b40 <__ssprint_r>
c00378c4:	85 c0                	test   %eax,%eax
c00378c6:	0f 84 09 fe ff ff    	je     c00376d5 <_svfiprintf_r+0x9a5>
c00378cc:	e9 67 fe ff ff       	jmp    c0037738 <_svfiprintf_r+0xa08>
c00378d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00378d8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378de:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378e2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378e5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378ec:	89 04 24             	mov    %eax,(%esp)
c00378ef:	e8 4c f2 ff ff       	call   c0036b40 <__ssprint_r>
c00378f4:	85 c0                	test   %eax,%eax
c00378f6:	0f 85 3c fe ff ff    	jne    c0037738 <_svfiprintf_r+0xa08>
c00378fc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378ff:	e9 e9 f4 ff ff       	jmp    c0036ded <_svfiprintf_r+0xbd>
c0037904:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037908:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003790e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037912:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037915:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037919:	8b 45 08             	mov    0x8(%ebp),%eax
c003791c:	89 04 24             	mov    %eax,(%esp)
c003791f:	e8 1c f2 ff ff       	call   c0036b40 <__ssprint_r>
c0037924:	85 c0                	test   %eax,%eax
c0037926:	0f 85 0c fe ff ff    	jne    c0037738 <_svfiprintf_r+0xa08>
c003792c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037932:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037935:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003793b:	e9 83 fb ff ff       	jmp    c00374c3 <_svfiprintf_r+0x793>
c0037940:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037946:	89 44 24 08          	mov    %eax,0x8(%esp)
c003794a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003794d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037951:	8b 45 08             	mov    0x8(%ebp),%eax
c0037954:	89 04 24             	mov    %eax,(%esp)
c0037957:	e8 e4 f1 ff ff       	call   c0036b40 <__ssprint_r>
c003795c:	85 c0                	test   %eax,%eax
c003795e:	0f 85 d4 fd ff ff    	jne    c0037738 <_svfiprintf_r+0xa08>
c0037964:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003796a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003796d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037973:	e9 13 fb ff ff       	jmp    c003748b <_svfiprintf_r+0x75b>
c0037978:	83 f9 09             	cmp    $0x9,%ecx
c003797b:	76 56                	jbe    c00379d3 <_svfiprintf_r+0xca3>
c003797d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037980:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037985:	83 eb 01             	sub    $0x1,%ebx
c0037988:	f7 e1                	mul    %ecx
c003798a:	c1 ea 03             	shr    $0x3,%edx
c003798d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037990:	01 c0                	add    %eax,%eax
c0037992:	29 c1                	sub    %eax,%ecx
c0037994:	83 c1 30             	add    $0x30,%ecx
c0037997:	85 d2                	test   %edx,%edx
c0037999:	88 0b                	mov    %cl,(%ebx)
c003799b:	89 d1                	mov    %edx,%ecx
c003799d:	75 e1                	jne    c0037980 <_svfiprintf_r+0xc50>
c003799f:	e9 71 f5 ff ff       	jmp    c0036f15 <_svfiprintf_r+0x1e5>
c00379a4:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00379aa:	89 44 24 08          	mov    %eax,0x8(%esp)
c00379ae:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00379b5:	8b 45 08             	mov    0x8(%ebp),%eax
c00379b8:	89 04 24             	mov    %eax,(%esp)
c00379bb:	e8 80 f1 ff ff       	call   c0036b40 <__ssprint_r>
c00379c0:	85 c0                	test   %eax,%eax
c00379c2:	0f 85 70 fd ff ff    	jne    c0037738 <_svfiprintf_r+0xa08>
c00379c8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379ce:	e9 e3 fc ff ff       	jmp    c00376b6 <_svfiprintf_r+0x986>
c00379d3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00379d9:	83 c1 30             	add    $0x30,%ecx
c00379dc:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00379df:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00379e2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00379e8:	e9 33 f5 ff ff       	jmp    c0036f20 <_svfiprintf_r+0x1f0>
c00379ed:	8b 45 14             	mov    0x14(%ebp),%eax
c00379f0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c00379f6:	8b 00                	mov    (%eax),%eax
c00379f8:	89 18                	mov    %ebx,(%eax)
c00379fa:	8b 45 14             	mov    0x14(%ebp),%eax
c00379fd:	83 c0 04             	add    $0x4,%eax
c0037a00:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a03:	e9 86 f3 ff ff       	jmp    c0036d8e <_svfiprintf_r+0x5e>
c0037a08:	0f b7 0b             	movzwl (%ebx),%ecx
c0037a0b:	83 c3 04             	add    $0x4,%ebx
c0037a0e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037a11:	e9 95 f8 ff ff       	jmp    c00372ab <_svfiprintf_r+0x57b>
c0037a16:	0f bf 08             	movswl (%eax),%ecx
c0037a19:	83 c0 04             	add    $0x4,%eax
c0037a1c:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a1f:	85 c9                	test   %ecx,%ecx
c0037a21:	0f 89 0d f7 ff ff    	jns    c0037134 <_svfiprintf_r+0x404>
c0037a27:	f7 d9                	neg    %ecx
c0037a29:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037a2e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037a35:	ba 01 00 00 00       	mov    $0x1,%edx
c0037a3a:	e9 7a f4 ff ff       	jmp    c0036eb9 <_svfiprintf_r+0x189>
c0037a3f:	89 1c 24             	mov    %ebx,(%esp)
c0037a42:	e8 79 f0 ff ff       	call   c0036ac0 <strlen>
c0037a47:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037a4d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a54:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a5b:	00 00 00 
c0037a5e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a61:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a67:	e9 b4 f4 ff ff       	jmp    c0036f20 <_svfiprintf_r+0x1f0>
c0037a6c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a6f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037a76:	00 
c0037a77:	89 04 24             	mov    %eax,(%esp)
c0037a7a:	e8 41 d9 ff ff       	call   c00353c0 <_malloc_r>
c0037a7f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037a82:	85 c0                	test   %eax,%eax
c0037a84:	89 06                	mov    %eax,(%esi)
c0037a86:	89 46 10             	mov    %eax,0x10(%esi)
c0037a89:	0f 84 a3 00 00 00    	je     c0037b32 <_svfiprintf_r+0xe02>
c0037a8f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a92:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037a99:	e9 b2 f2 ff ff       	jmp    c0036d50 <_svfiprintf_r+0x20>
c0037a9e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037aa4:	b8 06 00 00 00       	mov    $0x6,%eax
c0037aa9:	89 55 14             	mov    %edx,0x14(%ebp)
c0037aac:	83 ff 06             	cmp    $0x6,%edi
c0037aaf:	0f 46 c7             	cmovbe %edi,%eax
c0037ab2:	85 c0                	test   %eax,%eax
c0037ab4:	0f 49 d8             	cmovns %eax,%ebx
c0037ab7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037abd:	bb e4 8e 03 c0       	mov    $0xc0038ee4,%ebx
c0037ac2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037ac8:	e9 61 f8 ff ff       	jmp    c003732e <_svfiprintf_r+0x5fe>
c0037acd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037ad3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037ada:	89 55 14             	mov    %edx,0x14(%ebp)
c0037add:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037ae4:	00 00 00 
c0037ae7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037aed:	e9 2e f4 ff ff       	jmp    c0036f20 <_svfiprintf_r+0x1f0>
c0037af2:	89 da                	mov    %ebx,%edx
c0037af4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037afb:	00 00 00 
c0037afe:	e9 29 f3 ff ff       	jmp    c0036e2c <_svfiprintf_r+0xfc>
c0037b03:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037b06:	89 da                	mov    %ebx,%edx
c0037b08:	8b 45 14             	mov    0x14(%ebp),%eax
c0037b0b:	8b 09                	mov    (%ecx),%ecx
c0037b0d:	83 c0 04             	add    $0x4,%eax
c0037b10:	89 45 14             	mov    %eax,0x14(%ebp)
c0037b13:	85 c9                	test   %ecx,%ecx
c0037b15:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037b1b:	0f 89 26 f3 ff ff    	jns    c0036e47 <_svfiprintf_r+0x117>
c0037b21:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037b28:	ff ff ff 
c0037b2b:	89 d0                	mov    %edx,%eax
c0037b2d:	e9 f4 f2 ff ff       	jmp    c0036e26 <_svfiprintf_r+0xf6>
c0037b32:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b35:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037b3b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037b40:	e9 06 fc ff ff       	jmp    c003774b <_svfiprintf_r+0xa1b>
c0037b45:	66 90                	xchg   %ax,%ax
c0037b47:	66 90                	xchg   %ax,%ax
c0037b49:	66 90                	xchg   %ax,%ax
c0037b4b:	66 90                	xchg   %ax,%ax
c0037b4d:	66 90                	xchg   %ax,%ax
c0037b4f:	90                   	nop

c0037b50 <_calloc_r>:
c0037b50:	55                   	push   %ebp
c0037b51:	89 e5                	mov    %esp,%ebp
c0037b53:	53                   	push   %ebx
c0037b54:	83 ec 14             	sub    $0x14,%esp
c0037b57:	8b 45 10             	mov    0x10(%ebp),%eax
c0037b5a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037b5e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b62:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b65:	89 04 24             	mov    %eax,(%esp)
c0037b68:	e8 53 d8 ff ff       	call   c00353c0 <_malloc_r>
c0037b6d:	85 c0                	test   %eax,%eax
c0037b6f:	89 c3                	mov    %eax,%ebx
c0037b71:	0f 84 91 00 00 00    	je     c0037c08 <_calloc_r+0xb8>
c0037b77:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037b7a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037b7d:	83 e8 04             	sub    $0x4,%eax
c0037b80:	83 f8 24             	cmp    $0x24,%eax
c0037b83:	77 63                	ja     c0037be8 <_calloc_r+0x98>
c0037b85:	83 f8 13             	cmp    $0x13,%eax
c0037b88:	89 da                	mov    %ebx,%edx
c0037b8a:	77 1c                	ja     c0037ba8 <_calloc_r+0x58>
c0037b8c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037b92:	89 d8                	mov    %ebx,%eax
c0037b94:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037b9b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037ba2:	83 c4 14             	add    $0x14,%esp
c0037ba5:	5b                   	pop    %ebx
c0037ba6:	5d                   	pop    %ebp
c0037ba7:	c3                   	ret    
c0037ba8:	83 f8 1b             	cmp    $0x1b,%eax
c0037bab:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037bb1:	8d 53 08             	lea    0x8(%ebx),%edx
c0037bb4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037bbb:	76 cf                	jbe    c0037b8c <_calloc_r+0x3c>
c0037bbd:	83 f8 24             	cmp    $0x24,%eax
c0037bc0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037bc7:	8d 53 10             	lea    0x10(%ebx),%edx
c0037bca:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037bd1:	75 b9                	jne    c0037b8c <_calloc_r+0x3c>
c0037bd3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037bda:	8d 53 18             	lea    0x18(%ebx),%edx
c0037bdd:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037be4:	eb a6                	jmp    c0037b8c <_calloc_r+0x3c>
c0037be6:	66 90                	xchg   %ax,%ax
c0037be8:	89 1c 24             	mov    %ebx,(%esp)
c0037beb:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037bef:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037bf6:	00 
c0037bf7:	e8 50 a2 ff ff       	call   c0031e4c <memset>
c0037bfc:	83 c4 14             	add    $0x14,%esp
c0037bff:	89 d8                	mov    %ebx,%eax
c0037c01:	5b                   	pop    %ebx
c0037c02:	5d                   	pop    %ebp
c0037c03:	c3                   	ret    
c0037c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037c08:	31 c0                	xor    %eax,%eax
c0037c0a:	eb 96                	jmp    c0037ba2 <_calloc_r+0x52>
c0037c0c:	66 90                	xchg   %ax,%ax
c0037c0e:	66 90                	xchg   %ax,%ax

c0037c10 <_malloc_trim_r>:
c0037c10:	55                   	push   %ebp
c0037c11:	89 e5                	mov    %esp,%ebp
c0037c13:	57                   	push   %edi
c0037c14:	56                   	push   %esi
c0037c15:	53                   	push   %ebx
c0037c16:	83 ec 1c             	sub    $0x1c,%esp
c0037c19:	8b 75 08             	mov    0x8(%ebp),%esi
c0037c1c:	89 34 24             	mov    %esi,(%esp)
c0037c1f:	e8 7c df ff ff       	call   c0035ba0 <__malloc_lock>
c0037c24:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037c29:	8b 58 04             	mov    0x4(%eax),%ebx
c0037c2c:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037c2f:	89 d8                	mov    %ebx,%eax
c0037c31:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037c34:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037c39:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037c3e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037c44:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037c4a:	7e 1c                	jle    c0037c68 <_malloc_trim_r+0x58>
c0037c4c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c53:	00 
c0037c54:	89 34 24             	mov    %esi,(%esp)
c0037c57:	e8 44 ed ff ff       	call   c00369a0 <_sbrk_r>
c0037c5c:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037c62:	01 da                	add    %ebx,%edx
c0037c64:	39 d0                	cmp    %edx,%eax
c0037c66:	74 18                	je     c0037c80 <_malloc_trim_r+0x70>
c0037c68:	89 34 24             	mov    %esi,(%esp)
c0037c6b:	e8 40 df ff ff       	call   c0035bb0 <__malloc_unlock>
c0037c70:	83 c4 1c             	add    $0x1c,%esp
c0037c73:	31 c0                	xor    %eax,%eax
c0037c75:	5b                   	pop    %ebx
c0037c76:	5e                   	pop    %esi
c0037c77:	5f                   	pop    %edi
c0037c78:	5d                   	pop    %ebp
c0037c79:	c3                   	ret    
c0037c7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037c80:	89 f8                	mov    %edi,%eax
c0037c82:	f7 d8                	neg    %eax
c0037c84:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c88:	89 34 24             	mov    %esi,(%esp)
c0037c8b:	e8 10 ed ff ff       	call   c00369a0 <_sbrk_r>
c0037c90:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037c93:	74 2b                	je     c0037cc0 <_malloc_trim_r+0xb0>
c0037c95:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037c9a:	29 fb                	sub    %edi,%ebx
c0037c9c:	83 cb 01             	or     $0x1,%ebx
c0037c9f:	29 3d 20 f0 06 c0    	sub    %edi,0xc006f020
c0037ca5:	89 58 04             	mov    %ebx,0x4(%eax)
c0037ca8:	89 34 24             	mov    %esi,(%esp)
c0037cab:	e8 00 df ff ff       	call   c0035bb0 <__malloc_unlock>
c0037cb0:	83 c4 1c             	add    $0x1c,%esp
c0037cb3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037cb8:	5b                   	pop    %ebx
c0037cb9:	5e                   	pop    %esi
c0037cba:	5f                   	pop    %edi
c0037cbb:	5d                   	pop    %ebp
c0037cbc:	c3                   	ret    
c0037cbd:	8d 76 00             	lea    0x0(%esi),%esi
c0037cc0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037cc7:	00 
c0037cc8:	89 34 24             	mov    %esi,(%esp)
c0037ccb:	e8 d0 ec ff ff       	call   c00369a0 <_sbrk_r>
c0037cd0:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037cd6:	89 c1                	mov    %eax,%ecx
c0037cd8:	29 d1                	sub    %edx,%ecx
c0037cda:	83 f9 0f             	cmp    $0xf,%ecx
c0037cdd:	7e 89                	jle    c0037c68 <_malloc_trim_r+0x58>
c0037cdf:	2b 05 20 c5 03 c0    	sub    0xc003c520,%eax
c0037ce5:	83 c9 01             	or     $0x1,%ecx
c0037ce8:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037ceb:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0037cf0:	e9 73 ff ff ff       	jmp    c0037c68 <_malloc_trim_r+0x58>
c0037cf5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037cf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037d00 <_free_r>:
c0037d00:	55                   	push   %ebp
c0037d01:	89 e5                	mov    %esp,%ebp
c0037d03:	57                   	push   %edi
c0037d04:	56                   	push   %esi
c0037d05:	53                   	push   %ebx
c0037d06:	83 ec 1c             	sub    $0x1c,%esp
c0037d09:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037d0c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037d0f:	85 f6                	test   %esi,%esi
c0037d11:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037d14:	0f 84 fe 00 00 00    	je     c0037e18 <_free_r+0x118>
c0037d1a:	89 04 24             	mov    %eax,(%esp)
c0037d1d:	e8 7e de ff ff       	call   c0035ba0 <__malloc_lock>
c0037d22:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037d25:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037d28:	89 f8                	mov    %edi,%eax
c0037d2a:	83 e0 fe             	and    $0xfffffffe,%eax
c0037d2d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037d30:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037d33:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037d36:	39 0d 48 c5 03 c0    	cmp    %ecx,0xc003c548
c0037d3c:	0f 84 0e 01 00 00    	je     c0037e50 <_free_r+0x150>
c0037d42:	83 e7 01             	and    $0x1,%edi
c0037d45:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037d48:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037d4f:	75 1f                	jne    c0037d70 <_free_r+0x70>
c0037d51:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037d54:	29 f2                	sub    %esi,%edx
c0037d56:	01 f0                	add    %esi,%eax
c0037d58:	8b 72 08             	mov    0x8(%edx),%esi
c0037d5b:	81 fe 48 c5 03 c0    	cmp    $0xc003c548,%esi
c0037d61:	0f 84 39 01 00 00    	je     c0037ea0 <_free_r+0x1a0>
c0037d67:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037d6a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037d6d:	89 77 08             	mov    %esi,0x8(%edi)
c0037d70:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037d75:	75 21                	jne    c0037d98 <_free_r+0x98>
c0037d77:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037d7a:	01 d8                	add    %ebx,%eax
c0037d7c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037d7f:	85 f6                	test   %esi,%esi
c0037d81:	75 0c                	jne    c0037d8f <_free_r+0x8f>
c0037d83:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0037d89:	0f 84 21 01 00 00    	je     c0037eb0 <_free_r+0x1b0>
c0037d8f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037d92:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037d95:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037d98:	89 c1                	mov    %eax,%ecx
c0037d9a:	83 c9 01             	or     $0x1,%ecx
c0037d9d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037da0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037da3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037da6:	85 c9                	test   %ecx,%ecx
c0037da8:	75 56                	jne    c0037e00 <_free_r+0x100>
c0037daa:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037daf:	76 6f                	jbe    c0037e20 <_free_r+0x120>
c0037db1:	89 c1                	mov    %eax,%ecx
c0037db3:	c1 e9 09             	shr    $0x9,%ecx
c0037db6:	83 f9 04             	cmp    $0x4,%ecx
c0037db9:	0f 87 21 01 00 00    	ja     c0037ee0 <_free_r+0x1e0>
c0037dbf:	89 c1                	mov    %eax,%ecx
c0037dc1:	c1 e9 06             	shr    $0x6,%ecx
c0037dc4:	83 c1 38             	add    $0x38,%ecx
c0037dc7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037dca:	8d 34 9d 40 c5 03 c0 	lea    -0x3ffc3ac0(,%ebx,4),%esi
c0037dd1:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037dd4:	39 f3                	cmp    %esi,%ebx
c0037dd6:	0f 84 14 01 00 00    	je     c0037ef0 <_free_r+0x1f0>
c0037ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037de0:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037de3:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037de6:	39 c8                	cmp    %ecx,%eax
c0037de8:	73 07                	jae    c0037df1 <_free_r+0xf1>
c0037dea:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037ded:	39 de                	cmp    %ebx,%esi
c0037def:	75 ef                	jne    c0037de0 <_free_r+0xe0>
c0037df1:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037df4:	89 42 0c             	mov    %eax,0xc(%edx)
c0037df7:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037dfa:	89 50 08             	mov    %edx,0x8(%eax)
c0037dfd:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037e00:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e03:	89 45 08             	mov    %eax,0x8(%ebp)
c0037e06:	83 c4 1c             	add    $0x1c,%esp
c0037e09:	5b                   	pop    %ebx
c0037e0a:	5e                   	pop    %esi
c0037e0b:	5f                   	pop    %edi
c0037e0c:	5d                   	pop    %ebp
c0037e0d:	e9 9e dd ff ff       	jmp    c0035bb0 <__malloc_unlock>
c0037e12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037e18:	83 c4 1c             	add    $0x1c,%esp
c0037e1b:	5b                   	pop    %ebx
c0037e1c:	5e                   	pop    %esi
c0037e1d:	5f                   	pop    %edi
c0037e1e:	5d                   	pop    %ebp
c0037e1f:	c3                   	ret    
c0037e20:	c1 e8 03             	shr    $0x3,%eax
c0037e23:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037e28:	89 c1                	mov    %eax,%ecx
c0037e2a:	c1 f9 02             	sar    $0x2,%ecx
c0037e2d:	8d 04 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%eax
c0037e34:	d3 e3                	shl    %cl,%ebx
c0037e36:	8b 48 08             	mov    0x8(%eax),%ecx
c0037e39:	09 1d 44 c5 03 c0    	or     %ebx,0xc003c544
c0037e3f:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e42:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037e45:	89 50 08             	mov    %edx,0x8(%eax)
c0037e48:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037e4b:	eb b3                	jmp    c0037e00 <_free_r+0x100>
c0037e4d:	8d 76 00             	lea    0x0(%esi),%esi
c0037e50:	01 d8                	add    %ebx,%eax
c0037e52:	83 e7 01             	and    $0x1,%edi
c0037e55:	75 13                	jne    c0037e6a <_free_r+0x16a>
c0037e57:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037e5a:	29 ca                	sub    %ecx,%edx
c0037e5c:	01 c8                	add    %ecx,%eax
c0037e5e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037e61:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037e64:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e67:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e6a:	89 c1                	mov    %eax,%ecx
c0037e6c:	83 c9 01             	or     $0x1,%ecx
c0037e6f:	3b 05 24 c5 03 c0    	cmp    0xc003c524,%eax
c0037e75:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e78:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0037e7e:	72 80                	jb     c0037e00 <_free_r+0x100>
c0037e80:	a1 50 f0 06 c0       	mov    0xc006f050,%eax
c0037e85:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e89:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e8c:	89 04 24             	mov    %eax,(%esp)
c0037e8f:	e8 7c fd ff ff       	call   c0037c10 <_malloc_trim_r>
c0037e94:	e9 67 ff ff ff       	jmp    c0037e00 <_free_r+0x100>
c0037e99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037ea0:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037ea7:	e9 c4 fe ff ff       	jmp    c0037d70 <_free_r+0x70>
c0037eac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037eb0:	89 c1                	mov    %eax,%ecx
c0037eb2:	83 c9 01             	or     $0x1,%ecx
c0037eb5:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c0037ebb:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0037ec1:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0037ec8:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0037ecf:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037ed2:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037ed5:	e9 26 ff ff ff       	jmp    c0037e00 <_free_r+0x100>
c0037eda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037ee0:	83 f9 14             	cmp    $0x14,%ecx
c0037ee3:	77 23                	ja     c0037f08 <_free_r+0x208>
c0037ee5:	83 c1 5b             	add    $0x5b,%ecx
c0037ee8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037eeb:	e9 da fe ff ff       	jmp    c0037dca <_free_r+0xca>
c0037ef0:	c1 f9 02             	sar    $0x2,%ecx
c0037ef3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037ef8:	d3 e0                	shl    %cl,%eax
c0037efa:	09 05 44 c5 03 c0    	or     %eax,0xc003c544
c0037f00:	89 d8                	mov    %ebx,%eax
c0037f02:	e9 ed fe ff ff       	jmp    c0037df4 <_free_r+0xf4>
c0037f07:	90                   	nop
c0037f08:	83 f9 54             	cmp    $0x54,%ecx
c0037f0b:	77 10                	ja     c0037f1d <_free_r+0x21d>
c0037f0d:	89 c1                	mov    %eax,%ecx
c0037f0f:	c1 e9 0c             	shr    $0xc,%ecx
c0037f12:	83 c1 6e             	add    $0x6e,%ecx
c0037f15:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f18:	e9 ad fe ff ff       	jmp    c0037dca <_free_r+0xca>
c0037f1d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037f23:	77 10                	ja     c0037f35 <_free_r+0x235>
c0037f25:	89 c1                	mov    %eax,%ecx
c0037f27:	c1 e9 0f             	shr    $0xf,%ecx
c0037f2a:	83 c1 77             	add    $0x77,%ecx
c0037f2d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f30:	e9 95 fe ff ff       	jmp    c0037dca <_free_r+0xca>
c0037f35:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037f3b:	77 10                	ja     c0037f4d <_free_r+0x24d>
c0037f3d:	89 c1                	mov    %eax,%ecx
c0037f3f:	c1 e9 12             	shr    $0x12,%ecx
c0037f42:	83 c1 7c             	add    $0x7c,%ecx
c0037f45:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f48:	e9 7d fe ff ff       	jmp    c0037dca <_free_r+0xca>
c0037f4d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037f52:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037f57:	e9 6e fe ff ff       	jmp    c0037dca <_free_r+0xca>
c0037f5c:	66 90                	xchg   %ax,%ax
c0037f5e:	66 90                	xchg   %ax,%ax

c0037f60 <memmove>:
c0037f60:	55                   	push   %ebp
c0037f61:	89 e5                	mov    %esp,%ebp
c0037f63:	56                   	push   %esi
c0037f64:	57                   	push   %edi
c0037f65:	53                   	push   %ebx
c0037f66:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037f69:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037f6c:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037f6f:	fc                   	cld    
c0037f70:	39 fe                	cmp    %edi,%esi
c0037f72:	73 43                	jae    c0037fb7 <memmove+0x57>
c0037f74:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037f78:	39 df                	cmp    %ebx,%edi
c0037f7a:	77 3b                	ja     c0037fb7 <memmove+0x57>
c0037f7c:	01 ce                	add    %ecx,%esi
c0037f7e:	01 cf                	add    %ecx,%edi
c0037f80:	fd                   	std    
c0037f81:	83 f9 08             	cmp    $0x8,%ecx
c0037f84:	76 2b                	jbe    c0037fb1 <memmove+0x51>
c0037f86:	89 fa                	mov    %edi,%edx
c0037f88:	89 cb                	mov    %ecx,%ebx
c0037f8a:	83 e2 03             	and    $0x3,%edx
c0037f8d:	74 0c                	je     c0037f9b <memmove+0x3b>
c0037f8f:	89 d1                	mov    %edx,%ecx
c0037f91:	4e                   	dec    %esi
c0037f92:	4f                   	dec    %edi
c0037f93:	29 cb                	sub    %ecx,%ebx
c0037f95:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f97:	89 d9                	mov    %ebx,%ecx
c0037f99:	46                   	inc    %esi
c0037f9a:	47                   	inc    %edi
c0037f9b:	c1 e9 02             	shr    $0x2,%ecx
c0037f9e:	83 ee 04             	sub    $0x4,%esi
c0037fa1:	83 ef 04             	sub    $0x4,%edi
c0037fa4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037fa6:	83 c6 04             	add    $0x4,%esi
c0037fa9:	83 c7 04             	add    $0x4,%edi
c0037fac:	89 d9                	mov    %ebx,%ecx
c0037fae:	83 e1 03             	and    $0x3,%ecx
c0037fb1:	4e                   	dec    %esi
c0037fb2:	4f                   	dec    %edi
c0037fb3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fb5:	eb 2a                	jmp    c0037fe1 <memmove+0x81>
c0037fb7:	83 f9 08             	cmp    $0x8,%ecx
c0037fba:	76 23                	jbe    c0037fdf <memmove+0x7f>
c0037fbc:	89 fa                	mov    %edi,%edx
c0037fbe:	89 cb                	mov    %ecx,%ebx
c0037fc0:	83 e2 03             	and    $0x3,%edx
c0037fc3:	74 10                	je     c0037fd5 <memmove+0x75>
c0037fc5:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037fca:	29 d1                	sub    %edx,%ecx
c0037fcc:	83 e1 03             	and    $0x3,%ecx
c0037fcf:	29 cb                	sub    %ecx,%ebx
c0037fd1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fd3:	89 d9                	mov    %ebx,%ecx
c0037fd5:	c1 e9 02             	shr    $0x2,%ecx
c0037fd8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037fda:	89 d9                	mov    %ebx,%ecx
c0037fdc:	83 e1 03             	and    $0x3,%ecx
c0037fdf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fe1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fe4:	fc                   	cld    
c0037fe5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0037fe8:	5b                   	pop    %ebx
c0037fe9:	5f                   	pop    %edi
c0037fea:	5e                   	pop    %esi
c0037feb:	c9                   	leave  
c0037fec:	c3                   	ret    
c0037fed:	66 90                	xchg   %ax,%ax
c0037fef:	90                   	nop

c0037ff0 <_realloc_r>:
c0037ff0:	55                   	push   %ebp
c0037ff1:	89 e5                	mov    %esp,%ebp
c0037ff3:	57                   	push   %edi
c0037ff4:	56                   	push   %esi
c0037ff5:	53                   	push   %ebx
c0037ff6:	83 ec 3c             	sub    $0x3c,%esp
c0037ff9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ffc:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0037fff:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038002:	8b 45 10             	mov    0x10(%ebp),%eax
c0038005:	85 ff                	test   %edi,%edi
c0038007:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003800a:	0f 84 50 02 00 00    	je     c0038260 <_realloc_r+0x270>
c0038010:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038013:	8d 77 f8             	lea    -0x8(%edi),%esi
c0038016:	89 04 24             	mov    %eax,(%esp)
c0038019:	e8 82 db ff ff       	call   c0035ba0 <__malloc_lock>
c003801e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038021:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038024:	89 c3                	mov    %eax,%ebx
c0038026:	8d 51 0b             	lea    0xb(%ecx),%edx
c0038029:	83 e3 fc             	and    $0xfffffffc,%ebx
c003802c:	83 fa 16             	cmp    $0x16,%edx
c003802f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038032:	0f 87 00 01 00 00    	ja     c0038138 <_realloc_r+0x148>
c0038038:	31 d2                	xor    %edx,%edx
c003803a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0038041:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0038048:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003804b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c003804e:	0f 82 1c 02 00 00    	jb     c0038270 <_realloc_r+0x280>
c0038054:	84 d2                	test   %dl,%dl
c0038056:	0f 85 14 02 00 00    	jne    c0038270 <_realloc_r+0x280>
c003805c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003805f:	0f 8d eb 00 00 00    	jge    c0038150 <_realloc_r+0x160>
c0038065:	8b 0d 48 c5 03 c0    	mov    0xc003c548,%ecx
c003806b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003806e:	39 d1                	cmp    %edx,%ecx
c0038070:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038073:	0f 84 6f 02 00 00    	je     c00382e8 <_realloc_r+0x2f8>
c0038079:	8b 4a 04             	mov    0x4(%edx),%ecx
c003807c:	89 c8                	mov    %ecx,%eax
c003807e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038081:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038086:	0f 84 f4 00 00 00    	je     c0038180 <_realloc_r+0x190>
c003808c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038093:	31 d2                	xor    %edx,%edx
c0038095:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038099:	0f 85 39 01 00 00    	jne    c00381d8 <_realloc_r+0x1e8>
c003809f:	89 f1                	mov    %esi,%ecx
c00380a1:	2b 4f f8             	sub    -0x8(%edi),%ecx
c00380a4:	8b 41 04             	mov    0x4(%ecx),%eax
c00380a7:	83 e0 fc             	and    $0xfffffffc,%eax
c00380aa:	85 d2                	test   %edx,%edx
c00380ac:	0f 84 f6 02 00 00    	je     c00383a8 <_realloc_r+0x3b8>
c00380b2:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c00380b5:	0f 84 f5 02 00 00    	je     c00383b0 <_realloc_r+0x3c0>
c00380bb:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00380be:	8b 55 d0             	mov    -0x30(%ebp),%edx
c00380c1:	01 d8                	add    %ebx,%eax
c00380c3:	01 c2                	add    %eax,%edx
c00380c5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00380c8:	89 55 d0             	mov    %edx,-0x30(%ebp)
c00380cb:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00380ce:	0f 8c ac 01 00 00    	jl     c0038280 <_realloc_r+0x290>
c00380d4:	8b 42 0c             	mov    0xc(%edx),%eax
c00380d7:	83 eb 04             	sub    $0x4,%ebx
c00380da:	8b 52 08             	mov    0x8(%edx),%edx
c00380dd:	83 fb 24             	cmp    $0x24,%ebx
c00380e0:	8d 71 08             	lea    0x8(%ecx),%esi
c00380e3:	89 42 0c             	mov    %eax,0xc(%edx)
c00380e6:	89 50 08             	mov    %edx,0x8(%eax)
c00380e9:	8b 41 0c             	mov    0xc(%ecx),%eax
c00380ec:	8b 51 08             	mov    0x8(%ecx),%edx
c00380ef:	89 42 0c             	mov    %eax,0xc(%edx)
c00380f2:	89 50 08             	mov    %edx,0x8(%eax)
c00380f5:	0f 87 85 03 00 00    	ja     c0038480 <_realloc_r+0x490>
c00380fb:	83 fb 13             	cmp    $0x13,%ebx
c00380fe:	89 f0                	mov    %esi,%eax
c0038100:	76 1a                	jbe    c003811c <_realloc_r+0x12c>
c0038102:	8b 07                	mov    (%edi),%eax
c0038104:	83 fb 1b             	cmp    $0x1b,%ebx
c0038107:	89 41 08             	mov    %eax,0x8(%ecx)
c003810a:	8b 47 04             	mov    0x4(%edi),%eax
c003810d:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038110:	0f 87 8f 03 00 00    	ja     c00384a5 <_realloc_r+0x4b5>
c0038116:	8d 41 10             	lea    0x10(%ecx),%eax
c0038119:	83 c7 08             	add    $0x8,%edi
c003811c:	8b 17                	mov    (%edi),%edx
c003811e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038121:	89 10                	mov    %edx,(%eax)
c0038123:	8b 57 04             	mov    0x4(%edi),%edx
c0038126:	89 50 04             	mov    %edx,0x4(%eax)
c0038129:	8b 57 08             	mov    0x8(%edi),%edx
c003812c:	89 f7                	mov    %esi,%edi
c003812e:	89 ce                	mov    %ecx,%esi
c0038130:	89 50 08             	mov    %edx,0x8(%eax)
c0038133:	8b 41 04             	mov    0x4(%ecx),%eax
c0038136:	eb 1b                	jmp    c0038153 <_realloc_r+0x163>
c0038138:	83 e2 f8             	and    $0xfffffff8,%edx
c003813b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003813e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038141:	c1 ea 1f             	shr    $0x1f,%edx
c0038144:	e9 ff fe ff ff       	jmp    c0038048 <_realloc_r+0x58>
c0038149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038150:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038153:	89 da                	mov    %ebx,%edx
c0038155:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038158:	83 fa 0f             	cmp    $0xf,%edx
c003815b:	77 4b                	ja     c00381a8 <_realloc_r+0x1b8>
c003815d:	83 e0 01             	and    $0x1,%eax
c0038160:	09 d8                	or     %ebx,%eax
c0038162:	89 46 04             	mov    %eax,0x4(%esi)
c0038165:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003816a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003816d:	89 04 24             	mov    %eax,(%esp)
c0038170:	e8 3b da ff ff       	call   c0035bb0 <__malloc_unlock>
c0038175:	89 f8                	mov    %edi,%eax
c0038177:	83 c4 3c             	add    $0x3c,%esp
c003817a:	5b                   	pop    %ebx
c003817b:	5e                   	pop    %esi
c003817c:	5f                   	pop    %edi
c003817d:	5d                   	pop    %ebp
c003817e:	c3                   	ret    
c003817f:	90                   	nop
c0038180:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038183:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038186:	01 d9                	add    %ebx,%ecx
c0038188:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003818b:	0f 8c 04 ff ff ff    	jl     c0038095 <_realloc_r+0xa5>
c0038191:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038194:	8b 52 08             	mov    0x8(%edx),%edx
c0038197:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003819a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003819d:	89 53 08             	mov    %edx,0x8(%ebx)
c00381a0:	89 cb                	mov    %ecx,%ebx
c00381a2:	eb af                	jmp    c0038153 <_realloc_r+0x163>
c00381a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00381a8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00381ab:	83 e0 01             	and    $0x1,%eax
c00381ae:	09 d8                	or     %ebx,%eax
c00381b0:	89 46 04             	mov    %eax,0x4(%esi)
c00381b3:	89 d0                	mov    %edx,%eax
c00381b5:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c00381b8:	83 c8 01             	or     $0x1,%eax
c00381bb:	89 41 04             	mov    %eax,0x4(%ecx)
c00381be:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381c1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c00381c6:	83 c1 08             	add    $0x8,%ecx
c00381c9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00381cd:	89 04 24             	mov    %eax,(%esp)
c00381d0:	e8 2b fb ff ff       	call   c0037d00 <_free_r>
c00381d5:	eb 93                	jmp    c003816a <_realloc_r+0x17a>
c00381d7:	90                   	nop
c00381d8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00381db:	89 44 24 04          	mov    %eax,0x4(%esp)
c00381df:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381e2:	89 04 24             	mov    %eax,(%esp)
c00381e5:	e8 d6 d1 ff ff       	call   c00353c0 <_malloc_r>
c00381ea:	85 c0                	test   %eax,%eax
c00381ec:	89 c1                	mov    %eax,%ecx
c00381ee:	0f 84 65 03 00 00    	je     c0038559 <_realloc_r+0x569>
c00381f4:	8b 47 fc             	mov    -0x4(%edi),%eax
c00381f7:	8d 51 f8             	lea    -0x8(%ecx),%edx
c00381fa:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00381fd:	89 c2                	mov    %eax,%edx
c00381ff:	83 e2 fe             	and    $0xfffffffe,%edx
c0038202:	01 f2                	add    %esi,%edx
c0038204:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0038207:	0f 84 63 02 00 00    	je     c0038470 <_realloc_r+0x480>
c003820d:	83 eb 04             	sub    $0x4,%ebx
c0038210:	83 fb 24             	cmp    $0x24,%ebx
c0038213:	0f 87 6f 01 00 00    	ja     c0038388 <_realloc_r+0x398>
c0038219:	83 fb 13             	cmp    $0x13,%ebx
c003821c:	0f 87 ee 00 00 00    	ja     c0038310 <_realloc_r+0x320>
c0038222:	89 c8                	mov    %ecx,%eax
c0038224:	89 fa                	mov    %edi,%edx
c0038226:	8b 1a                	mov    (%edx),%ebx
c0038228:	89 18                	mov    %ebx,(%eax)
c003822a:	8b 5a 04             	mov    0x4(%edx),%ebx
c003822d:	89 58 04             	mov    %ebx,0x4(%eax)
c0038230:	8b 52 08             	mov    0x8(%edx),%edx
c0038233:	89 50 08             	mov    %edx,0x8(%eax)
c0038236:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038239:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003823d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038240:	89 34 24             	mov    %esi,(%esp)
c0038243:	e8 b8 fa ff ff       	call   c0037d00 <_free_r>
c0038248:	89 34 24             	mov    %esi,(%esp)
c003824b:	e8 60 d9 ff ff       	call   c0035bb0 <__malloc_unlock>
c0038250:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038253:	83 c4 3c             	add    $0x3c,%esp
c0038256:	5b                   	pop    %ebx
c0038257:	5e                   	pop    %esi
c0038258:	5f                   	pop    %edi
c0038259:	89 c8                	mov    %ecx,%eax
c003825b:	5d                   	pop    %ebp
c003825c:	c3                   	ret    
c003825d:	8d 76 00             	lea    0x0(%esi),%esi
c0038260:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038263:	83 c4 3c             	add    $0x3c,%esp
c0038266:	5b                   	pop    %ebx
c0038267:	5e                   	pop    %esi
c0038268:	5f                   	pop    %edi
c0038269:	5d                   	pop    %ebp
c003826a:	e9 51 d1 ff ff       	jmp    c00353c0 <_malloc_r>
c003826f:	90                   	nop
c0038270:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038273:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038279:	31 c0                	xor    %eax,%eax
c003827b:	e9 f7 fe ff ff       	jmp    c0038177 <_realloc_r+0x187>
c0038280:	89 c2                	mov    %eax,%edx
c0038282:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038285:	0f 8c 4d ff ff ff    	jl     c00381d8 <_realloc_r+0x1e8>
c003828b:	8b 71 08             	mov    0x8(%ecx),%esi
c003828e:	83 eb 04             	sub    $0x4,%ebx
c0038291:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038294:	83 fb 24             	cmp    $0x24,%ebx
c0038297:	89 46 0c             	mov    %eax,0xc(%esi)
c003829a:	89 70 08             	mov    %esi,0x8(%eax)
c003829d:	8d 71 08             	lea    0x8(%ecx),%esi
c00382a0:	0f 87 88 00 00 00    	ja     c003832e <_realloc_r+0x33e>
c00382a6:	83 fb 13             	cmp    $0x13,%ebx
c00382a9:	89 f0                	mov    %esi,%eax
c00382ab:	76 1a                	jbe    c00382c7 <_realloc_r+0x2d7>
c00382ad:	8b 07                	mov    (%edi),%eax
c00382af:	83 fb 1b             	cmp    $0x1b,%ebx
c00382b2:	89 41 08             	mov    %eax,0x8(%ecx)
c00382b5:	8b 47 04             	mov    0x4(%edi),%eax
c00382b8:	89 41 0c             	mov    %eax,0xc(%ecx)
c00382bb:	0f 87 17 02 00 00    	ja     c00384d8 <_realloc_r+0x4e8>
c00382c1:	8d 41 10             	lea    0x10(%ecx),%eax
c00382c4:	83 c7 08             	add    $0x8,%edi
c00382c7:	8b 1f                	mov    (%edi),%ebx
c00382c9:	89 18                	mov    %ebx,(%eax)
c00382cb:	8b 5f 04             	mov    0x4(%edi),%ebx
c00382ce:	89 58 04             	mov    %ebx,0x4(%eax)
c00382d1:	8b 5f 08             	mov    0x8(%edi),%ebx
c00382d4:	89 f7                	mov    %esi,%edi
c00382d6:	89 ce                	mov    %ecx,%esi
c00382d8:	89 58 08             	mov    %ebx,0x8(%eax)
c00382db:	89 d3                	mov    %edx,%ebx
c00382dd:	8b 41 04             	mov    0x4(%ecx),%eax
c00382e0:	e9 6e fe ff ff       	jmp    c0038153 <_realloc_r+0x163>
c00382e5:	8d 76 00             	lea    0x0(%esi),%esi
c00382e8:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00382eb:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00382ee:	8b 48 04             	mov    0x4(%eax),%ecx
c00382f1:	83 c2 10             	add    $0x10,%edx
c00382f4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00382f7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c00382fb:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c00382fe:	01 d9                	add    %ebx,%ecx
c0038300:	39 d1                	cmp    %edx,%ecx
c0038302:	7d 54                	jge    c0038358 <_realloc_r+0x368>
c0038304:	89 c2                	mov    %eax,%edx
c0038306:	e9 8a fd ff ff       	jmp    c0038095 <_realloc_r+0xa5>
c003830b:	90                   	nop
c003830c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038310:	8b 07                	mov    (%edi),%eax
c0038312:	83 fb 1b             	cmp    $0x1b,%ebx
c0038315:	89 01                	mov    %eax,(%ecx)
c0038317:	8b 47 04             	mov    0x4(%edi),%eax
c003831a:	89 41 04             	mov    %eax,0x4(%ecx)
c003831d:	0f 87 2d 01 00 00    	ja     c0038450 <_realloc_r+0x460>
c0038323:	8d 41 08             	lea    0x8(%ecx),%eax
c0038326:	8d 57 08             	lea    0x8(%edi),%edx
c0038329:	e9 f8 fe ff ff       	jmp    c0038226 <_realloc_r+0x236>
c003832e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038332:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038336:	89 f7                	mov    %esi,%edi
c0038338:	89 34 24             	mov    %esi,(%esp)
c003833b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c003833e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038341:	e8 1a fc ff ff       	call   c0037f60 <memmove>
c0038346:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038349:	8b 55 d8             	mov    -0x28(%ebp),%edx
c003834c:	8b 41 04             	mov    0x4(%ecx),%eax
c003834f:	89 ce                	mov    %ecx,%esi
c0038351:	89 d3                	mov    %edx,%ebx
c0038353:	e9 fb fd ff ff       	jmp    c0038153 <_realloc_r+0x163>
c0038358:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003835b:	29 d9                	sub    %ebx,%ecx
c003835d:	01 de                	add    %ebx,%esi
c003835f:	83 c9 01             	or     $0x1,%ecx
c0038362:	89 35 48 c5 03 c0    	mov    %esi,0xc003c548
c0038368:	89 4e 04             	mov    %ecx,0x4(%esi)
c003836b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003836e:	83 e0 01             	and    $0x1,%eax
c0038371:	09 d8                	or     %ebx,%eax
c0038373:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038376:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038379:	89 04 24             	mov    %eax,(%esp)
c003837c:	e8 2f d8 ff ff       	call   c0035bb0 <__malloc_unlock>
c0038381:	89 f8                	mov    %edi,%eax
c0038383:	e9 ef fd ff ff       	jmp    c0038177 <_realloc_r+0x187>
c0038388:	89 0c 24             	mov    %ecx,(%esp)
c003838b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003838f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038393:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038396:	e8 c5 fb ff ff       	call   c0037f60 <memmove>
c003839b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003839e:	e9 93 fe ff ff       	jmp    c0038236 <_realloc_r+0x246>
c00383a3:	90                   	nop
c00383a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00383a8:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c00383ab:	e9 d2 fe ff ff       	jmp    c0038282 <_realloc_r+0x292>
c00383b0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c00383b3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00383b6:	01 d0                	add    %edx,%eax
c00383b8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00383bb:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00383be:	83 c0 10             	add    $0x10,%eax
c00383c1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c00383c4:	0f 8c b8 fe ff ff    	jl     c0038282 <_realloc_r+0x292>
c00383ca:	8b 41 0c             	mov    0xc(%ecx),%eax
c00383cd:	83 eb 04             	sub    $0x4,%ebx
c00383d0:	8b 51 08             	mov    0x8(%ecx),%edx
c00383d3:	83 fb 24             	cmp    $0x24,%ebx
c00383d6:	8d 71 08             	lea    0x8(%ecx),%esi
c00383d9:	89 42 0c             	mov    %eax,0xc(%edx)
c00383dc:	89 50 08             	mov    %edx,0x8(%eax)
c00383df:	0f 87 3d 01 00 00    	ja     c0038522 <_realloc_r+0x532>
c00383e5:	83 fb 13             	cmp    $0x13,%ebx
c00383e8:	89 f0                	mov    %esi,%eax
c00383ea:	76 1a                	jbe    c0038406 <_realloc_r+0x416>
c00383ec:	8b 07                	mov    (%edi),%eax
c00383ee:	83 fb 1b             	cmp    $0x1b,%ebx
c00383f1:	89 41 08             	mov    %eax,0x8(%ecx)
c00383f4:	8b 47 04             	mov    0x4(%edi),%eax
c00383f7:	89 41 0c             	mov    %eax,0xc(%ecx)
c00383fa:	0f 87 3d 01 00 00    	ja     c003853d <_realloc_r+0x54d>
c0038400:	8d 41 10             	lea    0x10(%ecx),%eax
c0038403:	83 c7 08             	add    $0x8,%edi
c0038406:	8b 17                	mov    (%edi),%edx
c0038408:	89 10                	mov    %edx,(%eax)
c003840a:	8b 57 04             	mov    0x4(%edi),%edx
c003840d:	89 50 04             	mov    %edx,0x4(%eax)
c0038410:	8b 57 08             	mov    0x8(%edi),%edx
c0038413:	89 50 08             	mov    %edx,0x8(%eax)
c0038416:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038419:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c003841c:	89 d8                	mov    %ebx,%eax
c003841e:	29 df                	sub    %ebx,%edi
c0038420:	01 c8                	add    %ecx,%eax
c0038422:	83 cf 01             	or     $0x1,%edi
c0038425:	a3 48 c5 03 c0       	mov    %eax,0xc003c548
c003842a:	89 78 04             	mov    %edi,0x4(%eax)
c003842d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038430:	83 e0 01             	and    $0x1,%eax
c0038433:	09 d8                	or     %ebx,%eax
c0038435:	89 41 04             	mov    %eax,0x4(%ecx)
c0038438:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003843b:	89 04 24             	mov    %eax,(%esp)
c003843e:	e8 6d d7 ff ff       	call   c0035bb0 <__malloc_unlock>
c0038443:	89 f0                	mov    %esi,%eax
c0038445:	e9 2d fd ff ff       	jmp    c0038177 <_realloc_r+0x187>
c003844a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038450:	8b 47 08             	mov    0x8(%edi),%eax
c0038453:	83 fb 24             	cmp    $0x24,%ebx
c0038456:	89 41 08             	mov    %eax,0x8(%ecx)
c0038459:	8b 47 0c             	mov    0xc(%edi),%eax
c003845c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003845f:	74 60                	je     c00384c1 <_realloc_r+0x4d1>
c0038461:	8d 41 10             	lea    0x10(%ecx),%eax
c0038464:	8d 57 10             	lea    0x10(%edi),%edx
c0038467:	e9 ba fd ff ff       	jmp    c0038226 <_realloc_r+0x236>
c003846c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038470:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038473:	83 e2 fc             	and    $0xfffffffc,%edx
c0038476:	01 d3                	add    %edx,%ebx
c0038478:	e9 d6 fc ff ff       	jmp    c0038153 <_realloc_r+0x163>
c003847d:	8d 76 00             	lea    0x0(%esi),%esi
c0038480:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038484:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038488:	89 f7                	mov    %esi,%edi
c003848a:	89 34 24             	mov    %esi,(%esp)
c003848d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038490:	e8 cb fa ff ff       	call   c0037f60 <memmove>
c0038495:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038498:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003849b:	8b 41 04             	mov    0x4(%ecx),%eax
c003849e:	89 ce                	mov    %ecx,%esi
c00384a0:	e9 ae fc ff ff       	jmp    c0038153 <_realloc_r+0x163>
c00384a5:	8b 47 08             	mov    0x8(%edi),%eax
c00384a8:	83 fb 24             	cmp    $0x24,%ebx
c00384ab:	89 41 10             	mov    %eax,0x10(%ecx)
c00384ae:	8b 47 0c             	mov    0xc(%edi),%eax
c00384b1:	89 41 14             	mov    %eax,0x14(%ecx)
c00384b4:	74 3e                	je     c00384f4 <_realloc_r+0x504>
c00384b6:	8d 41 18             	lea    0x18(%ecx),%eax
c00384b9:	83 c7 10             	add    $0x10,%edi
c00384bc:	e9 5b fc ff ff       	jmp    c003811c <_realloc_r+0x12c>
c00384c1:	8b 47 10             	mov    0x10(%edi),%eax
c00384c4:	8d 57 18             	lea    0x18(%edi),%edx
c00384c7:	89 41 10             	mov    %eax,0x10(%ecx)
c00384ca:	8b 5f 14             	mov    0x14(%edi),%ebx
c00384cd:	8d 41 18             	lea    0x18(%ecx),%eax
c00384d0:	89 59 14             	mov    %ebx,0x14(%ecx)
c00384d3:	e9 4e fd ff ff       	jmp    c0038226 <_realloc_r+0x236>
c00384d8:	8b 47 08             	mov    0x8(%edi),%eax
c00384db:	83 fb 24             	cmp    $0x24,%ebx
c00384de:	89 41 10             	mov    %eax,0x10(%ecx)
c00384e1:	8b 47 0c             	mov    0xc(%edi),%eax
c00384e4:	89 41 14             	mov    %eax,0x14(%ecx)
c00384e7:	74 22                	je     c003850b <_realloc_r+0x51b>
c00384e9:	8d 41 18             	lea    0x18(%ecx),%eax
c00384ec:	83 c7 10             	add    $0x10,%edi
c00384ef:	e9 d3 fd ff ff       	jmp    c00382c7 <_realloc_r+0x2d7>
c00384f4:	8b 47 10             	mov    0x10(%edi),%eax
c00384f7:	83 c7 18             	add    $0x18,%edi
c00384fa:	89 41 18             	mov    %eax,0x18(%ecx)
c00384fd:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038500:	8d 41 20             	lea    0x20(%ecx),%eax
c0038503:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038506:	e9 11 fc ff ff       	jmp    c003811c <_realloc_r+0x12c>
c003850b:	8b 47 10             	mov    0x10(%edi),%eax
c003850e:	83 c7 18             	add    $0x18,%edi
c0038511:	89 41 18             	mov    %eax,0x18(%ecx)
c0038514:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0038517:	8d 41 20             	lea    0x20(%ecx),%eax
c003851a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c003851d:	e9 a5 fd ff ff       	jmp    c00382c7 <_realloc_r+0x2d7>
c0038522:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038526:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003852a:	89 34 24             	mov    %esi,(%esp)
c003852d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038530:	e8 2b fa ff ff       	call   c0037f60 <memmove>
c0038535:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038538:	e9 d9 fe ff ff       	jmp    c0038416 <_realloc_r+0x426>
c003853d:	8b 47 08             	mov    0x8(%edi),%eax
c0038540:	83 fb 24             	cmp    $0x24,%ebx
c0038543:	89 41 10             	mov    %eax,0x10(%ecx)
c0038546:	8b 47 0c             	mov    0xc(%edi),%eax
c0038549:	89 41 14             	mov    %eax,0x14(%ecx)
c003854c:	74 1d                	je     c003856b <_realloc_r+0x57b>
c003854e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038551:	83 c7 10             	add    $0x10,%edi
c0038554:	e9 ad fe ff ff       	jmp    c0038406 <_realloc_r+0x416>
c0038559:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003855c:	89 04 24             	mov    %eax,(%esp)
c003855f:	e8 4c d6 ff ff       	call   c0035bb0 <__malloc_unlock>
c0038564:	31 c0                	xor    %eax,%eax
c0038566:	e9 0c fc ff ff       	jmp    c0038177 <_realloc_r+0x187>
c003856b:	8b 47 10             	mov    0x10(%edi),%eax
c003856e:	83 c7 18             	add    $0x18,%edi
c0038571:	89 41 18             	mov    %eax,0x18(%ecx)
c0038574:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038577:	8d 41 20             	lea    0x20(%ecx),%eax
c003857a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003857d:	e9 84 fe ff ff       	jmp    c0038406 <_realloc_r+0x416>
c0038582:	66 90                	xchg   %ax,%ax
c0038584:	66 90                	xchg   %ax,%ax
c0038586:	66 90                	xchg   %ax,%ax
c0038588:	66 90                	xchg   %ax,%ax
c003858a:	66 90                	xchg   %ax,%ax
c003858c:	66 90                	xchg   %ax,%ax
c003858e:	66 90                	xchg   %ax,%ax

c0038590 <cleanup_glue>:
c0038590:	55                   	push   %ebp
c0038591:	89 e5                	mov    %esp,%ebp
c0038593:	56                   	push   %esi
c0038594:	53                   	push   %ebx
c0038595:	83 ec 10             	sub    $0x10,%esp
c0038598:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003859b:	8b 75 08             	mov    0x8(%ebp),%esi
c003859e:	8b 03                	mov    (%ebx),%eax
c00385a0:	85 c0                	test   %eax,%eax
c00385a2:	74 0c                	je     c00385b0 <cleanup_glue+0x20>
c00385a4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385a8:	89 34 24             	mov    %esi,(%esp)
c00385ab:	e8 e0 ff ff ff       	call   c0038590 <cleanup_glue>
c00385b0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00385b3:	89 75 08             	mov    %esi,0x8(%ebp)
c00385b6:	83 c4 10             	add    $0x10,%esp
c00385b9:	5b                   	pop    %ebx
c00385ba:	5e                   	pop    %esi
c00385bb:	5d                   	pop    %ebp
c00385bc:	e9 3f f7 ff ff       	jmp    c0037d00 <_free_r>
c00385c1:	eb 0d                	jmp    c00385d0 <_reclaim_reent>
c00385c3:	90                   	nop
c00385c4:	90                   	nop
c00385c5:	90                   	nop
c00385c6:	90                   	nop
c00385c7:	90                   	nop
c00385c8:	90                   	nop
c00385c9:	90                   	nop
c00385ca:	90                   	nop
c00385cb:	90                   	nop
c00385cc:	90                   	nop
c00385cd:	90                   	nop
c00385ce:	90                   	nop
c00385cf:	90                   	nop

c00385d0 <_reclaim_reent>:
c00385d0:	55                   	push   %ebp
c00385d1:	89 e5                	mov    %esp,%ebp
c00385d3:	57                   	push   %edi
c00385d4:	56                   	push   %esi
c00385d5:	53                   	push   %ebx
c00385d6:	83 ec 1c             	sub    $0x1c,%esp
c00385d9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00385dc:	3b 1d 40 c0 03 c0    	cmp    0xc003c040,%ebx
c00385e2:	0f 84 a6 00 00 00    	je     c003868e <_reclaim_reent+0xbe>
c00385e8:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385eb:	85 d2                	test   %edx,%edx
c00385ed:	74 46                	je     c0038635 <_reclaim_reent+0x65>
c00385ef:	31 c0                	xor    %eax,%eax
c00385f1:	31 f6                	xor    %esi,%esi
c00385f3:	90                   	nop
c00385f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00385f8:	8b 04 82             	mov    (%edx,%eax,4),%eax
c00385fb:	85 c0                	test   %eax,%eax
c00385fd:	75 0b                	jne    c003860a <_reclaim_reent+0x3a>
c00385ff:	eb 1e                	jmp    c003861f <_reclaim_reent+0x4f>
c0038601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038608:	89 f8                	mov    %edi,%eax
c003860a:	8b 38                	mov    (%eax),%edi
c003860c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038610:	89 1c 24             	mov    %ebx,(%esp)
c0038613:	e8 e8 f6 ff ff       	call   c0037d00 <_free_r>
c0038618:	85 ff                	test   %edi,%edi
c003861a:	75 ec                	jne    c0038608 <_reclaim_reent+0x38>
c003861c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003861f:	83 c6 01             	add    $0x1,%esi
c0038622:	83 fe 20             	cmp    $0x20,%esi
c0038625:	89 f0                	mov    %esi,%eax
c0038627:	75 cf                	jne    c00385f8 <_reclaim_reent+0x28>
c0038629:	89 54 24 04          	mov    %edx,0x4(%esp)
c003862d:	89 1c 24             	mov    %ebx,(%esp)
c0038630:	e8 cb f6 ff ff       	call   c0037d00 <_free_r>
c0038635:	8b 43 40             	mov    0x40(%ebx),%eax
c0038638:	85 c0                	test   %eax,%eax
c003863a:	74 0c                	je     c0038648 <_reclaim_reent+0x78>
c003863c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038640:	89 1c 24             	mov    %ebx,(%esp)
c0038643:	e8 b8 f6 ff ff       	call   c0037d00 <_free_r>
c0038648:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c003864e:	85 c0                	test   %eax,%eax
c0038650:	74 22                	je     c0038674 <_reclaim_reent+0xa4>
c0038652:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038658:	39 f0                	cmp    %esi,%eax
c003865a:	75 06                	jne    c0038662 <_reclaim_reent+0x92>
c003865c:	eb 16                	jmp    c0038674 <_reclaim_reent+0xa4>
c003865e:	66 90                	xchg   %ax,%ax
c0038660:	89 f8                	mov    %edi,%eax
c0038662:	8b 38                	mov    (%eax),%edi
c0038664:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038668:	89 1c 24             	mov    %ebx,(%esp)
c003866b:	e8 90 f6 ff ff       	call   c0037d00 <_free_r>
c0038670:	39 fe                	cmp    %edi,%esi
c0038672:	75 ec                	jne    c0038660 <_reclaim_reent+0x90>
c0038674:	8b 43 54             	mov    0x54(%ebx),%eax
c0038677:	85 c0                	test   %eax,%eax
c0038679:	74 0c                	je     c0038687 <_reclaim_reent+0xb7>
c003867b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003867f:	89 1c 24             	mov    %ebx,(%esp)
c0038682:	e8 79 f6 ff ff       	call   c0037d00 <_free_r>
c0038687:	8b 43 38             	mov    0x38(%ebx),%eax
c003868a:	85 c0                	test   %eax,%eax
c003868c:	75 08                	jne    c0038696 <_reclaim_reent+0xc6>
c003868e:	83 c4 1c             	add    $0x1c,%esp
c0038691:	5b                   	pop    %ebx
c0038692:	5e                   	pop    %esi
c0038693:	5f                   	pop    %edi
c0038694:	5d                   	pop    %ebp
c0038695:	c3                   	ret    
c0038696:	89 1c 24             	mov    %ebx,(%esp)
c0038699:	ff 53 3c             	call   *0x3c(%ebx)
c003869c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c00386a2:	85 c0                	test   %eax,%eax
c00386a4:	74 e8                	je     c003868e <_reclaim_reent+0xbe>
c00386a6:	89 1c 24             	mov    %ebx,(%esp)
c00386a9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386ad:	e8 de fe ff ff       	call   c0038590 <cleanup_glue>
c00386b2:	83 c4 1c             	add    $0x1c,%esp
c00386b5:	5b                   	pop    %ebx
c00386b6:	5e                   	pop    %esi
c00386b7:	5f                   	pop    %edi
c00386b8:	5d                   	pop    %ebp
c00386b9:	c3                   	ret    
