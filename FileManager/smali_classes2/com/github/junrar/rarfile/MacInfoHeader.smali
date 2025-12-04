.class public Lcom/github/junrar/rarfile/MacInfoHeader;
.super Lcom/github/junrar/rarfile/SubBlockHeader;
.source "MacInfoHeader.java"


# static fields
.field public static final MacInfoHeaderSize:S = 0x8s


# instance fields
.field private fileCreator:I

.field private fileType:I

.field private logger:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V
    .locals 2
    .param p1, "sb"    # Lcom/github/junrar/rarfile/SubBlockHeader;
    .param p2, "macHeader"    # [B

    .line 43
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/SubBlockHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "pos":I
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileType:I

    .line 46
    add-int/lit8 v0, v0, 0x4

    .line 47
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 48
    return-void
.end method


# virtual methods
.method public getFileCreator()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileCreator:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileType:I

    return v0
.end method

.method public print()V
    .locals 3

    .line 79
    invoke-super {p0}, Lcom/github/junrar/rarfile/SubBlockHeader;->print()V

    .line 80
    iget-object v0, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filetype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creator :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileCreator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setFileCreator(I)V
    .locals 0
    .param p1, "fileCreator"    # I

    .line 61
    iput p1, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 62
    return-void
.end method

.method public setFileType(I)V
    .locals 0
    .param p1, "fileType"    # I

    .line 75
    iput p1, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileType:I

    .line 76
    return-void
.end method
