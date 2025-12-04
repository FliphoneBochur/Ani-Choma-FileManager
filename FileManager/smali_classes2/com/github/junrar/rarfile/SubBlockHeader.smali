.class public Lcom/github/junrar/rarfile/SubBlockHeader;
.super Lcom/github/junrar/rarfile/BlockHeader;
.source "SubBlockHeader.java"


# static fields
.field public static final SubBlockHeaderSize:S = 0x3s


# instance fields
.field private level:B

.field private logger:Lorg/apache/commons/logging/Log;

.field private subType:S


# direct methods
.method public constructor <init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V
    .locals 3
    .param p1, "bh"    # Lcom/github/junrar/rarfile/BlockHeader;
    .param p2, "subblock"    # [B

    .line 46
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BlockHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;)V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "position":I
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->subType:S

    .line 49
    add-int/lit8 v0, v0, 0x2

    .line 50
    iget-byte v1, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->level:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->level:B

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/SubBlockHeader;)V
    .locals 1
    .param p1, "sb"    # Lcom/github/junrar/rarfile/SubBlockHeader;

    .line 39
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BlockHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;)V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 40
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/SubBlockHeader;->getSubType()Lcom/github/junrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/rarfile/SubBlockHeaderType;->getSubblocktype()S

    move-result v0

    iput-short v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->subType:S

    .line 41
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/SubBlockHeader;->getLevel()B

    move-result v0

    iput-byte v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->level:B

    .line 42
    return-void
.end method


# virtual methods
.method public getLevel()B
    .locals 1

    .line 57
    iget-byte v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->level:B

    return v0
.end method

.method public getSubType()Lcom/github/junrar/rarfile/SubBlockHeaderType;
    .locals 1

    .line 64
    iget-short v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->subType:S

    invoke-static {v0}, Lcom/github/junrar/rarfile/SubBlockHeaderType;->findSubblockHeaderType(S)Lcom/github/junrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    return-object v0
.end method

.method public print()V
    .locals 3

    .line 69
    invoke-super {p0}, Lcom/github/junrar/rarfile/BlockHeader;->print()V

    .line 70
    iget-object v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/SubBlockHeader;->getSubType()Lcom/github/junrar/rarfile/SubBlockHeaderType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->level:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
