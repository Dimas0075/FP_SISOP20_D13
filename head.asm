
_head:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    exit();
  }
  //printf(1,"file : %s\n", name);
}

int main(int argc, char *argv[]) {
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
  14:	8b 01                	mov    (%ecx),%eax
  16:	8b 59 04             	mov    0x4(%ecx),%ebx
  int fd,i;
  
  if(argc <= 1) {
  19:	83 f8 01             	cmp    $0x1,%eax
  1c:	7e 2a                	jle    48 <main+0x48>
    printf(1,"Kurang Bro\n");
    exit();
  }

  else if(argc==2) {
  1e:	83 f8 02             	cmp    $0x2,%eax
  21:	0f 84 8f 00 00 00    	je     b6 <main+0xb6>
        head(fd, argv[i], 10);
        close(fd);
    }
  }
  
  else if (argc==3){
  27:	83 f8 03             	cmp    $0x3,%eax
  2a:	0f 84 a7 00 00 00    	je     d7 <main+0xd7>
    	}
    }

  }

  else if(argc==4) {
  30:	83 f8 04             	cmp    $0x4,%eax
  33:	74 26                	je     5b <main+0x5b>
	  }
  }
}

  else {
      printf(1,"HEAD : SYNTAX ERROR\n");
  35:	50                   	push   %eax
  36:	50                   	push   %eax
  37:	68 06 0a 00 00       	push   $0xa06
  3c:	6a 01                	push   $0x1
  3e:	e8 1d 06 00 00       	call   660 <printf>
      exit();
  43:	e8 ca 04 00 00       	call   512 <exit>
    printf(1,"Kurang Bro\n");
  48:	50                   	push   %eax
  49:	50                   	push   %eax
  4a:	68 cd 09 00 00       	push   $0x9cd
  4f:	6a 01                	push   $0x1
  51:	e8 0a 06 00 00       	call   660 <printf>
    exit();
  56:	e8 b7 04 00 00       	call   512 <exit>
    if (strcmp(argv[1],"-n")==0){
  5b:	50                   	push   %eax
  5c:	50                   	push   %eax
  5d:	68 f2 09 00 00       	push   $0x9f2
  62:	ff 73 04             	pushl  0x4(%ebx)
  65:	e8 86 02 00 00       	call   2f0 <strcmp>
  6a:	83 c4 10             	add    $0x10,%esp
  6d:	85 c0                	test   %eax,%eax
  6f:	0f 85 a9 00 00 00    	jne    11e <main+0x11e>
	    int x = atoi(argv[2]);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	ff 73 08             	pushl  0x8(%ebx)
  7b:	e8 20 04 00 00       	call   4a0 <atoi>
        if((fd = open(argv[i], 0)) < 0) {
  80:	5e                   	pop    %esi
	    int x = atoi(argv[2]);
  81:	89 c7                	mov    %eax,%edi
        if((fd = open(argv[i], 0)) < 0) {
  83:	58                   	pop    %eax
  84:	6a 00                	push   $0x0
  86:	ff 73 0c             	pushl  0xc(%ebx)
  89:	e8 c4 04 00 00       	call   552 <open>
  8e:	83 c4 10             	add    $0x10,%esp
  91:	85 c0                	test   %eax,%eax
  93:	89 c6                	mov    %eax,%esi
  95:	0f 88 2d 01 00 00    	js     1c8 <main+0x1c8>
        head(fd, argv[i], x);
  9b:	52                   	push   %edx
  9c:	57                   	push   %edi
  9d:	ff 73 0c             	pushl  0xc(%ebx)
  a0:	56                   	push   %esi
  a1:	e8 6a 01 00 00       	call   210 <head>
        close(fd);
  a6:	89 34 24             	mov    %esi,(%esp)
  a9:	e8 8c 04 00 00       	call   53a <close>
  ae:	83 c4 10             	add    $0x10,%esp
    }
  exit();
  b1:	e8 5c 04 00 00       	call   512 <exit>
        if((fd = open(argv[i], 0)) < 0) {
  b6:	56                   	push   %esi
  b7:	56                   	push   %esi
  b8:	6a 00                	push   $0x0
  ba:	ff 73 04             	pushl  0x4(%ebx)
  bd:	e8 90 04 00 00       	call   552 <open>
  c2:	83 c4 10             	add    $0x10,%esp
  c5:	85 c0                	test   %eax,%eax
  c7:	89 c6                	mov    %eax,%esi
  c9:	0f 88 e4 00 00 00    	js     1b3 <main+0x1b3>
        head(fd, argv[i], 10);
  cf:	57                   	push   %edi
  d0:	6a 0a                	push   $0xa
  d2:	ff 73 04             	pushl  0x4(%ebx)
  d5:	eb c9                	jmp    a0 <main+0xa0>
    printf(1,"%s\n", argv[2]);
  d7:	50                   	push   %eax
  d8:	ff 73 08             	pushl  0x8(%ebx)
  db:	68 eb 09 00 00       	push   $0x9eb
  e0:	6a 01                	push   $0x1
  e2:	e8 79 05 00 00       	call   660 <printf>
    if (strcmp(argv[1],"-v")==0){
  e7:	5a                   	pop    %edx
  e8:	59                   	pop    %ecx
  e9:	68 ef 09 00 00       	push   $0x9ef
  ee:	ff 73 04             	pushl  0x4(%ebx)
  f1:	e8 fa 01 00 00       	call   2f0 <strcmp>
  f6:	83 c4 10             	add    $0x10,%esp
  f9:	85 c0                	test   %eax,%eax
  fb:	75 b4                	jne    b1 <main+0xb1>
        if((fd = open(argv[i], 0)) < 0) {
  fd:	50                   	push   %eax
  fe:	50                   	push   %eax
  ff:	6a 00                	push   $0x0
 101:	ff 73 08             	pushl  0x8(%ebx)
 104:	e8 49 04 00 00       	call   552 <open>
 109:	83 c4 10             	add    $0x10,%esp
 10c:	85 c0                	test   %eax,%eax
 10e:	89 c6                	mov    %eax,%esi
 110:	0f 88 c7 00 00 00    	js     1dd <main+0x1dd>
        head(fd, argv[i], 10);
 116:	50                   	push   %eax
 117:	6a 0a                	push   $0xa
 119:	ff 73 08             	pushl  0x8(%ebx)
 11c:	eb 82                	jmp    a0 <main+0xa0>
    else if (strcmp(argv[1],"-c") == 0){
 11e:	50                   	push   %eax
 11f:	50                   	push   %eax
 120:	68 f5 09 00 00       	push   $0x9f5
 125:	ff 73 04             	pushl  0x4(%ebx)
 128:	e8 c3 01 00 00       	call   2f0 <strcmp>
 12d:	83 c4 10             	add    $0x10,%esp
 130:	85 c0                	test   %eax,%eax
 132:	74 69                	je     19d <main+0x19d>
  else if (strcmp(argv[1],"-q") == 0){
 134:	50                   	push   %eax
 135:	50                   	push   %eax
 136:	68 03 0a 00 00       	push   $0xa03
 13b:	ff 73 04             	pushl  0x4(%ebx)
 13e:	e8 ad 01 00 00       	call   2f0 <strcmp>
 143:	83 c4 10             	add    $0x10,%esp
 146:	85 c0                	test   %eax,%eax
 148:	0f 85 63 ff ff ff    	jne    b1 <main+0xb1>
 14e:	8d 73 08             	lea    0x8(%ebx),%esi
 151:	83 c3 14             	add    $0x14,%ebx
      if((fd = open(argv[i], 0)) < 0) {
 154:	50                   	push   %eax
 155:	50                   	push   %eax
 156:	6a 00                	push   $0x0
 158:	ff 36                	pushl  (%esi)
 15a:	e8 f3 03 00 00       	call   552 <open>
 15f:	83 c4 10             	add    $0x10,%esp
 162:	85 c0                	test   %eax,%eax
 164:	89 c7                	mov    %eax,%edi
 166:	0f 88 86 00 00 00    	js     1f2 <main+0x1f2>
      head(fd, argv[i], 10);
 16c:	52                   	push   %edx
 16d:	6a 0a                	push   $0xa
 16f:	83 c6 04             	add    $0x4,%esi
 172:	ff 76 fc             	pushl  -0x4(%esi)
 175:	50                   	push   %eax
 176:	e8 95 00 00 00       	call   210 <head>
      printf(1,"\n");
 17b:	59                   	pop    %ecx
 17c:	58                   	pop    %eax
 17d:	68 cb 09 00 00       	push   $0x9cb
 182:	6a 01                	push   $0x1
 184:	e8 d7 04 00 00       	call   660 <printf>
      close(fd);
 189:	89 3c 24             	mov    %edi,(%esp)
 18c:	e8 a9 03 00 00       	call   53a <close>
	  for(i = 2; i <= argc; i++) {
 191:	83 c4 10             	add    $0x10,%esp
 194:	39 de                	cmp    %ebx,%esi
 196:	75 bc                	jne    154 <main+0x154>
 198:	e9 14 ff ff ff       	jmp    b1 <main+0xb1>
	      printf(1,"belum bisa");
 19d:	50                   	push   %eax
 19e:	50                   	push   %eax
 19f:	68 f8 09 00 00       	push   $0x9f8
 1a4:	6a 01                	push   $0x1
 1a6:	e8 b5 04 00 00       	call   660 <printf>
 1ab:	83 c4 10             	add    $0x10,%esp
 1ae:	e9 fe fe ff ff       	jmp    b1 <main+0xb1>
          printf(1, "HEAD : CAN'T OPEN %s\n", argv[i]);
 1b3:	50                   	push   %eax
 1b4:	ff 73 04             	pushl  0x4(%ebx)
 1b7:	68 d9 09 00 00       	push   $0x9d9
 1bc:	6a 01                	push   $0x1
 1be:	e8 9d 04 00 00       	call   660 <printf>
          exit();
 1c3:	e8 4a 03 00 00       	call   512 <exit>
          printf(1, "HEAD : CAN'T OPEN %s\n", argv[i]);
 1c8:	51                   	push   %ecx
 1c9:	ff 73 0c             	pushl  0xc(%ebx)
 1cc:	68 d9 09 00 00       	push   $0x9d9
 1d1:	6a 01                	push   $0x1
 1d3:	e8 88 04 00 00       	call   660 <printf>
          exit();
 1d8:	e8 35 03 00 00       	call   512 <exit>
          printf(1, "HEAD : CAN'T OPEN %s\n", argv[i]);
 1dd:	50                   	push   %eax
 1de:	ff 73 08             	pushl  0x8(%ebx)
 1e1:	68 d9 09 00 00       	push   $0x9d9
 1e6:	6a 01                	push   $0x1
 1e8:	e8 73 04 00 00       	call   660 <printf>
          exit();
 1ed:	e8 20 03 00 00       	call   512 <exit>
          printf(1, "HEAD : CAN'T OPEN %s\n", argv[i]);
 1f2:	50                   	push   %eax
 1f3:	ff 36                	pushl  (%esi)
 1f5:	68 d9 09 00 00       	push   $0x9d9
 1fa:	6a 01                	push   $0x1
 1fc:	e8 5f 04 00 00       	call   660 <printf>
          exit();
 201:	e8 0c 03 00 00       	call   512 <exit>
 206:	66 90                	xchg   %ax,%ax
 208:	66 90                	xchg   %ax,%ax
 20a:	66 90                	xchg   %ax,%ax
 20c:	66 90                	xchg   %ax,%ax
 20e:	66 90                	xchg   %ax,%ax

00000210 <head>:
void head(int fd, char *name, int x) {
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	57                   	push   %edi
 214:	56                   	push   %esi
 215:	53                   	push   %ebx
  int n,line=0;
 216:	31 db                	xor    %ebx,%ebx
void head(int fd, char *name, int x) {
 218:	83 ec 0c             	sub    $0xc,%esp
 21b:	90                   	nop
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0 && line<x) {
 220:	83 ec 04             	sub    $0x4,%esp
 223:	68 00 02 00 00       	push   $0x200
 228:	68 40 0d 00 00       	push   $0xd40
 22d:	ff 75 08             	pushl  0x8(%ebp)
 230:	e8 f5 02 00 00       	call   52a <read>
 235:	83 c4 10             	add    $0x10,%esp
 238:	83 f8 00             	cmp    $0x0,%eax
 23b:	89 c6                	mov    %eax,%esi
 23d:	7e 59                	jle    298 <head+0x88>
 23f:	3b 5d 10             	cmp    0x10(%ebp),%ebx
 242:	7d 56                	jge    29a <head+0x8a>
    for(i=0; i<=n && line<x; i++) {
 244:	31 ff                	xor    %edi,%edi
 246:	eb 27                	jmp    26f <head+0x5f>
 248:	90                   	nop
 249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(1,"%c",buf[i]);
 250:	83 ec 04             	sub    $0x4,%esp
 253:	52                   	push   %edx
 254:	68 b8 09 00 00       	push   $0x9b8
 259:	6a 01                	push   $0x1
 25b:	e8 00 04 00 00       	call   660 <printf>
 260:	83 c4 10             	add    $0x10,%esp
    for(i=0; i<=n && line<x; i++) {
 263:	83 c7 01             	add    $0x1,%edi
 266:	39 fe                	cmp    %edi,%esi
 268:	7c b6                	jl     220 <head+0x10>
 26a:	3b 5d 10             	cmp    0x10(%ebp),%ebx
 26d:	7d b1                	jge    220 <head+0x10>
      if(buf[i]!='\n') {
 26f:	0f be 97 40 0d 00 00 	movsbl 0xd40(%edi),%edx
 276:	80 fa 0a             	cmp    $0xa,%dl
 279:	75 d5                	jne    250 <head+0x40>
      	printf(1,"\n");
 27b:	83 ec 08             	sub    $0x8,%esp
      	line++;
 27e:	83 c3 01             	add    $0x1,%ebx
      	printf(1,"\n");
 281:	68 cb 09 00 00       	push   $0x9cb
 286:	6a 01                	push   $0x1
 288:	e8 d3 03 00 00       	call   660 <printf>
      	line++;
 28d:	83 c4 10             	add    $0x10,%esp
 290:	eb d1                	jmp    263 <head+0x53>
 292:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  if(n<0) {
 298:	75 08                	jne    2a2 <head+0x92>
}
 29a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 29d:	5b                   	pop    %ebx
 29e:	5e                   	pop    %esi
 29f:	5f                   	pop    %edi
 2a0:	5d                   	pop    %ebp
 2a1:	c3                   	ret    
    printf(1, "HEAD: READ ERROR\n");
 2a2:	50                   	push   %eax
 2a3:	50                   	push   %eax
 2a4:	68 bb 09 00 00       	push   $0x9bb
 2a9:	6a 01                	push   $0x1
 2ab:	e8 b0 03 00 00       	call   660 <printf>
    exit();
 2b0:	e8 5d 02 00 00       	call   512 <exit>
 2b5:	66 90                	xchg   %ax,%ax
 2b7:	66 90                	xchg   %ax,%ax
 2b9:	66 90                	xchg   %ax,%ax
 2bb:	66 90                	xchg   %ax,%ax
 2bd:	66 90                	xchg   %ax,%ax
 2bf:	90                   	nop

000002c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	53                   	push   %ebx
 2c4:	8b 45 08             	mov    0x8(%ebp),%eax
 2c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2ca:	89 c2                	mov    %eax,%edx
 2cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2d0:	83 c1 01             	add    $0x1,%ecx
 2d3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 2d7:	83 c2 01             	add    $0x1,%edx
 2da:	84 db                	test   %bl,%bl
 2dc:	88 5a ff             	mov    %bl,-0x1(%edx)
 2df:	75 ef                	jne    2d0 <strcpy+0x10>
    ;
  return os;
}
 2e1:	5b                   	pop    %ebx
 2e2:	5d                   	pop    %ebp
 2e3:	c3                   	ret    
 2e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
 2f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2fa:	0f b6 02             	movzbl (%edx),%eax
 2fd:	0f b6 19             	movzbl (%ecx),%ebx
 300:	84 c0                	test   %al,%al
 302:	75 1c                	jne    320 <strcmp+0x30>
 304:	eb 2a                	jmp    330 <strcmp+0x40>
 306:	8d 76 00             	lea    0x0(%esi),%esi
 309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 310:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 313:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 316:	83 c1 01             	add    $0x1,%ecx
 319:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 31c:	84 c0                	test   %al,%al
 31e:	74 10                	je     330 <strcmp+0x40>
 320:	38 d8                	cmp    %bl,%al
 322:	74 ec                	je     310 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 324:	29 d8                	sub    %ebx,%eax
}
 326:	5b                   	pop    %ebx
 327:	5d                   	pop    %ebp
 328:	c3                   	ret    
 329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 330:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 332:	29 d8                	sub    %ebx,%eax
}
 334:	5b                   	pop    %ebx
 335:	5d                   	pop    %ebp
 336:	c3                   	ret    
 337:	89 f6                	mov    %esi,%esi
 339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000340 <strlen>:

uint
strlen(const char *s)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 346:	80 39 00             	cmpb   $0x0,(%ecx)
 349:	74 15                	je     360 <strlen+0x20>
 34b:	31 d2                	xor    %edx,%edx
 34d:	8d 76 00             	lea    0x0(%esi),%esi
 350:	83 c2 01             	add    $0x1,%edx
 353:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 357:	89 d0                	mov    %edx,%eax
 359:	75 f5                	jne    350 <strlen+0x10>
    ;
  return n;
}
 35b:	5d                   	pop    %ebp
 35c:	c3                   	ret    
 35d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 360:	31 c0                	xor    %eax,%eax
}
 362:	5d                   	pop    %ebp
 363:	c3                   	ret    
 364:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 36a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000370 <memset>:

void*
memset(void *dst, int c, uint n)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	57                   	push   %edi
 374:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 377:	8b 4d 10             	mov    0x10(%ebp),%ecx
 37a:	8b 45 0c             	mov    0xc(%ebp),%eax
 37d:	89 d7                	mov    %edx,%edi
 37f:	fc                   	cld    
 380:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 382:	89 d0                	mov    %edx,%eax
 384:	5f                   	pop    %edi
 385:	5d                   	pop    %ebp
 386:	c3                   	ret    
 387:	89 f6                	mov    %esi,%esi
 389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000390 <strchr>:

char*
strchr(const char *s, char c)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	53                   	push   %ebx
 394:	8b 45 08             	mov    0x8(%ebp),%eax
 397:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 39a:	0f b6 10             	movzbl (%eax),%edx
 39d:	84 d2                	test   %dl,%dl
 39f:	74 1d                	je     3be <strchr+0x2e>
    if(*s == c)
 3a1:	38 d3                	cmp    %dl,%bl
 3a3:	89 d9                	mov    %ebx,%ecx
 3a5:	75 0d                	jne    3b4 <strchr+0x24>
 3a7:	eb 17                	jmp    3c0 <strchr+0x30>
 3a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3b0:	38 ca                	cmp    %cl,%dl
 3b2:	74 0c                	je     3c0 <strchr+0x30>
  for(; *s; s++)
 3b4:	83 c0 01             	add    $0x1,%eax
 3b7:	0f b6 10             	movzbl (%eax),%edx
 3ba:	84 d2                	test   %dl,%dl
 3bc:	75 f2                	jne    3b0 <strchr+0x20>
      return (char*)s;
  return 0;
 3be:	31 c0                	xor    %eax,%eax
}
 3c0:	5b                   	pop    %ebx
 3c1:	5d                   	pop    %ebp
 3c2:	c3                   	ret    
 3c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003d0 <gets>:

char*
gets(char *buf, int max)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	57                   	push   %edi
 3d4:	56                   	push   %esi
 3d5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 3d6:	31 f6                	xor    %esi,%esi
 3d8:	89 f3                	mov    %esi,%ebx
{
 3da:	83 ec 1c             	sub    $0x1c,%esp
 3dd:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 3e0:	eb 2f                	jmp    411 <gets+0x41>
 3e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 3e8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3eb:	83 ec 04             	sub    $0x4,%esp
 3ee:	6a 01                	push   $0x1
 3f0:	50                   	push   %eax
 3f1:	6a 00                	push   $0x0
 3f3:	e8 32 01 00 00       	call   52a <read>
    if(cc < 1)
 3f8:	83 c4 10             	add    $0x10,%esp
 3fb:	85 c0                	test   %eax,%eax
 3fd:	7e 1c                	jle    41b <gets+0x4b>
      break;
    buf[i++] = c;
 3ff:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 403:	83 c7 01             	add    $0x1,%edi
 406:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 409:	3c 0a                	cmp    $0xa,%al
 40b:	74 23                	je     430 <gets+0x60>
 40d:	3c 0d                	cmp    $0xd,%al
 40f:	74 1f                	je     430 <gets+0x60>
  for(i=0; i+1 < max; ){
 411:	83 c3 01             	add    $0x1,%ebx
 414:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 417:	89 fe                	mov    %edi,%esi
 419:	7c cd                	jl     3e8 <gets+0x18>
 41b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 41d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 420:	c6 03 00             	movb   $0x0,(%ebx)
}
 423:	8d 65 f4             	lea    -0xc(%ebp),%esp
 426:	5b                   	pop    %ebx
 427:	5e                   	pop    %esi
 428:	5f                   	pop    %edi
 429:	5d                   	pop    %ebp
 42a:	c3                   	ret    
 42b:	90                   	nop
 42c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 430:	8b 75 08             	mov    0x8(%ebp),%esi
 433:	8b 45 08             	mov    0x8(%ebp),%eax
 436:	01 de                	add    %ebx,%esi
 438:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 43a:	c6 03 00             	movb   $0x0,(%ebx)
}
 43d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 440:	5b                   	pop    %ebx
 441:	5e                   	pop    %esi
 442:	5f                   	pop    %edi
 443:	5d                   	pop    %ebp
 444:	c3                   	ret    
 445:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000450 <stat>:

int
stat(const char *n, struct stat *st)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	56                   	push   %esi
 454:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 455:	83 ec 08             	sub    $0x8,%esp
 458:	6a 00                	push   $0x0
 45a:	ff 75 08             	pushl  0x8(%ebp)
 45d:	e8 f0 00 00 00       	call   552 <open>
  if(fd < 0)
 462:	83 c4 10             	add    $0x10,%esp
 465:	85 c0                	test   %eax,%eax
 467:	78 27                	js     490 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 469:	83 ec 08             	sub    $0x8,%esp
 46c:	ff 75 0c             	pushl  0xc(%ebp)
 46f:	89 c3                	mov    %eax,%ebx
 471:	50                   	push   %eax
 472:	e8 f3 00 00 00       	call   56a <fstat>
  close(fd);
 477:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 47a:	89 c6                	mov    %eax,%esi
  close(fd);
 47c:	e8 b9 00 00 00       	call   53a <close>
  return r;
 481:	83 c4 10             	add    $0x10,%esp
}
 484:	8d 65 f8             	lea    -0x8(%ebp),%esp
 487:	89 f0                	mov    %esi,%eax
 489:	5b                   	pop    %ebx
 48a:	5e                   	pop    %esi
 48b:	5d                   	pop    %ebp
 48c:	c3                   	ret    
 48d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 490:	be ff ff ff ff       	mov    $0xffffffff,%esi
 495:	eb ed                	jmp    484 <stat+0x34>
 497:	89 f6                	mov    %esi,%esi
 499:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004a0 <atoi>:

int
atoi(const char *s)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4a7:	0f be 11             	movsbl (%ecx),%edx
 4aa:	8d 42 d0             	lea    -0x30(%edx),%eax
 4ad:	3c 09                	cmp    $0x9,%al
  n = 0;
 4af:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 4b4:	77 1f                	ja     4d5 <atoi+0x35>
 4b6:	8d 76 00             	lea    0x0(%esi),%esi
 4b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 4c0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 4c3:	83 c1 01             	add    $0x1,%ecx
 4c6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 4ca:	0f be 11             	movsbl (%ecx),%edx
 4cd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 4d0:	80 fb 09             	cmp    $0x9,%bl
 4d3:	76 eb                	jbe    4c0 <atoi+0x20>
  return n;
}
 4d5:	5b                   	pop    %ebx
 4d6:	5d                   	pop    %ebp
 4d7:	c3                   	ret    
 4d8:	90                   	nop
 4d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	56                   	push   %esi
 4e4:	53                   	push   %ebx
 4e5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4e8:	8b 45 08             	mov    0x8(%ebp),%eax
 4eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4ee:	85 db                	test   %ebx,%ebx
 4f0:	7e 14                	jle    506 <memmove+0x26>
 4f2:	31 d2                	xor    %edx,%edx
 4f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 4f8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 4fc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 4ff:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 502:	39 d3                	cmp    %edx,%ebx
 504:	75 f2                	jne    4f8 <memmove+0x18>
  return vdst;
}
 506:	5b                   	pop    %ebx
 507:	5e                   	pop    %esi
 508:	5d                   	pop    %ebp
 509:	c3                   	ret    

0000050a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 50a:	b8 01 00 00 00       	mov    $0x1,%eax
 50f:	cd 40                	int    $0x40
 511:	c3                   	ret    

00000512 <exit>:
SYSCALL(exit)
 512:	b8 02 00 00 00       	mov    $0x2,%eax
 517:	cd 40                	int    $0x40
 519:	c3                   	ret    

0000051a <wait>:
SYSCALL(wait)
 51a:	b8 03 00 00 00       	mov    $0x3,%eax
 51f:	cd 40                	int    $0x40
 521:	c3                   	ret    

00000522 <pipe>:
SYSCALL(pipe)
 522:	b8 04 00 00 00       	mov    $0x4,%eax
 527:	cd 40                	int    $0x40
 529:	c3                   	ret    

0000052a <read>:
SYSCALL(read)
 52a:	b8 05 00 00 00       	mov    $0x5,%eax
 52f:	cd 40                	int    $0x40
 531:	c3                   	ret    

00000532 <write>:
SYSCALL(write)
 532:	b8 10 00 00 00       	mov    $0x10,%eax
 537:	cd 40                	int    $0x40
 539:	c3                   	ret    

0000053a <close>:
SYSCALL(close)
 53a:	b8 15 00 00 00       	mov    $0x15,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    

00000542 <kill>:
SYSCALL(kill)
 542:	b8 06 00 00 00       	mov    $0x6,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    

0000054a <exec>:
SYSCALL(exec)
 54a:	b8 07 00 00 00       	mov    $0x7,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <open>:
SYSCALL(open)
 552:	b8 0f 00 00 00       	mov    $0xf,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <mknod>:
SYSCALL(mknod)
 55a:	b8 11 00 00 00       	mov    $0x11,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <unlink>:
SYSCALL(unlink)
 562:	b8 12 00 00 00       	mov    $0x12,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <fstat>:
SYSCALL(fstat)
 56a:	b8 08 00 00 00       	mov    $0x8,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <link>:
SYSCALL(link)
 572:	b8 13 00 00 00       	mov    $0x13,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <mkdir>:
SYSCALL(mkdir)
 57a:	b8 14 00 00 00       	mov    $0x14,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <chdir>:
SYSCALL(chdir)
 582:	b8 09 00 00 00       	mov    $0x9,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <dup>:
SYSCALL(dup)
 58a:	b8 0a 00 00 00       	mov    $0xa,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <getpid>:
SYSCALL(getpid)
 592:	b8 0b 00 00 00       	mov    $0xb,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <sbrk>:
SYSCALL(sbrk)
 59a:	b8 0c 00 00 00       	mov    $0xc,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <sleep>:
SYSCALL(sleep)
 5a2:	b8 0d 00 00 00       	mov    $0xd,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <uptime>:
SYSCALL(uptime)
 5aa:	b8 0e 00 00 00       	mov    $0xe,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    
 5b2:	66 90                	xchg   %ax,%ax
 5b4:	66 90                	xchg   %ax,%ax
 5b6:	66 90                	xchg   %ax,%ax
 5b8:	66 90                	xchg   %ax,%ax
 5ba:	66 90                	xchg   %ax,%ax
 5bc:	66 90                	xchg   %ax,%ax
 5be:	66 90                	xchg   %ax,%ax

000005c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
 5c5:	53                   	push   %ebx
 5c6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 5c9:	85 d2                	test   %edx,%edx
{
 5cb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 5ce:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 5d0:	79 76                	jns    648 <printint+0x88>
 5d2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5d6:	74 70                	je     648 <printint+0x88>
    x = -xx;
 5d8:	f7 d8                	neg    %eax
    neg = 1;
 5da:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 5e1:	31 f6                	xor    %esi,%esi
 5e3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 5e6:	eb 0a                	jmp    5f2 <printint+0x32>
 5e8:	90                   	nop
 5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 5f0:	89 fe                	mov    %edi,%esi
 5f2:	31 d2                	xor    %edx,%edx
 5f4:	8d 7e 01             	lea    0x1(%esi),%edi
 5f7:	f7 f1                	div    %ecx
 5f9:	0f b6 92 24 0a 00 00 	movzbl 0xa24(%edx),%edx
  }while((x /= base) != 0);
 600:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 602:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 605:	75 e9                	jne    5f0 <printint+0x30>
  if(neg)
 607:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 60a:	85 c0                	test   %eax,%eax
 60c:	74 08                	je     616 <printint+0x56>
    buf[i++] = '-';
 60e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 613:	8d 7e 02             	lea    0x2(%esi),%edi
 616:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 61a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 61d:	8d 76 00             	lea    0x0(%esi),%esi
 620:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 623:	83 ec 04             	sub    $0x4,%esp
 626:	83 ee 01             	sub    $0x1,%esi
 629:	6a 01                	push   $0x1
 62b:	53                   	push   %ebx
 62c:	57                   	push   %edi
 62d:	88 45 d7             	mov    %al,-0x29(%ebp)
 630:	e8 fd fe ff ff       	call   532 <write>

  while(--i >= 0)
 635:	83 c4 10             	add    $0x10,%esp
 638:	39 de                	cmp    %ebx,%esi
 63a:	75 e4                	jne    620 <printint+0x60>
    putc(fd, buf[i]);
}
 63c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 63f:	5b                   	pop    %ebx
 640:	5e                   	pop    %esi
 641:	5f                   	pop    %edi
 642:	5d                   	pop    %ebp
 643:	c3                   	ret    
 644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 648:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 64f:	eb 90                	jmp    5e1 <printint+0x21>
 651:	eb 0d                	jmp    660 <printf>
 653:	90                   	nop
 654:	90                   	nop
 655:	90                   	nop
 656:	90                   	nop
 657:	90                   	nop
 658:	90                   	nop
 659:	90                   	nop
 65a:	90                   	nop
 65b:	90                   	nop
 65c:	90                   	nop
 65d:	90                   	nop
 65e:	90                   	nop
 65f:	90                   	nop

00000660 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 669:	8b 75 0c             	mov    0xc(%ebp),%esi
 66c:	0f b6 1e             	movzbl (%esi),%ebx
 66f:	84 db                	test   %bl,%bl
 671:	0f 84 b3 00 00 00    	je     72a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 677:	8d 45 10             	lea    0x10(%ebp),%eax
 67a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 67d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 67f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 682:	eb 2f                	jmp    6b3 <printf+0x53>
 684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 688:	83 f8 25             	cmp    $0x25,%eax
 68b:	0f 84 a7 00 00 00    	je     738 <printf+0xd8>
  write(fd, &c, 1);
 691:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 694:	83 ec 04             	sub    $0x4,%esp
 697:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 69a:	6a 01                	push   $0x1
 69c:	50                   	push   %eax
 69d:	ff 75 08             	pushl  0x8(%ebp)
 6a0:	e8 8d fe ff ff       	call   532 <write>
 6a5:	83 c4 10             	add    $0x10,%esp
 6a8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 6ab:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 6af:	84 db                	test   %bl,%bl
 6b1:	74 77                	je     72a <printf+0xca>
    if(state == 0){
 6b3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 6b5:	0f be cb             	movsbl %bl,%ecx
 6b8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 6bb:	74 cb                	je     688 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 6bd:	83 ff 25             	cmp    $0x25,%edi
 6c0:	75 e6                	jne    6a8 <printf+0x48>
      if(c == 'd'){
 6c2:	83 f8 64             	cmp    $0x64,%eax
 6c5:	0f 84 05 01 00 00    	je     7d0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 6cb:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 6d1:	83 f9 70             	cmp    $0x70,%ecx
 6d4:	74 72                	je     748 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 6d6:	83 f8 73             	cmp    $0x73,%eax
 6d9:	0f 84 99 00 00 00    	je     778 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 6df:	83 f8 63             	cmp    $0x63,%eax
 6e2:	0f 84 08 01 00 00    	je     7f0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 6e8:	83 f8 25             	cmp    $0x25,%eax
 6eb:	0f 84 ef 00 00 00    	je     7e0 <printf+0x180>
  write(fd, &c, 1);
 6f1:	8d 45 e7             	lea    -0x19(%ebp),%eax
 6f4:	83 ec 04             	sub    $0x4,%esp
 6f7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6fb:	6a 01                	push   $0x1
 6fd:	50                   	push   %eax
 6fe:	ff 75 08             	pushl  0x8(%ebp)
 701:	e8 2c fe ff ff       	call   532 <write>
 706:	83 c4 0c             	add    $0xc,%esp
 709:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 70c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 70f:	6a 01                	push   $0x1
 711:	50                   	push   %eax
 712:	ff 75 08             	pushl  0x8(%ebp)
 715:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 718:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 71a:	e8 13 fe ff ff       	call   532 <write>
  for(i = 0; fmt[i]; i++){
 71f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 723:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 726:	84 db                	test   %bl,%bl
 728:	75 89                	jne    6b3 <printf+0x53>
    }
  }
}
 72a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 72d:	5b                   	pop    %ebx
 72e:	5e                   	pop    %esi
 72f:	5f                   	pop    %edi
 730:	5d                   	pop    %ebp
 731:	c3                   	ret    
 732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 738:	bf 25 00 00 00       	mov    $0x25,%edi
 73d:	e9 66 ff ff ff       	jmp    6a8 <printf+0x48>
 742:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 748:	83 ec 0c             	sub    $0xc,%esp
 74b:	b9 10 00 00 00       	mov    $0x10,%ecx
 750:	6a 00                	push   $0x0
 752:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 755:	8b 45 08             	mov    0x8(%ebp),%eax
 758:	8b 17                	mov    (%edi),%edx
 75a:	e8 61 fe ff ff       	call   5c0 <printint>
        ap++;
 75f:	89 f8                	mov    %edi,%eax
 761:	83 c4 10             	add    $0x10,%esp
      state = 0;
 764:	31 ff                	xor    %edi,%edi
        ap++;
 766:	83 c0 04             	add    $0x4,%eax
 769:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 76c:	e9 37 ff ff ff       	jmp    6a8 <printf+0x48>
 771:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 778:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 77b:	8b 08                	mov    (%eax),%ecx
        ap++;
 77d:	83 c0 04             	add    $0x4,%eax
 780:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 783:	85 c9                	test   %ecx,%ecx
 785:	0f 84 8e 00 00 00    	je     819 <printf+0x1b9>
        while(*s != 0){
 78b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 78e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 790:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 792:	84 c0                	test   %al,%al
 794:	0f 84 0e ff ff ff    	je     6a8 <printf+0x48>
 79a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 79d:	89 de                	mov    %ebx,%esi
 79f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7a2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 7a5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7a8:	83 ec 04             	sub    $0x4,%esp
          s++;
 7ab:	83 c6 01             	add    $0x1,%esi
 7ae:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 7b1:	6a 01                	push   $0x1
 7b3:	57                   	push   %edi
 7b4:	53                   	push   %ebx
 7b5:	e8 78 fd ff ff       	call   532 <write>
        while(*s != 0){
 7ba:	0f b6 06             	movzbl (%esi),%eax
 7bd:	83 c4 10             	add    $0x10,%esp
 7c0:	84 c0                	test   %al,%al
 7c2:	75 e4                	jne    7a8 <printf+0x148>
 7c4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 7c7:	31 ff                	xor    %edi,%edi
 7c9:	e9 da fe ff ff       	jmp    6a8 <printf+0x48>
 7ce:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 7d0:	83 ec 0c             	sub    $0xc,%esp
 7d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7d8:	6a 01                	push   $0x1
 7da:	e9 73 ff ff ff       	jmp    752 <printf+0xf2>
 7df:	90                   	nop
  write(fd, &c, 1);
 7e0:	83 ec 04             	sub    $0x4,%esp
 7e3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 7e6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 7e9:	6a 01                	push   $0x1
 7eb:	e9 21 ff ff ff       	jmp    711 <printf+0xb1>
        putc(fd, *ap);
 7f0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 7f3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7f6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 7f8:	6a 01                	push   $0x1
        ap++;
 7fa:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 7fd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 800:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 803:	50                   	push   %eax
 804:	ff 75 08             	pushl  0x8(%ebp)
 807:	e8 26 fd ff ff       	call   532 <write>
        ap++;
 80c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 80f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 812:	31 ff                	xor    %edi,%edi
 814:	e9 8f fe ff ff       	jmp    6a8 <printf+0x48>
          s = "(null)";
 819:	bb 1b 0a 00 00       	mov    $0xa1b,%ebx
        while(*s != 0){
 81e:	b8 28 00 00 00       	mov    $0x28,%eax
 823:	e9 72 ff ff ff       	jmp    79a <printf+0x13a>
 828:	66 90                	xchg   %ax,%ax
 82a:	66 90                	xchg   %ax,%ax
 82c:	66 90                	xchg   %ax,%ax
 82e:	66 90                	xchg   %ax,%ax

00000830 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 830:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 831:	a1 20 0d 00 00       	mov    0xd20,%eax
{
 836:	89 e5                	mov    %esp,%ebp
 838:	57                   	push   %edi
 839:	56                   	push   %esi
 83a:	53                   	push   %ebx
 83b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 83e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 848:	39 c8                	cmp    %ecx,%eax
 84a:	8b 10                	mov    (%eax),%edx
 84c:	73 32                	jae    880 <free+0x50>
 84e:	39 d1                	cmp    %edx,%ecx
 850:	72 04                	jb     856 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 852:	39 d0                	cmp    %edx,%eax
 854:	72 32                	jb     888 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 856:	8b 73 fc             	mov    -0x4(%ebx),%esi
 859:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 85c:	39 fa                	cmp    %edi,%edx
 85e:	74 30                	je     890 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 860:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 863:	8b 50 04             	mov    0x4(%eax),%edx
 866:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 869:	39 f1                	cmp    %esi,%ecx
 86b:	74 3a                	je     8a7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 86d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 86f:	a3 20 0d 00 00       	mov    %eax,0xd20
}
 874:	5b                   	pop    %ebx
 875:	5e                   	pop    %esi
 876:	5f                   	pop    %edi
 877:	5d                   	pop    %ebp
 878:	c3                   	ret    
 879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 880:	39 d0                	cmp    %edx,%eax
 882:	72 04                	jb     888 <free+0x58>
 884:	39 d1                	cmp    %edx,%ecx
 886:	72 ce                	jb     856 <free+0x26>
{
 888:	89 d0                	mov    %edx,%eax
 88a:	eb bc                	jmp    848 <free+0x18>
 88c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 890:	03 72 04             	add    0x4(%edx),%esi
 893:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 896:	8b 10                	mov    (%eax),%edx
 898:	8b 12                	mov    (%edx),%edx
 89a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 89d:	8b 50 04             	mov    0x4(%eax),%edx
 8a0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8a3:	39 f1                	cmp    %esi,%ecx
 8a5:	75 c6                	jne    86d <free+0x3d>
    p->s.size += bp->s.size;
 8a7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 8aa:	a3 20 0d 00 00       	mov    %eax,0xd20
    p->s.size += bp->s.size;
 8af:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8b2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8b5:	89 10                	mov    %edx,(%eax)
}
 8b7:	5b                   	pop    %ebx
 8b8:	5e                   	pop    %esi
 8b9:	5f                   	pop    %edi
 8ba:	5d                   	pop    %ebp
 8bb:	c3                   	ret    
 8bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8c0:	55                   	push   %ebp
 8c1:	89 e5                	mov    %esp,%ebp
 8c3:	57                   	push   %edi
 8c4:	56                   	push   %esi
 8c5:	53                   	push   %ebx
 8c6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8cc:	8b 15 20 0d 00 00    	mov    0xd20,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8d2:	8d 78 07             	lea    0x7(%eax),%edi
 8d5:	c1 ef 03             	shr    $0x3,%edi
 8d8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 8db:	85 d2                	test   %edx,%edx
 8dd:	0f 84 9d 00 00 00    	je     980 <malloc+0xc0>
 8e3:	8b 02                	mov    (%edx),%eax
 8e5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 8e8:	39 cf                	cmp    %ecx,%edi
 8ea:	76 6c                	jbe    958 <malloc+0x98>
 8ec:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 8f2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8f7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 8fa:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 901:	eb 0e                	jmp    911 <malloc+0x51>
 903:	90                   	nop
 904:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 908:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 90a:	8b 48 04             	mov    0x4(%eax),%ecx
 90d:	39 f9                	cmp    %edi,%ecx
 90f:	73 47                	jae    958 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 911:	39 05 20 0d 00 00    	cmp    %eax,0xd20
 917:	89 c2                	mov    %eax,%edx
 919:	75 ed                	jne    908 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 91b:	83 ec 0c             	sub    $0xc,%esp
 91e:	56                   	push   %esi
 91f:	e8 76 fc ff ff       	call   59a <sbrk>
  if(p == (char*)-1)
 924:	83 c4 10             	add    $0x10,%esp
 927:	83 f8 ff             	cmp    $0xffffffff,%eax
 92a:	74 1c                	je     948 <malloc+0x88>
  hp->s.size = nu;
 92c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 92f:	83 ec 0c             	sub    $0xc,%esp
 932:	83 c0 08             	add    $0x8,%eax
 935:	50                   	push   %eax
 936:	e8 f5 fe ff ff       	call   830 <free>
  return freep;
 93b:	8b 15 20 0d 00 00    	mov    0xd20,%edx
      if((p = morecore(nunits)) == 0)
 941:	83 c4 10             	add    $0x10,%esp
 944:	85 d2                	test   %edx,%edx
 946:	75 c0                	jne    908 <malloc+0x48>
        return 0;
  }
}
 948:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 94b:	31 c0                	xor    %eax,%eax
}
 94d:	5b                   	pop    %ebx
 94e:	5e                   	pop    %esi
 94f:	5f                   	pop    %edi
 950:	5d                   	pop    %ebp
 951:	c3                   	ret    
 952:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 958:	39 cf                	cmp    %ecx,%edi
 95a:	74 54                	je     9b0 <malloc+0xf0>
        p->s.size -= nunits;
 95c:	29 f9                	sub    %edi,%ecx
 95e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 961:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 964:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 967:	89 15 20 0d 00 00    	mov    %edx,0xd20
}
 96d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 970:	83 c0 08             	add    $0x8,%eax
}
 973:	5b                   	pop    %ebx
 974:	5e                   	pop    %esi
 975:	5f                   	pop    %edi
 976:	5d                   	pop    %ebp
 977:	c3                   	ret    
 978:	90                   	nop
 979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 980:	c7 05 20 0d 00 00 24 	movl   $0xd24,0xd20
 987:	0d 00 00 
 98a:	c7 05 24 0d 00 00 24 	movl   $0xd24,0xd24
 991:	0d 00 00 
    base.s.size = 0;
 994:	b8 24 0d 00 00       	mov    $0xd24,%eax
 999:	c7 05 28 0d 00 00 00 	movl   $0x0,0xd28
 9a0:	00 00 00 
 9a3:	e9 44 ff ff ff       	jmp    8ec <malloc+0x2c>
 9a8:	90                   	nop
 9a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 9b0:	8b 08                	mov    (%eax),%ecx
 9b2:	89 0a                	mov    %ecx,(%edx)
 9b4:	eb b1                	jmp    967 <malloc+0xa7>
