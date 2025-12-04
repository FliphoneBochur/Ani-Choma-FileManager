.class public Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;
.super Ljava/lang/Object;
.source "X7875_NewUnix.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final ONE_THOUSAND:Ljava/math/BigInteger;

.field private static final ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private gid:Ljava/math/BigInteger;

.field private uid:Ljava/math/BigInteger;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x7875

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 58
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 59
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ONE_THOUSAND:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->reset()V

    .line 77
    return-void
.end method

.method private reset()V
    .locals 1

    .line 244
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ONE_THOUSAND:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 245
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 246
    return-void
.end method

.method static trimLeadingZeroesForceMinLength([B)[B
    .locals 5
    .param p0, "array"    # [B

    .line 296
    if-nez p0, :cond_0

    .line 297
    return-object p0

    .line 300
    :cond_0
    const/4 v0, 0x0

    .line 301
    .local v0, "pos":I
    move-object v1, p0

    .local v1, "arr$":[B
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3

    .line 302
    .local v4, "b":B
    if-nez v4, :cond_1

    .line 303
    nop

    .end local v4    # "b":B
    add-int/lit8 v0, v0, 0x1

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "arr$":[B
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    const/4 v1, 0x1

    .line 348
    .local v1, "MIN_LENGTH":I
    array-length v2, p0

    sub-int/2addr v2, v0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    .line 349
    .local v2, "trimmedArray":[B
    array-length v3, v2

    array-length v4, p0

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    .line 350
    .local v3, "startPos":I
    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 262
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 267
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 268
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    .line 270
    .local v0, "xf":Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;
    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    iget v3, v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 272
    .end local v0    # "xf":Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;
    :cond_1
    return v1
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    .line 199
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 150
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getGID()J
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->bigToLong(Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 86
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 7

    .line 161
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 162
    .local v0, "uidBytes":[B
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 167
    .local v1, "gidBytes":[B
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v0

    .line 168
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v1

    .line 175
    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 178
    .local v2, "data":[B
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    .line 179
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, "pos":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    move-result v5

    aput-byte v5, v2, v3

    .line 183
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    array-length v5, v0

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    move-result v5

    aput-byte v5, v2, v4

    .line 184
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    array-length v4, v0

    add-int/2addr v3, v4

    .line 186
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    array-length v6, v1

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    move-result v6

    aput-byte v6, v2, v3

    .line 187
    array-length v3, v1

    invoke-static {v1, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    return-object v2
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 4

    .line 135
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v0

    array-length v0, v0

    .line 136
    .local v0, "uidSize":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v1

    array-length v1, v1

    .line 139
    .local v1, "gidSize":I
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    add-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v2
.end method

.method public getUID()J
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->bigToLong(Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 277
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    const v1, -0x12d687

    mul-int/2addr v0, v1

    .line 281
    .local v0, "hc":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 282
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 283
    return v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 236
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->reset()V

    .line 215
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    aget-byte p2, p1, p2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    .line 216
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    move-result v0

    .line 217
    .local v0, "uidSize":I
    new-array v1, v0, [B

    .line 218
    .local v1, "uidBytes":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    add-int/2addr p2, v0

    .line 220
    new-instance v3, Ljava/math/BigInteger;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 222
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .local v3, "offset":I
    aget-byte p2, p1, p2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    move-result p2

    .line 223
    .local p2, "gidSize":I
    new-array v4, p2, [B

    .line 224
    .local v4, "gidBytes":[B
    invoke-static {p1, v3, v4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 226
    return-void
.end method

.method public setGID(J)V
    .locals 1
    .param p1, "l"    # J

    .line 124
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->longToBig(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 125
    return-void
.end method

.method public setUID(J)V
    .locals 1
    .param p1, "l"    # J

    .line 115
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->longToBig(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x7875 Zip Extra Field: UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " GID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
