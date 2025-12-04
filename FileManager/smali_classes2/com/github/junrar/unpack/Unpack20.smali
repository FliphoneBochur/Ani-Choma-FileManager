.class public abstract Lcom/github/junrar/unpack/Unpack20;
.super Lcom/github/junrar/unpack/Unpack15;
.source "Unpack20.java"


# static fields
.field public static final DBits:[I

.field public static final DDecode:[I

.field public static final LBits:[B

.field public static final LDecode:[I

.field public static final SDBits:[I

.field public static final SDDecode:[I


# instance fields
.field protected AudV:[Lcom/github/junrar/unpack/decode/AudioVariables;

.field protected BD:Lcom/github/junrar/unpack/decode/BitDecode;

.field protected DD:Lcom/github/junrar/unpack/decode/DistDecode;

.field protected LD:Lcom/github/junrar/unpack/decode/LitDecode;

.field protected LDD:Lcom/github/junrar/unpack/decode/LowDistDecode;

.field protected MD:[Lcom/github/junrar/unpack/decode/MultDecode;

.field protected RD:Lcom/github/junrar/unpack/decode/RepDecode;

.field protected UnpAudioBlock:I

.field protected UnpChannelDelta:I

.field protected UnpChannels:I

.field protected UnpCurChannel:I

.field protected UnpOldTable20:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const/16 v0, 0x1c

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/github/junrar/unpack/Unpack20;->LDecode:[I

    .line 67
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/github/junrar/unpack/Unpack20;->LBits:[B

    .line 70
    const/16 v0, 0x30

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/github/junrar/unpack/Unpack20;->DDecode:[I

    .line 76
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/github/junrar/unpack/Unpack20;->DBits:[I

    .line 80
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/github/junrar/unpack/Unpack20;->SDDecode:[I

    .line 82
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/github/junrar/unpack/Unpack20;->SDBits:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
        0x3000
        0x4000
        0x6000
        0x8000
        0xc000
        0x10000
        0x18000
        0x20000
        0x30000
        0x40000
        0x50000
        0x60000
        0x70000
        0x80000
        0x90000
        0xa0000
        0xb0000
        0xc0000
        0xd0000
        0xe0000
        0xf0000
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0xc0
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x5
        0x6
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/github/junrar/unpack/Unpack15;-><init>()V

    .line 45
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/github/junrar/unpack/decode/MultDecode;

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack20;->MD:[Lcom/github/junrar/unpack/decode/MultDecode;

    .line 47
    const/16 v1, 0x404

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack20;->UnpOldTable20:[B

    .line 51
    new-array v0, v0, [Lcom/github/junrar/unpack/decode/AudioVariables;

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->AudV:[Lcom/github/junrar/unpack/decode/AudioVariables;

    .line 53
    new-instance v0, Lcom/github/junrar/unpack/decode/LitDecode;

    invoke-direct {v0}, Lcom/github/junrar/unpack/decode/LitDecode;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->LD:Lcom/github/junrar/unpack/decode/LitDecode;

    .line 55
    new-instance v0, Lcom/github/junrar/unpack/decode/DistDecode;

    invoke-direct {v0}, Lcom/github/junrar/unpack/decode/DistDecode;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->DD:Lcom/github/junrar/unpack/decode/DistDecode;

    .line 57
    new-instance v0, Lcom/github/junrar/unpack/decode/LowDistDecode;

    invoke-direct {v0}, Lcom/github/junrar/unpack/decode/LowDistDecode;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->LDD:Lcom/github/junrar/unpack/decode/LowDistDecode;

    .line 59
    new-instance v0, Lcom/github/junrar/unpack/decode/RepDecode;

    invoke-direct {v0}, Lcom/github/junrar/unpack/decode/RepDecode;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->RD:Lcom/github/junrar/unpack/decode/RepDecode;

    .line 61
    new-instance v0, Lcom/github/junrar/unpack/decode/BitDecode;

    invoke-direct {v0}, Lcom/github/junrar/unpack/decode/BitDecode;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->BD:Lcom/github/junrar/unpack/decode/BitDecode;

    return-void
.end method


# virtual methods
.method protected CopyString20(II)V
    .locals 6
    .param p1, "Length"    # I
    .param p2, "Distance"    # I

    .line 205
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->oldDist:[I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack20;->oldDistPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/junrar/unpack/Unpack20;->oldDistPtr:I

    and-int/lit8 v1, v1, 0x3

    aput p2, v0, v1

    iput p2, p0, Lcom/github/junrar/unpack/Unpack20;->lastDist:I

    .line 206
    iput p1, p0, Lcom/github/junrar/unpack/Unpack20;->lastLength:I

    .line 207
    iget-wide v0, p0, Lcom/github/junrar/unpack/Unpack20;->destUnpSize:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/unpack/Unpack20;->destUnpSize:J

    .line 209
    iget v0, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    sub-int/2addr v0, p2

    .line 210
    .local v0, "DestPtr":I
    const v1, 0x3ffed4

    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    if-ge v2, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack20;->window:[B

    iget v2, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack20;->window:[B

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "DestPtr":I
    .local v4, "DestPtr":I
    aget-byte v0, v3, v0

    aput-byte v0, v1, v2

    .line 213
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->window:[B

    iget v1, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack20;->window:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "DestPtr":I
    .local v3, "DestPtr":I
    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    .line 214
    :goto_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_2

    .line 215
    add-int/lit8 p1, p1, -0x1

    .line 216
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->window:[B

    iget v1, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack20;->window:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "DestPtr":I
    .restart local v4    # "DestPtr":I
    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    move v3, v4

    goto :goto_0

    .line 219
    .end local v4    # "DestPtr":I
    .restart local v0    # "DestPtr":I
    :cond_0
    :goto_1
    add-int/lit8 v1, p1, -0x1

    .end local p1    # "Length":I
    .local v1, "Length":I
    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/github/junrar/unpack/Unpack20;->window:[B

    iget v2, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack20;->window:[B

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "DestPtr":I
    .restart local v4    # "DestPtr":I
    const v5, 0x3fffff

    and-int/2addr v0, v5

    aget-byte v0, v3, v0

    aput-byte v0, p1, v2

    .line 221
    iget p1, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v5

    iput p1, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    move p1, v1

    move v0, v4

    goto :goto_1

    .line 219
    .end local v4    # "DestPtr":I
    .restart local v0    # "DestPtr":I
    :cond_1
    move v3, v0

    move p1, v1

    .line 224
    .end local v0    # "DestPtr":I
    .end local v1    # "Length":I
    .restart local v3    # "DestPtr":I
    .restart local p1    # "Length":I
    :cond_2
    return-void
.end method

.method protected DecodeAudio(I)B
    .locals 12
    .param p1, "Delta"    # I

    .line 498
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->AudV:[Lcom/github/junrar/unpack/decode/AudioVariables;

    iget v1, p0, Lcom/github/junrar/unpack/Unpack20;->UnpCurChannel:I

    aget-object v0, v0, v1

    .line 499
    .local v0, "v":Lcom/github/junrar/unpack/decode/AudioVariables;
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getByteCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/decode/AudioVariables;->setByteCount(I)V

    .line 500
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD3()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/decode/AudioVariables;->setD4(I)V

    .line 501
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD2()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/decode/AudioVariables;->setD3(I)V

    .line 502
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getLastDelta()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD1()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/decode/AudioVariables;->setD2(I)V

    .line 503
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getLastDelta()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/decode/AudioVariables;->setD1(I)V

    .line 506
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getLastChar()I

    move-result v1

    const/16 v3, 0x8

    mul-int/2addr v1, v3

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK1()I

    move-result v4

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD1()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 507
    .local v1, "PCh":I
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK2()I

    move-result v4

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD2()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK3()I

    move-result v5

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD3()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 508
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK4()I

    move-result v4

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD4()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK5()I

    move-result v5

    iget v6, p0, Lcom/github/junrar/unpack/Unpack20;->UnpChannelDelta:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 509
    ushr-int/lit8 v4, v1, 0x3

    and-int/lit16 v1, v4, 0xff

    .line 511
    sub-int v4, v1, p1

    .line 513
    .local v4, "Ch":I
    int-to-byte v5, p1

    const/4 v6, 0x3

    shl-int/2addr v5, v6

    .line 515
    .local v5, "D":I
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v9, v7, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 516
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    aget v9, v7, v2

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD1()I

    move-result v10

    sub-int v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v2

    .line 517
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/4 v9, 0x2

    aget v10, v7, v9

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD1()I

    move-result v11

    add-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v7, v9

    .line 518
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    aget v9, v7, v6

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD2()I

    move-result v10

    sub-int v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v6

    .line 519
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v6

    const/4 v7, 0x4

    aget v9, v6, v7

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD2()I

    move-result v10

    add-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v6, v7

    .line 520
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v6

    const/4 v7, 0x5

    aget v9, v6, v7

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD3()I

    move-result v10

    sub-int v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v6, v7

    .line 521
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v6

    const/4 v7, 0x6

    aget v9, v6, v7

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD3()I

    move-result v10

    add-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v6, v7

    .line 522
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v6

    const/4 v7, 0x7

    aget v9, v6, v7

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD4()I

    move-result v10

    sub-int v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v6, v7

    .line 523
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v6

    aget v7, v6, v3

    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getD4()I

    move-result v9

    add-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v7, v9

    aput v7, v6, v3

    .line 524
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v3

    const/16 v6, 0x9

    aget v7, v3, v6

    iget v9, p0, Lcom/github/junrar/unpack/Unpack20;->UnpChannelDelta:I

    sub-int v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v7, v9

    aput v7, v3, v6

    .line 525
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v3

    const/16 v6, 0xa

    aget v7, v3, v6

    iget v9, p0, Lcom/github/junrar/unpack/Unpack20;->UnpChannelDelta:I

    add-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v7, v9

    aput v7, v3, v6

    .line 527
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getLastChar()I

    move-result v3

    sub-int v3, v4, v3

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/github/junrar/unpack/decode/AudioVariables;->setLastDelta(I)V

    .line 528
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getLastDelta()I

    move-result v3

    iput v3, p0, Lcom/github/junrar/unpack/Unpack20;->UnpChannelDelta:I

    .line 529
    invoke-virtual {v0, v4}, Lcom/github/junrar/unpack/decode/AudioVariables;->setLastChar(I)V

    .line 531
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getByteCount()I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    if-nez v3, :cond_2

    .line 532
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v3

    aget v3, v3, v8

    .local v3, "MinDif":I
    const/4 v6, 0x0

    .line 533
    .local v6, "NumMinDif":I
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    aput v8, v7, v8

    .line 534
    const/4 v7, 0x1

    .local v7, "I":I
    :goto_0
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v9

    array-length v9, v9

    if-ge v7, v9, :cond_1

    .line 535
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v9

    aget v9, v9, v7

    if-ge v9, v3, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v9

    aget v3, v9, v7

    .line 537
    move v6, v7

    .line 539
    :cond_0
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v9

    aput v8, v9, v7

    .line 534
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 541
    .end local v7    # "I":I
    :cond_1
    const/16 v7, 0x10

    const/16 v8, -0x10

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 588
    :pswitch_0
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK5()I

    move-result v8

    if-ge v8, v7, :cond_2

    .line 589
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK5()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/decode/AudioVariables;->setK5(I)V

    goto/16 :goto_1

    .line 583
    :pswitch_1
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK5()I

    move-result v7

    if-lt v7, v8, :cond_2

    .line 584
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK5()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/decode/AudioVariables;->setK5(I)V

    goto/16 :goto_1

    .line 578
    :pswitch_2
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK4()I

    move-result v8

    if-ge v8, v7, :cond_2

    .line 579
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK4()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/decode/AudioVariables;->setK4(I)V

    goto :goto_1

    .line 573
    :pswitch_3
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK4()I

    move-result v7

    if-lt v7, v8, :cond_2

    .line 574
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK4()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/decode/AudioVariables;->setK4(I)V

    goto :goto_1

    .line 568
    :pswitch_4
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK3()I

    move-result v8

    if-ge v8, v7, :cond_2

    .line 569
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK3()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/decode/AudioVariables;->setK3(I)V

    goto :goto_1

    .line 563
    :pswitch_5
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK3()I

    move-result v7

    if-lt v7, v8, :cond_2

    .line 564
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK3()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/decode/AudioVariables;->setK3(I)V

    goto :goto_1

    .line 558
    :pswitch_6
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK2()I

    move-result v8

    if-ge v8, v7, :cond_2

    .line 559
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK2()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/decode/AudioVariables;->setK2(I)V

    goto :goto_1

    .line 553
    :pswitch_7
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK2()I

    move-result v7

    if-lt v7, v8, :cond_2

    .line 554
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK2()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/decode/AudioVariables;->setK2(I)V

    goto :goto_1

    .line 548
    :pswitch_8
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK1()I

    move-result v8

    if-ge v8, v7, :cond_2

    .line 549
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK1()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/decode/AudioVariables;->setK1(I)V

    goto :goto_1

    .line 543
    :pswitch_9
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK1()I

    move-result v7

    if-lt v7, v8, :cond_2

    .line 544
    invoke-virtual {v0}, Lcom/github/junrar/unpack/decode/AudioVariables;->getK1()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/decode/AudioVariables;->setK1(I)V

    .line 594
    .end local v3    # "MinDif":I
    .end local v6    # "NumMinDif":I
    :cond_2
    :goto_1
    int-to-byte v2, v4

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected ReadLastTables()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 483
    iget v0, p0, Lcom/github/junrar/unpack/Unpack20;->readTop:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack20;->inAddr:I

    add-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_1

    .line 484
    iget v0, p0, Lcom/github/junrar/unpack/Unpack20;->UnpAudioBlock:I

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->MD:[Lcom/github/junrar/unpack/decode/MultDecode;

    iget v1, p0, Lcom/github/junrar/unpack/Unpack20;->UnpCurChannel:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/Unpack20;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->ReadTables20()Z

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->LD:Lcom/github/junrar/unpack/decode/LitDecode;

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/Unpack20;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v0

    const/16 v1, 0x10d

    if-ne v0, v1, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->ReadTables20()Z

    .line 494
    :cond_1
    :goto_0
    return-void
.end method

.method protected ReadTables20()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 388
    const/16 v0, 0x13

    new-array v1, v0, [B

    .line 389
    .local v1, "BitLength":[B
    const/16 v2, 0x404

    new-array v2, v2, [B

    .line 391
    .local v2, "Table":[B
    iget v3, p0, Lcom/github/junrar/unpack/Unpack20;->inAddr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->readTop:I

    add-int/lit8 v4, v4, -0x19

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->unpReadBuf()Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    return v5

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->getbits()I

    move-result v3

    .line 397
    .local v3, "BitField":I
    const v4, 0x8000

    and-int/2addr v4, v3

    iput v4, p0, Lcom/github/junrar/unpack/Unpack20;->UnpAudioBlock:I

    .line 399
    and-int/lit16 v4, v3, 0x4000

    if-nez v4, :cond_1

    .line 401
    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack20;->UnpOldTable20:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 403
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    .line 405
    iget v6, p0, Lcom/github/junrar/unpack/Unpack20;->UnpAudioBlock:I

    const/16 v7, 0x101

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    .line 406
    ushr-int/lit8 v6, v3, 0xc

    and-int/2addr v6, v8

    add-int/2addr v6, v9

    iput v6, p0, Lcom/github/junrar/unpack/Unpack20;->UnpChannels:I

    .line 407
    iget v10, p0, Lcom/github/junrar/unpack/Unpack20;->UnpCurChannel:I

    if-lt v10, v6, :cond_2

    .line 408
    iput v5, p0, Lcom/github/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 410
    :cond_2
    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    .line 411
    iget v6, p0, Lcom/github/junrar/unpack/Unpack20;->UnpChannels:I

    mul-int/2addr v6, v7

    .local v6, "TableSize":I
    goto :goto_0

    .line 413
    .end local v6    # "TableSize":I
    :cond_3
    const/16 v6, 0x176

    .line 415
    .restart local v6    # "TableSize":I
    :goto_0
    const/4 v10, 0x0

    .local v10, "I":I
    :goto_1
    if-ge v10, v0, :cond_4

    .line 416
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->getbits()I

    move-result v11

    ushr-int/lit8 v11, v11, 0xc

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 417
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    .line 415
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 419
    :cond_4
    iget-object v11, p0, Lcom/github/junrar/unpack/Unpack20;->BD:Lcom/github/junrar/unpack/decode/BitDecode;

    invoke-virtual {p0, v1, v5, v11, v0}, Lcom/github/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V

    .line 420
    const/4 v0, 0x0

    .line 421
    .end local v10    # "I":I
    .local v0, "I":I
    :goto_2
    if-ge v0, v6, :cond_a

    .line 422
    iget v10, p0, Lcom/github/junrar/unpack/Unpack20;->inAddr:I

    iget v11, p0, Lcom/github/junrar/unpack/Unpack20;->readTop:I

    add-int/lit8 v11, v11, -0x5

    if-le v10, v11, :cond_5

    .line 423
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->unpReadBuf()Z

    move-result v10

    if-nez v10, :cond_5

    .line 424
    return v5

    .line 427
    :cond_5
    iget-object v10, p0, Lcom/github/junrar/unpack/Unpack20;->BD:Lcom/github/junrar/unpack/decode/BitDecode;

    invoke-virtual {p0, v10}, Lcom/github/junrar/unpack/Unpack20;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v10

    .line 428
    .local v10, "Number":I
    const/16 v11, 0x10

    if-ge v10, v11, :cond_6

    .line 429
    iget-object v11, p0, Lcom/github/junrar/unpack/Unpack20;->UnpOldTable20:[B

    aget-byte v11, v11, v0

    add-int/2addr v11, v10

    and-int/lit8 v11, v11, 0xf

    int-to-byte v11, v11

    aput-byte v11, v2, v0

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 431
    :cond_6
    if-ne v10, v11, :cond_7

    .line 432
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->getbits()I

    move-result v11

    ushr-int/lit8 v11, v11, 0xe

    add-int/2addr v11, v8

    .line 433
    .local v11, "N":I
    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    .line 434
    :goto_3
    add-int/lit8 v12, v11, -0x1

    .end local v11    # "N":I
    .local v12, "N":I
    if-lez v11, :cond_9

    if-ge v0, v6, :cond_9

    .line 435
    add-int/lit8 v11, v0, -0x1

    aget-byte v11, v2, v11

    aput-byte v11, v2, v0

    .line 436
    add-int/lit8 v0, v0, 0x1

    move v11, v12

    goto :goto_3

    .line 439
    .end local v12    # "N":I
    :cond_7
    const/16 v11, 0x11

    if-ne v10, v11, :cond_8

    .line 440
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->getbits()I

    move-result v11

    ushr-int/lit8 v11, v11, 0xd

    add-int/2addr v11, v8

    .line 441
    .restart local v11    # "N":I
    invoke-virtual {p0, v8}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    goto :goto_4

    .line 443
    .end local v11    # "N":I
    :cond_8
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->getbits()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x9

    add-int/lit8 v11, v11, 0xb

    .line 444
    .restart local v11    # "N":I
    const/4 v12, 0x7

    invoke-virtual {p0, v12}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    .line 446
    :goto_4
    add-int/lit8 v12, v11, -0x1

    .end local v11    # "N":I
    .restart local v12    # "N":I
    if-lez v11, :cond_9

    if-ge v0, v6, :cond_9

    .line 447
    add-int/lit8 v11, v0, 0x1

    .end local v0    # "I":I
    .local v11, "I":I
    aput-byte v5, v2, v0

    move v0, v11

    move v11, v12

    goto :goto_4

    .line 449
    .end local v10    # "Number":I
    .end local v11    # "I":I
    .end local v12    # "N":I
    .restart local v0    # "I":I
    :cond_9
    :goto_5
    goto :goto_2

    .line 450
    :cond_a
    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->inAddr:I

    iget v8, p0, Lcom/github/junrar/unpack/Unpack20;->readTop:I

    if-le v4, v8, :cond_b

    .line 451
    return v9

    .line 453
    :cond_b
    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->UnpAudioBlock:I

    if-eqz v4, :cond_c

    .line 454
    const/4 v0, 0x0

    :goto_6
    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->UnpChannels:I

    if-ge v0, v4, :cond_d

    .line 455
    mul-int/lit16 v4, v0, 0x101

    iget-object v5, p0, Lcom/github/junrar/unpack/Unpack20;->MD:[Lcom/github/junrar/unpack/decode/MultDecode;

    aget-object v5, v5, v0

    invoke-virtual {p0, v2, v4, v5, v7}, Lcom/github/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 457
    :cond_c
    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack20;->LD:Lcom/github/junrar/unpack/decode/LitDecode;

    const/16 v7, 0x12a

    invoke-virtual {p0, v2, v5, v4, v7}, Lcom/github/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V

    .line 458
    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack20;->DD:Lcom/github/junrar/unpack/decode/DistDecode;

    const/16 v5, 0x30

    invoke-virtual {p0, v2, v7, v4, v5}, Lcom/github/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V

    .line 459
    const/16 v4, 0x15a

    iget-object v5, p0, Lcom/github/junrar/unpack/Unpack20;->RD:Lcom/github/junrar/unpack/decode/RepDecode;

    const/16 v7, 0x1c

    invoke-virtual {p0, v2, v4, v5, v7}, Lcom/github/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V

    .line 463
    :cond_d
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    iget-object v5, p0, Lcom/github/junrar/unpack/Unpack20;->UnpOldTable20:[B

    array-length v7, v5

    if-ge v4, v7, :cond_e

    .line 464
    aget-byte v7, v2, v4

    aput-byte v7, v5, v4

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 466
    .end local v4    # "i":I
    :cond_e
    return v9
.end method

.method protected decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I
    .locals 7
    .param p1, "dec"    # Lcom/github/junrar/unpack/decode/Decode;

    .line 264
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->getbits()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 324
    .local v0, "bitField":J
    invoke-virtual {p1}, Lcom/github/junrar/unpack/decode/Decode;->getDecodeLen()[I

    move-result-object v2

    .line 325
    .local v2, "decodeLen":[I
    const/16 v3, 0x8

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_7

    .line 326
    const/4 v3, 0x4

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    .line 327
    const/4 v3, 0x2

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 328
    const/4 v3, 0x1

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 329
    const/4 v3, 0x1

    .local v3, "bits":I
    goto/16 :goto_0

    .line 331
    .end local v3    # "bits":I
    :cond_0
    const/4 v3, 0x2

    .restart local v3    # "bits":I
    goto/16 :goto_0

    .line 334
    .end local v3    # "bits":I
    :cond_1
    const/4 v3, 0x3

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 335
    const/4 v3, 0x3

    .restart local v3    # "bits":I
    goto/16 :goto_0

    .line 337
    .end local v3    # "bits":I
    :cond_2
    const/4 v3, 0x4

    .restart local v3    # "bits":I
    goto/16 :goto_0

    .line 341
    .end local v3    # "bits":I
    :cond_3
    const/4 v3, 0x6

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_5

    .line 342
    const/4 v3, 0x5

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_4

    .line 343
    const/4 v3, 0x5

    .restart local v3    # "bits":I
    goto :goto_0

    .line 345
    .end local v3    # "bits":I
    :cond_4
    const/4 v3, 0x6

    .restart local v3    # "bits":I
    goto :goto_0

    .line 347
    .end local v3    # "bits":I
    :cond_5
    const/4 v3, 0x7

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_6

    .line 348
    const/4 v3, 0x7

    .restart local v3    # "bits":I
    goto :goto_0

    .line 350
    .end local v3    # "bits":I
    :cond_6
    const/16 v3, 0x8

    .restart local v3    # "bits":I
    goto :goto_0

    .line 355
    .end local v3    # "bits":I
    :cond_7
    const/16 v3, 0xc

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_b

    .line 356
    const/16 v3, 0xa

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_9

    .line 357
    const/16 v3, 0x9

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_8

    .line 358
    const/16 v3, 0x9

    .restart local v3    # "bits":I
    goto :goto_0

    .line 360
    .end local v3    # "bits":I
    :cond_8
    const/16 v3, 0xa

    .restart local v3    # "bits":I
    goto :goto_0

    .line 361
    .end local v3    # "bits":I
    :cond_9
    const/16 v3, 0xb

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_a

    .line 362
    const/16 v3, 0xb

    .restart local v3    # "bits":I
    goto :goto_0

    .line 364
    .end local v3    # "bits":I
    :cond_a
    const/16 v3, 0xc

    .restart local v3    # "bits":I
    goto :goto_0

    .line 366
    .end local v3    # "bits":I
    :cond_b
    const/16 v3, 0xe

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_d

    .line 367
    const/16 v3, 0xd

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_c

    .line 368
    const/16 v3, 0xd

    .restart local v3    # "bits":I
    goto :goto_0

    .line 370
    .end local v3    # "bits":I
    :cond_c
    const/16 v3, 0xe

    .restart local v3    # "bits":I
    goto :goto_0

    .line 373
    .end local v3    # "bits":I
    :cond_d
    const/16 v3, 0xf

    .line 377
    .restart local v3    # "bits":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    .line 378
    invoke-virtual {p1}, Lcom/github/junrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v4

    aget v4, v4, v3

    long-to-int v5, v0

    add-int/lit8 v6, v3, -0x1

    aget v6, v2, v6

    sub-int/2addr v5, v6

    rsub-int/lit8 v6, v3, 0x10

    ushr-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 380
    .local v4, "N":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/decode/Decode;->getMaxNum()I

    move-result v5

    if-lt v4, v5, :cond_e

    .line 381
    const/4 v4, 0x0

    .line 383
    :cond_e
    invoke-virtual {p1}, Lcom/github/junrar/unpack/decode/Decode;->getDecodeNum()[I

    move-result-object v5

    aget v5, v5, v4

    return v5
.end method

.method protected makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V
    .locals 11
    .param p1, "lenTab"    # [B
    .param p2, "offset"    # I
    .param p3, "dec"    # Lcom/github/junrar/unpack/decode/Decode;
    .param p4, "size"    # I

    .line 229
    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 230
    .local v1, "lenCount":[I
    new-array v2, v0, [I

    .line 234
    .local v2, "tmpPos":[I
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 236
    invoke-virtual {p3}, Lcom/github/junrar/unpack/decode/Decode;->getDecodeNum()[I

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([II)V

    .line 238
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p4, :cond_0

    .line 239
    add-int v5, p2, v4

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xf

    aget v6, v1, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v5

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    :cond_0
    aput v3, v1, v3

    .line 242
    aput v3, v2, v3

    invoke-virtual {p3}, Lcom/github/junrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v5

    aput v3, v5, v3

    invoke-virtual {p3}, Lcom/github/junrar/unpack/decode/Decode;->getDecodeLen()[I

    move-result-object v5

    aput v3, v5, v3

    const-wide/16 v5, 0x0

    .local v5, "N":J
    const/4 v3, 0x1

    .end local v4    # "i":I
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 243
    const-wide/16 v7, 0x2

    aget v4, v1, v3

    int-to-long v9, v4

    add-long/2addr v9, v5

    mul-long v5, v9, v7

    .line 244
    rsub-int/lit8 v4, v3, 0xf

    shl-long v7, v5, v4

    .line 245
    .local v7, "M":J
    const-wide/32 v9, 0xffff

    cmp-long v4, v7, v9

    if-lez v4, :cond_1

    .line 246
    const-wide/32 v7, 0xffff

    .line 248
    :cond_1
    invoke-virtual {p3}, Lcom/github/junrar/unpack/decode/Decode;->getDecodeLen()[I

    move-result-object v4

    long-to-int v9, v7

    aput v9, v4, v3

    .line 249
    invoke-virtual {p3}, Lcom/github/junrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v4

    invoke-virtual {p3}, Lcom/github/junrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v9

    add-int/lit8 v10, v3, -0x1

    aget v9, v9, v10

    add-int/lit8 v10, v3, -0x1

    aget v10, v1, v10

    add-int/2addr v9, v10

    aput v9, v4, v3

    aput v9, v2, v3

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 253
    .end local v7    # "M":J
    :cond_2
    const/4 v0, 0x0

    .end local v3    # "i":I
    .local v0, "i":I
    :goto_2
    if-ge v0, p4, :cond_4

    .line 254
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    if-eqz v3, :cond_3

    .line 255
    invoke-virtual {p3}, Lcom/github/junrar/unpack/decode/Decode;->getDecodeNum()[I

    move-result-object v3

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0xf

    aget v7, v2, v4

    add-int/lit8 v8, v7, 0x1

    aput v8, v2, v4

    aput v0, v3, v7

    .line 253
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 258
    :cond_4
    invoke-virtual {p3, p4}, Lcom/github/junrar/unpack/decode/Decode;->setMaxNum(I)V

    .line 259
    return-void
.end method

.method protected unpInitData20(Z)V
    .locals 3
    .param p1, "Solid"    # Z

    .line 471
    if-nez p1, :cond_0

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/Unpack20;->UnpCurChannel:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack20;->UnpChannelDelta:I

    .line 473
    const/4 v1, 0x1

    iput v1, p0, Lcom/github/junrar/unpack/Unpack20;->UnpChannels:I

    .line 475
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack20;->AudV:[Lcom/github/junrar/unpack/decode/AudioVariables;

    new-instance v2, Lcom/github/junrar/unpack/decode/AudioVariables;

    invoke-direct {v2}, Lcom/github/junrar/unpack/decode/AudioVariables;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack20;->UnpOldTable20:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 479
    :cond_0
    return-void
.end method

.method protected unpack20(Z)V
    .locals 12
    .param p1, "solid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lcom/github/junrar/unpack/Unpack20;->suspended:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Lcom/github/junrar/unpack/Unpack20;->wrPtr:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/Unpack20;->unpInitData(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->unpReadBuf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    return-void

    .line 96
    :cond_1
    if-nez p1, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->ReadTables20()Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    return-void

    .line 101
    :cond_2
    iget-wide v3, p0, Lcom/github/junrar/unpack/Unpack20;->destUnpSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/github/junrar/unpack/Unpack20;->destUnpSize:J

    .line 104
    :cond_3
    :goto_0
    iget-wide v3, p0, Lcom/github/junrar/unpack/Unpack20;->destUnpSize:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_15

    .line 105
    iget v0, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    const v3, 0x3fffff

    and-int/2addr v0, v3

    iput v0, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    .line 107
    iget v0, p0, Lcom/github/junrar/unpack/Unpack20;->inAddr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->readTop:I

    add-int/lit8 v4, v4, -0x1e

    if-le v0, v4, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->unpReadBuf()Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    goto/16 :goto_1

    .line 110
    :cond_4
    iget v0, p0, Lcom/github/junrar/unpack/Unpack20;->wrPtr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    sub-int/2addr v0, v4

    and-int/2addr v0, v3

    const/16 v3, 0x10e

    if-ge v0, v3, :cond_5

    iget v0, p0, Lcom/github/junrar/unpack/Unpack20;->wrPtr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    if-eq v0, v4, :cond_5

    .line 112
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->oldUnpWriteBuf()V

    .line 113
    iget-boolean v0, p0, Lcom/github/junrar/unpack/Unpack20;->suspended:Z

    if-eqz v0, :cond_5

    .line 114
    return-void

    .line 116
    :cond_5
    iget v0, p0, Lcom/github/junrar/unpack/Unpack20;->UnpAudioBlock:I

    const/16 v4, 0x100

    if-eqz v0, :cond_8

    .line 117
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->MD:[Lcom/github/junrar/unpack/decode/MultDecode;

    iget v3, p0, Lcom/github/junrar/unpack/Unpack20;->UnpCurChannel:I

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/Unpack20;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v0

    .line 119
    .local v0, "AudioNumber":I
    if-ne v0, v4, :cond_6

    .line 120
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->ReadTables20()Z

    move-result v3

    if-nez v3, :cond_3

    .line 121
    goto/16 :goto_1

    .line 124
    :cond_6
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack20;->window:[B

    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/Unpack20;->DecodeAudio(I)B

    move-result v5

    aput-byte v5, v3, v4

    .line 125
    iget v3, p0, Lcom/github/junrar/unpack/Unpack20;->UnpCurChannel:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/github/junrar/unpack/Unpack20;->UnpCurChannel:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->UnpChannels:I

    if-ne v3, v4, :cond_7

    .line 126
    const/4 v3, 0x0

    iput v3, p0, Lcom/github/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 127
    :cond_7
    iget-wide v3, p0, Lcom/github/junrar/unpack/Unpack20;->destUnpSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/github/junrar/unpack/Unpack20;->destUnpSize:J

    .line 128
    goto :goto_0

    .line 131
    .end local v0    # "AudioNumber":I
    :cond_8
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack20;->LD:Lcom/github/junrar/unpack/decode/LitDecode;

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/Unpack20;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v0

    .line 132
    .local v0, "Number":I
    if-ge v0, v4, :cond_9

    .line 133
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack20;->window:[B

    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/github/junrar/unpack/Unpack20;->unpPtr:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 134
    iget-wide v3, p0, Lcom/github/junrar/unpack/Unpack20;->destUnpSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/github/junrar/unpack/Unpack20;->destUnpSize:J

    .line 135
    goto/16 :goto_0

    .line 137
    :cond_9
    const/16 v5, 0x2000

    const/16 v6, 0x10d

    if-le v0, v6, :cond_d

    .line 138
    sget-object v3, Lcom/github/junrar/unpack/Unpack20;->LDecode:[I

    add-int/lit16 v0, v0, -0x10e

    aget v3, v3, v0

    add-int/lit8 v3, v3, 0x3

    .line 139
    .local v3, "Length":I
    sget-object v4, Lcom/github/junrar/unpack/Unpack20;->LBits:[B

    aget-byte v4, v4, v0

    move v6, v4

    .local v6, "Bits":I
    if-lez v4, :cond_a

    .line 140
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->getbits()I

    move-result v4

    rsub-int/lit8 v7, v6, 0x10

    ushr-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 141
    invoke-virtual {p0, v6}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    .line 144
    :cond_a
    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack20;->DD:Lcom/github/junrar/unpack/decode/DistDecode;

    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/Unpack20;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v4

    .line 145
    .local v4, "DistNumber":I
    sget-object v7, Lcom/github/junrar/unpack/Unpack20;->DDecode:[I

    aget v7, v7, v4

    add-int/lit8 v7, v7, 0x1

    .line 146
    .local v7, "Distance":I
    sget-object v8, Lcom/github/junrar/unpack/Unpack20;->DBits:[I

    aget v8, v8, v4

    move v6, v8

    if-lez v8, :cond_b

    .line 147
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->getbits()I

    move-result v8

    rsub-int/lit8 v9, v6, 0x10

    ushr-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 148
    invoke-virtual {p0, v6}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    .line 151
    :cond_b
    if-lt v7, v5, :cond_c

    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 153
    int-to-long v8, v7

    const-wide/32 v10, 0x40000

    cmp-long v5, v8, v10

    if-ltz v5, :cond_c

    .line 154
    add-int/lit8 v3, v3, 0x1

    .line 157
    :cond_c
    invoke-virtual {p0, v3, v7}, Lcom/github/junrar/unpack/Unpack20;->CopyString20(II)V

    .line 158
    goto/16 :goto_0

    .line 160
    .end local v3    # "Length":I
    .end local v4    # "DistNumber":I
    .end local v6    # "Bits":I
    .end local v7    # "Distance":I
    :cond_d
    if-ne v0, v6, :cond_e

    .line 161
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->ReadTables20()Z

    move-result v3

    if-nez v3, :cond_3

    .line 162
    goto/16 :goto_1

    .line 165
    :cond_e
    if-ne v0, v4, :cond_f

    .line 166
    iget v3, p0, Lcom/github/junrar/unpack/Unpack20;->lastLength:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->lastDist:I

    invoke-virtual {p0, v3, v4}, Lcom/github/junrar/unpack/Unpack20;->CopyString20(II)V

    .line 167
    goto/16 :goto_0

    .line 169
    :cond_f
    const/16 v4, 0x105

    const/4 v6, 0x2

    if-ge v0, v4, :cond_12

    .line 170
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack20;->oldDist:[I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack20;->oldDistPtr:I

    add-int/lit16 v7, v0, -0x100

    sub-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    .line 171
    .local v3, "Distance":I
    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack20;->RD:Lcom/github/junrar/unpack/decode/RepDecode;

    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/Unpack20;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v4

    .line 172
    .local v4, "LengthNumber":I
    sget-object v7, Lcom/github/junrar/unpack/Unpack20;->LDecode:[I

    aget v7, v7, v4

    add-int/2addr v7, v6

    .line 173
    .local v7, "Length":I
    sget-object v6, Lcom/github/junrar/unpack/Unpack20;->LBits:[B

    aget-byte v6, v6, v4

    move v8, v6

    .local v8, "Bits":I
    if-lez v6, :cond_10

    .line 174
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->getbits()I

    move-result v6

    rsub-int/lit8 v9, v8, 0x10

    ushr-int/2addr v6, v9

    add-int/2addr v7, v6

    .line 175
    invoke-virtual {p0, v8}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    .line 177
    :cond_10
    const/16 v6, 0x101

    if-lt v3, v6, :cond_11

    .line 178
    add-int/lit8 v7, v7, 0x1

    .line 179
    if-lt v3, v5, :cond_11

    .line 180
    add-int/lit8 v7, v7, 0x1

    .line 181
    const/high16 v5, 0x40000

    if-lt v3, v5, :cond_11

    .line 182
    add-int/lit8 v7, v7, 0x1

    .line 185
    :cond_11
    invoke-virtual {p0, v7, v3}, Lcom/github/junrar/unpack/Unpack20;->CopyString20(II)V

    .line 186
    goto/16 :goto_0

    .line 188
    .end local v3    # "Distance":I
    .end local v4    # "LengthNumber":I
    .end local v7    # "Length":I
    .end local v8    # "Bits":I
    :cond_12
    if-ge v0, v3, :cond_14

    .line 189
    sget-object v3, Lcom/github/junrar/unpack/Unpack20;->SDDecode:[I

    add-int/lit16 v0, v0, -0x105

    aget v3, v3, v0

    add-int/lit8 v3, v3, 0x1

    .line 190
    .restart local v3    # "Distance":I
    sget-object v4, Lcom/github/junrar/unpack/Unpack20;->SDBits:[I

    aget v4, v4, v0

    move v5, v4

    .local v5, "Bits":I
    if-lez v4, :cond_13

    .line 191
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->getbits()I

    move-result v4

    rsub-int/lit8 v7, v5, 0x10

    ushr-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 192
    invoke-virtual {p0, v5}, Lcom/github/junrar/unpack/Unpack20;->addbits(I)V

    .line 194
    :cond_13
    invoke-virtual {p0, v6, v3}, Lcom/github/junrar/unpack/Unpack20;->CopyString20(II)V

    .line 195
    goto/16 :goto_0

    .line 197
    .end local v0    # "Number":I
    .end local v3    # "Distance":I
    .end local v5    # "Bits":I
    :cond_14
    goto/16 :goto_0

    .line 198
    :cond_15
    :goto_1
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->ReadLastTables()V

    .line 199
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack20;->oldUnpWriteBuf()V

    .line 201
    return-void
.end method
