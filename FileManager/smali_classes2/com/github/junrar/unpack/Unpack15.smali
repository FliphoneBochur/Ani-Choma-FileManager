.class public abstract Lcom/github/junrar/unpack/Unpack15;
.super Lcom/github/junrar/unpack/vm/BitInput;
.source "Unpack15.java"


# static fields
.field private static DecHf0:[I = null

.field private static DecHf1:[I = null

.field private static DecHf2:[I = null

.field private static DecHf3:[I = null

.field private static DecHf4:[I = null

.field private static DecL1:[I = null

.field private static DecL2:[I = null

.field private static PosHf0:[I = null

.field private static PosHf1:[I = null

.field private static PosHf2:[I = null

.field private static PosHf3:[I = null

.field private static PosHf4:[I = null

.field private static PosL1:[I = null

.field private static PosL2:[I = null

.field private static final STARTHF0:I = 0x4

.field private static final STARTHF1:I = 0x5

.field private static final STARTHF2:I = 0x5

.field private static final STARTHF3:I = 0x6

.field private static final STARTHF4:I = 0x8

.field private static final STARTL1:I = 0x2

.field private static final STARTL2:I = 0x3

.field static ShortLen1:[I

.field static ShortLen2:[I

.field static ShortXor1:[I

.field static ShortXor2:[I


# instance fields
.field protected AvrLn1:I

.field protected AvrLn2:I

.field protected AvrLn3:I

.field protected AvrPlc:I

.field protected AvrPlcB:I

.field protected Buf60:I

.field protected ChSet:[I

.field protected ChSetA:[I

.field protected ChSetB:[I

.field protected ChSetC:[I

.field protected FlagBuf:I

.field protected FlagsCnt:I

.field protected LCount:I

.field protected MaxDist3:I

.field protected NToPl:[I

.field protected NToPlB:[I

.field protected NToPlC:[I

.field protected Nhfb:I

.field protected Nlzb:I

.field protected NumHuf:I

.field protected Place:[I

.field protected PlaceA:[I

.field protected PlaceB:[I

.field protected PlaceC:[I

.field protected StMode:I

.field protected destUnpSize:J

.field protected lastDist:I

.field protected lastLength:I

.field protected oldDist:[I

.field protected oldDistPtr:I

.field protected readBorder:I

.field protected readTop:I

.field protected suspended:Z

.field protected unpAllBuf:Z

.field protected unpIO:Lcom/github/junrar/unpack/ComprDataIO;

.field protected unpPtr:I

.field protected unpSomeRead:Z

.field protected window:[B

.field protected wrPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/junrar/unpack/Unpack15;->DecL1:[I

    .line 81
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->PosL1:[I

    .line 85
    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->DecL2:[I

    .line 88
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->PosL2:[I

    .line 92
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf0:[I

    .line 95
    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->PosHf0:[I

    .line 100
    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    sput-object v2, Lcom/github/junrar/unpack/Unpack15;->DecHf1:[I

    .line 103
    new-array v2, v0, [I

    fill-array-data v2, :array_7

    sput-object v2, Lcom/github/junrar/unpack/Unpack15;->PosHf1:[I

    .line 108
    new-array v1, v1, [I

    fill-array-data v1, :array_8

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    .line 111
    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    .line 115
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf3:[I

    .line 118
    new-array v1, v0, [I

    fill-array-data v1, :array_b

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->PosHf3:[I

    .line 122
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf4:[I

    .line 125
    new-array v0, v0, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/github/junrar/unpack/Unpack15;->PosHf4:[I

    .line 127
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_e

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->ShortLen1:[I

    .line 129
    const/16 v1, 0xf

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    sput-object v2, Lcom/github/junrar/unpack/Unpack15;->ShortXor1:[I

    .line 132
    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/github/junrar/unpack/Unpack15;->ShortLen2:[I

    .line 134
    new-array v0, v1, [I

    fill-array-data v0, :array_11

    sput-object v0, Lcom/github/junrar/unpack/Unpack15;->ShortXor2:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8000
        0xa000
        0xc000
        0xd000
        0xe000
        0xea00
        0xee00
        0xf000
        0xf200
        0xf200
        0xffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x2
        0x3
        0x5
        0x7
        0xb
        0x10
        0x14
        0x18
        0x20
        0x20
    .end array-data

    :array_2
    .array-data 4
        0xa000
        0xc000
        0xd000
        0xe000
        0xea00
        0xee00
        0xf000
        0xf200
        0xf240
        0xffff
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x5
        0x7
        0x9
        0xd
        0x12
        0x16
        0x1a
        0x22
        0x24
    .end array-data

    :array_4
    .array-data 4
        0x8000
        0xc000
        0xe000
        0xf200
        0xf200
        0xf200
        0xf200
        0xf200
        0xffff
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8
        0x10
        0x18
        0x21
        0x21
        0x21
        0x21
        0x21
    .end array-data

    :array_6
    .array-data 4
        0x2000
        0xc000
        0xe000
        0xf000
        0xf200
        0xf200
        0xf7e0
        0xffff
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x2c
        0x3c
        0x4c
        0x50
        0x50
        0x7f
    .end array-data

    :array_8
    .array-data 4
        0x1000
        0x2400
        0x8000
        0xc000
        0xfa00
        0xffff
        0xffff
        0xffff
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x7
        0x35
        0x75
        0xe9
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x800
        0x2400
        0xee00
        0xfe80
        0xffff
        0xffff
        0xffff
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x10
        0xda
        0xfb
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xff00
        0xffff
        0xffff
        0xffff
        0xffff
        0xffff
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xff
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x8
        0x4
        0x4
        0x5
        0x6
        0x6
        0x4
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0xa0
        0xd0
        0xe0
        0xf0
        0xf8
        0xfc
        0xfe
        0xff
        0xc0
        0x80
        0x90
        0x98
        0x9c
        0xb0
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x4
        0x4
        0x5
        0x6
        0x6
        0x4
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x40
        0x60
        0xa0
        0xd0
        0xe0
        0xf0
        0xf8
        0xfc
        0xc0
        0x80
        0x90
        0x98
        0x9c
        0xb0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/github/junrar/unpack/vm/BitInput;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->oldDist:[I

    .line 59
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetA:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetC:[I

    .line 62
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->Place:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceA:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceB:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceC:[I

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->NToPl:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlB:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlC:[I

    return-void
.end method

.method private getShortLen1(I)I
    .locals 1
    .param p1, "pos"    # I

    .line 245
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->Buf60:I

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/github/junrar/unpack/Unpack15;->ShortLen1:[I

    aget v0, v0, p1

    :goto_0
    return v0
.end method

.method private getShortLen2(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 250
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->Buf60:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/github/junrar/unpack/Unpack15;->ShortLen2:[I

    aget v1, v0, p1

    :goto_0
    return v1
.end method


# virtual methods
.method protected corrHuff([I[I)V
    .locals 5
    .param p1, "CharSet"    # [I
    .param p2, "NumToPlace"    # [I

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "pos":I
    const/4 v1, 0x7

    .local v1, "I":I
    :goto_0
    const/16 v2, 0x20

    if-ltz v1, :cond_1

    .line 574
    const/4 v3, 0x0

    .local v3, "J":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 575
    aget v4, p1, v0

    and-int/lit16 v4, v4, -0x100

    or-int/2addr v4, v1

    aput v4, p1, v0

    .line 574
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 573
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 579
    .end local v3    # "J":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 580
    const/4 v1, 0x6

    :goto_2
    if-ltz v1, :cond_2

    .line 581
    rsub-int/lit8 v3, v1, 0x7

    mul-int/2addr v3, v2

    aput v3, p2, v1

    .line 580
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 583
    :cond_2
    return-void
.end method

.method protected decodeNum(II[I[I)I
    .locals 3
    .param p1, "Num"    # I
    .param p2, "StartPos"    # I
    .param p3, "DecTab"    # [I
    .param p4, "PosTab"    # [I

    .line 597
    const v0, 0xfff0

    and-int/2addr p1, v0

    const/4 v0, 0x0

    .local v0, "I":I
    :goto_0
    aget v1, p3, v0

    if-gt v1, p1, :cond_0

    .line 598
    add-int/lit8 p2, p2, 0x1

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p0, p2}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 601
    if-eqz v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget v1, p3, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int v1, p1, v1

    rsub-int/lit8 v2, p2, 0x10

    ushr-int/2addr v1, v2

    aget v2, p4, p2

    add-int/2addr v1, v2

    return v1
.end method

.method protected getFlagsBuf()V
    .locals 7

    .line 523
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v2, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    const/4 v3, 0x5

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    .line 526
    .local v0, "FlagsPlace":I
    :goto_0
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetC:[I

    aget v2, v1, v0

    .line 527
    .local v2, "Flags":I
    ushr-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 528
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlC:[I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "Flags":I
    .local v4, "Flags":I
    and-int/lit16 v2, v2, 0xff

    aget v5, v3, v2

    add-int/lit8 v6, v5, 0x1

    aput v6, v3, v2

    move v2, v5

    .line 529
    .local v2, "NewFlagsPlace":I
    and-int/lit16 v5, v4, 0xff

    if-eqz v5, :cond_0

    .line 530
    nop

    .line 535
    aget v3, v1, v2

    aput v3, v1, v0

    .line 536
    aput v4, v1, v2

    .line 537
    return-void

    .line 532
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/github/junrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_0
.end method

.method protected huffDecode()V
    .locals 9

    .line 448
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    .line 450
    .local v0, "BitField":I
    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/16 v5, 0x75ff

    if-le v1, v5, :cond_0

    .line 451
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf4:[I

    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->PosHf4:[I

    invoke-virtual {p0, v0, v3, v1, v5}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .local v1, "BytePlace":I
    goto :goto_0

    .line 453
    .end local v1    # "BytePlace":I
    :cond_0
    const/16 v5, 0x5dff

    if-le v1, v5, :cond_1

    .line 454
    const/4 v1, 0x6

    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->DecHf3:[I

    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->PosHf3:[I

    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1    # "BytePlace":I
    goto :goto_0

    .line 456
    .end local v1    # "BytePlace":I
    :cond_1
    const/16 v5, 0x35ff

    if-le v1, v5, :cond_2

    .line 457
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v0, v4, v1, v5}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1    # "BytePlace":I
    goto :goto_0

    .line 459
    .end local v1    # "BytePlace":I
    :cond_2
    const/16 v5, 0xdff

    if-le v1, v5, :cond_3

    .line 460
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf1:[I

    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->PosHf1:[I

    invoke-virtual {p0, v0, v4, v1, v5}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1    # "BytePlace":I
    goto :goto_0

    .line 463
    .end local v1    # "BytePlace":I
    :cond_3
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf0:[I

    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->PosHf0:[I

    invoke-virtual {p0, v0, v2, v1, v5}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .line 469
    .restart local v1    # "BytePlace":I
    :goto_0
    const/16 v5, 0xff

    and-int/2addr v1, v5

    .line 470
    iget v6, p0, Lcom/github/junrar/unpack/Unpack15;->StMode:I

    const/16 v7, 0x10

    const/4 v8, 0x1

    if-eqz v6, :cond_7

    .line 471
    if-nez v1, :cond_4

    const/16 v6, 0xfff

    if-le v0, v6, :cond_4

    .line 472
    const/16 v1, 0x100

    .line 474
    :cond_4
    const/4 v6, -0x1

    add-int/2addr v1, v6

    if-ne v1, v6, :cond_8

    .line 475
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    .line 476
    invoke-virtual {p0, v8}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 477
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_5

    .line 478
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->StMode:I

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    .line 479
    return-void

    .line 481
    :cond_5
    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x3

    .line 482
    .local v2, "Length":I
    :goto_1
    invoke-virtual {p0, v8}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 483
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v3

    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v3

    .line 484
    .local v3, "Distance":I
    shl-int/lit8 v5, v3, 0x5

    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v6

    ushr-int/lit8 v6, v6, 0xb

    or-int v3, v5, v6

    .line 485
    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 486
    invoke-virtual {p0, v3, v2}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 487
    return-void

    .line 491
    .end local v2    # "Length":I
    .end local v3    # "Distance":I
    :cond_7
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    if-lt v2, v7, :cond_8

    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    if-nez v2, :cond_8

    .line 492
    iput v8, p0, Lcom/github/junrar/unpack/Unpack15;->StMode:I

    .line 495
    :cond_8
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    .line 496
    ushr-int/lit8 v4, v2, 0x8

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    .line 497
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    add-int/2addr v2, v7

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    .line 498
    if-le v2, v5, :cond_9

    .line 499
    const/16 v2, 0x90

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    .line 500
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    ushr-int/2addr v2, v8

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    .line 503
    :cond_9
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iget-object v6, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    aget v6, v6, v1

    ushr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 504
    iget-wide v2, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    .line 507
    :goto_2
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    aget v3, v2, v1

    .line 508
    .local v3, "CurByte":I
    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack15;->NToPl:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "CurByte":I
    .local v6, "CurByte":I
    and-int/2addr v3, v5

    aget v7, v4, v3

    add-int/lit8 v8, v7, 0x1

    aput v8, v4, v3

    move v3, v7

    .line 509
    .local v3, "NewBytePlace":I
    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0xa1

    if-le v7, v8, :cond_a

    .line 510
    invoke-virtual {p0, v2, v4}, Lcom/github/junrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_2

    .line 516
    :cond_a
    aget v4, v2, v3

    aput v4, v2, v1

    .line 517
    aput v6, v2, v3

    .line 518
    return-void
.end method

.method protected initHuff()V
    .locals 4

    .line 556
    const/4 v0, 0x0

    .local v0, "I":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->Place:[I

    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceA:[I

    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceB:[I

    aput v0, v3, v0

    aput v0, v2, v0

    aput v0, v1, v0

    .line 558
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceC:[I

    not-int v2, v0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    .line 559
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    shl-int/lit8 v3, v0, 0x8

    aput v3, v2, v0

    aput v3, v1, v0

    .line 560
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetA:[I

    aput v0, v1, v0

    .line 561
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetC:[I

    not-int v2, v0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aput v2, v1, v0

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    .end local v0    # "I":I
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->NToPl:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 565
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlB:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 566
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlC:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 567
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlB:[I

    invoke-virtual {p0, v0, v1}, Lcom/github/junrar/unpack/Unpack15;->corrHuff([I[I)V

    .line 568
    return-void
.end method

.method protected longLZ()V
    .locals 17

    .line 354
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    .line 355
    iget v1, v0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    const/16 v2, 0x10

    add-int/2addr v1, v2

    iput v1, v0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    .line 356
    const/16 v3, 0xff

    const/4 v4, 0x1

    if-le v1, v3, :cond_0

    .line 357
    const/16 v1, 0x90

    iput v1, v0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    .line 358
    iget v1, v0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    ushr-int/2addr v1, v4

    iput v1, v0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    .line 360
    :cond_0
    iget v1, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    .line 362
    .local v1, "OldAvr2":I
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v5

    .line 363
    .local v5, "BitField":I
    iget v6, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    const/16 v7, 0x7a

    const/16 v8, 0x100

    const/16 v9, 0x40

    const/4 v10, 0x3

    if-lt v6, v7, :cond_1

    .line 364
    sget-object v2, Lcom/github/junrar/unpack/Unpack15;->DecL2:[I

    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->PosL2:[I

    invoke-virtual {v0, v5, v10, v2, v6}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v2

    .local v2, "Length":I
    goto :goto_1

    .line 366
    .end local v2    # "Length":I
    :cond_1
    if-lt v6, v9, :cond_2

    .line 367
    const/4 v2, 0x2

    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->DecL1:[I

    sget-object v7, Lcom/github/junrar/unpack/Unpack15;->PosL1:[I

    invoke-virtual {v0, v5, v2, v6, v7}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v2

    .restart local v2    # "Length":I
    goto :goto_1

    .line 369
    .end local v2    # "Length":I
    :cond_2
    if-ge v5, v8, :cond_3

    .line 370
    move v6, v5

    .line 371
    .local v6, "Length":I
    invoke-virtual {v0, v2}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    move v2, v6

    goto :goto_1

    .line 373
    .end local v6    # "Length":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "Length":I
    :goto_0
    shl-int v6, v5, v2

    const v7, 0x8000

    and-int/2addr v6, v7

    if-nez v6, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_4
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 380
    :goto_1
    iget v6, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    .line 381
    ushr-int/lit8 v7, v6, 0x5

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v5

    .line 384
    iget v6, v0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    const/16 v7, 0x28ff

    const/4 v11, 0x4

    const/4 v12, 0x5

    if-le v6, v7, :cond_5

    .line 385
    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v7, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {v0, v5, v12, v6, v7}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v6

    .local v6, "DistancePlace":I
    goto :goto_2

    .line 387
    .end local v6    # "DistancePlace":I
    :cond_5
    const/16 v7, 0x6ff

    if-le v6, v7, :cond_6

    .line 388
    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->DecHf1:[I

    sget-object v7, Lcom/github/junrar/unpack/Unpack15;->PosHf1:[I

    invoke-virtual {v0, v5, v12, v6, v7}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v6

    .restart local v6    # "DistancePlace":I
    goto :goto_2

    .line 390
    .end local v6    # "DistancePlace":I
    :cond_6
    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->DecHf0:[I

    sget-object v7, Lcom/github/junrar/unpack/Unpack15;->PosHf0:[I

    invoke-virtual {v0, v5, v11, v6, v7}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v6

    .line 393
    .restart local v6    # "DistancePlace":I
    :goto_2
    iget v7, v0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    .line 394
    shr-int/lit8 v12, v7, 0x8

    sub-int/2addr v7, v12

    iput v7, v0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    .line 396
    :goto_3
    iget-object v7, v0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    and-int/lit16 v12, v6, 0xff

    aget v12, v7, v12

    .line 397
    .local v12, "Distance":I
    iget-object v13, v0, Lcom/github/junrar/unpack/Unpack15;->NToPlB:[I

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "Distance":I
    .local v14, "Distance":I
    and-int/2addr v12, v3

    aget v15, v13, v12

    add-int/lit8 v16, v15, 0x1

    aput v16, v13, v12

    move v12, v15

    .line 398
    .local v12, "NewDistancePlace":I
    and-int/lit16 v15, v14, 0xff

    if-nez v15, :cond_7

    .line 399
    invoke-virtual {v0, v7, v13}, Lcom/github/junrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_3

    .line 405
    :cond_7
    aget v3, v7, v12

    aput v3, v7, v6

    .line 406
    aput v14, v7, v12

    .line 408
    const v3, 0xff00

    and-int/2addr v3, v14

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v7

    ushr-int/lit8 v7, v7, 0x8

    or-int/2addr v3, v7

    ushr-int/2addr v3, v4

    .line 409
    .end local v14    # "Distance":I
    .local v3, "Distance":I
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 411
    iget v7, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    .line 412
    .local v7, "OldAvr3":I
    if-eq v2, v4, :cond_9

    if-eq v2, v11, :cond_9

    .line 413
    if-nez v2, :cond_8

    iget v11, v0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    if-gt v3, v11, :cond_8

    .line 414
    iget v11, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    add-int/2addr v11, v4

    iput v11, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    .line 415
    shr-int/lit8 v4, v11, 0x8

    sub-int/2addr v11, v4

    iput v11, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    goto :goto_4

    .line 417
    :cond_8
    iget v11, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    if-lez v11, :cond_9

    .line 418
    sub-int/2addr v11, v4

    iput v11, v0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    .line 422
    :cond_9
    :goto_4
    add-int/2addr v2, v10

    .line 423
    iget v4, v0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    if-lt v3, v4, :cond_a

    .line 424
    add-int/lit8 v2, v2, 0x1

    .line 426
    :cond_a
    if-gt v3, v8, :cond_b

    .line 427
    add-int/lit8 v2, v2, 0x8

    .line 429
    :cond_b
    const/16 v4, 0xb0

    if-gt v7, v4, :cond_d

    iget v4, v0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    const/16 v8, 0x2a00

    if-lt v4, v8, :cond_c

    if-ge v1, v9, :cond_c

    goto :goto_5

    .line 432
    :cond_c
    const/16 v4, 0x2001

    iput v4, v0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    goto :goto_6

    .line 430
    :cond_d
    :goto_5
    const/16 v4, 0x7f00

    iput v4, v0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    .line 434
    :goto_6
    iget-object v4, v0, Lcom/github/junrar/unpack/Unpack15;->oldDist:[I

    iget v8, v0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    aput v3, v4, v8

    .line 435
    and-int/lit8 v4, v9, 0x3

    iput v4, v0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 436
    iput v2, v0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    .line 437
    iput v3, v0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    .line 438
    invoke-virtual {v0, v3, v2}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 439
    return-void
.end method

.method protected oldCopyString(II)V
    .locals 4
    .param p1, "Distance"    # I
    .param p2, "Length"    # I

    .line 587
    iget-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    .line 588
    :goto_0
    add-int/lit8 v0, p2, -0x1

    .end local p2    # "Length":I
    .local v0, "Length":I
    if-eqz p2, :cond_0

    .line 589
    iget-object p2, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    sub-int v2, v1, p1

    const v3, 0x3fffff

    and-int/2addr v2, v3

    aget-byte v2, p2, v2

    aput-byte v2, p2, v1

    .line 590
    add-int/lit8 v1, v1, 0x1

    and-int p2, v1, v3

    iput p2, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    move p2, v0

    goto :goto_0

    .line 592
    :cond_0
    return-void
.end method

.method protected oldUnpInitData(Z)V
    .locals 2
    .param p1, "Solid"    # Z

    .line 541
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 542
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->Buf60:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    .line 543
    const/16 v1, 0x3500

    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    .line 544
    const/16 v1, 0x2001

    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    .line 545
    const/16 v1, 0x80

    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    .line 547
    :cond_0
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 548
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 549
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->StMode:I

    .line 550
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 551
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    .line 552
    return-void
.end method

.method protected oldUnpWriteBuf()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 607
    iput-boolean v2, p0, Lcom/github/junrar/unpack/Unpack15;->unpSomeRead:Z

    .line 609
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    if-ge v0, v1, :cond_1

    .line 610
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    neg-int v4, v1

    const v5, 0x3fffff

    and-int/2addr v4, v5

    invoke-virtual {v0, v3, v1, v4}, Lcom/github/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 611
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/github/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 612
    iput-boolean v2, p0, Lcom/github/junrar/unpack/Unpack15;->unpAllBuf:Z

    goto :goto_0

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/github/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 616
    :goto_0
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    .line 617
    return-void
.end method

.method protected shortLZ()V
    .locals 11

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    .line 261
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v1

    .line 262
    .local v1, "BitField":I
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    const v3, 0x8000

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    .line 263
    invoke-virtual {p0, v5}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 264
    if-lt v1, v3, :cond_0

    .line 265
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    invoke-virtual {p0, v0, v2}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 266
    return-void

    .line 268
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 269
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 271
    :cond_1
    ushr-int/lit8 v1, v1, 0x8

    .line 272
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    const/16 v6, 0x25

    const/16 v7, 0xff

    if-ge v2, v6, :cond_3

    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "Length":I
    :goto_0
    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->ShortXor1:[I

    aget v6, v6, v2

    xor-int/2addr v6, v1

    invoke-direct {p0, v2}, Lcom/github/junrar/unpack/Unpack15;->getShortLen1(I)I

    move-result v8

    ushr-int v8, v7, v8

    not-int v8, v8

    and-int/2addr v6, v8

    if-nez v6, :cond_2

    .line 275
    nop

    .line 278
    invoke-direct {p0, v2}, Lcom/github/junrar/unpack/Unpack15;->getShortLen1(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    goto :goto_2

    .line 273
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "Length":I
    :cond_3
    const/4 v2, 0x0

    .line 281
    .restart local v2    # "Length":I
    :goto_1
    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->ShortXor2:[I

    aget v6, v6, v2

    xor-int/2addr v6, v1

    invoke-direct {p0, v2}, Lcom/github/junrar/unpack/Unpack15;->getShortLen2(I)I

    move-result v8

    shr-int v8, v7, v8

    not-int v8, v8

    and-int/2addr v6, v8

    if-nez v6, :cond_b

    .line 282
    nop

    .line 285
    invoke-direct {p0, v2}, Lcom/github/junrar/unpack/Unpack15;->getShortLen2(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 288
    :goto_2
    const/4 v6, 0x5

    const/16 v8, 0x9

    const/4 v9, 0x3

    if-lt v2, v8, :cond_9

    .line 289
    if-ne v2, v8, :cond_4

    .line 290
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 291
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    invoke-virtual {p0, v0, v3}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 292
    return-void

    .line 294
    :cond_4
    const/16 v7, 0xe

    if-ne v2, v7, :cond_5

    .line 295
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 296
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    sget-object v4, Lcom/github/junrar/unpack/Unpack15;->DecL2:[I

    sget-object v7, Lcom/github/junrar/unpack/Unpack15;->PosL2:[I

    invoke-virtual {p0, v0, v9, v4, v7}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    add-int/2addr v0, v6

    .line 297
    .end local v2    # "Length":I
    .local v0, "Length":I
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v2

    shr-int/2addr v2, v5

    or-int/2addr v2, v3

    .line 298
    .local v2, "Distance":I
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 299
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    .line 300
    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    .line 301
    invoke-virtual {p0, v2, v0}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 302
    return-void

    .line 305
    .end local v0    # "Length":I
    .local v2, "Length":I
    :cond_5
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 306
    move v0, v2

    .line 307
    .local v0, "SaveLength":I
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->oldDist:[I

    iget v6, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v7, v2, -0x9

    sub-int/2addr v6, v7

    and-int/2addr v6, v9

    aget v3, v3, v6

    .line 308
    .local v3, "Distance":I
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v6

    sget-object v7, Lcom/github/junrar/unpack/Unpack15;->DecL1:[I

    sget-object v8, Lcom/github/junrar/unpack/Unpack15;->PosL1:[I

    invoke-virtual {p0, v6, v4, v7, v8}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v6

    add-int/2addr v6, v4

    .line 309
    .end local v2    # "Length":I
    .local v6, "Length":I
    const/16 v2, 0x101

    if-ne v6, v2, :cond_6

    const/16 v2, 0xa

    if-ne v0, v2, :cond_6

    .line 310
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->Buf60:I

    xor-int/2addr v2, v5

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->Buf60:I

    .line 311
    return-void

    .line 313
    :cond_6
    const/16 v2, 0x100

    if-le v3, v2, :cond_7

    .line 314
    add-int/lit8 v6, v6, 0x1

    .line 315
    :cond_7
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    if-lt v3, v2, :cond_8

    .line 316
    add-int/lit8 v6, v6, 0x1

    .line 318
    :cond_8
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->oldDist:[I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    aput v3, v2, v4

    .line 319
    and-int/lit8 v2, v5, 0x3

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 320
    iput v6, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    .line 321
    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    .line 322
    invoke-virtual {p0, v3, v6}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 323
    return-void

    .line 326
    .end local v0    # "SaveLength":I
    .end local v3    # "Distance":I
    .end local v6    # "Length":I
    .restart local v2    # "Length":I
    :cond_9
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 327
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    .line 328
    shr-int/lit8 v3, v0, 0x4

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    .line 330
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    sget-object v3, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v8, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v0, v6, v3, v8}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    and-int/2addr v0, v7

    .line 331
    .local v0, "DistancePlace":I
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetA:[I

    aget v6, v3, v0

    .line 332
    .local v6, "Distance":I
    const/4 v7, -0x1

    add-int/2addr v0, v7

    if-eq v0, v7, :cond_a

    .line 333
    iget-object v7, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceA:[I

    aget v8, v7, v6

    sub-int/2addr v8, v5

    aput v8, v7, v6

    .line 334
    aget v8, v3, v0

    .line 335
    .local v8, "LastDistance":I
    aget v10, v7, v8

    add-int/2addr v10, v5

    aput v10, v7, v8

    .line 336
    add-int/lit8 v7, v0, 0x1

    aput v8, v3, v7

    .line 337
    aput v6, v3, v0

    .line 339
    .end local v8    # "LastDistance":I
    :cond_a
    add-int/2addr v2, v4

    .line 340
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->oldDist:[I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/2addr v6, v5

    aput v6, v3, v4

    .line 341
    and-int/lit8 v3, v7, 0x3

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 342
    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    .line 343
    iput v6, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    .line 344
    invoke-virtual {p0, v6, v2}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 345
    return-void

    .line 280
    .end local v0    # "DistancePlace":I
    .end local v6    # "Distance":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method protected abstract unpInitData(Z)V
.end method

.method protected unpReadBuf()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 216
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->inAddr:I

    sub-int/2addr v0, v1

    .line 217
    .local v0, "dataSize":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 218
    return v1

    .line 220
    :cond_0
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->inAddr:I

    const/16 v3, 0x4000

    if-le v2, v3, :cond_2

    .line 221
    if-lez v0, :cond_1

    .line 226
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->inBuf:[B

    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->inAddr:I

    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack15;->inBuf:[B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    :cond_1
    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->inAddr:I

    .line 229
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    goto :goto_0

    .line 232
    :cond_2
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    .line 235
    :goto_0
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->inBuf:[B

    const v4, 0x8000

    sub-int/2addr v4, v0

    and-int/lit8 v4, v4, -0x10

    invoke-virtual {v2, v3, v0, v4}, Lcom/github/junrar/unpack/ComprDataIO;->unpRead([BII)I

    move-result v2

    .line 236
    .local v2, "readCode":I
    if-lez v2, :cond_3

    .line 237
    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    .line 239
    :cond_3
    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v3, v3, -0x1e

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->readBorder:I

    .line 240
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected unpack15(Z)V
    .locals 6
    .param p1, "solid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lcom/github/junrar/unpack/Unpack15;->suspended:Z

    if-eqz v0, :cond_0

    .line 142
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    goto :goto_1

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/Unpack15;->unpInitData(Z)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/Unpack15;->oldUnpInitData(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 147
    if-nez p1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->initHuff()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    goto :goto_0

    .line 151
    :cond_1
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    .line 153
    :goto_0
    iget-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    .line 155
    :goto_1
    iget-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->getFlagsBuf()V

    .line 157
    const/16 v0, 0x8

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 160
    :cond_2
    :goto_2
    iget-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    .line 161
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    const v1, 0x3fffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    .line 163
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->inAddr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v4, v4, -0x1e

    if-le v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result v0

    if-nez v0, :cond_3

    .line 164
    goto/16 :goto_3

    .line 166
    :cond_3
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    sub-int v5, v0, v4

    and-int/2addr v1, v5

    const/16 v5, 0x10e

    if-ge v1, v5, :cond_4

    if-eq v0, v4, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    .line 169
    iget-boolean v0, p0, Lcom/github/junrar/unpack/Unpack15;->suspended:Z

    if-eqz v0, :cond_4

    .line 170
    return-void

    .line 173
    :cond_4
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->StMode:I

    if-eqz v0, :cond_5

    .line 174
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->huffDecode()V

    .line 175
    goto :goto_2

    .line 178
    :cond_5
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    const/4 v1, 0x7

    if-gez v0, :cond_6

    .line 179
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->getFlagsBuf()V

    .line 180
    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 183
    :cond_6
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_8

    .line 184
    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 185
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    if-le v0, v1, :cond_7

    .line 186
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->longLZ()V

    goto :goto_2

    .line 188
    :cond_7
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->huffDecode()V

    goto :goto_2

    .line 191
    :cond_8
    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 192
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    if-gez v0, :cond_9

    .line 193
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->getFlagsBuf()V

    .line 194
    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 196
    :cond_9
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_b

    .line 197
    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 198
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    if-le v0, v1, :cond_a

    .line 199
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->huffDecode()V

    goto/16 :goto_2

    .line 201
    :cond_a
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->longLZ()V

    goto/16 :goto_2

    .line 204
    :cond_b
    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 205
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->shortLZ()V

    goto/16 :goto_2

    .line 209
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    .line 210
    return-void
.end method
