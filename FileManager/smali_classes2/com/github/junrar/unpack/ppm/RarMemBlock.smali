.class public Lcom/github/junrar/unpack/ppm/RarMemBlock;
.super Lcom/github/junrar/unpack/ppm/Pointer;
.source "RarMemBlock.java"


# static fields
.field public static final size:I = 0xc


# instance fields
.field private NU:I

.field private next:I

.field private prev:I

.field private stamp:I


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "mem"    # [B

    .line 41
    invoke-direct {p0, p1}, Lcom/github/junrar/unpack/ppm/Pointer;-><init>([B)V

    .line 42
    return-void
.end method


# virtual methods
.method public getNU()I
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->NU:I

    .line 92
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->NU:I

    return v0
.end method

.method public getNext()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->next:I

    .line 71
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->next:I

    return v0
.end method

.method public getPrev()I
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->prev:I

    .line 108
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->prev:I

    return v0
.end method

.method public getStamp()I
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->stamp:I

    .line 129
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->stamp:I

    return v0
.end method

.method public insertAt(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V
    .locals 2
    .param p1, "p"    # Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 46
    new-instance v0, Lcom/github/junrar/unpack/ppm/RarMemBlock;

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    .line 47
    .local v0, "temp":Lcom/github/junrar/unpack/ppm/RarMemBlock;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    .line 48
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 49
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    .line 50
    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNext(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V

    .line 51
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 52
    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setPrev(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V

    .line 53
    return-void
.end method

.method public remove()V
    .locals 2

    .line 57
    new-instance v0, Lcom/github/junrar/unpack/ppm/RarMemBlock;

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    .line 58
    .local v0, "temp":Lcom/github/junrar/unpack/ppm/RarMemBlock;
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 59
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    .line 60
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 61
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    .line 64
    return-void
.end method

.method public setNU(I)V
    .locals 3
    .param p1, "nu"    # I

    .line 97
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->NU:I

    .line 98
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x2

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 101
    :cond_0
    return-void
.end method

.method public setNext(I)V
    .locals 2
    .param p1, "next"    # I

    .line 81
    iput p1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->next:I

    .line 82
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 85
    :cond_0
    return-void
.end method

.method public setNext(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V
    .locals 1
    .param p1, "next"    # Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 76
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    .line 77
    return-void
.end method

.method public setPrev(I)V
    .locals 2
    .param p1, "prev"    # I

    .line 118
    iput p1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->prev:I

    .line 119
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 122
    :cond_0
    return-void
.end method

.method public setPrev(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V
    .locals 1
    .param p1, "prev"    # Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 113
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    .line 114
    return-void
.end method

.method public setStamp(I)V
    .locals 3
    .param p1, "stamp"    # I

    .line 134
    iput p1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->stamp:I

    .line 135
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 138
    :cond_0
    return-void
.end method
