.class Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;
.super Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.source "UnshrinkingInputStream.java"


# static fields
.field private static final MAX_CODE_SIZE:I = 0xd

.field private static final MAX_TABLE_SIZE:I = 0x2000


# instance fields
.field private final isUsed:[Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 39
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setClearCode(I)V

    .line 40
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->initializeTables(I)V

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getPrefixesLength()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aput-boolean v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getClearCode()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setTableSize(I)V

    .line 46
    return-void
.end method

.method private partialClear()V
    .locals 6

    .line 63
    const/16 v0, 0x2000

    new-array v0, v0, [Z

    .line 64
    .local v0, "isParent":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    array-length v3, v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ge v1, v3, :cond_1

    .line 65
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getPrefix(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getPrefix(I)I

    move-result v2

    aput-boolean v5, v0, v2

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getClearCode()I

    move-result v1

    add-int/2addr v1, v5

    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 70
    aget-boolean v2, v0, v1

    if-nez v2, :cond_2

    .line 71
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 72
    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setPrefix(II)V

    .line 69
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    .end local v1    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method protected addEntry(IB)I
    .locals 4
    .param p1, "previousCode"    # I
    .param p2, "character"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getTableSize()I

    move-result v0

    .line 51
    .local v0, "tableSize":I
    :goto_0
    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setTableSize(I)V

    .line 55
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->addEntry(IBI)I

    move-result v1

    .line 56
    .local v1, "idx":I
    if-ltz v1, :cond_1

    .line 57
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 59
    :cond_1
    return v1
.end method

.method protected decompressNextSymbol()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->readNextCode()I

    move-result v0

    .line 92
    .local v0, "code":I
    if-gez v0, :cond_0

    .line 93
    const/4 v1, -0x1

    return v1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getClearCode()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->readNextCode()I

    move-result v1

    .line 96
    .local v1, "subCode":I
    if-ltz v1, :cond_4

    .line 98
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getCodeSize()I

    move-result v2

    const/16 v3, 0xd

    if-ge v2, v3, :cond_1

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->incrementCodeSize()V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Attempt to increase code size beyond maximum"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 105
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->partialClear()V

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getClearCode()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setTableSize(I)V

    .line 110
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 108
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid clear code subcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected EOF;"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v1    # "subCode":I
    :cond_5
    const/4 v1, 0x0

    .line 113
    .local v1, "addedUnfinishedEntry":Z
    move v2, v0

    .line 114
    .local v2, "effectiveCode":I
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_6

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->addRepeatOfPreviousCode()I

    move-result v2

    .line 116
    const/4 v1, 0x1

    .line 118
    :cond_6
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->expandCodeToOutputStack(IZ)I

    move-result v3

    return v3
.end method
