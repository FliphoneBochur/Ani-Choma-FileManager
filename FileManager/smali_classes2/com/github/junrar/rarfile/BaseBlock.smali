.class public Lcom/github/junrar/rarfile/BaseBlock;
.super Ljava/lang/Object;
.source "BaseBlock.java"


# static fields
.field public static final BaseBlockSize:S = 0x7s

.field public static final EARC_DATACRC:S = 0x2s

.field public static final EARC_NEXT_VOLUME:S = 0x1s

.field public static final EARC_REVSPACE:S = 0x4s

.field public static final EARC_VOLNUMBER:S = 0x8s

.field public static final LHD_COMMENT:S = 0x8s

.field public static final LHD_DIRECTORY:S = 0xe0s

.field public static final LHD_EXTFLAGS:S = 0x2000s

.field public static final LHD_EXTTIME:S = 0x1000s

.field public static final LHD_LARGE:S = 0x100s

.field public static final LHD_PASSWORD:S = 0x4s

.field public static final LHD_SALT:S = 0x400s

.field public static final LHD_SOLID:S = 0x10s

.field public static final LHD_SPLIT_AFTER:S = 0x2s

.field public static final LHD_SPLIT_BEFORE:S = 0x1s

.field public static final LHD_UNICODE:S = 0x200s

.field public static final LHD_VERSION:S = 0x800s

.field public static final LHD_WINDOW1024:S = 0x80s

.field public static final LHD_WINDOW128:S = 0x20s

.field public static final LHD_WINDOW2048:S = 0xa0s

.field public static final LHD_WINDOW256:S = 0x40s

.field public static final LHD_WINDOW4096:S = 0xc0s

.field public static final LHD_WINDOW512:S = 0x60s

.field public static final LHD_WINDOW64:S = 0x0s

.field public static final LHD_WINDOWMASK:S = 0xe0s

.field public static final LONG_BLOCK:S = -0x8000s

.field public static final MHD_AV:S = 0x20s

.field public static final MHD_COMMENT:S = 0x2s

.field public static final MHD_ENCRYPTVER:S = 0x200s

.field public static final MHD_FIRSTVOLUME:S = 0x100s

.field public static final MHD_LOCK:S = 0x4s

.field public static final MHD_NEWNUMBERING:S = 0x10s

.field public static final MHD_PACK_COMMENT:S = 0x10s

.field public static final MHD_PASSWORD:S = 0x80s

.field public static final MHD_PROTECT:S = 0x40s

.field public static final MHD_SOLID:S = 0x8s

.field public static final MHD_VOLUME:S = 0x1s

.field public static final SKIP_IF_UNKNOWN:S = 0x4000s


# instance fields
.field protected flags:S

.field protected headCRC:S

.field protected headerSize:S

.field protected headerType:B

.field logger:Lorg/apache/commons/logging/Log;

.field protected positionInFile:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/github/junrar/rarfile/BaseBlock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->logger:Lorg/apache/commons/logging/Log;

    .line 89
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    .line 90
    iput-byte v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    .line 91
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    .line 92
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/BaseBlock;)V
    .locals 2
    .param p1, "bb"    # Lcom/github/junrar/rarfile/BaseBlock;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/github/junrar/rarfile/BaseBlock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->logger:Lorg/apache/commons/logging/Log;

    .line 89
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    .line 90
    iput-byte v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    .line 91
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    .line 92
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    .line 102
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BaseBlock;->getFlags()S

    move-result v0

    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    .line 103
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BaseBlock;->getHeadCRC()S

    move-result v0

    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    .line 104
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->getHeaderByte()B

    move-result v0

    iput-byte v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    .line 105
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v0

    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    .line 106
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->positionInFile:J

    .line 107
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "baseBlockHeader"    # [B

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/github/junrar/rarfile/BaseBlock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->logger:Lorg/apache/commons/logging/Log;

    .line 89
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    .line 90
    iput-byte v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    .line 91
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    .line 92
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "pos":I
    invoke-static {p1, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    .line 112
    add-int/lit8 v0, v0, 0x2

    .line 113
    iget-byte v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    invoke-static {p1, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    .line 116
    add-int/lit8 v0, v0, 0x2

    .line 117
    invoke-static {p1, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    .line 118
    return-void
.end method


# virtual methods
.method public getFlags()S
    .locals 1

    .line 154
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    return v0
.end method

.method public getHeadCRC()S
    .locals 1

    .line 158
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    return v0
.end method

.method public getHeaderSize()S
    .locals 1

    .line 162
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    return v0
.end method

.method public getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;
    .locals 1

    .line 166
    iget-byte v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    invoke-static {v0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->findType(B)Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInFile()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->positionInFile:J

    return-wide v0
.end method

.method public hasArchiveDataCRC()Z
    .locals 1

    .line 122
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEncryptVersion()Z
    .locals 1

    .line 130
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVolumeNumber()Z
    .locals 1

    .line 126
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubBlock()Z
    .locals 3

    .line 138
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {v0, v1}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    return v1

    .line 141
    :cond_0
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    iget-byte v2, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {v0, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 143
    return v1

    .line 145
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public print()V
    .locals 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, "str":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeaderType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nHeadCRC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BaseBlock;->getHeadCRC()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BaseBlock;->getFlags()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nHeaderSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPosition in file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public setPositionInFile(J)V
    .locals 0
    .param p1, "positionInFile"    # J

    .line 170
    iput-wide p1, p0, Lcom/github/junrar/rarfile/BaseBlock;->positionInFile:J

    .line 171
    return-void
.end method
