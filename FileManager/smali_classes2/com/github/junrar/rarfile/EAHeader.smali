.class public Lcom/github/junrar/rarfile/EAHeader;
.super Lcom/github/junrar/rarfile/SubBlockHeader;
.source "EAHeader.java"


# static fields
.field public static final EAHeaderSize:S = 0xas


# instance fields
.field private EACRC:I

.field private logger:Lorg/apache/commons/logging/Log;

.field private method:B

.field private unpSize:I

.field private unpVer:B


# direct methods
.method public constructor <init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V
    .locals 3
    .param p1, "sb"    # Lcom/github/junrar/rarfile/SubBlockHeader;
    .param p2, "eahead"    # [B

    .line 45
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/SubBlockHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "pos":I
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/EAHeader;->unpSize:I

    .line 48
    add-int/lit8 v0, v0, 0x4

    .line 49
    iget-byte v1, p0, Lcom/github/junrar/rarfile/EAHeader;->unpVer:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/EAHeader;->unpVer:B

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    iget-byte v1, p0, Lcom/github/junrar/rarfile/EAHeader;->method:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/EAHeader;->method:B

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/EAHeader;->EACRC:I

    .line 54
    return-void
.end method


# virtual methods
.method public getEACRC()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/github/junrar/rarfile/EAHeader;->EACRC:I

    return v0
.end method

.method public getMethod()B
    .locals 1

    .line 67
    iget-byte v0, p0, Lcom/github/junrar/rarfile/EAHeader;->method:B

    return v0
.end method

.method public getUnpSize()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/github/junrar/rarfile/EAHeader;->unpSize:I

    return v0
.end method

.method public getUnpVer()B
    .locals 1

    .line 81
    iget-byte v0, p0, Lcom/github/junrar/rarfile/EAHeader;->unpVer:B

    return v0
.end method

.method public print()V
    .locals 3

    .line 86
    invoke-super {p0}, Lcom/github/junrar/rarfile/SubBlockHeader;->print()V

    .line 87
    iget-object v0, p0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unpSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/github/junrar/rarfile/EAHeader;->unpSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unpVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/github/junrar/rarfile/EAHeader;->unpVer:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/github/junrar/rarfile/EAHeader;->method:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EACRC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/github/junrar/rarfile/EAHeader;->EACRC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 91
    return-void
.end method
