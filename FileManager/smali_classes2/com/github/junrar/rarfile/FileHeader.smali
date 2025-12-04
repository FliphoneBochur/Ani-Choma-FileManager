.class public Lcom/github/junrar/rarfile/FileHeader;
.super Lcom/github/junrar/rarfile/BlockHeader;
.source "FileHeader.java"


# static fields
.field private static final NEWLHD_SIZE:B = 0x20t

.field private static final SALT_SIZE:B = 0x8t


# instance fields
.field private aTime:Ljava/util/Date;

.field private arcTime:Ljava/util/Date;

.field private cTime:Ljava/util/Date;

.field private fileAttr:I

.field private final fileCRC:I

.field private fileName:Ljava/lang/String;

.field private final fileNameBytes:[B

.field private fileNameW:Ljava/lang/String;

.field private final fileTime:I

.field private fullPackSize:J

.field private fullUnpackSize:J

.field private highPackSize:I

.field private highUnpackSize:I

.field private final hostOS:Lcom/github/junrar/rarfile/HostSystem;

.field private final logger:Lorg/apache/commons/logging/Log;

.field private mTime:Ljava/util/Date;

.field private nameSize:S

.field private recoverySectors:I

.field private final salt:[B

.field private subData:[B

.field private subFlags:I

.field private unpMethod:B

.field private unpSize:J

.field private unpVersion:B


# direct methods
.method public constructor <init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V
    .locals 8
    .param p1, "bh"    # Lcom/github/junrar/rarfile/BlockHeader;
    .param p2, "fileHeader"    # [B

    .line 90
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BlockHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;)V

    .line 38
    const-class v0, Lcom/github/junrar/rarfile/FileHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 69
    const/16 v0, 0x8

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/github/junrar/rarfile/FileHeader;->salt:[B

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Lcom/github/junrar/rarfile/FileHeader;->recoverySectors:I

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "position":I
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndianAsLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->unpSize:J

    .line 94
    const/4 v2, 0x4

    add-int/2addr v1, v2

    .line 95
    aget-byte v3, p2, v2

    invoke-static {v3}, Lcom/github/junrar/rarfile/HostSystem;->findHostSystem(B)Lcom/github/junrar/rarfile/HostSystem;

    move-result-object v3

    iput-object v3, p0, Lcom/github/junrar/rarfile/FileHeader;->hostOS:Lcom/github/junrar/rarfile/HostSystem;

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 98
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v3

    iput v3, p0, Lcom/github/junrar/rarfile/FileHeader;->fileCRC:I

    .line 99
    add-int/2addr v1, v2

    .line 101
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v3

    iput v3, p0, Lcom/github/junrar/rarfile/FileHeader;->fileTime:I

    .line 102
    add-int/2addr v1, v2

    .line 104
    iget-byte v3, p0, Lcom/github/junrar/rarfile/FileHeader;->unpVersion:B

    const/16 v4, 0xd

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/github/junrar/rarfile/FileHeader;->unpVersion:B

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    iget-byte v3, p0, Lcom/github/junrar/rarfile/FileHeader;->unpMethod:B

    const/16 v4, 0xe

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/github/junrar/rarfile/FileHeader;->unpMethod:B

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v3

    iput-short v3, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    .line 109
    add-int/lit8 v1, v1, 0x2

    .line 111
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v3

    iput v3, p0, Lcom/github/junrar/rarfile/FileHeader;->fileAttr:I

    .line 112
    add-int/2addr v1, v2

    .line 113
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isLargeBlock()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 114
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v3

    iput v3, p0, Lcom/github/junrar/rarfile/FileHeader;->highPackSize:I

    .line 115
    add-int/lit8 v1, v1, 0x4

    .line 117
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v3

    iput v3, p0, Lcom/github/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 118
    add-int/2addr v1, v2

    goto :goto_0

    .line 120
    :cond_0
    iput v4, p0, Lcom/github/junrar/rarfile/FileHeader;->highPackSize:I

    .line 121
    iput v4, p0, Lcom/github/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 122
    iget-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->unpSize:J

    const-wide/16 v5, -0x1

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    .line 124
    iput-wide v5, p0, Lcom/github/junrar/rarfile/FileHeader;->unpSize:J

    .line 125
    const v2, 0x7fffffff

    iput v2, p0, Lcom/github/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 129
    :cond_1
    :goto_0
    iget-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    iget v5, p0, Lcom/github/junrar/rarfile/FileHeader;->highPackSize:I

    int-to-long v5, v5

    or-long/2addr v2, v5

    iput-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    .line 130
    const/16 v5, 0x20

    shl-long/2addr v2, v5

    iput-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    .line 131
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getPackSize()I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v2, v6

    iput-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    .line 133
    iget-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    iget v6, p0, Lcom/github/junrar/rarfile/FileHeader;->highUnpackSize:I

    int-to-long v6, v6

    or-long/2addr v2, v6

    iput-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 134
    shl-long/2addr v2, v5

    iput-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 135
    iget-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->unpSize:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 137
    iget-short v2, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    const/16 v3, 0x1000

    if-le v2, v3, :cond_2

    move v2, v3

    :cond_2
    iput-short v2, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    .line 139
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    .line 140
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-short v3, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    if-ge v2, v3, :cond_3

    .line 141
    iget-object v3, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    aget-byte v6, p2, v1

    aput-byte v6, v3, v2

    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isFileHeader()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 146
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_6

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "length":I
    iput-object v3, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 149
    iput-object v3, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 151
    :goto_2
    iget-object v3, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    array-length v6, v3

    if-ge v2, v6, :cond_4

    aget-byte v3, v3, v2

    if-eqz v3, :cond_4

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 154
    :cond_4
    new-array v3, v2, [B

    .line 155
    .local v3, "name":[B
    iget-object v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    array-length v7, v3

    invoke-static {v6, v4, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 157
    iget-short v4, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    if-eq v2, v4, :cond_5

    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 159
    iget-object v4, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-static {v4, v2}, Lcom/github/junrar/rarfile/FileNameDecoder;->decode([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 161
    .end local v2    # "length":I
    .end local v3    # "name":[B
    :cond_5
    goto :goto_3

    .line 162
    :cond_6
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 163
    iput-object v3, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 167
    :cond_7
    :goto_3
    sget-object v2, Lcom/github/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    iget-byte v3, p0, Lcom/github/junrar/rarfile/FileHeader;->headerType:B

    invoke-virtual {v2, v3}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 168
    iget-short v2, p0, Lcom/github/junrar/rarfile/FileHeader;->headerSize:S

    sub-int/2addr v2, v5

    iget-short v3, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    sub-int/2addr v2, v3

    .line 169
    .local v2, "datasize":I
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasSalt()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 170
    add-int/lit8 v2, v2, -0x8

    .line 172
    :cond_8
    if-lez v2, :cond_9

    .line 173
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    .line 174
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_9

    .line 175
    iget-object v4, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    aget-byte v5, p2, v1

    aput-byte v5, v4, v3

    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 180
    .end local v3    # "i":I
    :cond_9
    sget-object v3, Lcom/github/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_RR:Lcom/github/junrar/rarfile/NewSubHeaderType;

    iget-object v4, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-virtual {v3, v4}, Lcom/github/junrar/rarfile/NewSubHeaderType;->byteEquals([B)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 181
    iget-object v3, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    aget-byte v4, v3, v0

    const/16 v5, 0x9

    aget-byte v5, v3, v5

    shl-int/2addr v5, v0

    add-int/2addr v4, v5

    const/16 v5, 0xa

    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    const/16 v5, 0xb

    aget-byte v3, v3, v5

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v4, v3

    iput v4, p0, Lcom/github/junrar/rarfile/FileHeader;->recoverySectors:I

    .line 186
    .end local v2    # "datasize":I
    :cond_a
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasSalt()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 187
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_b

    .line 188
    iget-object v3, p0, Lcom/github/junrar/rarfile/FileHeader;->salt:[B

    aget-byte v4, p2, v1

    aput-byte v4, v3, v2

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 192
    .end local v2    # "i":I
    :cond_b
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileTime:I

    invoke-direct {p0, v0}, Lcom/github/junrar/rarfile/FileHeader;->getDateDos(I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    .line 195
    return-void
.end method

.method private getDateDos(I)Ljava/util/Date;
    .locals 4
    .param p1, "time"    # I

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 227
    .local v0, "cal":Ljava/util/Calendar;
    ushr-int/lit8 v1, p1, 0x19

    add-int/lit16 v1, v1, 0x7bc

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 228
    ushr-int/lit8 v1, p1, 0x15

    and-int/lit8 v1, v1, 0xf

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 229
    ushr-int/lit8 v1, p1, 0x10

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 230
    ushr-int/lit8 v1, p1, 0xb

    and-int/lit8 v1, v1, 0x1f

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 231
    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 232
    and-int/lit8 v1, p1, 0x1f

    mul-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 233
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getATime()Ljava/util/Date;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->aTime:Ljava/util/Date;

    return-object v0
.end method

.method public getArcTime()Ljava/util/Date;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->arcTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCTime()Ljava/util/Date;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->cTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFileAttr()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileAttr:I

    return v0
.end method

.method public getFileCRC()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileCRC:I

    return v0
.end method

.method public getFileNameByteArray()[B
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    return-object v0
.end method

.method public getFileNameString()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameW()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPackSize()J
    .locals 2

    .line 345
    iget-wide v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    return-wide v0
.end method

.method public getFullUnpackSize()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    return-wide v0
.end method

.method public getHighPackSize()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->highPackSize:I

    return v0
.end method

.method public getHighUnpackSize()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->highUnpackSize:I

    return v0
.end method

.method public getHostOS()Lcom/github/junrar/rarfile/HostSystem;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->hostOS:Lcom/github/junrar/rarfile/HostSystem;

    return-object v0
.end method

.method public getMTime()Ljava/util/Date;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public getNameSize()S
    .locals 1

    .line 313
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    return v0
.end method

.method public getRecoverySectors()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->recoverySectors:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->salt:[B

    return-object v0
.end method

.method public getSubData()[B
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    return-object v0
.end method

.method public getSubFlags()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->subFlags:I

    return v0
.end method

.method public getUnpMethod()B
    .locals 1

    .line 333
    iget-byte v0, p0, Lcom/github/junrar/rarfile/FileHeader;->unpMethod:B

    return v0
.end method

.method public getUnpSize()J
    .locals 2

    .line 337
    iget-wide v0, p0, Lcom/github/junrar/rarfile/FileHeader;->unpSize:J

    return-wide v0
.end method

.method public getUnpVersion()B
    .locals 1

    .line 341
    iget-byte v0, p0, Lcom/github/junrar/rarfile/FileHeader;->unpVersion:B

    return v0
.end method

.method public hasSalt()Z
    .locals 1

    .line 407
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 420
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    const/16 v1, 0xe0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 390
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFileHeader()Z
    .locals 2

    .line 403
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lcom/github/junrar/rarfile/FileHeader;->headerType:B

    invoke-virtual {v0, v1}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    return v0
.end method

.method public isLargeBlock()Z
    .locals 1

    .line 411
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSolid()Z
    .locals 1

    .line 381
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitAfter()Z
    .locals 1

    .line 363
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitBefore()Z
    .locals 2

    .line 372
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUnicode()Z
    .locals 1

    .line 399
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public print()V
    .locals 4

    .line 199
    invoke-super {p0}, Lcom/github/junrar/rarfile/BlockHeader;->print()V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, "str":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unpSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getUnpSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nHostOS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->hostOS:Lcom/github/junrar/rarfile/HostSystem;

    invoke-virtual {v2}, Lcom/github/junrar/rarfile/HostSystem;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nunpMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getUnpMethod()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nunpVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfullpackedsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfullunpackedsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisEncrypted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisfileHeader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isFileHeader()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSolid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isSolid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSplitafter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSplitBefore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isSplitBefore()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nunpSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getUnpSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndataSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getDataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisUnicode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasVolumeNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasVolumeNumber()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasArchiveDataCRC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasArchiveDataCRC()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasSalt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasSalt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasEncryptVersions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasEncryptVersion()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSubBlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isSubBlock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lcom/github/junrar/rarfile/FileHeader;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public setATime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .line 249
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->aTime:Ljava/util/Date;

    .line 250
    return-void
.end method

.method public setArcTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "arcTime"    # Ljava/util/Date;

    .line 241
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->arcTime:Ljava/util/Date;

    .line 242
    return-void
.end method

.method public setCTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .line 257
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->cTime:Ljava/util/Date;

    .line 258
    return-void
.end method

.method public setFileAttr(I)V
    .locals 0
    .param p1, "fileAttr"    # I

    .line 265
    iput p1, p0, Lcom/github/junrar/rarfile/FileHeader;->fileAttr:I

    .line 266
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 281
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setFileNameW(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileNameW"    # Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setMTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .line 309
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    .line 310
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 354
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
