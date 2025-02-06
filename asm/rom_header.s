/*
 * Mario Kart 64 ROM header
 * Only the first 0x18 bytes matter to the console.
 */
#define USE_GAMECUBE_CONTROLLER
.byte  0x80, 0x37, 0x12, 0x40   /* PI BSD Domain 1 register */
.word  0x0000000F               /* Clockrate setting*/
.word  entry_point               /* Entrypoint */

/* Revision */  
.word  0x00001446 /* NTSC-U */

.word  0x3E5055B6               /* Checksum 1 */
.word  0x2E92DA52               /* Checksum 2 */
.word  0x00000000               /* Unknown */
.word  0x00000000               /* Unknown */
.ascii "MARIOKART64         "   /* Internal ROM name */
#if defined(USE_GAMECUBE_CONTROLLER)
/* Advanced homebrew ROM header bytes: https://n64brew.dev/wiki/ROM_Header#Advanced_Homebrew_ROM_Header */
.word  0x82000000
#else
.word  0x00000000               /* Unknown */
#endif
.word  0x0000004E               /* Cartridge */
.ascii "KT"                     /* Cartridge ID */

/* Region */

.ifdef VERSION_EU
.ascii "P"                      /* PAL (Europe) */
.else
.ascii "E"                      /* NTSC-U (North America) */
.endif

.ifdef VERSION_EU_1_1
.byte  0x01                     /* Version */
.else
.byte  0x00                     /* Version */
.endif
