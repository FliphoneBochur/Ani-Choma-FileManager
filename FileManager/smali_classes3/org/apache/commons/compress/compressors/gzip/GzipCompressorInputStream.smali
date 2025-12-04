.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "GzipCompressorInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FRESERVED:I = 0xe0


# instance fields
.field private final buf:[B

.field private bufUsed:I

.field private final crc:Ljava/util/zip/CRC32;

.field private final decompressConcatenated:Z

.field private endReached:Z

.field private final in:Ljava/io/InputStream;

.field private inf:Ljava/util/zip/Inflater;

.field private final oneByte:[B

.field private final parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "decompressConcatenated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 66
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    .line 72
    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 75
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    .line 78
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    .line 81
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    .line 83
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    .line 128
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    .line 134
    :goto_0
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    .line 135
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->init(Z)Z

    .line 136
    return-void
.end method

.method private init(Z)Z
    .locals 11
    .param p1, "isFirstMember"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    nop

    .line 152
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 153
    .local v0, "magic0":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 157
    .local v1, "magic1":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    if-nez p1, :cond_0

    .line 158
    const/4 v2, 0x0

    return v2

    .line 161
    :cond_0
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_a

    const/16 v2, 0x8b

    if-eq v1, v2, :cond_1

    goto/16 :goto_2

    .line 168
    :cond_1
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 169
    .local v2, "inData":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 170
    .local v3, "method":I
    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    .line 175
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 176
    .local v5, "flg":I
    and-int/lit16 v6, v5, 0xe0

    if-nez v6, :cond_8

    .line 181
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readLittleEndianInt(Ljava/io/DataInputStream;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setModificationTime(J)V

    .line 182
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v6, v8, :cond_3

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    goto :goto_0

    .line 187
    :cond_2
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v6, v7}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    .line 188
    goto :goto_0

    .line 184
    :cond_3
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    const/16 v8, 0x9

    invoke-virtual {v6, v8}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    .line 185
    nop

    .line 193
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setOperatingSystem(I)V

    .line 196
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_4

    .line 197
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 198
    .local v6, "xlen":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v8

    shl-int/lit8 v4, v8, 0x8

    or-int/2addr v4, v6

    .line 203
    .end local v6    # "xlen":I
    .local v4, "xlen":I
    :goto_1
    add-int/lit8 v6, v4, -0x1

    .end local v4    # "xlen":I
    .restart local v6    # "xlen":I
    if-lez v4, :cond_4

    .line 204
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move v4, v6

    goto :goto_1

    .line 209
    .end local v6    # "xlen":I
    :cond_4
    and-int/lit8 v4, v5, 0x8

    const-string v6, "ISO-8859-1"

    if-eqz v4, :cond_5

    .line 210
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    new-instance v8, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readToNull(Ljava/io/DataInputStream;)[B

    move-result-object v9

    invoke-direct {v8, v9, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setFilename(Ljava/lang/String;)V

    .line 215
    :cond_5
    and-int/lit8 v4, v5, 0x10

    if-eqz v4, :cond_6

    .line 216
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    new-instance v8, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readToNull(Ljava/io/DataInputStream;)[B

    move-result-object v9

    invoke-direct {v8, v9, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setComment(Ljava/lang/String;)V

    .line 225
    :cond_6
    and-int/lit8 v4, v5, 0x2

    if-eqz v4, :cond_7

    .line 226
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    .line 230
    :cond_7
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->reset()V

    .line 231
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    .line 233
    return v7

    .line 177
    :cond_8
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Reserved flags are set in the .gz header"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 171
    .end local v5    # "flg":I
    :cond_9
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported compression method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in the .gz header"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    .end local v2    # "inData":Ljava/io/DataInputStream;
    .end local v3    # "method":I
    :cond_a
    :goto_2
    new-instance v2, Ljava/io/IOException;

    if-eqz p1, :cond_b

    const-string v3, "Input is not in the .gz format"

    goto :goto_3

    :cond_b
    const-string v3, "Garbage after a valid .gz stream"

    :goto_3
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 354
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 355
    return v0

    .line 358
    :cond_0
    aget-byte v1, p0, v0

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_1

    .line 359
    return v0

    .line 362
    :cond_1
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    const/16 v3, -0x75

    if-eq v2, v3, :cond_2

    .line 363
    return v0

    .line 366
    :cond_2
    return v1
.end method

.method private readLittleEndianInt(Ljava/io/DataInputStream;)J
    .locals 5
    .param p1, "inData"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private readToNull(Ljava/io/DataInputStream;)[B
    .locals 3
    .param p1, "inData"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 239
    .local v1, "b":I
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    move v1, v2

    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 384
    :cond_1
    return-void
.end method

.method public getMetaData()Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_0
    return v2
.end method

.method public read([BII)I
    .locals 18
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 265
    return v3

    .line 268
    :cond_0
    const/4 v0, 0x0

    move/from16 v4, p2

    move/from16 v5, p3

    move v6, v0

    .line 270
    .end local p2    # "off":I
    .end local p3    # "len":I
    .local v4, "off":I
    .local v5, "len":I
    .local v6, "size":I
    :goto_0
    if-lez v5, :cond_9

    .line 271
    iget-object v0, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    array-length v8, v8

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->mark(I)V

    .line 276
    iget-object v0, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    .line 277
    if-eq v0, v3, :cond_1

    .line 281
    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v9, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    invoke-virtual {v8, v9, v7, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_1

    .line 278
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 286
    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .local v0, "ret":I
    nop

    .line 291
    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8, v2, v4, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 292
    add-int/2addr v4, v0

    .line 293
    sub-int/2addr v5, v0

    .line 294
    add-int/2addr v6, v0

    .line 295
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->count(I)V

    .line 297
    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->finished()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 303
    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    .line 305
    iget v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    iget-object v9, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v9}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v9

    sub-int/2addr v8, v9

    .line 306
    .local v8, "skipAmount":I
    iget-object v9, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    int-to-long v10, v8

    invoke-virtual {v9, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v9

    int-to-long v11, v8

    cmp-long v9, v9, v11

    if-nez v9, :cond_7

    .line 310
    iput v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    .line 312
    new-instance v9, Ljava/io/DataInputStream;

    iget-object v10, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 315
    .local v9, "inData":Ljava/io/DataInputStream;
    invoke-direct {v1, v9}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readLittleEndianInt(Ljava/io/DataInputStream;)J

    move-result-wide v10

    .line 317
    .local v10, "crcStored":J
    iget-object v12, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-nez v12, :cond_6

    .line 323
    invoke-direct {v1, v9}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readLittleEndianInt(Ljava/io/DataInputStream;)J

    move-result-wide v12

    .line 325
    .local v12, "isize":J
    iget-object v14, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v14}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    cmp-long v14, v12, v14

    if-nez v14, :cond_5

    .line 331
    iget-boolean v14, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    if-eqz v14, :cond_3

    invoke-direct {v1, v7}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->init(Z)Z

    move-result v7

    if-nez v7, :cond_8

    .line 332
    :cond_3
    iget-object v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->end()V

    .line 333
    const/4 v7, 0x0

    iput-object v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 334
    const/4 v7, 0x1

    iput-boolean v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    .line 335
    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    return v3

    .line 326
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v7, "Gzip-compressed data is corrupt(uncompressed size mismatch)"

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    .end local v12    # "isize":J
    :cond_6
    new-instance v3, Ljava/io/IOException;

    const-string v7, "Gzip-compressed data is corrupt (CRC32 error)"

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    .end local v9    # "inData":Ljava/io/DataInputStream;
    .end local v10    # "crcStored":J
    :cond_7
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 338
    .end local v0    # "ret":I
    .end local v8    # "skipAmount":I
    :cond_8
    goto/16 :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v3, Ljava/io/IOException;

    const-string v7, "Gzip-compressed data is corrupt"

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 340
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    :cond_9
    return v6
.end method
