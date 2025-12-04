.class Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
.super Ljava/io/FilterInputStream;
.source "TapeInputStream.java"


# static fields
.field private static final recordSize:I = 0x400


# instance fields
.field private blockBuffer:[B

.field private blockSize:I

.field private bytesRead:J

.field private currBlkIdx:I

.field private isCompressed:Z

.field private readOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    const/16 v0, 0x400

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 40
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 42
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 51
    return-void
.end method

.method private readBlock(Z)Z
    .locals 12
    .param p1, "decompress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x1

    .line 260
    .local v0, "success":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_a

    .line 264
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    goto/16 :goto_2

    .line 269
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v4, 0x4

    invoke-direct {p0, v1, v3, v4}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    return v3

    .line 272
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 274
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v1

    .line 275
    .local v1, "h":I
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    .line 277
    .local v4, "compressed":Z
    :goto_0
    if-nez v4, :cond_3

    .line 279
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v6, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    invoke-direct {p0, v5, v3, v6}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)Z

    move-result v0

    .line 280
    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    iget v7, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    goto/16 :goto_3

    .line 283
    :cond_3
    shr-int/lit8 v5, v1, 0x1

    and-int/lit8 v5, v5, 0x7

    .line 284
    .local v5, "flags":I
    shr-int/lit8 v6, v1, 0x4

    const v7, 0xfffffff

    and-int/2addr v6, v7

    .line 285
    .local v6, "length":I
    new-array v7, v6, [B

    .line 286
    .local v7, "compBuffer":[B
    invoke-direct {p0, v7, v3, v6}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)Z

    move-result v0

    .line 287
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 289
    if-nez p1, :cond_4

    .line 291
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {v8, v3}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3

    .line 293
    :cond_4
    sget-object v8, Lorg/apache/commons/compress/archivers/dump/TapeInputStream$1;->$SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE:[I

    and-int/lit8 v9, v5, 0x3

    invoke-static {v9}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v2, :cond_7

    const/4 v2, 0x2

    if-eq v8, v2, :cond_6

    const/4 v2, 0x3

    if-eq v8, v2, :cond_5

    .line 322
    new-instance v2, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>()V

    throw v2

    .line 318
    :cond_5
    new-instance v2, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string v3, "LZO"

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_6
    new-instance v2, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string v3, "BZLIB2"

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_7
    new-instance v8, Ljava/util/zip/Inflater;

    invoke-direct {v8}, Ljava/util/zip/Inflater;-><init>()V

    .line 299
    .local v8, "inflator":Ljava/util/zip/Inflater;
    :try_start_0
    array-length v9, v7

    invoke-virtual {v8, v7, v3, v9}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 300
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-virtual {v8, v9}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v9

    move v6, v9

    .line 302
    iget v9, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v9, :cond_8

    .line 308
    invoke-virtual {v8}, Ljava/util/zip/Inflater;->end()V

    .line 309
    nop

    .line 311
    goto :goto_3

    .line 303
    :cond_8
    :try_start_1
    new-instance v2, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    .end local v0    # "success":Z
    .end local v1    # "h":I
    .end local v4    # "compressed":Z
    .end local v5    # "flags":I
    .end local v6    # "length":I
    .end local v7    # "compBuffer":[B
    .end local v8    # "inflator":Ljava/util/zip/Inflater;
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
    .end local p1    # "decompress":Z
    throw v2
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    .restart local v0    # "success":Z
    .restart local v1    # "h":I
    .restart local v4    # "compressed":Z
    .restart local v5    # "flags":I
    .restart local v6    # "length":I
    .restart local v7    # "compBuffer":[B
    .restart local v8    # "inflator":Ljava/util/zip/Inflater;
    .restart local p0    # "this":Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
    .restart local p1    # "decompress":Z
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Ljava/util/zip/DataFormatException;
    :try_start_2
    new-instance v3, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;

    const-string v9, "bad data"

    invoke-direct {v3, v9, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local v1    # "h":I
    .end local v4    # "compressed":Z
    .end local v5    # "flags":I
    .end local v6    # "length":I
    .end local v7    # "compBuffer":[B
    .end local v8    # "inflator":Ljava/util/zip/Inflater;
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
    .end local p1    # "decompress":Z
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    .end local v2    # "e":Ljava/util/zip/DataFormatException;
    .restart local v0    # "success":Z
    .restart local v1    # "h":I
    .restart local v4    # "compressed":Z
    .restart local v5    # "flags":I
    .restart local v6    # "length":I
    .restart local v7    # "compBuffer":[B
    .restart local v8    # "inflator":Ljava/util/zip/Inflater;
    .restart local p0    # "this":Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
    .restart local p1    # "decompress":Z
    :goto_1
    invoke-virtual {v8}, Ljava/util/zip/Inflater;->end()V

    throw v2

    .line 266
    .end local v1    # "h":I
    .end local v4    # "compressed":Z
    .end local v5    # "flags":I
    .end local v6    # "length":I
    .end local v7    # "compBuffer":[B
    .end local v8    # "inflator":Ljava/util/zip/Inflater;
    :cond_9
    :goto_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    invoke-direct {p0, v1, v3, v4}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)Z

    move-result v0

    .line 267
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 328
    :goto_3
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 329
    iput v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 331
    return v0

    .line 261
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "input buffer is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readFully([BII)Z
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 340
    .local v0, "count":I
    if-lt v0, p3, :cond_0

    .line 344
    const/4 v1, 0x1

    return v1

    .line 341
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ge v0, v1, :cond_0

    .line 91
    sub-int/2addr v1, v0

    return v1

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 209
    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 351
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    return-wide v0
.end method

.method public peek()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_0
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 227
    .local v0, "b":[B
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    rem-int/lit16 v0, p3, 0x400

    if-nez v0, :cond_3

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "bytes":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 129
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const/4 v1, -0x1

    return v1

    .line 133
    :cond_0
    const/4 v1, 0x0

    .line 135
    .local v1, "n":I
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int v3, p3, v0

    add-int/2addr v3, v2

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-gt v3, v4, :cond_1

    .line 137
    sub-int v1, p3, v0

    goto :goto_1

    .line 140
    :cond_1
    sub-int v1, v4, v2

    .line 144
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 146
    add-int/2addr v0, v1

    .line 147
    add-int/2addr p2, v1

    .line 148
    .end local v1    # "n":I
    goto :goto_0

    .line 150
    :cond_2
    return v0

    .line 118
    .end local v0    # "bytes":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readRecord()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 243
    .local v0, "result":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 247
    return-object v0

    .line 244
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v1
.end method

.method public resetBlockSize(IZ)V
    .locals 5
    .param p1, "recsPerBlock"    # I
    .param p2, "isCompressed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    .line 71
    mul-int/lit16 v0, p1, 0x400

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 74
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 77
    .local v1, "oldBuffer":[B
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 78
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    sub-int/2addr v4, v3

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)Z

    .line 81
    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 82
    iput v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 83
    return-void
.end method

.method public skip(J)J
    .locals 10
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const-wide/16 v0, 0x400

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 169
    const-wide/16 v0, 0x0

    .line 171
    .local v0, "bytes":J
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_3

    .line 176
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v2, v3, :cond_1

    sub-long v4, p1, v0

    int-to-long v2, v3

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    const-wide/16 v2, -0x1

    return-wide v2

    .line 181
    :cond_1
    const-wide/16 v2, 0x0

    .line 183
    .local v2, "n":J
    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    int-to-long v5, v4

    sub-long v7, p1, v0

    add-long/2addr v5, v7

    iget v7, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v8, v7

    cmp-long v5, v5, v8

    if-gtz v5, :cond_2

    .line 185
    sub-long v2, p1, v0

    goto :goto_2

    .line 188
    :cond_2
    sub-int/2addr v7, v4

    int-to-long v2, v7

    .line 192
    :goto_2
    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v4, v4

    iput v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 193
    add-long/2addr v0, v2

    .line 194
    .end local v2    # "n":J
    goto :goto_0

    .line 196
    :cond_3
    return-wide v0

    .line 164
    .end local v0    # "bytes":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
