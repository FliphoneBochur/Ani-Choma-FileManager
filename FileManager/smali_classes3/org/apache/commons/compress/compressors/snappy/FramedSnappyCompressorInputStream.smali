.class public Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "FramedSnappyCompressorInputStream.java"


# static fields
.field private static final COMPRESSED_CHUNK_TYPE:I = 0x0

.field static final MASK_OFFSET:J = 0xa282ead8L

.field private static final MAX_SKIPPABLE_TYPE:I = 0xfd

.field private static final MAX_UNSKIPPABLE_TYPE:I = 0x7f

.field private static final MIN_UNSKIPPABLE_TYPE:I = 0x2

.field private static final PADDING_CHUNK_TYPE:I = 0xfe

.field private static final STREAM_IDENTIFIER_TYPE:I = 0xff

.field private static final SZ_SIGNATURE:[B

.field private static final UNCOMPRESSED_CHUNK_TYPE:I = 0x1


# instance fields
.field private final checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

.field private currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

.field private final dialect:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

.field private endReached:Z

.field private expectedChecksum:J

.field private final in:Ljava/io/PushbackInputStream;

.field private inUncompressedChunk:Z

.field private final oneByte:[B

.field private uncompressedBytesRemaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->SZ_SIGNATURE:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x6t
        0x0t
        0x0t
        0x73t
        0x4et
        0x61t
        0x50t
        0x70t
        0x59t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->STANDARD:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "dialect"    # Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 67
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->oneByte:[B

    .line 72
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    .line 73
    new-instance v1, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    invoke-direct {v1}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    .line 96
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    .line 97
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->dialect:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 98
    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->hasStreamIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readStreamIdentifier()V

    .line 101
    :cond_0
    return-void
.end method

.method public static matches([BI)Z
    .locals 5
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 303
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->SZ_SIGNATURE:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    .line 304
    return v2

    .line 307
    :cond_0
    move-object v1, p0

    .line 308
    .local v1, "shortenedSig":[B
    array-length v3, p0

    array-length v4, v0

    if-le v3, v4, :cond_1

    .line 309
    array-length v3, v0

    new-array v1, v3, [B

    .line 310
    array-length v0, v0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    :cond_1
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->SZ_SIGNATURE:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private readCrc()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 224
    .local v1, "b":[B
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-static {v2, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 225
    .local v2, "read":I
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->count(I)V

    .line 226
    if-ne v2, v0, :cond_1

    .line 229
    const-wide/16 v3, 0x0

    .line 230
    .local v3, "crc":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 231
    aget-byte v6, v1, v5

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    mul-int/lit8 v8, v5, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 233
    .end local v5    # "i":I
    :cond_0
    return-wide v3

    .line 227
    .end local v3    # "crc":J
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v3, "premature end of stream"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readNextBlock()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->verifyLastChecksumAndReset()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->inUncompressedChunk:Z

    .line 183
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readOneByte()I

    move-result v1

    .line 184
    .local v1, "type":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 185
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->endReached:Z

    goto/16 :goto_3

    .line 186
    :cond_0
    const/16 v3, 0xff

    if-ne v1, v3, :cond_1

    .line 187
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 188
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->pushedBackBytes(J)V

    .line 189
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readStreamIdentifier()V

    .line 190
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readNextBlock()V

    goto/16 :goto_3

    .line 191
    :cond_1
    const/16 v3, 0xfe

    if-eq v1, v3, :cond_9

    const/16 v3, 0x7f

    if-le v1, v3, :cond_2

    const/16 v4, 0xfd

    if-gt v1, v4, :cond_2

    goto/16 :goto_2

    .line 195
    :cond_2
    const/4 v4, 0x2

    const-string v5, " detected."

    if-lt v1, v4, :cond_4

    if-le v1, v3, :cond_3

    goto :goto_0

    .line 196
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unskippable chunk with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (hex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_4
    :goto_0
    const/4 v3, 0x4

    if-ne v1, v2, :cond_5

    .line 200
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->inUncompressedChunk:Z

    .line 201
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readSize()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 202
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->unmask(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    goto :goto_3

    .line 203
    :cond_5
    if-nez v1, :cond_8

    .line 204
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->dialect:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->usesChecksumWithCompressedChunks()Z

    move-result v2

    .line 205
    .local v2, "expectChecksum":Z
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readSize()I

    move-result v4

    if-eqz v2, :cond_6

    move v0, v3

    :cond_6
    sub-int/2addr v4, v0

    int-to-long v3, v4

    .line 206
    .local v3, "size":J
    if-eqz v2, :cond_7

    .line 207
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readCrc()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->unmask(J)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    goto :goto_1

    .line 209
    :cond_7
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    .line 211
    :goto_1
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    new-instance v5, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v6, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-direct {v5, v6, v3, v4}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-direct {v0, v5}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 214
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->getBytesRead()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->count(J)V

    .line 215
    .end local v2    # "expectChecksum":Z
    .end local v3    # "size":J
    goto :goto_3

    .line 217
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown chunk type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_9
    :goto_2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->skipBlock()V

    .line 194
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readNextBlock()V

    .line 220
    :goto_3
    return-void
.end method

.method private readOnce([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const/4 v0, -0x1

    .line 154
    .local v0, "read":I
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->inUncompressedChunk:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 155
    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->uncompressedBytesRemaining:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 156
    .local v1, "amount":I
    if-nez v1, :cond_0

    .line 157
    return v2

    .line 159
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    .line 160
    if-eq v0, v2, :cond_3

    .line 161
    iget v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->uncompressedBytesRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 162
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->count(I)V

    goto :goto_0

    .line 164
    .end local v1    # "amount":I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->getBytesRead()J

    move-result-wide v3

    .line 166
    .local v3, "before":J
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->read([BII)I

    move-result v0

    .line 167
    if-ne v0, v2, :cond_2

    .line 168
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->close()V

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    goto :goto_1

    .line 171
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->getBytesRead()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->count(J)V

    goto :goto_1

    .line 164
    .end local v3    # "before":J
    :cond_3
    :goto_0
    nop

    .line 174
    :goto_1
    if-lez v0, :cond_4

    .line 175
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->update([BII)V

    .line 177
    :cond_4
    return v0
.end method

.method private readOneByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 277
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 278
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->count(I)V

    .line 279
    and-int/lit16 v1, v0, 0xff

    return v1

    .line 281
    :cond_0
    return v1
.end method

.method private readSize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "b":I
    const/4 v1, 0x0

    .line 247
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 248
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readOneByte()I

    move-result v0

    .line 249
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 252
    mul-int/lit8 v3, v2, 0x8

    shl-int v3, v0, v3

    or-int/2addr v1, v3

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "premature end of stream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private readStreamIdentifier()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 268
    .local v1, "b":[B
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-static {v2, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 269
    .local v2, "read":I
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->count(I)V

    .line 270
    if-ne v0, v2, :cond_0

    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->matches([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    return-void

    .line 271
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Not a framed Snappy stream"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private skipBlock()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readSize()I

    move-result v0

    .line 259
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v1

    .line 260
    .local v1, "read":J
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->count(J)V

    .line 261
    int-to-long v3, v0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 264
    return-void

    .line 262
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "premature end of stream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static unmask(J)J
    .locals 6
    .param p0, "x"    # J

    .line 239
    const-wide v0, 0xa282ead8L

    sub-long/2addr p0, v0

    .line 240
    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    .line 241
    const/16 v2, 0x11

    shr-long v2, p0, v2

    const/16 v4, 0xf

    shl-long v4, p0, v4

    or-long/2addr v2, v4

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private verifyLastChecksumAndReset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Checksum verification failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    .line 289
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->reset()V

    .line 290
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->inUncompressedChunk:Z

    if-eqz v0, :cond_0

    .line 137
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->uncompressedBytesRemaining:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->available()I

    move-result v0

    return v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->close()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 117
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->oneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->oneByte:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_0
    return v2
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readOnce([BII)I

    move-result v0

    .line 123
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 124
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readNextBlock()V

    .line 125
    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->endReached:Z

    if-eqz v2, :cond_0

    .line 126
    return v1

    .line 128
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readOnce([BII)I

    move-result v0

    .line 130
    :cond_1
    return v0
.end method
