.class public abstract Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "LZWInputStream.java"


# static fields
.field protected static final DEFAULT_CODE_SIZE:I = 0x9

.field protected static final UNUSED_PREFIX:I = -0x1


# instance fields
.field private characters:[B

.field private clearCode:I

.field private codeSize:I

.field protected final in:Lorg/apache/commons/compress/utils/BitInputStream;

.field private final oneByte:[B

.field private outputStack:[B

.field private outputStackLocation:I

.field private prefixes:[I

.field private previousCode:I

.field private previousCodeFirstChar:B

.field private tableSize:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 53
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    .line 44
    const/16 v1, 0x9

    iput v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    .line 46
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    .line 54
    new-instance v0, Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 55
    return-void
.end method

.method private readFromStack([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 195
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    sub-int/2addr v0, v1

    .line 196
    .local v0, "remainingInStack":I
    if-lez v0, :cond_0

    .line 197
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 198
    .local v1, "maxLength":I
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 200
    return v1

    .line 202
    .end local v1    # "maxLength":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected abstract addEntry(IB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected addEntry(IBI)I
    .locals 2
    .param p1, "previousCode"    # I
    .param p2, "character"    # B
    .param p3, "maxTableSize"    # I

    .line 152
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    if-ge v0, p3, :cond_0

    .line 153
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aput p1, v1, v0

    .line 154
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    aput-byte p2, v1, v0

    .line 155
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return v0

    .line 157
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected addRepeatOfPreviousCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 170
    iget-byte v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCodeFirstChar:B

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IB)I

    move-result v0

    return v0

    .line 168
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The first code can\'t be a reference to its preceding code"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V

    .line 60
    return-void
.end method

.method protected abstract decompressNextSymbol()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected expandCodeToOutputStack(IZ)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "addedUnfinishedEntry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    move v0, p1

    .local v0, "entry":I
    :goto_0
    if-ltz v0, :cond_0

    .line 184
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    .line 183
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aget v0, v1, v0

    goto :goto_0

    .line 186
    .end local v0    # "entry":I
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 187
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    aget-byte v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IB)I

    .line 189
    :cond_1
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    .line 190
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCodeFirstChar:B

    .line 191
    return v1
.end method

.method protected getClearCode()I
    .locals 1

    .line 238
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    return v0
.end method

.method protected getCodeSize()I
    .locals 1

    .line 206
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    return v0
.end method

.method protected getPrefix(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 226
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aget v0, v0, p1

    return v0
.end method

.method protected getPrefixesLength()I
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    array-length v0, v0

    return v0
.end method

.method protected getTableSize()I
    .locals 1

    .line 242
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return v0
.end method

.method protected incrementCodeSize()V
    .locals 1

    .line 218
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    .line 219
    return-void
.end method

.method protected initializeTables(I)V
    .locals 5
    .param p1, "maxCodeSize"    # I

    .line 119
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 120
    .local v0, "maxTableSize":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    .line 121
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    .line 122
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    .line 123
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 124
    const/16 v1, 0x100

    .line 125
    .local v1, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    .line 126
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    .line 127
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->read([B)I

    move-result v0

    .line 65
    .local v0, "ret":I
    if-gez v0, :cond_0

    .line 66
    return v0

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readFromStack([BII)I

    move-result v0

    .line 74
    .local v0, "bytesRead":I
    :goto_0
    sub-int v1, p3, v0

    if-lez v1, :cond_2

    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->decompressNextSymbol()I

    move-result v1

    .line 76
    .local v1, "result":I
    if-gez v1, :cond_1

    .line 77
    if-lez v0, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->count(I)V

    .line 79
    return v0

    .line 81
    :cond_0
    return v1

    .line 83
    :cond_1
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readFromStack([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 84
    .end local v1    # "result":I
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->count(I)V

    .line 86
    return v0
.end method

.method protected readNextCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code size must not be bigger than 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected resetCodeSize()V
    .locals 1

    .line 210
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setCodeSize(I)V

    .line 211
    return-void
.end method

.method protected resetPreviousCode()V
    .locals 1

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    .line 223
    return-void
.end method

.method protected setClearCode(I)V
    .locals 2
    .param p1, "codeSize"    # I

    .line 111
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    .line 112
    return-void
.end method

.method protected setCodeSize(I)V
    .locals 0
    .param p1, "cs"    # I

    .line 214
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    .line 215
    return-void
.end method

.method protected setPrefix(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 230
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aput p2, v0, p1

    .line 231
    return-void
.end method

.method protected setTableSize(I)V
    .locals 0
    .param p1, "newSize"    # I

    .line 246
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    .line 247
    return-void
.end method
