.class public Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "X0017_StrongEncryptionHeader.java"


# instance fields
.field private algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field private bitlen:I

.field private erdData:[B

.field private flags:I

.field private format:I

.field private hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field private hashSize:I

.field private ivData:[B

.field private keyBlob:[B

.field private rcount:J

.field private recipientKeyHash:[B

.field private vCRC32:[B

.field private vData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 248
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 249
    return-void
.end method


# virtual methods
.method public getEncryptionAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    return-object v0
.end method

.method public getRecordCount()J
    .locals 2

    .line 276
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    return-wide v0
.end method

.method public parseCentralDirectoryFormat([BII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 303
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->format:I

    .line 304
    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 305
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->bitlen:I

    .line 306
    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->flags:I

    .line 307
    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 309
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 310
    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 311
    add-int/lit8 v0, p2, 0xe

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v1, v0

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 314
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public parseFileFormat([BII)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 331
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    .line 332
    .local v0, "ivSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->ivData:[B

    .line 333
    add-int/lit8 v2, p2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    add-int v1, p2, v0

    add-int/lit8 v1, v1, 0x6

    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->format:I

    .line 336
    add-int v1, p2, v0

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 337
    add-int v1, p2, v0

    add-int/lit8 v1, v1, 0xa

    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->bitlen:I

    .line 338
    add-int v1, p2, v0

    add-int/lit8 v1, v1, 0xc

    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->flags:I

    .line 340
    add-int v1, p2, v0

    add-int/lit8 v1, v1, 0xe

    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    .line 341
    .local v1, "erdSize":I
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->erdData:[B

    .line 342
    add-int v4, p2, v0

    add-int/lit8 v4, v4, 0x10

    invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    add-int v2, p2, v0

    add-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v1

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 345
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rcount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    const/4 v4, 0x4

    if-nez v2, :cond_0

    .line 347
    add-int v2, p2, v0

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v1

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    .line 348
    .local v2, "vSize":I
    add-int/lit8 v5, v2, -0x4

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    .line 349
    new-array v6, v4, [B

    iput-object v6, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 350
    add-int v6, p2, v0

    add-int/lit8 v6, v6, 0x16

    add-int/2addr v6, v1

    add-int/lit8 v7, v2, -0x4

    invoke-static {p1, v6, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x16

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    invoke-static {p1, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    .end local v2    # "vSize":I
    goto :goto_0

    .line 353
    :cond_0
    add-int v2, p2, v0

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v1

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 354
    add-int v2, p2, v0

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v1

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 355
    add-int v2, p2, v0

    add-int/lit8 v2, v2, 0x18

    add-int/2addr v2, v1

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    .line 356
    .local v2, "resize":I
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    new-array v6, v5, [B

    iput-object v6, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->recipientKeyHash:[B

    .line 357
    sub-int v7, v2, v5

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->keyBlob:[B

    .line 358
    add-int v7, p2, v0

    add-int/lit8 v7, v7, 0x18

    add-int/2addr v7, v1

    invoke-static {p1, v7, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x18

    add-int/2addr v5, v1

    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    add-int/2addr v5, v6

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->keyBlob:[B

    sub-int v6, v2, v6

    invoke-static {p1, v5, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x1a

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    invoke-static {p1, v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v5

    .line 362
    .local v5, "vSize":I
    add-int/lit8 v6, v5, -0x4

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    .line 363
    new-array v7, v4, [B

    iput-object v7, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 364
    add-int v7, p2, v0

    add-int/lit8 v7, v7, 0x16

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    add-int/lit8 v8, v5, -0x4

    invoke-static {p1, v7, v6, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    add-int v6, p2, v0

    add-int/lit8 v6, v6, 0x16

    add-int/2addr v6, v1

    add-int/2addr v6, v2

    add-int/2addr v6, v5

    sub-int/2addr v6, v4

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    invoke-static {p1, v6, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    .end local v2    # "resize":I
    .end local v5    # "vSize":I
    :goto_0
    return-void
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 379
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromCentralDirectoryData([BII)V

    .line 380
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->parseCentralDirectoryFormat([BII)V

    .line 381
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 373
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromLocalFileData([BII)V

    .line 374
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->parseFileFormat([BII)V

    .line 375
    return-void
.end method
