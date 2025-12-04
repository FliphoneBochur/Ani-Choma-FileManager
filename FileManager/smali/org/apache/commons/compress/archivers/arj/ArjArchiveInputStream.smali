.class public Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ArjArchiveInputStream.java"


# static fields
.field private static final ARJ_MAGIC_1:I = 0x60

.field private static final ARJ_MAGIC_2:I = 0xea


# instance fields
.field private final charsetName:Ljava/lang/String;

.field private currentInputStream:Ljava/io/InputStream;

.field private currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

.field private final in:Ljava/io/DataInputStream;

.field private final mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 83
    const-string v0, "CP437"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 60
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 61
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    .line 63
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readMainHeader()Lorg/apache/commons/compress/archivers/arj/MainHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    .line 64
    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 72
    nop

    .line 73
    return-void

    .line 68
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "Multi-volume ARJ files are unsupported"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "charsetName":Ljava/lang/String;
    throw v0

    .line 65
    .restart local p0    # "this":Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "charsetName":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "Encrypted ARJ files are unsupported"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "charsetName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .restart local p0    # "this":Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "charsetName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ioException":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 293
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x60

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xea

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private read16(Ljava/io/DataInputStream;)I
    .locals 2
    .param p1, "dataIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 99
    .local v0, "value":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->count(I)V

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x10

    return v1
.end method

.method private read32(Ljava/io/DataInputStream;)I
    .locals 2
    .param p1, "dataIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 105
    .local v0, "value":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->count(I)V

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    return v1
.end method

.method private read8(Ljava/io/DataInputStream;)I
    .locals 2
    .param p1, "dataIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 93
    .local v0, "value":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->count(I)V

    .line 94
    return v0
.end method

