.class public Lorg/apache/commons/compress/archivers/tar/TarUtils;
.super Ljava/lang/Object;
.source "TarUtils.java"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field static final DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field static final FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 47
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static computeCheckSum([B)J
    .locals 8
    .param p0, "buf"    # [B

    .line 562
    const-wide/16 v0, 0x0

    .line 564
    .local v0, "sum":J
    move-object v2, p0

    .local v2, "arr$":[B
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .line 565
    .local v5, "element":B
    and-int/lit16 v6, v5, 0xff

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 564
    .end local v5    # "element":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 568
    .end local v2    # "arr$":[B
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    return-wide v0
.end method

.method private static exceptionMessage([BIIIB)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "current"    # I
    .param p4, "currentByte"    # B

    .line 245
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 247
    .local v0, "string":Ljava/lang/String;
    const-string v1, "\u0000"

    const-string v2, "{NUL}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, p3, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "s":Ljava/lang/String;
    return-object v1
.end method

.method private static formatBigIntegerBinary(J[BIIZ)V
    .locals 6
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "negative"    # Z

    .line 519
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 520
    .local v0, "val":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 521
    .local v1, "b":[B
    array-length v2, v1

    .line 522
    .local v2, "len":I
    add-int v3, p3, p4

    sub-int/2addr v3, v2

    .line 523
    .local v3, "off":I
    const/4 v4, 0x0

    invoke-static {v1, v4, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    if-eqz p5, :cond_0

    const/16 v4, 0xff

    :cond_0
    int-to-byte v4, v4

    .line 525
    .local v4, "fill":B
    add-int/lit8 v5, p3, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 526
    aput-byte v4, p2, v5

    .line 525
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 528
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method public static formatCheckSumOctalBytes(J[BII)I
    .locals 3
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 546
    add-int/lit8 v0, p4, -0x2

    .line 547
    .local v0, "idx":I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 549
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    add-int/2addr v0, p3

    const/4 v2, 0x0

    aput-byte v2, p2, v0

    .line 550
    add-int v0, p3, v1

    const/16 v2, 0x20

    aput-byte v2, p2, v0

    .line 552
    add-int v0, p3, p4

    return v0
.end method

.method private static formatLongBinary(J[BIIZ)V
    .locals 10
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "negative"    # Z

    .line 497
    add-int/lit8 v0, p4, -0x1

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    .line 498
    .local v0, "bits":I
    const-wide/16 v2, 0x1

    shl-long v4, v2, v0

    .line 499
    .local v4, "max":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 500
    .local v6, "val":J
    cmp-long v8, v6, v4

    if-gez v8, :cond_2

    .line 504
    if-eqz p5, :cond_0

    .line 505
    sub-long v8, v4, v2

    xor-long/2addr v6, v8

    .line 506
    const/16 v8, 0xff

    shl-int/2addr v8, v0

    int-to-long v8, v8

    or-long/2addr v6, v8

    .line 507
    add-long/2addr v6, v2

    .line 509
    :cond_0
    add-int v2, p3, p4

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, p3, :cond_1

    .line 510
    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 511
    shr-long/2addr v6, v1

    .line 509
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 513
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 501
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " is too large for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " byte field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static formatLongOctalBytes(J[BII)I
    .locals 3
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 449
    add-int/lit8 v0, p4, -0x1

    .line 451
    .local v0, "idx":I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 452
    add-int v1, p3, v0

    const/16 v2, 0x20

    aput-byte v2, p2, v1

    .line 454
    add-int v1, p3, p4

    return v1
.end method

.method public static formatLongOctalOrBinaryBytes(J[BII)I
    .locals 9
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 478
    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    const-wide/32 v0, 0x1fffff

    goto :goto_0

    :cond_0
    const-wide v0, 0x1ffffffffL

    .line 480
    .local v0, "maxAsOctalChar":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 481
    .local v2, "negative":Z
    :goto_1
    if-nez v2, :cond_2

    cmp-long v3, p0, v0

    if-gtz v3, :cond_2

    .line 482
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result v3

    return v3

    .line 485
    :cond_2
    const/16 v3, 0x9

    if-ge p4, v3, :cond_3

    .line 486
    move-wide v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, v2

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongBinary(J[BIIZ)V

    .line 488
    :cond_3
    move-wide v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, v2

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatBigIntegerBinary(J[BIIZ)V

    .line 490
    if-eqz v2, :cond_4

    const/16 v3, 0xff

    goto :goto_2

    :cond_4
    const/16 v3, 0x80

    :goto_2
    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 491
    add-int v3, p3, p4

    return v3
.end method

.method public static formatNameBytes(Ljava/lang/String;[BII)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 324
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 329
    :catch_1
    move-exception v1

    .line 331
    .local v1, "ex2":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 359
    .local v0, "len":I
    invoke-interface {p4, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 360
    .local v1, "b":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, p3, :cond_0

    if-lez v0, :cond_0

    .line 361
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v2, v4

    .line 364
    .local v2, "limit":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-static {v4, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-ge v4, p3, :cond_1

    .line 368
    add-int v5, p2, v4

    aput-byte v3, p1, v5

    .line 367
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 371
    .end local v4    # "i":I
    :cond_1
    add-int v3, p2, p3

    return v3
.end method

.method public static formatOctalBytes(J[BII)I
    .locals 3
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 424
    add-int/lit8 v0, p4, -0x2

    .line 425
    .local v0, "idx":I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 427
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    add-int/2addr v0, p3

    const/16 v2, 0x20

    aput-byte v2, p2, v0

    .line 428
    add-int v0, p3, v1

    const/4 v2, 0x0

    aput-byte v2, p2, v0

    .line 430
    add-int v0, p3, p4

    return v0
.end method

.method public static formatUnsignedOctalString(J[BII)V
    .locals 9
    .param p0, "value"    # J
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 385
    move v0, p4

    .line 386
    .local v0, "remaining":I
    add-int/lit8 v0, v0, -0x1

    .line 387
    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const/16 v4, 0x30

    if-nez v3, :cond_0

    .line 388
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "remaining":I
    .local v1, "remaining":I
    add-int/2addr v0, p3

    aput-byte v4, p2, v0

    goto :goto_1

    .line 390
    .end local v1    # "remaining":I
    .restart local v0    # "remaining":I
    :cond_0
    move-wide v5, p0

    .line 391
    .local v5, "val":J
    :goto_0
    if-ltz v0, :cond_1

    cmp-long v3, v5, v1

    if-eqz v3, :cond_1

    .line 393
    add-int v3, p3, v0

    const-wide/16 v7, 0x7

    and-long/2addr v7, v5

    long-to-int v7, v7

    int-to-byte v7, v7

    add-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v3

    .line 394
    const/4 v3, 0x3

    ushr-long/2addr v5, v3

    .line 391
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 397
    :cond_1
    cmp-long v1, v5, v1

    if-nez v1, :cond_3

    move v1, v0

    .line 403
    .end local v0    # "remaining":I
    .end local v5    # "val":J
    .restart local v1    # "remaining":I
    :goto_1
    if-ltz v1, :cond_2

    .line 404
    add-int v0, p3, v1

    aput-byte v4, p2, v0

    .line 403
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 406
    :cond_2
    return-void

    .line 398
    .end local v1    # "remaining":I
    .restart local v0    # "remaining":I
    .restart local v5    # "val":J
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " will not fit in octal number buffer of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseBinaryBigInteger([BIIZ)J
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "negative"    # Z

    .line 205
    add-int/lit8 v0, p2, -0x1

    new-array v0, v0, [B

    .line 206
    .local v0, "remainder":[B
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 208
    .local v1, "val":Ljava/math/BigInteger;
    if-eqz p3, :cond_0

    .line 210
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v1

    .line 212
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x3f

    if-gt v2, v3, :cond_2

    .line 218
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    if-eqz p3, :cond_1

    neg-long v2, v2

    :cond_1
    return-wide v2

    .line 213
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "At offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " byte binary number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exceeds maximum signed long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseBinaryLong([BIIZ)J
    .locals 8
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "negative"    # Z

    .line 183
    const/16 v0, 0x9

    if-ge p2, v0, :cond_3

    .line 189
    const-wide/16 v0, 0x0

    .line 190
    .local v0, "val":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, p2, :cond_0

    .line 191
    shl-long v3, v0, v3

    add-int v5, p1, v2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 195
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 196
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v2, p2, -0x1

    mul-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    sub-long/2addr v2, v4

    xor-long/2addr v0, v2

    .line 198
    :cond_1
    if-eqz p3, :cond_2

    neg-long v2, v0

    goto :goto_1

    :cond_2
    move-wide v2, v0

    :goto_1
    return-wide v2

    .line 184
    .end local v0    # "val":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " byte binary number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exceeds maximum signed long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseBoolean([BI)Z
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 232
    aget-byte v0, p0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static parseName([BII)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 264
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 268
    :catch_1
    move-exception v1

    .line 270
    .local v1, "ex2":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    move v0, p2

    .line 294
    .local v0, "len":I
    :goto_0
    if-lez v0, :cond_1

    .line 295
    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    if-eqz v1, :cond_0

    .line 296
    goto :goto_1

    .line 294
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 299
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 300
    new-array v1, v0, [B

    .line 301
    .local v1, "b":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    invoke-interface {p3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 304
    .end local v1    # "b":[B
    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method public static parseOctal([BII)J
    .locals 10
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 105
    const-wide/16 v0, 0x0

    .line 106
    .local v0, "result":J
    add-int v2, p1, p2

    .line 107
    .local v2, "end":I
    move v3, p1

    .line 109
    .local v3, "start":I
    const/4 v4, 0x2

    if-lt p2, v4, :cond_6

    .line 113
    aget-byte v4, p0, v3

    if-nez v4, :cond_0

    .line 114
    const-wide/16 v4, 0x0

    return-wide v4

    .line 118
    :cond_0
    :goto_0
    const/16 v4, 0x20

    if-ge v3, v2, :cond_1

    .line 119
    aget-byte v5, p0, v3

    if-ne v5, v4, :cond_1

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_1
    add-int/lit8 v5, v2, -0x1

    aget-byte v5, p0, v5

    .line 131
    .local v5, "trailer":B
    :goto_1
    if-ge v3, v2, :cond_3

    if-eqz v5, :cond_2

    if-ne v5, v4, :cond_3

    .line 132
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 133
    add-int/lit8 v6, v2, -0x1

    aget-byte v5, p0, v6

    goto :goto_1

    .line 136
    :cond_3
    :goto_2
    if-ge v3, v2, :cond_5

    .line 137
    aget-byte v4, p0, v3

    .line 139
    .local v4, "currentByte":B
    const/16 v6, 0x30

    if-lt v4, v6, :cond_4

    const/16 v6, 0x37

    if-gt v4, v6, :cond_4

    .line 143
    const/4 v6, 0x3

    shl-long v6, v0, v6

    add-int/lit8 v8, v4, -0x30

    int-to-long v8, v8

    add-long v0, v6, v8

    .line 136
    .end local v4    # "currentByte":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 140
    .restart local v4    # "currentByte":B
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 147
    .end local v4    # "currentByte":B
    :cond_5
    return-wide v0

    .line 110
    .end local v5    # "trailer":B
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " must be at least 2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static parseOctalOrBinary([BII)J
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 170
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 171
    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v0

    return-wide v0

    .line 173
    :cond_0
    aget-byte v0, p0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 174
    .local v0, "negative":Z
    :goto_0
    const/16 v1, 0x9

    if-ge p2, v1, :cond_2

    .line 175
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryLong([BIIZ)J

    move-result-wide v1

    return-wide v1

    .line 177
    :cond_2
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryBigInteger([BIIZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public static verifyCheckSum([B)Z
    .locals 11
    .param p0, "header"    # [B

    .line 597
    const/16 v0, 0x94

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v1

    .line 598
    .local v1, "storedSum":J
    const-wide/16 v3, 0x0

    .line 599
    .local v3, "unsignedSum":J
    const-wide/16 v5, 0x0

    .line 601
    .local v5, "signedSum":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, p0

    if-ge v7, v8, :cond_1

    .line 602
    aget-byte v8, p0, v7

    .line 603
    .local v8, "b":B
    if-gt v0, v7, :cond_0

    const/16 v9, 0x9c

    if-ge v7, v9, :cond_0

    .line 604
    const/16 v8, 0x20

    .line 606
    :cond_0
    and-int/lit16 v9, v8, 0xff

    int-to-long v9, v9

    add-long/2addr v3, v9

    .line 607
    int-to-long v9, v8

    add-long/2addr v5, v9

    .line 601
    .end local v8    # "b":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 609
    .end local v7    # "i":I
    :cond_1
    cmp-long v0, v1, v3

    if-eqz v0, :cond_3

    cmp-long v0, v1, v5

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method
