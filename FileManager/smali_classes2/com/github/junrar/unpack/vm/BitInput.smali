.class public Lcom/github/junrar/unpack/vm/BitInput;
.super Ljava/lang/Object;
.source "BitInput.java"


# static fields
.field public static final MAX_SIZE:I = 0x8000


# instance fields
.field protected inAddr:I

.field protected inBit:I

.field protected inBuf:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inBuf:[B

    .line 75
    return-void
.end method


# virtual methods
.method public InitBitInput()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inAddr:I

    .line 41
    iput v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inBit:I

    .line 42
    return-void
.end method

.method public Overflow(I)Z
    .locals 2
    .param p1, "IncPtr"    # I

    .line 100
    iget v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inAddr:I

    add-int/2addr v0, p1

    const v1, 0x8000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addbits(I)V
    .locals 2
    .param p1, "Bits"    # I

    .line 48
    iget v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inBit:I

    add-int/2addr p1, v0

    .line 49
    iget v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inAddr:I

    shr-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inAddr:I

    .line 50
    and-int/lit8 v0, p1, 0x7

    iput v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inBit:I

    .line 51
    return-void
.end method

.method public faddbits(I)V
    .locals 0
    .param p1, "Bits"    # I

    .line 82
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 83
    return-void
.end method

.method public fgetbits()I
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/BitInput;->getbits()I

    move-result v0

    return v0
.end method

.method public getInBuf()[B
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inBuf:[B

    return-object v0
.end method

.method public getbits()I
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inBuf:[B

    iget v1, p0, Lcom/github/junrar/unpack/vm/BitInput;->inAddr:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v0

    iget v0, p0, Lcom/github/junrar/unpack/vm/BitInput;->inBit:I

    rsub-int/lit8 v0, v0, 0x8

    ushr-int v0, v2, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
