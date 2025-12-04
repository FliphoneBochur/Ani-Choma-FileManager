.class public Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SnappyCompressorInputStream.java"


# static fields
.field public static final DEFAULT_BLOCK_SIZE:I = 0x8000

.field private static final TAG_MASK:I = 0x3


# instance fields
.field private final blockSize:I

.field private final decompressBuf:[B

.field private endReached:Z

.field private final in:Ljava/io/InputStream;

.field private final oneByte:[B

.field private readIndex:I

.field private final size:I

.field private uncompressedBytesRemaining:I

.field private writeIndex:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->oneByte:[B

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->endReached:Z

    .line 99
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->in:Ljava/io/InputStream;

    .line 100
    iput p2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->blockSize:I

    .line 101
    mul-int/lit8 v1, p2, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->decompressBuf:[B

    .line 102
    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readIndex:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readSize()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->size:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 104
    return-void
.end method

.method private expandCopy(JI)Z
    .locals 7
    .param p1, "off"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->blockSize:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_6

    .line 343
    long-to-int v0, p1

    .line 345
    .local v0, "offset":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 346
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->decompressBuf:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    sub-int/2addr v3, v1

    aget-byte v2, v2, v3

    .line 347
    .local v2, "lastChar":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 348
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->decompressBuf:[B

    iget v5, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    aput-byte v2, v4, v5

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    .end local v2    # "lastChar":B
    .end local v3    # "i":I
    :cond_0
    goto :goto_2

    :cond_1
    if-ge p3, v0, :cond_2

    .line 351
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->decompressBuf:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    sub-int v4, v3, v0

    invoke-static {v2, v4, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iget v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    goto :goto_2

    .line 355
    :cond_2
    div-int v2, p3, v0

    .line 356
    .local v2, "fullRotations":I
    mul-int v3, v0, v2

    sub-int v3, p3, v3

    .line 358
    .local v3, "pad":I
    :goto_1
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "fullRotations":I
    .local v4, "fullRotations":I
    if-eqz v2, :cond_3

    .line 359
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->decompressBuf:[B

    iget v5, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    sub-int v6, v5, v0

    invoke-static {v2, v6, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    move v2, v4

    goto :goto_1

    .line 364
    :cond_3
    if-lez v3, :cond_4

    .line 365
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->decompressBuf:[B

    iget v5, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    sub-int v6, v5, v0

    invoke-static {v2, v6, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    iget v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    .line 371
    .end local v3    # "pad":I
    .end local v4    # "fullRotations":I
    :cond_4
    :goto_2
    iget v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->blockSize:I

    mul-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 341
    .end local v0    # "offset":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Offset is larger than block size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expandLiteral(I)Z
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->decompressBuf:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 311
    .local v0, "bytesRead":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->count(I)V

    .line 312
    if-ne p1, v0, :cond_1

    .line 316
    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    .line 317
    iget v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->blockSize:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 313
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Premature end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fill(I)V
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 157
    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->endReached:Z

    .line 159
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 161
    .local v0, "readNow":I
    :goto_0
    if-lez v0, :cond_6

    .line 162
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v2

    .line 163
    .local v2, "b":I
    const/4 v3, 0x0

    .line 164
    .local v3, "length":I
    const-wide/16 v4, 0x0

    .line 166
    .local v4, "offset":J
    and-int/lit8 v6, v2, 0x3

    if-eqz v6, :cond_4

    const/4 v7, 0x3

    if-eq v6, v1, :cond_3

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    shr-int/lit8 v6, v2, 0x2

    add-int/lit8 v3, v6, 0x1

    .line 228
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v6

    int-to-long v4, v6

    .line 229
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 230
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 231
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 233
    invoke-direct {p0, v4, v5, v3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->expandCopy(JI)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 234
    return-void

    .line 207
    :cond_2
    shr-int/lit8 v6, v2, 0x2

    add-int/lit8 v3, v6, 0x1

    .line 209
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v6

    int-to-long v4, v6

    .line 210
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 212
    invoke-direct {p0, v4, v5, v3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->expandCopy(JI)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 213
    return-void

    .line 188
    :cond_3
    shr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0x7

    add-int/lit8 v3, v6, 0x4

    .line 189
    and-int/lit16 v6, v2, 0xe0

    shl-int/2addr v6, v7

    int-to-long v4, v6

    .line 190
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 192
    invoke-direct {p0, v4, v5, v3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->expandCopy(JI)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 193
    return-void

    .line 170
    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readLiteralLength(I)I

    move-result v3

    .line 172
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->expandLiteral(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 173
    return-void

    .line 239
    :cond_5
    :goto_1
    sub-int/2addr v0, v3

    .line 240
    iget v6, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 241
    .end local v2    # "b":I
    .end local v3    # "length":I
    .end local v4    # "offset":J
    goto :goto_0

    .line 242
    :cond_6
    return-void
.end method

.method private readLiteralLength(I)I
    .locals 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    shr-int/lit8 v0, p1, 0x2

    packed-switch v0, :pswitch_data_0

    .line 290
    shr-int/lit8 v0, p1, 0x2

    .local v0, "length":I
    goto :goto_0

    .line 284
    .end local v0    # "length":I
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v0

    .line 285
    .restart local v0    # "length":I
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 286
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 287
    int-to-long v1, v0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    long-to-int v0, v1

    .line 288
    goto :goto_0

    .line 279
    .end local v0    # "length":I
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v0

    .line 280
    .restart local v0    # "length":I
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 281
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 282
    goto :goto_0

    .line 275
    .end local v0    # "length":I
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v0

    .line 276
    .restart local v0    # "length":I
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 277
    goto :goto_0

    .line 272
    .end local v0    # "length":I
    :pswitch_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v0

    .line 273
    .restart local v0    # "length":I
    nop

    .line 294
    :goto_0
    add-int/lit8 v1, v0, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readOneByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 386
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 389
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->count(I)V

    .line 390
    and-int/lit16 v1, v0, 0xff

    return v1

    .line 387
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Premature end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readSize()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "index":I
    const-wide/16 v1, 0x0

    .line 409
    .local v1, "sz":J
    const/4 v3, 0x0

    .line 412
    .local v3, "b":I
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readOneByte()I

    move-result v3

    .line 413
    and-int/lit8 v4, v3, 0x7f

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "index":I
    .local v5, "index":I
    mul-int/lit8 v0, v0, 0x7

    shl-int v0, v4, v0

    int-to-long v6, v0

    or-long/2addr v1, v6

    .line 414
    and-int/lit16 v0, v3, 0x80

    if-nez v0, :cond_0

    .line 415
    return-wide v1

    .line 414
    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method private slideBuffer()V
    .locals 4

    .line 251
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->decompressBuf:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->blockSize:I

    mul-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->blockSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    .line 254
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readIndex:I

    .line 255
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 121
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->writeIndex:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 116
    return-void
.end method

.method public getSize()I
    .locals 1

    .line 424
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->size:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->oneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->oneByte:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_0
    return v2
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

    .line 129
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 130
    return v1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->available()I

    move-result v0

    .line 133
    .local v0, "avail":I
    if-le p3, v0, :cond_1

    .line 134
    sub-int v2, p3, v0

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->fill(I)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->available()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 138
    .local v2, "readable":I
    if-nez v2, :cond_2

    if-lez p3, :cond_2

    .line 139
    return v1

    .line 141
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->decompressBuf:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readIndex:I

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readIndex:I

    .line 143
    iget v3, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->blockSize:I

    if-le v1, v3, :cond_3

    .line 144
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->slideBuffer()V

    .line 146
    :cond_3
    return v2
.end method
