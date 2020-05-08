
_rm:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    exit();
}


int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 08             	sub    $0x8,%esp
  14:	8b 31                	mov    (%ecx),%esi
  16:	8b 79 04             	mov    0x4(%ecx),%edi
	int i;

	if(argc < 2){
  19:	83 fe 01             	cmp    $0x1,%esi
  1c:	0f 8e 8d 00 00 00    	jle    af <main+0xaf>
		printf(2, "Error : insert 'rm --help' to help you\n");
		exit();
	}

	if (!strcmp(argv[1], "-r")) {
  22:	53                   	push   %ebx
  23:	53                   	push   %ebx
  24:	68 e1 0d 00 00       	push   $0xde1
  29:	ff 77 04             	pushl  0x4(%edi)
  2c:	e8 9f 06 00 00       	call   6d0 <strcmp>
  31:	83 c4 10             	add    $0x10,%esp
  34:	85 c0                	test   %eax,%eax
  36:	75 2a                	jne    62 <main+0x62>

		for (i = 2; i < argc; i++) {
  38:	83 fe 02             	cmp    $0x2,%esi
  3b:	74 20                	je     5d <main+0x5d>
  3d:	bb 02 00 00 00       	mov    $0x2,%ebx
  42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
			rm_recurse(argv[2]);
  48:	83 ec 0c             	sub    $0xc,%esp
  4b:	ff 77 08             	pushl  0x8(%edi)
		for (i = 2; i < argc; i++) {
  4e:	83 c3 01             	add    $0x1,%ebx
			rm_recurse(argv[2]);
  51:	e8 5a 02 00 00       	call   2b0 <rm_recurse>
		for (i = 2; i < argc; i++) {
  56:	83 c4 10             	add    $0x10,%esp
  59:	39 de                	cmp    %ebx,%esi
  5b:	75 eb                	jne    48 <main+0x48>
		for(i = 1; i < argc; i++){
			rm_file(".",argv[i]);
		}
	}

	exit();
  5d:	e8 90 08 00 00       	call   8f2 <exit>
	else if(!strcmp(argv[1], "*")){
  62:	51                   	push   %ecx
  63:	51                   	push   %ecx
  64:	68 e4 0d 00 00       	push   $0xde4
  69:	ff 77 04             	pushl  0x4(%edi)
  6c:	e8 5f 06 00 00       	call   6d0 <strcmp>
  71:	83 c4 10             	add    $0x10,%esp
  74:	85 c0                	test   %eax,%eax
  76:	74 4a                	je     c2 <main+0xc2>
	else if(!strcmp(argv[1], "--help")){
  78:	52                   	push   %edx
  79:	52                   	push   %edx
  7a:	68 e6 0d 00 00       	push   $0xde6
  7f:	ff 77 04             	pushl  0x4(%edi)
  82:	e8 49 06 00 00       	call   6d0 <strcmp>
  87:	83 c4 10             	add    $0x10,%esp
  8a:	85 c0                	test   %eax,%eax
  8c:	74 46                	je     d4 <main+0xd4>
  8e:	8d 5f 04             	lea    0x4(%edi),%ebx
  91:	8d 34 b7             	lea    (%edi,%esi,4),%esi
			rm_file(".",argv[i]);
  94:	50                   	push   %eax
  95:	50                   	push   %eax
  96:	83 c3 04             	add    $0x4,%ebx
  99:	ff 73 fc             	pushl  -0x4(%ebx)
  9c:	68 cc 0d 00 00       	push   $0xdcc
  a1:	e8 da 03 00 00       	call   480 <rm_file>
		for(i = 1; i < argc; i++){
  a6:	83 c4 10             	add    $0x10,%esp
  a9:	39 f3                	cmp    %esi,%ebx
  ab:	75 e7                	jne    94 <main+0x94>
  ad:	eb ae                	jmp    5d <main+0x5d>
		printf(2, "Error : insert 'rm --help' to help you\n");
  af:	56                   	push   %esi
  b0:	56                   	push   %esi
  b1:	68 7c 0f 00 00       	push   $0xf7c
  b6:	6a 02                	push   $0x2
  b8:	e8 83 09 00 00       	call   a40 <printf>
		exit();
  bd:	e8 30 08 00 00       	call   8f2 <exit>
		rm_all(".");
  c2:	83 ec 0c             	sub    $0xc,%esp
  c5:	68 cc 0d 00 00       	push   $0xdcc
  ca:	e8 21 00 00 00       	call   f0 <rm_all>
  cf:	83 c4 10             	add    $0x10,%esp
  d2:	eb 89                	jmp    5d <main+0x5d>
		rm_help();
  d4:	e8 57 05 00 00       	call   630 <rm_help>
  d9:	66 90                	xchg   %ax,%ax
  db:	66 90                	xchg   %ax,%ax
  dd:	66 90                	xchg   %ax,%ax
  df:	90                   	nop

000000e0 <rm>:
void rm(char *s) {
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
}
  e3:	5d                   	pop    %ebp
	unlink(s);
  e4:	e9 59 08 00 00       	jmp    942 <unlink>
  e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000000f0 <rm_all>:
void rm_all(char *path){
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	57                   	push   %edi
  f4:	56                   	push   %esi
  f5:	53                   	push   %ebx
  f6:	81 ec 50 02 00 00    	sub    $0x250,%esp
  fc:	8b 75 08             	mov    0x8(%ebp),%esi
	printf(1,"path : %s\n",path);
  ff:	56                   	push   %esi
 100:	68 98 0d 00 00       	push   $0xd98
 105:	6a 01                	push   $0x1
 107:	e8 34 09 00 00       	call   a40 <printf>
	if((fd = open(path, 0)) < 0){
 10c:	59                   	pop    %ecx
 10d:	5b                   	pop    %ebx
 10e:	6a 00                	push   $0x0
 110:	56                   	push   %esi
 111:	e8 1c 08 00 00       	call   932 <open>
 116:	83 c4 10             	add    $0x10,%esp
 119:	85 c0                	test   %eax,%eax
 11b:	0f 88 4f 01 00 00    	js     270 <rm_all+0x180>
 121:	89 c3                	mov    %eax,%ebx
	if(fstat(fd, &st) < 0){
 123:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
 129:	83 ec 08             	sub    $0x8,%esp
 12c:	50                   	push   %eax
 12d:	53                   	push   %ebx
 12e:	e8 17 08 00 00       	call   94a <fstat>
 133:	83 c4 10             	add    $0x10,%esp
 136:	85 c0                	test   %eax,%eax
 138:	0f 88 f2 00 00 00    	js     230 <rm_all+0x140>
	strcpy(buf, path);
 13e:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 144:	83 ec 08             	sub    $0x8,%esp
        if(de.inum == 0 || !strcmp(de.name, ".") || !strcmp(de.name, ".."))
 147:	8d bd c6 fd ff ff    	lea    -0x23a(%ebp),%edi
	strcpy(buf, path);
 14d:	56                   	push   %esi
 14e:	8d b5 c4 fd ff ff    	lea    -0x23c(%ebp),%esi
 154:	50                   	push   %eax
 155:	e8 46 05 00 00       	call   6a0 <strcpy>
    p = buf+strlen(buf);
 15a:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 160:	89 04 24             	mov    %eax,(%esp)
 163:	e8 b8 05 00 00       	call   720 <strlen>
 168:	8d 95 e8 fd ff ff    	lea    -0x218(%ebp),%edx
    while (read(fd,&de,sizeof(de))==sizeof(de))
 16e:	83 c4 10             	add    $0x10,%esp
    p = buf+strlen(buf);
 171:	01 d0                	add    %edx,%eax
    *p++ = '/';
 173:	8d 48 01             	lea    0x1(%eax),%ecx
 176:	c6 00 2f             	movb   $0x2f,(%eax)
 179:	89 8d b4 fd ff ff    	mov    %ecx,-0x24c(%ebp)
 17f:	90                   	nop
    while (read(fd,&de,sizeof(de))==sizeof(de))
 180:	83 ec 04             	sub    $0x4,%esp
 183:	6a 10                	push   $0x10
 185:	56                   	push   %esi
 186:	53                   	push   %ebx
 187:	e8 7e 07 00 00       	call   90a <read>
 18c:	83 c4 10             	add    $0x10,%esp
 18f:	83 f8 10             	cmp    $0x10,%eax
 192:	0f 85 c0 00 00 00    	jne    258 <rm_all+0x168>
        if(de.inum == 0 || !strcmp(de.name, ".") || !strcmp(de.name, ".."))
 198:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 19f:	00 
 1a0:	74 de                	je     180 <rm_all+0x90>
 1a2:	83 ec 08             	sub    $0x8,%esp
 1a5:	68 cc 0d 00 00       	push   $0xdcc
 1aa:	57                   	push   %edi
 1ab:	e8 20 05 00 00       	call   6d0 <strcmp>
 1b0:	83 c4 10             	add    $0x10,%esp
 1b3:	85 c0                	test   %eax,%eax
 1b5:	74 c9                	je     180 <rm_all+0x90>
 1b7:	83 ec 08             	sub    $0x8,%esp
 1ba:	68 cb 0d 00 00       	push   $0xdcb
 1bf:	57                   	push   %edi
 1c0:	e8 0b 05 00 00       	call   6d0 <strcmp>
 1c5:	83 c4 10             	add    $0x10,%esp
 1c8:	85 c0                	test   %eax,%eax
 1ca:	74 b4                	je     180 <rm_all+0x90>
		memmove(p,de.name,DIRSIZ);
 1cc:	83 ec 04             	sub    $0x4,%esp
 1cf:	6a 0e                	push   $0xe
 1d1:	57                   	push   %edi
 1d2:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 1d8:	e8 e3 06 00 00       	call   8c0 <memmove>
		if(stat(buf, &st) < 0)
 1dd:	58                   	pop    %eax
 1de:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
 1e4:	5a                   	pop    %edx
 1e5:	50                   	push   %eax
 1e6:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1ec:	50                   	push   %eax
 1ed:	e8 3e 06 00 00       	call   830 <stat>
 1f2:	83 c4 10             	add    $0x10,%esp
 1f5:	85 c0                	test   %eax,%eax
 1f7:	78 87                	js     180 <rm_all+0x90>
		switch (st.type)
 1f9:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 200:	66 83 f8 01          	cmp    $0x1,%ax
 204:	0f 84 86 00 00 00    	je     290 <rm_all+0x1a0>
 20a:	66 83 f8 02          	cmp    $0x2,%ax
 20e:	0f 85 6c ff ff ff    	jne    180 <rm_all+0x90>
	unlink(s);
 214:	83 ec 0c             	sub    $0xc,%esp
 217:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 21d:	e8 20 07 00 00       	call   942 <unlink>
 222:	83 c4 10             	add    $0x10,%esp
 225:	e9 56 ff ff ff       	jmp    180 <rm_all+0x90>
 22a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		printf(2, "ls: cannot stat %s\n", path);
 230:	83 ec 04             	sub    $0x4,%esp
 233:	56                   	push   %esi
 234:	68 b7 0d 00 00       	push   $0xdb7
 239:	6a 02                	push   $0x2
 23b:	e8 00 08 00 00       	call   a40 <printf>
		close(fd);
 240:	89 1c 24             	mov    %ebx,(%esp)
 243:	e8 d2 06 00 00       	call   91a <close>
		return;
 248:	83 c4 10             	add    $0x10,%esp
}
 24b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 24e:	5b                   	pop    %ebx
 24f:	5e                   	pop    %esi
 250:	5f                   	pop    %edi
 251:	5d                   	pop    %ebp
 252:	c3                   	ret    
 253:	90                   	nop
 254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	close(fd);
 258:	83 ec 0c             	sub    $0xc,%esp
 25b:	53                   	push   %ebx
 25c:	e8 b9 06 00 00       	call   91a <close>
 261:	83 c4 10             	add    $0x10,%esp
}
 264:	8d 65 f4             	lea    -0xc(%ebp),%esp
 267:	5b                   	pop    %ebx
 268:	5e                   	pop    %esi
 269:	5f                   	pop    %edi
 26a:	5d                   	pop    %ebp
 26b:	c3                   	ret    
 26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		printf(2, "ls: cannot open %s\n", path);
 270:	83 ec 04             	sub    $0x4,%esp
 273:	56                   	push   %esi
 274:	68 a3 0d 00 00       	push   $0xda3
 279:	6a 02                	push   $0x2
 27b:	e8 c0 07 00 00       	call   a40 <printf>
		return;
 280:	83 c4 10             	add    $0x10,%esp
}
 283:	8d 65 f4             	lea    -0xc(%ebp),%esp
 286:	5b                   	pop    %ebx
 287:	5e                   	pop    %esi
 288:	5f                   	pop    %edi
 289:	5d                   	pop    %ebp
 28a:	c3                   	ret    
 28b:	90                   	nop
 28c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
				printf(1,"rm : cannot remove '%s' : Is a directory\n",p);
 290:	83 ec 04             	sub    $0x4,%esp
 293:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 299:	68 f0 0d 00 00       	push   $0xdf0
 29e:	6a 01                	push   $0x1
 2a0:	e8 9b 07 00 00       	call   a40 <printf>
				break;
 2a5:	83 c4 10             	add    $0x10,%esp
 2a8:	e9 d3 fe ff ff       	jmp    180 <rm_all+0x90>
 2ad:	8d 76 00             	lea    0x0(%esi),%esi

000002b0 <rm_recurse>:
void rm_recurse(char *dir) {
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	56                   	push   %esi
 2b5:	53                   	push   %ebx
 2b6:	81 ec 54 02 00 00    	sub    $0x254,%esp
 2bc:	8b 75 08             	mov    0x8(%ebp),%esi
	fd = open(dir, O_RDONLY);
 2bf:	6a 00                	push   $0x0
 2c1:	56                   	push   %esi
 2c2:	e8 6b 06 00 00       	call   932 <open>
	fstat(fd, &st);
 2c7:	59                   	pop    %ecx
 2c8:	5f                   	pop    %edi
 2c9:	8d bd d4 fd ff ff    	lea    -0x22c(%ebp),%edi
	fd = open(dir, O_RDONLY);
 2cf:	89 c3                	mov    %eax,%ebx
	fstat(fd, &st);
 2d1:	57                   	push   %edi
 2d2:	50                   	push   %eax
 2d3:	e8 72 06 00 00       	call   94a <fstat>
	if(st.type == T_DIR){
 2d8:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 2df:	83 c4 10             	add    $0x10,%esp
 2e2:	66 83 f8 01          	cmp    $0x1,%ax
 2e6:	74 40                	je     328 <rm_recurse+0x78>
	switch (st.type) {
 2e8:	66 83 f8 02          	cmp    $0x2,%ax
 2ec:	74 22                	je     310 <rm_recurse+0x60>
	unlink(s);
 2ee:	83 ec 0c             	sub    $0xc,%esp
 2f1:	56                   	push   %esi
 2f2:	e8 4b 06 00 00       	call   942 <unlink>
 2f7:	83 c4 10             	add    $0x10,%esp
	close(fd);
 2fa:	83 ec 0c             	sub    $0xc,%esp
 2fd:	53                   	push   %ebx
 2fe:	e8 17 06 00 00       	call   91a <close>
} 
 303:	83 c4 10             	add    $0x10,%esp
 306:	8d 65 f4             	lea    -0xc(%ebp),%esp
 309:	5b                   	pop    %ebx
 30a:	5e                   	pop    %esi
 30b:	5f                   	pop    %edi
 30c:	5d                   	pop    %ebp
 30d:	c3                   	ret    
 30e:	66 90                	xchg   %ax,%ax
			printf(1,"rm : cannot remove '%s' : Is a file \n",dir);
 310:	83 ec 04             	sub    $0x4,%esp
 313:	56                   	push   %esi
 314:	68 1c 0e 00 00       	push   $0xe1c
 319:	6a 01                	push   $0x1
 31b:	e8 20 07 00 00       	call   a40 <printf>
 320:	83 c4 10             	add    $0x10,%esp
 323:	eb d5                	jmp    2fa <rm_recurse+0x4a>
 325:	8d 76 00             	lea    0x0(%esi),%esi
	unlink(s);
 328:	83 ec 0c             	sub    $0xc,%esp
 32b:	56                   	push   %esi
 32c:	e8 11 06 00 00       	call   942 <unlink>
 331:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 338:	83 c4 10             	add    $0x10,%esp
	switch (st.type) {
 33b:	66 83 f8 01          	cmp    $0x1,%ax
 33f:	75 a7                	jne    2e8 <rm_recurse+0x38>
			strcpy(buf, dir);
 341:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 347:	83 ec 08             	sub    $0x8,%esp
 34a:	56                   	push   %esi
 34b:	50                   	push   %eax
 34c:	e8 4f 03 00 00       	call   6a0 <strcpy>
			p = buf+strlen(buf);
 351:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 357:	89 04 24             	mov    %eax,(%esp)
 35a:	e8 c1 03 00 00       	call   720 <strlen>
 35f:	8d 95 e8 fd ff ff    	lea    -0x218(%ebp),%edx
			while(read(fd, &de, sizeof(de)) == sizeof(de)) {
 365:	83 c4 10             	add    $0x10,%esp
			p = buf+strlen(buf);
 368:	01 d0                	add    %edx,%eax
			*p = '/';
 36a:	c6 00 2f             	movb   $0x2f,(%eax)
			p++;
 36d:	83 c0 01             	add    $0x1,%eax
 370:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
			while(read(fd, &de, sizeof(de)) == sizeof(de)) {
 376:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 37c:	83 ec 04             	sub    $0x4,%esp
 37f:	6a 10                	push   $0x10
 381:	50                   	push   %eax
 382:	53                   	push   %ebx
 383:	e8 82 05 00 00       	call   90a <read>
 388:	83 c4 10             	add    $0x10,%esp
 38b:	83 f8 10             	cmp    $0x10,%eax
 38e:	0f 85 5a ff ff ff    	jne    2ee <rm_recurse+0x3e>
				if(de.inum == 0 || !strcmp(de.name, ".") || !strcmp(de.name, ".."))
 394:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 39b:	00 
 39c:	74 d8                	je     376 <rm_recurse+0xc6>
 39e:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 3a4:	83 ec 08             	sub    $0x8,%esp
 3a7:	68 cc 0d 00 00       	push   $0xdcc
 3ac:	50                   	push   %eax
 3ad:	e8 1e 03 00 00       	call   6d0 <strcmp>
 3b2:	83 c4 10             	add    $0x10,%esp
 3b5:	85 c0                	test   %eax,%eax
 3b7:	74 bd                	je     376 <rm_recurse+0xc6>
 3b9:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 3bf:	83 ec 08             	sub    $0x8,%esp
 3c2:	68 cb 0d 00 00       	push   $0xdcb
 3c7:	50                   	push   %eax
 3c8:	e8 03 03 00 00       	call   6d0 <strcmp>
 3cd:	83 c4 10             	add    $0x10,%esp
 3d0:	85 c0                	test   %eax,%eax
 3d2:	74 a2                	je     376 <rm_recurse+0xc6>
				memmove(p, de.name, strlen(de.name));
 3d4:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 3da:	83 ec 0c             	sub    $0xc,%esp
 3dd:	50                   	push   %eax
 3de:	e8 3d 03 00 00       	call   720 <strlen>
 3e3:	83 c4 0c             	add    $0xc,%esp
 3e6:	50                   	push   %eax
 3e7:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 3ed:	50                   	push   %eax
 3ee:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 3f4:	e8 c7 04 00 00       	call   8c0 <memmove>
				p[strlen(de.name)] = 0;
 3f9:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 3ff:	89 04 24             	mov    %eax,(%esp)
 402:	e8 19 03 00 00       	call   720 <strlen>
 407:	8b 8d b4 fd ff ff    	mov    -0x24c(%ebp),%ecx
 40d:	c6 04 01 00          	movb   $0x0,(%ecx,%eax,1)
				fstat(open(buf, O_RDONLY), &st);
 411:	58                   	pop    %eax
 412:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 418:	5a                   	pop    %edx
 419:	6a 00                	push   $0x0
 41b:	50                   	push   %eax
 41c:	e8 11 05 00 00       	call   932 <open>
 421:	59                   	pop    %ecx
 422:	5a                   	pop    %edx
 423:	57                   	push   %edi
 424:	50                   	push   %eax
 425:	e8 20 05 00 00       	call   94a <fstat>
				if (st.type == T_FILE){
 42a:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 431:	83 c4 10             	add    $0x10,%esp
 434:	66 83 f8 02          	cmp    $0x2,%ax
 438:	74 26                	je     460 <rm_recurse+0x1b0>
				else if (st.type == T_DIR){
 43a:	66 83 f8 01          	cmp    $0x1,%ax
 43e:	0f 85 32 ff ff ff    	jne    376 <rm_recurse+0xc6>
					rm_recurse(buf);
 444:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 44a:	83 ec 0c             	sub    $0xc,%esp
 44d:	50                   	push   %eax
 44e:	e8 5d fe ff ff       	call   2b0 <rm_recurse>
 453:	83 c4 10             	add    $0x10,%esp
 456:	e9 1b ff ff ff       	jmp    376 <rm_recurse+0xc6>
 45b:	90                   	nop
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	unlink(s);
 460:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 466:	83 ec 0c             	sub    $0xc,%esp
 469:	50                   	push   %eax
 46a:	e8 d3 04 00 00       	call   942 <unlink>
 46f:	83 c4 10             	add    $0x10,%esp
 472:	e9 ff fe ff ff       	jmp    376 <rm_recurse+0xc6>
 477:	89 f6                	mov    %esi,%esi
 479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000480 <rm_file>:
void rm_file(char *path, char* file){
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	57                   	push   %edi
 484:	56                   	push   %esi
 485:	53                   	push   %ebx
 486:	81 ec 54 02 00 00    	sub    $0x254,%esp
 48c:	8b 75 08             	mov    0x8(%ebp),%esi
	if((fd = open(path, 0)) < 0){
 48f:	6a 00                	push   $0x0
 491:	56                   	push   %esi
 492:	e8 9b 04 00 00       	call   932 <open>
 497:	83 c4 10             	add    $0x10,%esp
 49a:	85 c0                	test   %eax,%eax
 49c:	0f 88 46 01 00 00    	js     5e8 <rm_file+0x168>
 4a2:	89 c3                	mov    %eax,%ebx
	if(fstat(fd, &st) < 0){
 4a4:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
 4aa:	83 ec 08             	sub    $0x8,%esp
 4ad:	50                   	push   %eax
 4ae:	53                   	push   %ebx
 4af:	e8 96 04 00 00       	call   94a <fstat>
 4b4:	83 c4 10             	add    $0x10,%esp
 4b7:	85 c0                	test   %eax,%eax
 4b9:	0f 88 01 01 00 00    	js     5c0 <rm_file+0x140>
	strcpy(buf, path);
 4bf:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 4c5:	83 ec 08             	sub    $0x8,%esp
        if(de.inum == 0 || !strcmp(de.name, ".") || !strcmp(de.name, ".."))
 4c8:	8d bd c6 fd ff ff    	lea    -0x23a(%ebp),%edi
	strcpy(buf, path);
 4ce:	56                   	push   %esi
 4cf:	8d b5 c4 fd ff ff    	lea    -0x23c(%ebp),%esi
 4d5:	50                   	push   %eax
 4d6:	e8 c5 01 00 00       	call   6a0 <strcpy>
    p = buf+strlen(buf);
 4db:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 4e1:	89 04 24             	mov    %eax,(%esp)
 4e4:	e8 37 02 00 00       	call   720 <strlen>
 4e9:	8d 95 e8 fd ff ff    	lea    -0x218(%ebp),%edx
    while (read(fd,&de,sizeof(de))==sizeof(de))
 4ef:	83 c4 10             	add    $0x10,%esp
    p = buf+strlen(buf);
 4f2:	01 d0                	add    %edx,%eax
    *p++ = '/';
 4f4:	8d 48 01             	lea    0x1(%eax),%ecx
 4f7:	c6 00 2f             	movb   $0x2f,(%eax)
 4fa:	89 8d b4 fd ff ff    	mov    %ecx,-0x24c(%ebp)
    while (read(fd,&de,sizeof(de))==sizeof(de))
 500:	83 ec 04             	sub    $0x4,%esp
 503:	6a 10                	push   $0x10
 505:	56                   	push   %esi
 506:	53                   	push   %ebx
 507:	e8 fe 03 00 00       	call   90a <read>
 50c:	83 c4 10             	add    $0x10,%esp
 50f:	83 f8 10             	cmp    $0x10,%eax
 512:	0f 85 c3 00 00 00    	jne    5db <rm_file+0x15b>
        if(de.inum == 0 || !strcmp(de.name, ".") || !strcmp(de.name, ".."))
 518:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 51f:	00 
 520:	74 de                	je     500 <rm_file+0x80>
 522:	83 ec 08             	sub    $0x8,%esp
 525:	68 cc 0d 00 00       	push   $0xdcc
 52a:	57                   	push   %edi
 52b:	e8 a0 01 00 00       	call   6d0 <strcmp>
 530:	83 c4 10             	add    $0x10,%esp
 533:	85 c0                	test   %eax,%eax
 535:	74 c9                	je     500 <rm_file+0x80>
 537:	83 ec 08             	sub    $0x8,%esp
 53a:	68 cb 0d 00 00       	push   $0xdcb
 53f:	57                   	push   %edi
 540:	e8 8b 01 00 00       	call   6d0 <strcmp>
 545:	83 c4 10             	add    $0x10,%esp
 548:	85 c0                	test   %eax,%eax
 54a:	74 b4                	je     500 <rm_file+0x80>
		memmove(p,de.name,DIRSIZ);
 54c:	83 ec 04             	sub    $0x4,%esp
 54f:	6a 0e                	push   $0xe
 551:	57                   	push   %edi
 552:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 558:	e8 63 03 00 00       	call   8c0 <memmove>
		if(stat(buf, &st) < 0)
 55d:	58                   	pop    %eax
 55e:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
 564:	5a                   	pop    %edx
 565:	50                   	push   %eax
 566:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 56c:	50                   	push   %eax
 56d:	e8 be 02 00 00       	call   830 <stat>
 572:	83 c4 10             	add    $0x10,%esp
 575:	85 c0                	test   %eax,%eax
 577:	78 87                	js     500 <rm_file+0x80>
		if(strcmp(de.name,file)==0){
 579:	83 ec 08             	sub    $0x8,%esp
 57c:	ff 75 0c             	pushl  0xc(%ebp)
 57f:	57                   	push   %edi
 580:	e8 4b 01 00 00       	call   6d0 <strcmp>
 585:	83 c4 10             	add    $0x10,%esp
 588:	85 c0                	test   %eax,%eax
 58a:	0f 85 70 ff ff ff    	jne    500 <rm_file+0x80>
		switch (st.type)
 590:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 597:	66 83 f8 01          	cmp    $0x1,%ax
 59b:	74 6b                	je     608 <rm_file+0x188>
 59d:	66 83 f8 02          	cmp    $0x2,%ax
 5a1:	0f 85 59 ff ff ff    	jne    500 <rm_file+0x80>
	unlink(s);
 5a7:	83 ec 0c             	sub    $0xc,%esp
 5aa:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 5b0:	e8 8d 03 00 00       	call   942 <unlink>
 5b5:	83 c4 10             	add    $0x10,%esp
 5b8:	e9 43 ff ff ff       	jmp    500 <rm_file+0x80>
 5bd:	8d 76 00             	lea    0x0(%esi),%esi
		printf(2, "ls: cannot stat %s\n", path);
 5c0:	83 ec 04             	sub    $0x4,%esp
 5c3:	56                   	push   %esi
 5c4:	68 b7 0d 00 00       	push   $0xdb7
 5c9:	6a 02                	push   $0x2
 5cb:	e8 70 04 00 00       	call   a40 <printf>
		close(fd);
 5d0:	89 1c 24             	mov    %ebx,(%esp)
 5d3:	e8 42 03 00 00       	call   91a <close>
		return;
 5d8:	83 c4 10             	add    $0x10,%esp
}
 5db:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5de:	5b                   	pop    %ebx
 5df:	5e                   	pop    %esi
 5e0:	5f                   	pop    %edi
 5e1:	5d                   	pop    %ebp
 5e2:	c3                   	ret    
 5e3:	90                   	nop
 5e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		printf(2, "ls: cannot open %s\n", path);
 5e8:	83 ec 04             	sub    $0x4,%esp
 5eb:	56                   	push   %esi
 5ec:	68 a3 0d 00 00       	push   $0xda3
 5f1:	6a 02                	push   $0x2
 5f3:	e8 48 04 00 00       	call   a40 <printf>
		return;
 5f8:	83 c4 10             	add    $0x10,%esp
}
 5fb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5fe:	5b                   	pop    %ebx
 5ff:	5e                   	pop    %esi
 600:	5f                   	pop    %edi
 601:	5d                   	pop    %ebp
 602:	c3                   	ret    
 603:	90                   	nop
 604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
				printf(1,"Cannot remove %s , it's not a file \n",file);
 608:	83 ec 04             	sub    $0x4,%esp
 60b:	ff 75 0c             	pushl  0xc(%ebp)
 60e:	68 44 0e 00 00       	push   $0xe44
 613:	6a 01                	push   $0x1
 615:	e8 26 04 00 00       	call   a40 <printf>
				break;
 61a:	83 c4 10             	add    $0x10,%esp
 61d:	e9 de fe ff ff       	jmp    500 <rm_file+0x80>
 622:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000630 <rm_help>:
void rm_help(){
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	83 ec 10             	sub    $0x10,%esp
	printf(1,"\nUsage:\n");
 636:	68 ce 0d 00 00       	push   $0xdce
 63b:	6a 01                	push   $0x1
 63d:	e8 fe 03 00 00       	call   a40 <printf>
    printf(1,"rm [filename] => to remove file\n\n");
 642:	58                   	pop    %eax
 643:	5a                   	pop    %edx
 644:	68 6c 0e 00 00       	push   $0xe6c
 649:	6a 01                	push   $0x1
 64b:	e8 f0 03 00 00       	call   a40 <printf>
    printf(1,"rm [OPTION] [directory name] => tor remove directory\n\n");
 650:	59                   	pop    %ecx
 651:	58                   	pop    %eax
 652:	68 90 0e 00 00       	push   $0xe90
 657:	6a 01                	push   $0x1
 659:	e8 e2 03 00 00       	call   a40 <printf>
    printf(1,"Options:\n");
 65e:	58                   	pop    %eax
 65f:	5a                   	pop    %edx
 660:	68 d7 0d 00 00       	push   $0xdd7
 665:	6a 01                	push   $0x1
 667:	e8 d4 03 00 00       	call   a40 <printf>
    printf(1,"-r : opsi rekursif, menghapus directory berdasarkan kontennya\n\n");
 66c:	59                   	pop    %ecx
 66d:	58                   	pop    %eax
 66e:	68 c8 0e 00 00       	push   $0xec8
 673:	6a 01                	push   $0x1
 675:	e8 c6 03 00 00       	call   a40 <printf>
    printf(1," * : menghapus semua isi file atau directory pada sebuah directory\n\n");
 67a:	58                   	pop    %eax
 67b:	5a                   	pop    %edx
 67c:	68 08 0f 00 00       	push   $0xf08
 681:	6a 01                	push   $0x1
 683:	e8 b8 03 00 00       	call   a40 <printf>
    printf(1,"--help : Memperlihatkan bantuan lalu exit\n\n");
 688:	59                   	pop    %ecx
 689:	58                   	pop    %eax
 68a:	68 50 0f 00 00       	push   $0xf50
 68f:	6a 01                	push   $0x1
 691:	e8 aa 03 00 00       	call   a40 <printf>
    exit();
 696:	e8 57 02 00 00       	call   8f2 <exit>
 69b:	66 90                	xchg   %ax,%ax
 69d:	66 90                	xchg   %ax,%ax
 69f:	90                   	nop

000006a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	53                   	push   %ebx
 6a4:	8b 45 08             	mov    0x8(%ebp),%eax
 6a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 6aa:	89 c2                	mov    %eax,%edx
 6ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6b0:	83 c1 01             	add    $0x1,%ecx
 6b3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 6b7:	83 c2 01             	add    $0x1,%edx
 6ba:	84 db                	test   %bl,%bl
 6bc:	88 5a ff             	mov    %bl,-0x1(%edx)
 6bf:	75 ef                	jne    6b0 <strcpy+0x10>
    ;
  return os;
}
 6c1:	5b                   	pop    %ebx
 6c2:	5d                   	pop    %ebp
 6c3:	c3                   	ret    
 6c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 6ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000006d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	53                   	push   %ebx
 6d4:	8b 55 08             	mov    0x8(%ebp),%edx
 6d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 6da:	0f b6 02             	movzbl (%edx),%eax
 6dd:	0f b6 19             	movzbl (%ecx),%ebx
 6e0:	84 c0                	test   %al,%al
 6e2:	75 1c                	jne    700 <strcmp+0x30>
 6e4:	eb 2a                	jmp    710 <strcmp+0x40>
 6e6:	8d 76 00             	lea    0x0(%esi),%esi
 6e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 6f0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 6f3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 6f6:	83 c1 01             	add    $0x1,%ecx
 6f9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 6fc:	84 c0                	test   %al,%al
 6fe:	74 10                	je     710 <strcmp+0x40>
 700:	38 d8                	cmp    %bl,%al
 702:	74 ec                	je     6f0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 704:	29 d8                	sub    %ebx,%eax
}
 706:	5b                   	pop    %ebx
 707:	5d                   	pop    %ebp
 708:	c3                   	ret    
 709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 710:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 712:	29 d8                	sub    %ebx,%eax
}
 714:	5b                   	pop    %ebx
 715:	5d                   	pop    %ebp
 716:	c3                   	ret    
 717:	89 f6                	mov    %esi,%esi
 719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000720 <strlen>:

uint
strlen(const char *s)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 726:	80 39 00             	cmpb   $0x0,(%ecx)
 729:	74 15                	je     740 <strlen+0x20>
 72b:	31 d2                	xor    %edx,%edx
 72d:	8d 76 00             	lea    0x0(%esi),%esi
 730:	83 c2 01             	add    $0x1,%edx
 733:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 737:	89 d0                	mov    %edx,%eax
 739:	75 f5                	jne    730 <strlen+0x10>
    ;
  return n;
}
 73b:	5d                   	pop    %ebp
 73c:	c3                   	ret    
 73d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 740:	31 c0                	xor    %eax,%eax
}
 742:	5d                   	pop    %ebp
 743:	c3                   	ret    
 744:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 74a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000750 <memset>:

void*
memset(void *dst, int c, uint n)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
 754:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 757:	8b 4d 10             	mov    0x10(%ebp),%ecx
 75a:	8b 45 0c             	mov    0xc(%ebp),%eax
 75d:	89 d7                	mov    %edx,%edi
 75f:	fc                   	cld    
 760:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 762:	89 d0                	mov    %edx,%eax
 764:	5f                   	pop    %edi
 765:	5d                   	pop    %ebp
 766:	c3                   	ret    
 767:	89 f6                	mov    %esi,%esi
 769:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000770 <strchr>:

char*
strchr(const char *s, char c)
{
 770:	55                   	push   %ebp
 771:	89 e5                	mov    %esp,%ebp
 773:	53                   	push   %ebx
 774:	8b 45 08             	mov    0x8(%ebp),%eax
 777:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 77a:	0f b6 10             	movzbl (%eax),%edx
 77d:	84 d2                	test   %dl,%dl
 77f:	74 1d                	je     79e <strchr+0x2e>
    if(*s == c)
 781:	38 d3                	cmp    %dl,%bl
 783:	89 d9                	mov    %ebx,%ecx
 785:	75 0d                	jne    794 <strchr+0x24>
 787:	eb 17                	jmp    7a0 <strchr+0x30>
 789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 790:	38 ca                	cmp    %cl,%dl
 792:	74 0c                	je     7a0 <strchr+0x30>
  for(; *s; s++)
 794:	83 c0 01             	add    $0x1,%eax
 797:	0f b6 10             	movzbl (%eax),%edx
 79a:	84 d2                	test   %dl,%dl
 79c:	75 f2                	jne    790 <strchr+0x20>
      return (char*)s;
  return 0;
 79e:	31 c0                	xor    %eax,%eax
}
 7a0:	5b                   	pop    %ebx
 7a1:	5d                   	pop    %ebp
 7a2:	c3                   	ret    
 7a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 7a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000007b0 <gets>:

char*
gets(char *buf, int max)
{
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	57                   	push   %edi
 7b4:	56                   	push   %esi
 7b5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 7b6:	31 f6                	xor    %esi,%esi
 7b8:	89 f3                	mov    %esi,%ebx
{
 7ba:	83 ec 1c             	sub    $0x1c,%esp
 7bd:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 7c0:	eb 2f                	jmp    7f1 <gets+0x41>
 7c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 7c8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7cb:	83 ec 04             	sub    $0x4,%esp
 7ce:	6a 01                	push   $0x1
 7d0:	50                   	push   %eax
 7d1:	6a 00                	push   $0x0
 7d3:	e8 32 01 00 00       	call   90a <read>
    if(cc < 1)
 7d8:	83 c4 10             	add    $0x10,%esp
 7db:	85 c0                	test   %eax,%eax
 7dd:	7e 1c                	jle    7fb <gets+0x4b>
      break;
    buf[i++] = c;
 7df:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 7e3:	83 c7 01             	add    $0x1,%edi
 7e6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 7e9:	3c 0a                	cmp    $0xa,%al
 7eb:	74 23                	je     810 <gets+0x60>
 7ed:	3c 0d                	cmp    $0xd,%al
 7ef:	74 1f                	je     810 <gets+0x60>
  for(i=0; i+1 < max; ){
 7f1:	83 c3 01             	add    $0x1,%ebx
 7f4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 7f7:	89 fe                	mov    %edi,%esi
 7f9:	7c cd                	jl     7c8 <gets+0x18>
 7fb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 7fd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 800:	c6 03 00             	movb   $0x0,(%ebx)
}
 803:	8d 65 f4             	lea    -0xc(%ebp),%esp
 806:	5b                   	pop    %ebx
 807:	5e                   	pop    %esi
 808:	5f                   	pop    %edi
 809:	5d                   	pop    %ebp
 80a:	c3                   	ret    
 80b:	90                   	nop
 80c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 810:	8b 75 08             	mov    0x8(%ebp),%esi
 813:	8b 45 08             	mov    0x8(%ebp),%eax
 816:	01 de                	add    %ebx,%esi
 818:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 81a:	c6 03 00             	movb   $0x0,(%ebx)
}
 81d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 820:	5b                   	pop    %ebx
 821:	5e                   	pop    %esi
 822:	5f                   	pop    %edi
 823:	5d                   	pop    %ebp
 824:	c3                   	ret    
 825:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000830 <stat>:

int
stat(const char *n, struct stat *st)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	56                   	push   %esi
 834:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 835:	83 ec 08             	sub    $0x8,%esp
 838:	6a 00                	push   $0x0
 83a:	ff 75 08             	pushl  0x8(%ebp)
 83d:	e8 f0 00 00 00       	call   932 <open>
  if(fd < 0)
 842:	83 c4 10             	add    $0x10,%esp
 845:	85 c0                	test   %eax,%eax
 847:	78 27                	js     870 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 849:	83 ec 08             	sub    $0x8,%esp
 84c:	ff 75 0c             	pushl  0xc(%ebp)
 84f:	89 c3                	mov    %eax,%ebx
 851:	50                   	push   %eax
 852:	e8 f3 00 00 00       	call   94a <fstat>
  close(fd);
 857:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 85a:	89 c6                	mov    %eax,%esi
  close(fd);
 85c:	e8 b9 00 00 00       	call   91a <close>
  return r;
 861:	83 c4 10             	add    $0x10,%esp
}
 864:	8d 65 f8             	lea    -0x8(%ebp),%esp
 867:	89 f0                	mov    %esi,%eax
 869:	5b                   	pop    %ebx
 86a:	5e                   	pop    %esi
 86b:	5d                   	pop    %ebp
 86c:	c3                   	ret    
 86d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 870:	be ff ff ff ff       	mov    $0xffffffff,%esi
 875:	eb ed                	jmp    864 <stat+0x34>
 877:	89 f6                	mov    %esi,%esi
 879:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000880 <atoi>:

int
atoi(const char *s)
{
 880:	55                   	push   %ebp
 881:	89 e5                	mov    %esp,%ebp
 883:	53                   	push   %ebx
 884:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 887:	0f be 11             	movsbl (%ecx),%edx
 88a:	8d 42 d0             	lea    -0x30(%edx),%eax
 88d:	3c 09                	cmp    $0x9,%al
  n = 0;
 88f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 894:	77 1f                	ja     8b5 <atoi+0x35>
 896:	8d 76 00             	lea    0x0(%esi),%esi
 899:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 8a0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 8a3:	83 c1 01             	add    $0x1,%ecx
 8a6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 8aa:	0f be 11             	movsbl (%ecx),%edx
 8ad:	8d 5a d0             	lea    -0x30(%edx),%ebx
 8b0:	80 fb 09             	cmp    $0x9,%bl
 8b3:	76 eb                	jbe    8a0 <atoi+0x20>
  return n;
}
 8b5:	5b                   	pop    %ebx
 8b6:	5d                   	pop    %ebp
 8b7:	c3                   	ret    
 8b8:	90                   	nop
 8b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 8c0:	55                   	push   %ebp
 8c1:	89 e5                	mov    %esp,%ebp
 8c3:	56                   	push   %esi
 8c4:	53                   	push   %ebx
 8c5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8c8:	8b 45 08             	mov    0x8(%ebp),%eax
 8cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 8ce:	85 db                	test   %ebx,%ebx
 8d0:	7e 14                	jle    8e6 <memmove+0x26>
 8d2:	31 d2                	xor    %edx,%edx
 8d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 8d8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 8dc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 8df:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 8e2:	39 d3                	cmp    %edx,%ebx
 8e4:	75 f2                	jne    8d8 <memmove+0x18>
  return vdst;
}
 8e6:	5b                   	pop    %ebx
 8e7:	5e                   	pop    %esi
 8e8:	5d                   	pop    %ebp
 8e9:	c3                   	ret    

000008ea <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 8ea:	b8 01 00 00 00       	mov    $0x1,%eax
 8ef:	cd 40                	int    $0x40
 8f1:	c3                   	ret    

000008f2 <exit>:
SYSCALL(exit)
 8f2:	b8 02 00 00 00       	mov    $0x2,%eax
 8f7:	cd 40                	int    $0x40
 8f9:	c3                   	ret    

000008fa <wait>:
SYSCALL(wait)
 8fa:	b8 03 00 00 00       	mov    $0x3,%eax
 8ff:	cd 40                	int    $0x40
 901:	c3                   	ret    

00000902 <pipe>:
SYSCALL(pipe)
 902:	b8 04 00 00 00       	mov    $0x4,%eax
 907:	cd 40                	int    $0x40
 909:	c3                   	ret    

0000090a <read>:
SYSCALL(read)
 90a:	b8 05 00 00 00       	mov    $0x5,%eax
 90f:	cd 40                	int    $0x40
 911:	c3                   	ret    

00000912 <write>:
SYSCALL(write)
 912:	b8 10 00 00 00       	mov    $0x10,%eax
 917:	cd 40                	int    $0x40
 919:	c3                   	ret    

0000091a <close>:
SYSCALL(close)
 91a:	b8 15 00 00 00       	mov    $0x15,%eax
 91f:	cd 40                	int    $0x40
 921:	c3                   	ret    

00000922 <kill>:
SYSCALL(kill)
 922:	b8 06 00 00 00       	mov    $0x6,%eax
 927:	cd 40                	int    $0x40
 929:	c3                   	ret    

0000092a <exec>:
SYSCALL(exec)
 92a:	b8 07 00 00 00       	mov    $0x7,%eax
 92f:	cd 40                	int    $0x40
 931:	c3                   	ret    

00000932 <open>:
SYSCALL(open)
 932:	b8 0f 00 00 00       	mov    $0xf,%eax
 937:	cd 40                	int    $0x40
 939:	c3                   	ret    

0000093a <mknod>:
SYSCALL(mknod)
 93a:	b8 11 00 00 00       	mov    $0x11,%eax
 93f:	cd 40                	int    $0x40
 941:	c3                   	ret    

00000942 <unlink>:
SYSCALL(unlink)
 942:	b8 12 00 00 00       	mov    $0x12,%eax
 947:	cd 40                	int    $0x40
 949:	c3                   	ret    

0000094a <fstat>:
SYSCALL(fstat)
 94a:	b8 08 00 00 00       	mov    $0x8,%eax
 94f:	cd 40                	int    $0x40
 951:	c3                   	ret    

00000952 <link>:
SYSCALL(link)
 952:	b8 13 00 00 00       	mov    $0x13,%eax
 957:	cd 40                	int    $0x40
 959:	c3                   	ret    

0000095a <mkdir>:
SYSCALL(mkdir)
 95a:	b8 14 00 00 00       	mov    $0x14,%eax
 95f:	cd 40                	int    $0x40
 961:	c3                   	ret    

00000962 <chdir>:
SYSCALL(chdir)
 962:	b8 09 00 00 00       	mov    $0x9,%eax
 967:	cd 40                	int    $0x40
 969:	c3                   	ret    

0000096a <dup>:
SYSCALL(dup)
 96a:	b8 0a 00 00 00       	mov    $0xa,%eax
 96f:	cd 40                	int    $0x40
 971:	c3                   	ret    

00000972 <getpid>:
SYSCALL(getpid)
 972:	b8 0b 00 00 00       	mov    $0xb,%eax
 977:	cd 40                	int    $0x40
 979:	c3                   	ret    

0000097a <sbrk>:
SYSCALL(sbrk)
 97a:	b8 0c 00 00 00       	mov    $0xc,%eax
 97f:	cd 40                	int    $0x40
 981:	c3                   	ret    

00000982 <sleep>:
SYSCALL(sleep)
 982:	b8 0d 00 00 00       	mov    $0xd,%eax
 987:	cd 40                	int    $0x40
 989:	c3                   	ret    

0000098a <uptime>:
SYSCALL(uptime)
 98a:	b8 0e 00 00 00       	mov    $0xe,%eax
 98f:	cd 40                	int    $0x40
 991:	c3                   	ret    
 992:	66 90                	xchg   %ax,%ax
 994:	66 90                	xchg   %ax,%ax
 996:	66 90                	xchg   %ax,%ax
 998:	66 90                	xchg   %ax,%ax
 99a:	66 90                	xchg   %ax,%ax
 99c:	66 90                	xchg   %ax,%ax
 99e:	66 90                	xchg   %ax,%ax

000009a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 9a0:	55                   	push   %ebp
 9a1:	89 e5                	mov    %esp,%ebp
 9a3:	57                   	push   %edi
 9a4:	56                   	push   %esi
 9a5:	53                   	push   %ebx
 9a6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 9a9:	85 d2                	test   %edx,%edx
{
 9ab:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 9ae:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 9b0:	79 76                	jns    a28 <printint+0x88>
 9b2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 9b6:	74 70                	je     a28 <printint+0x88>
    x = -xx;
 9b8:	f7 d8                	neg    %eax
    neg = 1;
 9ba:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 9c1:	31 f6                	xor    %esi,%esi
 9c3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 9c6:	eb 0a                	jmp    9d2 <printint+0x32>
 9c8:	90                   	nop
 9c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 9d0:	89 fe                	mov    %edi,%esi
 9d2:	31 d2                	xor    %edx,%edx
 9d4:	8d 7e 01             	lea    0x1(%esi),%edi
 9d7:	f7 f1                	div    %ecx
 9d9:	0f b6 92 ac 0f 00 00 	movzbl 0xfac(%edx),%edx
  }while((x /= base) != 0);
 9e0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 9e2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 9e5:	75 e9                	jne    9d0 <printint+0x30>
  if(neg)
 9e7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 9ea:	85 c0                	test   %eax,%eax
 9ec:	74 08                	je     9f6 <printint+0x56>
    buf[i++] = '-';
 9ee:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 9f3:	8d 7e 02             	lea    0x2(%esi),%edi
 9f6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 9fa:	8b 7d c0             	mov    -0x40(%ebp),%edi
 9fd:	8d 76 00             	lea    0x0(%esi),%esi
 a00:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 a03:	83 ec 04             	sub    $0x4,%esp
 a06:	83 ee 01             	sub    $0x1,%esi
 a09:	6a 01                	push   $0x1
 a0b:	53                   	push   %ebx
 a0c:	57                   	push   %edi
 a0d:	88 45 d7             	mov    %al,-0x29(%ebp)
 a10:	e8 fd fe ff ff       	call   912 <write>

  while(--i >= 0)
 a15:	83 c4 10             	add    $0x10,%esp
 a18:	39 de                	cmp    %ebx,%esi
 a1a:	75 e4                	jne    a00 <printint+0x60>
    putc(fd, buf[i]);
}
 a1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a1f:	5b                   	pop    %ebx
 a20:	5e                   	pop    %esi
 a21:	5f                   	pop    %edi
 a22:	5d                   	pop    %ebp
 a23:	c3                   	ret    
 a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 a28:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 a2f:	eb 90                	jmp    9c1 <printint+0x21>
 a31:	eb 0d                	jmp    a40 <printf>
 a33:	90                   	nop
 a34:	90                   	nop
 a35:	90                   	nop
 a36:	90                   	nop
 a37:	90                   	nop
 a38:	90                   	nop
 a39:	90                   	nop
 a3a:	90                   	nop
 a3b:	90                   	nop
 a3c:	90                   	nop
 a3d:	90                   	nop
 a3e:	90                   	nop
 a3f:	90                   	nop

00000a40 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 a40:	55                   	push   %ebp
 a41:	89 e5                	mov    %esp,%ebp
 a43:	57                   	push   %edi
 a44:	56                   	push   %esi
 a45:	53                   	push   %ebx
 a46:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 a49:	8b 75 0c             	mov    0xc(%ebp),%esi
 a4c:	0f b6 1e             	movzbl (%esi),%ebx
 a4f:	84 db                	test   %bl,%bl
 a51:	0f 84 b3 00 00 00    	je     b0a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 a57:	8d 45 10             	lea    0x10(%ebp),%eax
 a5a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 a5d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 a5f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 a62:	eb 2f                	jmp    a93 <printf+0x53>
 a64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 a68:	83 f8 25             	cmp    $0x25,%eax
 a6b:	0f 84 a7 00 00 00    	je     b18 <printf+0xd8>
  write(fd, &c, 1);
 a71:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 a74:	83 ec 04             	sub    $0x4,%esp
 a77:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 a7a:	6a 01                	push   $0x1
 a7c:	50                   	push   %eax
 a7d:	ff 75 08             	pushl  0x8(%ebp)
 a80:	e8 8d fe ff ff       	call   912 <write>
 a85:	83 c4 10             	add    $0x10,%esp
 a88:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 a8b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 a8f:	84 db                	test   %bl,%bl
 a91:	74 77                	je     b0a <printf+0xca>
    if(state == 0){
 a93:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 a95:	0f be cb             	movsbl %bl,%ecx
 a98:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 a9b:	74 cb                	je     a68 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 a9d:	83 ff 25             	cmp    $0x25,%edi
 aa0:	75 e6                	jne    a88 <printf+0x48>
      if(c == 'd'){
 aa2:	83 f8 64             	cmp    $0x64,%eax
 aa5:	0f 84 05 01 00 00    	je     bb0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 aab:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 ab1:	83 f9 70             	cmp    $0x70,%ecx
 ab4:	74 72                	je     b28 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 ab6:	83 f8 73             	cmp    $0x73,%eax
 ab9:	0f 84 99 00 00 00    	je     b58 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 abf:	83 f8 63             	cmp    $0x63,%eax
 ac2:	0f 84 08 01 00 00    	je     bd0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 ac8:	83 f8 25             	cmp    $0x25,%eax
 acb:	0f 84 ef 00 00 00    	je     bc0 <printf+0x180>
  write(fd, &c, 1);
 ad1:	8d 45 e7             	lea    -0x19(%ebp),%eax
 ad4:	83 ec 04             	sub    $0x4,%esp
 ad7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 adb:	6a 01                	push   $0x1
 add:	50                   	push   %eax
 ade:	ff 75 08             	pushl  0x8(%ebp)
 ae1:	e8 2c fe ff ff       	call   912 <write>
 ae6:	83 c4 0c             	add    $0xc,%esp
 ae9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 aec:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 aef:	6a 01                	push   $0x1
 af1:	50                   	push   %eax
 af2:	ff 75 08             	pushl  0x8(%ebp)
 af5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 af8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 afa:	e8 13 fe ff ff       	call   912 <write>
  for(i = 0; fmt[i]; i++){
 aff:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 b03:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 b06:	84 db                	test   %bl,%bl
 b08:	75 89                	jne    a93 <printf+0x53>
    }
  }
}
 b0a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 b0d:	5b                   	pop    %ebx
 b0e:	5e                   	pop    %esi
 b0f:	5f                   	pop    %edi
 b10:	5d                   	pop    %ebp
 b11:	c3                   	ret    
 b12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 b18:	bf 25 00 00 00       	mov    $0x25,%edi
 b1d:	e9 66 ff ff ff       	jmp    a88 <printf+0x48>
 b22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 b28:	83 ec 0c             	sub    $0xc,%esp
 b2b:	b9 10 00 00 00       	mov    $0x10,%ecx
 b30:	6a 00                	push   $0x0
 b32:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 b35:	8b 45 08             	mov    0x8(%ebp),%eax
 b38:	8b 17                	mov    (%edi),%edx
 b3a:	e8 61 fe ff ff       	call   9a0 <printint>
        ap++;
 b3f:	89 f8                	mov    %edi,%eax
 b41:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b44:	31 ff                	xor    %edi,%edi
        ap++;
 b46:	83 c0 04             	add    $0x4,%eax
 b49:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 b4c:	e9 37 ff ff ff       	jmp    a88 <printf+0x48>
 b51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 b58:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 b5b:	8b 08                	mov    (%eax),%ecx
        ap++;
 b5d:	83 c0 04             	add    $0x4,%eax
 b60:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 b63:	85 c9                	test   %ecx,%ecx
 b65:	0f 84 8e 00 00 00    	je     bf9 <printf+0x1b9>
        while(*s != 0){
 b6b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 b6e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 b70:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 b72:	84 c0                	test   %al,%al
 b74:	0f 84 0e ff ff ff    	je     a88 <printf+0x48>
 b7a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 b7d:	89 de                	mov    %ebx,%esi
 b7f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 b82:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 b85:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 b88:	83 ec 04             	sub    $0x4,%esp
          s++;
 b8b:	83 c6 01             	add    $0x1,%esi
 b8e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 b91:	6a 01                	push   $0x1
 b93:	57                   	push   %edi
 b94:	53                   	push   %ebx
 b95:	e8 78 fd ff ff       	call   912 <write>
        while(*s != 0){
 b9a:	0f b6 06             	movzbl (%esi),%eax
 b9d:	83 c4 10             	add    $0x10,%esp
 ba0:	84 c0                	test   %al,%al
 ba2:	75 e4                	jne    b88 <printf+0x148>
 ba4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 ba7:	31 ff                	xor    %edi,%edi
 ba9:	e9 da fe ff ff       	jmp    a88 <printf+0x48>
 bae:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 bb0:	83 ec 0c             	sub    $0xc,%esp
 bb3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 bb8:	6a 01                	push   $0x1
 bba:	e9 73 ff ff ff       	jmp    b32 <printf+0xf2>
 bbf:	90                   	nop
  write(fd, &c, 1);
 bc0:	83 ec 04             	sub    $0x4,%esp
 bc3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 bc6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 bc9:	6a 01                	push   $0x1
 bcb:	e9 21 ff ff ff       	jmp    af1 <printf+0xb1>
        putc(fd, *ap);
 bd0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 bd3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 bd6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 bd8:	6a 01                	push   $0x1
        ap++;
 bda:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 bdd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 be0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 be3:	50                   	push   %eax
 be4:	ff 75 08             	pushl  0x8(%ebp)
 be7:	e8 26 fd ff ff       	call   912 <write>
        ap++;
 bec:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 bef:	83 c4 10             	add    $0x10,%esp
      state = 0;
 bf2:	31 ff                	xor    %edi,%edi
 bf4:	e9 8f fe ff ff       	jmp    a88 <printf+0x48>
          s = "(null)";
 bf9:	bb a4 0f 00 00       	mov    $0xfa4,%ebx
        while(*s != 0){
 bfe:	b8 28 00 00 00       	mov    $0x28,%eax
 c03:	e9 72 ff ff ff       	jmp    b7a <printf+0x13a>
 c08:	66 90                	xchg   %ax,%ax
 c0a:	66 90                	xchg   %ax,%ax
 c0c:	66 90                	xchg   %ax,%ax
 c0e:	66 90                	xchg   %ax,%ax

00000c10 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 c10:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c11:	a1 54 13 00 00       	mov    0x1354,%eax
{
 c16:	89 e5                	mov    %esp,%ebp
 c18:	57                   	push   %edi
 c19:	56                   	push   %esi
 c1a:	53                   	push   %ebx
 c1b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 c1e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 c21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c28:	39 c8                	cmp    %ecx,%eax
 c2a:	8b 10                	mov    (%eax),%edx
 c2c:	73 32                	jae    c60 <free+0x50>
 c2e:	39 d1                	cmp    %edx,%ecx
 c30:	72 04                	jb     c36 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c32:	39 d0                	cmp    %edx,%eax
 c34:	72 32                	jb     c68 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 c36:	8b 73 fc             	mov    -0x4(%ebx),%esi
 c39:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 c3c:	39 fa                	cmp    %edi,%edx
 c3e:	74 30                	je     c70 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 c40:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 c43:	8b 50 04             	mov    0x4(%eax),%edx
 c46:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 c49:	39 f1                	cmp    %esi,%ecx
 c4b:	74 3a                	je     c87 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 c4d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 c4f:	a3 54 13 00 00       	mov    %eax,0x1354
}
 c54:	5b                   	pop    %ebx
 c55:	5e                   	pop    %esi
 c56:	5f                   	pop    %edi
 c57:	5d                   	pop    %ebp
 c58:	c3                   	ret    
 c59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c60:	39 d0                	cmp    %edx,%eax
 c62:	72 04                	jb     c68 <free+0x58>
 c64:	39 d1                	cmp    %edx,%ecx
 c66:	72 ce                	jb     c36 <free+0x26>
{
 c68:	89 d0                	mov    %edx,%eax
 c6a:	eb bc                	jmp    c28 <free+0x18>
 c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 c70:	03 72 04             	add    0x4(%edx),%esi
 c73:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 c76:	8b 10                	mov    (%eax),%edx
 c78:	8b 12                	mov    (%edx),%edx
 c7a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 c7d:	8b 50 04             	mov    0x4(%eax),%edx
 c80:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 c83:	39 f1                	cmp    %esi,%ecx
 c85:	75 c6                	jne    c4d <free+0x3d>
    p->s.size += bp->s.size;
 c87:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 c8a:	a3 54 13 00 00       	mov    %eax,0x1354
    p->s.size += bp->s.size;
 c8f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 c92:	8b 53 f8             	mov    -0x8(%ebx),%edx
 c95:	89 10                	mov    %edx,(%eax)
}
 c97:	5b                   	pop    %ebx
 c98:	5e                   	pop    %esi
 c99:	5f                   	pop    %edi
 c9a:	5d                   	pop    %ebp
 c9b:	c3                   	ret    
 c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000ca0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 ca0:	55                   	push   %ebp
 ca1:	89 e5                	mov    %esp,%ebp
 ca3:	57                   	push   %edi
 ca4:	56                   	push   %esi
 ca5:	53                   	push   %ebx
 ca6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ca9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 cac:	8b 15 54 13 00 00    	mov    0x1354,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 cb2:	8d 78 07             	lea    0x7(%eax),%edi
 cb5:	c1 ef 03             	shr    $0x3,%edi
 cb8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 cbb:	85 d2                	test   %edx,%edx
 cbd:	0f 84 9d 00 00 00    	je     d60 <malloc+0xc0>
 cc3:	8b 02                	mov    (%edx),%eax
 cc5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 cc8:	39 cf                	cmp    %ecx,%edi
 cca:	76 6c                	jbe    d38 <malloc+0x98>
 ccc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 cd2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 cd7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 cda:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 ce1:	eb 0e                	jmp    cf1 <malloc+0x51>
 ce3:	90                   	nop
 ce4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ce8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 cea:	8b 48 04             	mov    0x4(%eax),%ecx
 ced:	39 f9                	cmp    %edi,%ecx
 cef:	73 47                	jae    d38 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 cf1:	39 05 54 13 00 00    	cmp    %eax,0x1354
 cf7:	89 c2                	mov    %eax,%edx
 cf9:	75 ed                	jne    ce8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 cfb:	83 ec 0c             	sub    $0xc,%esp
 cfe:	56                   	push   %esi
 cff:	e8 76 fc ff ff       	call   97a <sbrk>
  if(p == (char*)-1)
 d04:	83 c4 10             	add    $0x10,%esp
 d07:	83 f8 ff             	cmp    $0xffffffff,%eax
 d0a:	74 1c                	je     d28 <malloc+0x88>
  hp->s.size = nu;
 d0c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 d0f:	83 ec 0c             	sub    $0xc,%esp
 d12:	83 c0 08             	add    $0x8,%eax
 d15:	50                   	push   %eax
 d16:	e8 f5 fe ff ff       	call   c10 <free>
  return freep;
 d1b:	8b 15 54 13 00 00    	mov    0x1354,%edx
      if((p = morecore(nunits)) == 0)
 d21:	83 c4 10             	add    $0x10,%esp
 d24:	85 d2                	test   %edx,%edx
 d26:	75 c0                	jne    ce8 <malloc+0x48>
        return 0;
  }
}
 d28:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 d2b:	31 c0                	xor    %eax,%eax
}
 d2d:	5b                   	pop    %ebx
 d2e:	5e                   	pop    %esi
 d2f:	5f                   	pop    %edi
 d30:	5d                   	pop    %ebp
 d31:	c3                   	ret    
 d32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 d38:	39 cf                	cmp    %ecx,%edi
 d3a:	74 54                	je     d90 <malloc+0xf0>
        p->s.size -= nunits;
 d3c:	29 f9                	sub    %edi,%ecx
 d3e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 d41:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 d44:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 d47:	89 15 54 13 00 00    	mov    %edx,0x1354
}
 d4d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 d50:	83 c0 08             	add    $0x8,%eax
}
 d53:	5b                   	pop    %ebx
 d54:	5e                   	pop    %esi
 d55:	5f                   	pop    %edi
 d56:	5d                   	pop    %ebp
 d57:	c3                   	ret    
 d58:	90                   	nop
 d59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 d60:	c7 05 54 13 00 00 58 	movl   $0x1358,0x1354
 d67:	13 00 00 
 d6a:	c7 05 58 13 00 00 58 	movl   $0x1358,0x1358
 d71:	13 00 00 
    base.s.size = 0;
 d74:	b8 58 13 00 00       	mov    $0x1358,%eax
 d79:	c7 05 5c 13 00 00 00 	movl   $0x0,0x135c
 d80:	00 00 00 
 d83:	e9 44 ff ff ff       	jmp    ccc <malloc+0x2c>
 d88:	90                   	nop
 d89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 d90:	8b 08                	mov    (%eax),%ecx
 d92:	89 0a                	mov    %ecx,(%edx)
 d94:	eb b1                	jmp    d47 <malloc+0xa7>
