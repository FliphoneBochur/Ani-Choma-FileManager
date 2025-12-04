.class public Lcom/github/junrar/rarfile/MarkHeader;
.super Lcom/github/junrar/rarfile/BaseBlock;
.source "MarkHeader.java"


# instance fields
.field private logger:Lorg/apache/commons/logging/Log;

.field private oldFormat:Z


# direct methods
.method public constructor <init>(Lcom/github/junrar/rarfile/BaseBlock;)V
    .locals 1
    .param p1, "bb"    # Lcom/github/junrar/rarfile/BaseBlock;

    .line 39
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BaseBlock;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    .line 35
    const-class v0, Lcom/github/junrar/rarfile/MarkHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->oldFormat:Z

    .line 40
    return-void
.end method


# virtual methods
.method public isOldFormat()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->oldFormat:Z

    return v0
.end method

.method public isSignature()Z
    .locals 10

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "valid":Z
    const/4 v1, 0x7

    new-array v2, v1, [B

    .line 60
    .local v2, "d":[B
    iget-short v3, p0, Lcom/github/junrar/rarfile/MarkHeader;->headCRC:S

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 61
    iget-byte v3, p0, Lcom/github/junrar/rarfile/MarkHeader;->headerType:B

    const/4 v5, 0x2

    aput-byte v3, v2, v5

    .line 62
    iget-short v3, p0, Lcom/github/junrar/rarfile/MarkHeader;->flags:S

    const/4 v6, 0x3

    invoke-static {v2, v6, v3}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 63
    iget-short v3, p0, Lcom/github/junrar/rarfile/MarkHeader;->headerSize:S

    const/4 v7, 0x5

    invoke-static {v2, v7, v3}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 65
    aget-byte v3, v2, v4

    const/16 v8, 0x52

    if-ne v3, v8, :cond_1

    .line 66
    const/4 v3, 0x1

    aget-byte v8, v2, v3

    const/16 v9, 0x45

    if-ne v8, v9, :cond_0

    aget-byte v8, v2, v5

    const/16 v9, 0x7e

    if-ne v8, v9, :cond_0

    aget-byte v8, v2, v6

    const/16 v9, 0x5e

    if-ne v8, v9, :cond_0

    .line 67
    iput-boolean v3, p0, Lcom/github/junrar/rarfile/MarkHeader;->oldFormat:Z

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    aget-byte v3, v2, v3

    const/16 v8, 0x61

    if-ne v3, v8, :cond_1

    aget-byte v3, v2, v5

    const/16 v5, 0x72

    if-ne v3, v5, :cond_1

    aget-byte v3, v2, v6

    const/16 v5, 0x21

    if-ne v3, v5, :cond_1

    const/4 v3, 0x4

    aget-byte v3, v2, v3

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_1

    aget-byte v3, v2, v7

    if-ne v3, v1, :cond_1

    const/4 v1, 0x6

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    .line 72
    iput-boolean v4, p0, Lcom/github/junrar/rarfile/MarkHeader;->oldFormat:Z

    .line 73
    const/4 v0, 0x1

    .line 76
    :cond_1
    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MarkHeader;->getHeadCRC()S

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x6152

    if-eq v0, v2, :cond_0

    .line 43
    return v1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MarkHeader;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    sget-object v2, Lcom/github/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    if-eq v0, v2, :cond_1

    .line 46
    return v1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MarkHeader;->getFlags()S

    move-result v0

    const/16 v2, 0x1a21

    if-eq v0, v2, :cond_2

    .line 49
    return v1

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MarkHeader;->getHeaderSize()S

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    .line 52
    return v1

    .line 54
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public print()V
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/github/junrar/rarfile/BaseBlock;->print()V

    .line 85
    iget-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MarkHeader;->isValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 86
    return-void
.end method
