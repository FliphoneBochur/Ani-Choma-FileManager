.class public abstract Lorg/apache/commons/compress/archivers/zip/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final DOS_TIME_MIN:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-wide/16 v0, 0x2100

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->DOS_TIME_MIN:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustToLong(I)J
    .locals 4
    .param p0, "i"    # I

    .line 100
    if-gez p0, :cond_0

    .line 101
    const-wide v0, 0x100000000L

    int-to-long v2, p0

    add-long/2addr v2, v0

    return-wide v2

    .line 103
    :cond_0
    int-to-long v0, p0

    return-wide v0
.end method

.method static bigToLong(Ljava/math/BigInteger;)J
    .locals 3
    .param p0, "big"    # Ljava/math/BigInteger;

    .line 135
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The BigInteger cannot fit inside a 64 bit java long: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1
    .param p0, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 309
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsEncryptionOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsMethodOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 3
    .param p0, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;
        }
    .end annotation

    .line 342
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsEncryptionOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsMethodOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object v0

    .line 349
    .local v0, "m":Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    if-nez v0, :cond_0

    .line 350
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->METHOD:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {v1, v2, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw v1

    .line 354
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipMethod;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw v1

    .line 356
    .end local v0    # "m":Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    :cond_1
    return-void

    .line 343
    :cond_2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->ENCRYPTION:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw v0
.end method

.method static copy([B[BI)V
    .locals 2
    .param p0, "from"    # [B
    .param p1, "to"    # [B
    .param p2, "offset"    # I

    .line 299
    if-eqz p0, :cond_0

    .line 300
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :cond_0
    return-void
.end method

.method static copy([B)[B
    .locals 3
    .param p0, "from"    # [B

    .line 291
    if-eqz p0, :cond_0

    .line 292
    array-length v0, p0

    new-array v0, v0, [B

    .line 293
    .local v0, "to":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    return-object v0

    .line 296
    .end local v0    # "to":[B
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static dosToJavaTime(J)J
    .locals 7
    .param p0, "dosTime"    # J

    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 216
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0x19

    shr-long v1, p0, v1

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v1, v1, 0x7bc

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/16 v1, 0x15

    shr-long v3, p0, v1

    const-wide/16 v5, 0xf

    and-long/2addr v3, v5

    long-to-int v1, v3

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 218
    const/16 v1, 0x10

    shr-long v3, p0, v1

    long-to-int v1, v3

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 219
    const/16 v1, 0xb

    shr-long v4, p0, v1

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 220
    shr-long v3, p0, v3

    long-to-int v1, v3

    and-int/lit8 v1, v1, 0x3f

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 221
    shl-long v1, p0, v2

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x3e

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 222
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 224
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public static fromDosTime(Lorg/apache/commons/compress/archivers/zip/ZipLong;)Ljava/util/Date;
    .locals 5
    .param p0, "zipDosTime"    # Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 203
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v0

    .line 204
    .local v0, "dosTime":J
    new-instance v2, Ljava/util/Date;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private static getUnicodeStringIfOriginalMatches(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;
    .locals 6
    .param p0, "f"    # Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;
    .param p1, "orig"    # [B

    .line 265
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 266
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 267
    .local v1, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v1, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 268
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 270
    .local v2, "origCRC32":J
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->getNameCRC32()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 272
    :try_start_0
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->getUnicodeName()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 274
    :catch_0
    move-exception v4

    .line 279
    .local v4, "ex":Ljava/io/IOException;
    return-object v0

    .line 283
    .end local v1    # "crc32":Ljava/util/zip/CRC32;
    .end local v2    # "origCRC32":J
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_0
    return-object v0
.end method

.method static longToBig(J)Ljava/math/BigInteger;
    .locals 4
    .param p0, "l"    # J

    .line 153
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    .line 155
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 158
    long-to-int v0, p0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->adjustToLong(I)J

    move-result-wide p0

    .line 160
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative longs < -2^31 not permitted: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reverse([B)[B
    .locals 4
    .param p0, "array"    # [B

    .line 118
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 119
    .local v0, "z":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 120
    aget-byte v2, p0, v1

    .line 121
    .local v2, "x":B
    sub-int v3, v0, v1

    aget-byte v3, p0, v3

    aput-byte v3, p0, v1

    .line 122
    sub-int v3, v0, v1

    aput-byte v2, p0, v3

    .line 119
    .end local v2    # "x":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method static setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V
    .locals 5
    .param p0, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p1, "originalNameBytes"    # [B
    .param p2, "commentBytes"    # [B

    .line 235
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;

    .line 237
    .local v0, "name":Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "originalName":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "newName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 244
    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    if-lez v3, :cond_1

    .line 245
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;->UCOM_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;

    .line 247
    .local v3, "cmt":Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;
    invoke-static {v3, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "newComment":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 250
    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setComment(Ljava/lang/String;)V

    .line 253
    .end local v3    # "cmt":Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;
    .end local v4    # "newComment":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static signedByteToUnsignedInt(B)I
    .locals 1
    .param p0, "b"    # B

    .line 172
    if-ltz p0, :cond_0

    .line 173
    return p0

    .line 175
    :cond_0
    add-int/lit16 v0, p0, 0x100

    return v0
.end method

.method private static supportsEncryptionOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1
    .param p0, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 319
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesEncryption()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static supportsMethodOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 2
    .param p0, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 329
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static toDosTime(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .locals 3
    .param p0, "time"    # Ljava/util/Date;

    .line 43
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    return-object v0
.end method

.method public static toDosTime(J[BI)V
    .locals 1
    .param p0, "t"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    .line 71
    return-void
.end method

.method static toDosTime(Ljava/util/Calendar;J[BI)V
    .locals 7
    .param p0, "c"    # Ljava/util/Calendar;
    .param p1, "t"    # J
    .param p3, "buf"    # [B
    .param p4, "offset"    # I

    .line 74
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 77
    .local v1, "year":I
    const/16 v2, 0x7bc

    if-ge v1, v2, :cond_0

    .line 78
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->DOS_TIME_MIN:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p3, p4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-void

    .line 81
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 82
    .local v2, "month":I
    add-int/lit16 v3, v1, -0x7bc

    shl-int/lit8 v3, v3, 0x19

    shl-int/lit8 v4, v2, 0x15

    or-int/2addr v3, v4

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/16 v5, 0xb

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v5, v6, 0xb

    or-int/2addr v3, v5

    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    shl-int/lit8 v4, v5, 0x5

    or-int/2addr v3, v4

    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    shr-int/lit8 v0, v4, 0x1

    or-int/2addr v0, v3

    int-to-long v3, v0

    .line 88
    .local v3, "value":J
    invoke-static {v3, v4, p3, p4}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 89
    return-void
.end method

.method public static toDosTime(J)[B
    .locals 2
    .param p0, "t"    # J

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 55
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J[BI)V

    .line 56
    return-object v0
.end method

.method public static unsignedIntToSignedByte(I)B
    .locals 3
    .param p0, "i"    # I

    .line 187
    const/16 v0, 0xff

    if-gt p0, v0, :cond_1

    if-ltz p0, :cond_1

    .line 190
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 191
    int-to-byte v0, p0

    return v0

    .line 193
    :cond_0
    add-int/lit16 v0, p0, -0x100

    int-to-byte v0, v0

    return v0

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only convert non-negative integers between [0,255] to byte: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
