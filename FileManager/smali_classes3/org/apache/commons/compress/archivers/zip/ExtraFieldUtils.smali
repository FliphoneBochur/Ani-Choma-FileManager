.class public Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;
.super Ljava/lang/Object;
.source "ExtraFieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;
    }
.end annotation


# static fields
.field private static final WORD:I = 0x4

.field private static final implementations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipShort;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    .line 42
    const-class v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 43
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 44
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 45
    const-class v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 46
    const-class v0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 47
    const-class v0, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 48
    const-class v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 49
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 50
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X0014_X509Certificates;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 51
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X0015_CertificateIdForFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 52
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X0016_CertificateIdForCentralDirectory;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 53
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 54
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X0019_EncryptionRecipientCertificateList;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method public static createExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2
    .param p0, "headerId"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 87
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 88
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v1

    .line 91
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;-><init>()V

    .line 92
    .local v1, "u":Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;
    invoke-virtual {v1, p0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setHeaderId(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 93
    return-object v1
.end method

.method public static mergeCentralDirectoryData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B
    .locals 11
    .param p0, "data"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 241
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, v2

    aget-object v0, p0, v0

    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 243
    .local v0, "lastIsUnparseableHolder":Z
    :goto_0
    array-length v3, p0

    if-eqz v0, :cond_1

    sub-int/2addr v3, v2

    .line 246
    .local v3, "regularExtraFieldCount":I
    :cond_1
    mul-int/lit8 v4, v3, 0x4

    .line 247
    .local v4, "sum":I
    move-object v5, p0

    .local v5, "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 248
    .local v8, "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v9

    add-int/2addr v4, v9

    .line 247
    .end local v8    # "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 250
    .end local v5    # "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_2
    new-array v5, v4, [B

    .line 251
    .local v5, "result":[B
    const/4 v6, 0x0

    .line 252
    .local v6, "start":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_4

    .line 253
    aget-object v8, p0, v7

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v1, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    aget-object v8, p0, v7

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v8

    add-int/lit8 v10, v6, 0x2

    invoke-static {v8, v1, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    add-int/lit8 v6, v6, 0x4

    .line 258
    aget-object v8, p0, v7

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v8

    .line 259
    .local v8, "local":[B
    if-eqz v8, :cond_3

    .line 260
    array-length v9, v8

    invoke-static {v8, v1, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length v9, v8

    add-int/2addr v6, v9

    .line 252
    .end local v8    # "local":[B
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 264
    .end local v7    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 265
    array-length v7, p0

    sub-int/2addr v7, v2

    aget-object v2, p0, v7

    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v2

    .line 266
    .local v2, "local":[B
    if-eqz v2, :cond_5

    .line 267
    array-length v7, v2

    invoke-static {v2, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    .end local v2    # "local":[B
    :cond_5
    return-object v5
.end method

.method public static mergeLocalFileDataData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B
    .locals 11
    .param p0, "data"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 202
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, v2

    aget-object v0, p0, v0

    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 204
    .local v0, "lastIsUnparseableHolder":Z
    :goto_0
    array-length v3, p0

    if-eqz v0, :cond_1

    sub-int/2addr v3, v2

    .line 207
    .local v3, "regularExtraFieldCount":I
    :cond_1
    mul-int/lit8 v4, v3, 0x4

    .line 208
    .local v4, "sum":I
    move-object v5, p0

    .local v5, "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 209
    .local v8, "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v9

    add-int/2addr v4, v9

    .line 208
    .end local v8    # "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 212
    .end local v5    # "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_2
    new-array v5, v4, [B

    .line 213
    .local v5, "result":[B
    const/4 v6, 0x0

    .line 214
    .local v6, "start":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_4

    .line 215
    aget-object v8, p0, v7

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v1, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    aget-object v8, p0, v7

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v8

    add-int/lit8 v10, v6, 0x2

    invoke-static {v8, v1, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    add-int/lit8 v6, v6, 0x4

    .line 220
    aget-object v8, p0, v7

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v8

    .line 221
    .local v8, "local":[B
    if-eqz v8, :cond_3

    .line 222
    array-length v9, v8

    invoke-static {v8, v1, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    array-length v9, v8

    add-int/2addr v6, v9

    .line 214
    .end local v8    # "local":[B
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 226
    .end local v7    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 227
    array-length v7, p0

    sub-int/2addr v7, v2

    aget-object v2, p0, v7

    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v2

    .line 228
    .local v2, "local":[B
    if-eqz v2, :cond_5

    .line 229
    array-length v7, v2

    invoke-static {v2, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    .end local v2    # "local":[B
    :cond_5
    return-object v5
.end method

.method public static parse([B)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 105
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BZ)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 119
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "local"    # Z
    .param p2, "onUnparseableData"    # Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    const/4 v1, 0x0

    .line 141
    .local v1, "start":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-gt v1, v2, :cond_6

    .line 142
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 143
    .local v2, "headerId":Lorg/apache/commons/compress/archivers/zip/ZipShort;
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    add-int/lit8 v4, v1, 0x2

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v3

    .line 144
    .local v3, "length":I
    add-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v3

    array-length v5, p0

    if-le v4, v5, :cond_4

    .line 145
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 154
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;-><init>()V

    .line 156
    .local v4, "field":Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
    if-eqz p1, :cond_0

    .line 157
    array-length v5, p0

    sub-int/2addr v5, v1

    invoke-virtual {v4, p0, v1, v5}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    goto :goto_1

    .line 160
    :cond_0
    array-length v5, p0

    sub-int/2addr v5, v1

    invoke-virtual {v4, p0, v1, v5}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->parseFromCentralDirectoryData([BII)V

    .line 163
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 171
    .end local v4    # "field":Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
    :cond_1
    new-instance v4, Ljava/util/zip/ZipException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown UnparseableExtraField key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_2
    :goto_2
    goto :goto_4

    .line 147
    :cond_3
    new-instance v4, Ljava/util/zip/ZipException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad extra field starting at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".  Block length of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes exceeds remaining"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " data of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p0

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :cond_4
    :try_start_0
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->createExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v4

    .line 177
    .local v4, "ze":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    if-eqz p1, :cond_5

    .line 178
    add-int/lit8 v5, v1, 0x4

    invoke-interface {v4, p0, v5, v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    goto :goto_3

    .line 180
    :cond_5
    add-int/lit8 v5, v1, 0x4

    invoke-interface {v4, p0, v5, v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromCentralDirectoryData([BII)V

    .line 183
    :goto_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    nop

    .line 189
    .end local v4    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    add-int/lit8 v4, v3, 0x4

    add-int/2addr v1, v4

    .line 190
    .end local v2    # "headerId":Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .end local v3    # "length":I
    goto/16 :goto_0

    .line 186
    .restart local v2    # "headerId":Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .restart local v3    # "length":I
    :catch_0
    move-exception v4

    .line 187
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/util/zip/ZipException;

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipException;

    throw v5

    .line 184
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    .line 185
    .local v4, "ie":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/util/zip/ZipException;

    invoke-virtual {v4}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipException;

    throw v5

    .line 192
    .end local v2    # "headerId":Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .end local v3    # "length":I
    .end local v4    # "ie":Ljava/lang/InstantiationException;
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 193
    .local v2, "result":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v3
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 66
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 67
    .local v0, "ze":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 75
    .end local v0    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ie":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'s no-arg constructor is not public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "ie":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "ie":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not a concrete class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    .end local v0    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 69
    .local v0, "cc":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t implement ZipExtraField"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
