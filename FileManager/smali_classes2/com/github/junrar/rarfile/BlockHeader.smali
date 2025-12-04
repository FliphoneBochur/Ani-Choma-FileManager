.class public Lcom/github/junrar/rarfile/BlockHeader;
.super Lcom/github/junrar/rarfile/BaseBlock;
.source "BlockHeader.java"


# static fields
.field public static final blockHeaderSize:S = 0x4s


# instance fields
.field private dataSize:I

.field private logger:Lorg/apache/commons/logging/Log;

.field private packSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/github/junrar/rarfile/BaseBlock;-><init>()V

    .line 36
    const-class v0, Lcom/github/junrar/rarfile/BlockHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V
    .locals 1
    .param p1, "bb"    # Lcom/github/junrar/rarfile/BaseBlock;
    .param p2, "blockHeader"    # [B

    .line 54
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BaseBlock;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    .line 36
    const-class v0, Lcom/github/junrar/rarfile/BlockHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 56
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->packSize:I

    .line 57
    iput v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->dataSize:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/BlockHeader;)V
    .locals 2
    .param p1, "bh"    # Lcom/github/junrar/rarfile/BlockHeader;

    .line 46
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BaseBlock;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    .line 36
    const-class v0, Lcom/github/junrar/rarfile/BlockHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 47
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BlockHeader;->getDataSize()I

    move-result v0

    iput v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->packSize:I

    .line 48
    iput v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->dataSize:I

    .line 49
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BlockHeader;->getPositionInFile()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->positionInFile:J

    .line 50
    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->dataSize:I

    return v0
.end method

.method public getPackSize()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->packSize:I

    return v0
.end method

.method public print()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/github/junrar/rarfile/BaseBlock;->print()V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BlockHeader;->getDataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BlockHeader;->getPackSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/junrar/rarfile/BlockHeader;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
