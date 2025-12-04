.class public Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "CpioArchiveOutputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/cpio/CpioConstants;


# instance fields
.field private final blockSize:I

.field private closed:Z

.field private crc:J

.field final encoding:Ljava/lang/String;

.field private entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

.field private final entryFormat:S

.field private finished:Z

.field private final names:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private nextArtificalDeviceAndInode:J

.field private final out:Ljava/io/OutputStream;

.field private written:J

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;S)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;SILjava/lang/String;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;S)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "format"    # S

    .line 111
    const/16 v0, 0x200

    const-string v1, "US-ASCII"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;SILjava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;SI)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "format"    # S
    .param p3, "blockSize"    # I

    .line 129
    const-string v0, "US-ASCII"

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;SILjava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;SILjava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "format"    # S
    .param p3, "blockSize"    # I
    .param p4, "encoding"    # Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->names:Ljava/util/HashMap;

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    .line 90
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    .line 150
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 151
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    :goto_0
    nop

    .line 161
    iput-short p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    .line 162
    iput p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->blockSize:I

    .line 163
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 164
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 165
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 203
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pad(I)V
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    if-lez p1, :cond_0

    .line 496
    new-array v0, p1, [B

    .line 497
    .local v0, "buff":[B
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 498
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 500
    .end local v0    # "buff":[B
    :cond_0
    return-void
.end method

.method private writeAsciiLong(JII)V
    .locals 6
    .param p1, "number"    # J
    .param p3, "length"    # I
    .param p4, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v0, "tmp":Ljava/lang/StringBuilder;
    const/16 v1, 0x10

    if-ne p4, v1, :cond_0

    .line 514
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 515
    :cond_0
    const/16 v1, 0x8

    if-ne p4, v1, :cond_1

    .line 516
    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 518
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v1, p3, :cond_3

    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int v1, p3, v1

    int-to-long v1, v1

    .line 523
    .local v1, "insertLength":J
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_1
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-gez v4, :cond_2

    .line 524
    const/4 v4, 0x0

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 526
    .end local v3    # "pos":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "tmpStr":Ljava/lang/String;
    goto :goto_2

    .line 528
    .end local v1    # "tmpStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 530
    .restart local v1    # "tmpStr":Ljava/lang/String;
    :goto_2
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 531
    .local v2, "b":[B
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 532
    array-length v3, v2

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 533
    return-void
.end method

.method private writeBinaryLong(JIZ)V
    .locals 2
    .param p1, "number"    # J
    .param p3, "length"    # I
    .param p4, "swapHalfWord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->long2byteArray(JIZ)[B

    move-result-object v0

    .line 505
    .local v0, "tmp":[B
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 506
    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 507
    return-void
.end method

.method private writeCString(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 542
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 543
    .local v1, "len":I
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 544
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 545
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 546
    return-void
.end method

.method private writeHeader(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V
    .locals 6
    .param p1, "e"    # Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 267
    .local v0, "swapHalfWord":Z
    const-wide/16 v4, 0x71c7

    invoke-direct {p0, v4, v5, v3, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 268
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeOldBinaryEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;Z)V

    .line 269
    goto :goto_0

    .line 271
    .end local v0    # "swapHalfWord":Z
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const-string v2, "070707"

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 262
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 263
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeOldAsciiEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    .line 264
    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const-string v2, "070702"

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 257
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 258
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeNewEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    .line 259
    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const-string v2, "070701"

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 252
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 253
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeNewEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    .line 254
    nop

    .line 273
    :goto_0
    return-void
.end method

.method private writeNewEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V
    .locals 11
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getInode()J

    move-result-wide v0

    .line 277
    .local v0, "inode":J
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDeviceMin()J

    move-result-wide v2

    .line 278
    .local v2, "devMin":J
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRAILER!!!"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    .line 279
    move-wide v2, v5

    move-wide v0, v5

    goto :goto_0

    .line 281
    :cond_0
    cmp-long v4, v0, v5

    const-wide/16 v7, 0x1

    if-nez v4, :cond_1

    cmp-long v4, v2, v5

    if-nez v4, :cond_1

    .line 282
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/16 v9, -0x1

    and-long v0, v4, v9

    .line 283
    add-long/2addr v7, v4

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    and-long v2, v4, v9

    goto :goto_0

    .line 285
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide v9, 0x100000000L

    mul-long/2addr v9, v2

    add-long/2addr v9, v0

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v7

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    .line 291
    :goto_0
    const/16 v4, 0x8

    const/16 v5, 0x10

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 292
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getMode()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 293
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getUID()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 294
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getGID()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 295
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getNumberOfLinks()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 296
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 297
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 298
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDeviceMaj()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 299
    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 300
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDeviceMaj()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 301
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDeviceMin()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 302
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 303
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getChksum()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 304
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeCString(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    .line 306
    return-void
.end method

.method private writeOldAsciiEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V
    .locals 11
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getInode()J

    move-result-wide v0

    .line 311
    .local v0, "inode":J
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDevice()J

    move-result-wide v2

    .line 312
    .local v2, "device":J
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRAILER!!!"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    .line 313
    move-wide v2, v5

    move-wide v0, v5

    goto :goto_0

    .line 315
    :cond_0
    cmp-long v4, v0, v5

    const-wide/16 v7, 0x1

    if-nez v4, :cond_1

    cmp-long v4, v2, v5

    if-nez v4, :cond_1

    .line 316
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v9, 0x3ffff

    and-long v0, v4, v9

    .line 317
    add-long/2addr v7, v4

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const/16 v6, 0x12

    shr-long/2addr v4, v6

    and-long v2, v4, v9

    goto :goto_0

    .line 319
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v9, 0x40000

    mul-long/2addr v9, v2

    add-long/2addr v9, v0

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v7

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    .line 325
    :goto_0
    const/4 v4, 0x6

    const/16 v5, 0x8

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 326
    invoke-direct {p0, v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 327
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getMode()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 328
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getUID()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 329
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getGID()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 330
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getNumberOfLinks()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 331
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDevice()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 332
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v6

    const/16 v8, 0xb

    invoke-direct {p0, v6, v7, v8, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 333
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 334
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v8, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 335
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeCString(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method private writeOldBinaryEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;Z)V
    .locals 11
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .param p2, "swapHalfWord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getInode()J

    move-result-wide v0

    .line 341
    .local v0, "inode":J
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDevice()J

    move-result-wide v2

    .line 342
    .local v2, "device":J
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRAILER!!!"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    .line 343
    move-wide v2, v5

    move-wide v0, v5

    goto :goto_0

    .line 345
    :cond_0
    cmp-long v4, v0, v5

    const-wide/16 v7, 0x1

    if-nez v4, :cond_1

    cmp-long v4, v2, v5

    if-nez v4, :cond_1

    .line 346
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v9, 0xffff

    and-long v0, v4, v9

    .line 347
    add-long/2addr v7, v4

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    and-long v2, v4, v9

    goto :goto_0

    .line 349
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v9, 0x10000

    mul-long/2addr v9, v2

    add-long/2addr v9, v0

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v7

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    .line 355
    :goto_0
    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 356
    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 357
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getMode()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 358
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getUID()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 359
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getGID()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 360
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getNumberOfLinks()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 361
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDevice()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 362
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v5

    const/4 v7, 0x4

    invoke-direct {p0, v5, v6, v7, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 363
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    invoke-direct {p0, v5, v6, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 364
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v7, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 365
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeCString(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    .line 367
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finish()V

    .line 488
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    .line 492
    :cond_1
    return-void
.end method

.method public closeArchiveEntry()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez v0, :cond_4

    .line 381
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    .line 383
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v0, :cond_3

    .line 387
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 392
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDataPadCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    .line 393
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getChksum()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CRC Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 398
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    .line 399
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    .line 400
    return-void

    .line 388
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry size (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Trying to close non-existent entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 2
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 557
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    .line 454
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez v0, :cond_2

    .line 458
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-nez v0, :cond_1

    .line 461
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    iget-short v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 462
    const-string v1, "TRAILER!!!"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    .line 464
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeHeader(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    .line 465
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closeArchiveEntry()V

    .line 467
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->getBytesWritten()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->blockSize:I

    int-to-long v3, v2

    rem-long/2addr v0, v3

    long-to-int v0, v0

    .line 468
    .local v0, "lengthOfLastBlock":I
    if-eqz v0, :cond_0

    .line 469
    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    .line 472
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    .line 473
    return-void

    .line 459
    .end local v0    # "lengthOfLastBlock":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 5
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez v0, :cond_4

    .line 225
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 226
    .local v0, "e":Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    .line 227
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closeArchiveEntry()V

    .line 230
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    .line 234
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v1

    .line 235
    .local v1, "format":S
    iget-short v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    if-ne v1, v2, :cond_3

    .line 239
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->names:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 243
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeHeader(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    .line 244
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 245
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    .line 246
    return-void

    .line 240
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not match existing format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v0    # "e":Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .end local v1    # "format":S
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    .line 420
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_4

    .line 422
    if-nez p3, :cond_0

    .line 423
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v0, :cond_3

    .line 429
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gtz v0, :cond_2

    .line 432
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 433
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    .line 434
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 435
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 436
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "pos":I
    :cond_1
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 440
    return-void

    .line 430
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "attempt to write past end of STORED entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no current CPIO entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