.method private readExtraData(ILjava/io/DataInputStream;Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V
    .locals 2
    .param p1, "firstHeaderSize"    # I
    .param p2, "firstHeader"    # Ljava/io/DataInputStream;
    .param p3, "localFileHeader"    # Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    .line 272
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->extendedFilePosition:I

    .line 273
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    .line 274
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeAccessed:I

    .line 275
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeCreated:I

    .line 276
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSizeEvenForVolumes:I

    .line 277
    const-wide/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->pushedBackBytes(J)V

    .line 279
    :cond_0
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->pushedBackBytes(J)V

    .line 281
    :cond_1
    return-void
.end method

.method private readFully(Ljava/io/DataInputStream;[B)V
    .locals 1
    .param p1, "dataIn"    # Ljava/io/DataInputStream;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 125
    array-length v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->count(I)V

    .line 126
    return-void
.end method

.method private readHeader()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "found":Z
    const/4 v1, 0x0

    .line 132
    .local v1, "basicHeaderBytes":[B
    :goto_0
    const/4 v2, 0x0

    .line 133
    .local v2, "first":I
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read8(Ljava/io/DataInputStream;)I

    move-result v3

    .line 135
    .local v3, "second":I
    :cond_0
    move v2, v3

    .line 136
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read8(Ljava/io/DataInputStream;)I

    move-result v3

    .line 137
    const/16 v4, 0x60

    if-eq v2, v4, :cond_1

    const/16 v4, 0xea

    if-ne v3, v4, :cond_0

    .line 138
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    .line 139
    .local v4, "basicHeaderSize":I
    if-nez v4, :cond_2

    .line 141
    const/4 v5, 0x0

    return-object v5

    .line 143
    :cond_2
    const/16 v5, 0xa28

    if-gt v4, v5, :cond_3

    .line 144
    new-array v1, v4, [B

    .line 145
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v5, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 146
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 147
    .local v5, "basicHeaderCrc32":J
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 148
    .local v7, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v7, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 149
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-nez v8, :cond_3

    .line 150
    const/4 v0, 0x1

    .line 153
    .end local v2    # "first":I
    .end local v3    # "second":I
    .end local v4    # "basicHeaderSize":I
    .end local v5    # "basicHeaderCrc32":J
    .end local v7    # "crc32":Ljava/util/zip/CRC32;
    :cond_3
    if-eqz v0, :cond_4

    .line 154
    return-object v1

    .line 153
    :cond_4
    goto :goto_0
.end method

.method private readLocalFileHeader()Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readHeader()[B

    move-result-object v1

    .line 216
    .local v1, "basicHeaderBytes":[B
    if-nez v1, :cond_0

    .line 217
    const/4 v2, 0x0

    return-object v2

    .line 219
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 222
    .local v2, "basicHeader":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 223
    .local v3, "firstHeaderSize":I
    add-int/lit8 v4, v3, -0x1

    new-array v4, v4, [B

    .line 224
    .local v4, "firstHeaderBytes":[B
    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 225
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 228
    .local v5, "firstHeader":Ljava/io/DataInputStream;
    new-instance v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v6}, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;-><init>()V

    .line 229
    .local v6, "localFileHeader":Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->archiverVersionNumber:I

    .line 230
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->minVersionToExtract:I

    .line 231
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->hostOS:I

    .line 232
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->arjFlags:I

    .line 233
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    .line 234
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileType:I

    .line 235
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->reserved:I

    .line 236
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeModified:I

    .line 237
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->compressedSize:J

    .line 238
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v9

    iput-wide v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    .line 239
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v9

    iput-wide v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalCrc32:J

    .line 240
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileSpecPosition:I

    .line 241
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileAccessMode:I

    .line 242
    const-wide/16 v7, 0x14

    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->pushedBackBytes(J)V

    .line 243
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->firstChapter:I

    .line 244
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->lastChapter:I

    .line 246
    invoke-direct {v0, v3, v5, v6}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readExtraData(ILjava/io/DataInputStream;Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V

    .line 248
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->name:Ljava/lang/String;

    .line 249
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->comment:Ljava/lang/String;

    .line 251
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v7, "extendedHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :goto_0
    iget-object v8, v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {v0, v8}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v8

    move v11, v8

    .local v11, "extendedHeaderSize":I
    if-lez v8, :cond_2

    .line 254
    new-array v8, v11, [B

    .line 255
    .local v8, "extendedHeaderBytes":[B
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {v0, v12, v8}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 256
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {v0, v12}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v12

    int-to-long v12, v12

    and-long/2addr v12, v9

    .line 257
    .local v12, "extendedHeaderCrc32":J
    new-instance v14, Ljava/util/zip/CRC32;

    invoke-direct {v14}, Ljava/util/zip/CRC32;-><init>()V

    .line 258
    .local v14, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v14, v8}, Ljava/util/zip/CRC32;->update([B)V

    .line 259
    invoke-virtual {v14}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v15

    cmp-long v15, v12, v15

    if-nez v15, :cond_1

    .line 262
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v8    # "extendedHeaderBytes":[B
    .end local v12    # "extendedHeaderCrc32":J
    .end local v14    # "crc32":Ljava/util/zip/CRC32;
    goto :goto_0

    .line 260
    .restart local v8    # "extendedHeaderBytes":[B
    .restart local v12    # "extendedHeaderCrc32":J
    .restart local v14    # "crc32":Ljava/util/zip/CRC32;
    :cond_1
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Extended header CRC32 verification failure"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 264
    .end local v8    # "extendedHeaderBytes":[B
    .end local v12    # "extendedHeaderCrc32":J
    .end local v14    # "crc32":Ljava/util/zip/CRC32;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [[B

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[B

    iput-object v8, v6, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->extendedHeaders:[[B

    .line 266
    return-object v6
.end method

.method private readMainHeader()Lorg/apache/commons/compress/archivers/arj/MainHeader;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readHeader()[B

    move-result-object v0

    .line 159
    .local v0, "basicHeaderBytes":[B
    if-eqz v0, :cond_3

    .line 162
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    .local v1, "basicHeader":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 166
    .local v2, "firstHeaderSize":I
    add-int/lit8 v3, v2, -0x1

    new-array v3, v3, [B

    .line 167
    .local v3, "firstHeaderBytes":[B
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 168
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 171
    .local v4, "firstHeader":Ljava/io/DataInputStream;
    new-instance v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;

    invoke-direct {v5}, Lorg/apache/commons/compress/archivers/arj/MainHeader;-><init>()V

    .line 172
    .local v5, "hdr":Lorg/apache/commons/compress/archivers/arj/MainHeader;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->archiverVersionNumber:I

    .line 173
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->minVersionToExtract:I

    .line 174
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->hostOS:I

    .line 175
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    .line 176
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityVersion:I

    .line 177
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->fileType:I

    .line 178
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->reserved:I

    .line 179
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->dateTimeCreated:I

    .line 180
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->dateTimeModified:I

    .line 181
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->archiveSize:J

    .line 182
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityEnvelopeFilePosition:I

    .line 183
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->fileSpecPosition:I

    .line 184
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityEnvelopeLength:I

    .line 185
    const-wide/16 v6, 0x14

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->pushedBackBytes(J)V

    .line 186
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->encryptionVersion:I

    .line 187
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->lastChapter:I

    .line 189
    const/16 v6, 0x21

    if-lt v2, v6, :cond_0

    .line 190
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjProtectionFactor:I

    .line 191
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags2:I

    .line 192
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 193
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 196
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->name:Ljava/lang/String;

    .line 197
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->comment:Ljava/lang/String;

    .line 199
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v6

    .line 200
    .local v6, "extendedHeaderSize":I
    if-lez v6, :cond_2

    .line 201
    new-array v7, v6, [B

    iput-object v7, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    .line 202
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    iget-object v10, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    invoke-direct {p0, v7, v10}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 203
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v7}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v7

    int-to-long v10, v7

    and-long v7, v10, v8

    .line 204
    .local v7, "extendedHeaderCrc32":J
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 205
    .local v9, "crc32":Ljava/util/zip/CRC32;
    iget-object v10, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    invoke-virtual {v9, v10}, Ljava/util/zip/CRC32;->update([B)V

    .line 206
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    cmp-long v10, v7, v10

    if-nez v10, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Extended header CRC32 verification failure"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 211
    .end local v7    # "extendedHeaderCrc32":J
    .end local v9    # "crc32":Ljava/util/zip/CRC32;
    :cond_2
    :goto_0
    return-object v5

    .line 160
    .end local v1    # "basicHeader":Ljava/io/DataInputStream;
    .end local v2    # "firstHeaderSize":I
    .end local v3    # "firstHeaderBytes":[B
    .end local v4    # "firstHeader":Ljava/io/DataInputStream;
    .end local v5    # "hdr":Lorg/apache/commons/compress/archivers/arj/MainHeader;
    .end local v6    # "extendedHeaderSize":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Archive ends without any headers"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "dataIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    move v2, v1

    .local v2, "nextByte":I
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 116
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 119
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 1
    .param p1, "ae"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 339
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 89
    return-void
.end method

.method public getArchiveComment()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveName()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 318
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 319
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 320
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 321
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 324
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readLocalFileHeader()Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 325
    if-eqz v0, :cond_2

    .line 326
    new-instance v0, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->compressedSize:J

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 327
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget-wide v3, v1, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget-wide v5, v1, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalCrc32:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 331
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V

    return-object v0

    .line 333
    :cond_2
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 334
    return-object v1
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

    .line 345
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    if-eqz v0, :cond_1

    .line 348
    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0

    .line 349
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported compression method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v2, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current arj entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
