.class public Lcom/github/junrar/rarfile/UnixOwnersHeader;
.super Lcom/github/junrar/rarfile/SubBlockHeader;
.source "UnixOwnersHeader.java"


# instance fields
.field private group:Ljava/lang/String;

.field private groupNameSize:I

.field private logger:Lorg/apache/commons/logging/Log;

.field private owner:Ljava/lang/String;

.field private ownerNameSize:I


# direct methods
.method public constructor <init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V
    .locals 5
    .param p1, "sb"    # Lcom/github/junrar/rarfile/SubBlockHeader;
    .param p2, "uoHeader"    # [B

    .line 19
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/SubBlockHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;)V

    .line 12
    const-class v0, Lcom/github/junrar/rarfile/UnixOwnersHeader;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "pos":I
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 22
    add-int/lit8 v0, v0, 0x2

    .line 23
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 24
    add-int/lit8 v0, v0, 0x2

    .line 25
    iget v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    add-int v2, v0, v1

    array-length v3, p2

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 26
    new-array v2, v1, [B

    .line 27
    .local v2, "ownerBuffer":[B
    invoke-static {p2, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 30
    .end local v2    # "ownerBuffer":[B
    :cond_0
    iget v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    add-int/2addr v0, v1

    .line 31
    iget v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    add-int v2, v0, v1

    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 32
    new-array v2, v1, [B

    .line 33
    .local v2, "groupBuffer":[B
    invoke-static {p2, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 36
    .end local v2    # "groupBuffer":[B
    :cond_1
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupNameSize()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    return v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerNameSize()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    return v0
.end method

.method public print()V
    .locals 3

    .line 90
    invoke-super {p0}, Lcom/github/junrar/rarfile/SubBlockHeader;->print()V

    .line 91
    iget-object v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ownerNameSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupNameSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setGroupNameSize(I)V
    .locals 0
    .param p1, "groupNameSize"    # I

    .line 59
    iput p1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 60
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setOwnerNameSize(I)V
    .locals 0
    .param p1, "ownerNameSize"    # I

    .line 83
    iput p1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 84
    return-void
.end method
