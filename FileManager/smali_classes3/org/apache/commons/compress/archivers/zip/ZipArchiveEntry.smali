.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.super Ljava/util/zip/ZipEntry;
.source "ZipArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# static fields
.field public static final CRC_UNKNOWN:I = -0x1

.field private static final EMPTY:[B

.field public static final PLATFORM_FAT:I = 0x0

.field public static final PLATFORM_UNIX:I = 0x3

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_SHIFT:I = 0x10

.field private static final noExtraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# instance fields
.field private externalAttributes:J

.field private extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

.field private gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

.field private internalAttributes:I

.field private method:I

.field private name:Ljava/lang/String;

.field private platform:I

.field private rawFlag:I

.field private rawName:[B

.field private size:J

.field private unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

.field private versionMadeBy:I

.field private versionRequired:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY:[B

    .line 91
    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->noExtraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 154
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    .line 83
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 88
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    .line 90
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 103
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 3
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    .line 83
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 88
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    .line 90
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 117
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 119
    .local v0, "extra":[B
    if-eqz v0, :cond_0

    .line 120
    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 127
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 128
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 142
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setInternalAttributes(I)V

    .line 143
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 144
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 145
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setPlatform(I)V

    .line 146
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    .line 147
    .local v0, "other":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 149
    return-void
.end method

.method private copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1
    .param p1, "src"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 389
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method private copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 3
    .param p1, "src"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .param p2, "length"    # I

    .line 393
    new-array v0, p2, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 394
    .local v0, "cpy":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    return-object v0
.end method

.method private getAllExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2

    .line 409
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 410
    .local v0, "allExtraFieldsNoCopy":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2

    .line 382
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 383
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getUnparseableOnly()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0

    .line 385
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMergedFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getMergedFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 3

    .line 399
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 400
    .local v0, "zipExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    aput-object v2, v0, v1

    .line 401
    return-object v0
.end method

.method private getParseableExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2

    .line 373
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getParseableExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 374
    .local v0, "parseableExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private getParseableExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 367
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->noExtraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v0

    .line 369
    :cond_0
    return-object v0
.end method

.method private getUnparseableOnly()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 3

    .line 405
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->noExtraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    .locals 8
    .param p1, "f"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 724
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    goto :goto_3

    .line 726
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 728
    .local v3, "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v4, v3, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v4, :cond_1

    .line 729
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .local v4, "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    goto :goto_1

    .line 731
    .end local v4    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_1
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v4

    .line 733
    .restart local v4    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_1
    if-nez v4, :cond_2

    .line 734
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    goto :goto_2

    .line 736
    :cond_2
    const/4 v5, 0x0

    if-eqz p2, :cond_3

    .line 737
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v6

    .line 738
    .local v6, "b":[B
    array-length v7, v6

    invoke-interface {v4, v6, v5, v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    .line 739
    .end local v6    # "b":[B
    goto :goto_2

    .line 740
    :cond_3
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v6

    .line 741
    .restart local v6    # "b":[B
    array-length v7, v6

    invoke-interface {v4, v6, v5, v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromCentralDirectoryData([BII)V

    .line 726
    .end local v3    # "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v4    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v6    # "b":[B
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    .end local v0    # "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 747
    :goto_3
    return-void
.end method


# virtual methods
.method public addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 6
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 446
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 447
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    goto :goto_1

    .line 449
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 452
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 453
    .local v0, "copy":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    array-length v1, v1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 454
    .local v1, "newLen":I
    :goto_0
    new-array v3, v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 455
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 456
    if-eqz v0, :cond_3

    .line 457
    array-length v5, v3

    sub-int/2addr v5, v2

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    .end local v0    # "copy":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v1    # "newLen":I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 461
    return-void
.end method

.method public addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 3
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 421
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 422
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 425
    new-array v0, v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    goto :goto_0

    .line 427
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 430
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v2, v0

    add-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 431
    .local v0, "zipExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v2, v0

    sub-int/2addr v2, v1

    aput-object p1, v0, v2

    .line 432
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 435
    .end local v0    # "zipExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 436
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 184
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 186
    .local v0, "e":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setInternalAttributes(I)V

    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 188
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 189
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 767
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 768
    return v0

    .line 770
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 773
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 774
    .local v2, "other":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, "myName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, "otherName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 777
    if-eqz v4, :cond_3

    .line 778
    return v1

    .line 780
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 781
    return v1

    .line 783
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v5

    .line 784
    .local v5, "myComment":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v6

    .line 785
    .local v6, "otherComment":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 786
    const-string v5, ""

    .line 788
    :cond_4
    if-nez v6, :cond_5

    .line 789
    const-string v6, ""

    .line 791
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v8

    if-ne v7, v8, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v8

    if-ne v7, v8, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v8

    if-ne v7, v8, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    iget-object v8, v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    return v0

    .line 771
    .end local v2    # "other":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v3    # "myName":Ljava/lang/String;
    .end local v4    # "otherName":Ljava/lang/String;
    .end local v5    # "myComment":Ljava/lang/String;
    .end local v6    # "otherComment":Ljava/lang/String;
    :cond_7
    :goto_1
    return v1
.end method

.method public getCentralDirectoryExtra()[B
    .locals 1

    .line 587
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->mergeCentralDirectoryData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExternalAttributes()J
    .locals 2

    .line 252
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    return-wide v0
.end method

.method public getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 5
    .param p1, "type"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 505
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .local v0, "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 507
    .local v3, "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    return-object v3

    .line 506
    .end local v3    # "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1

    .line 347
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getParseableExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1
    .param p1, "includeUnparseable"    # Z

    .line 360
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getParseableExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .locals 1

    .line 701
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    return-object v0
.end method

.method public getInternalAttributes()I
    .locals 1

    .line 231
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 3

    .line 759
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLocalFileDataExtra()[B
    .locals 2

    .line 578
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtra()[B

    move-result-object v0

    .line 579
    .local v0, "extra":[B
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY:[B

    :goto_0
    return-object v1
.end method

.method public getMethod()I
    .locals 1

    .line 202
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    .line 308
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    return v0
.end method

.method public getRawFlag()I
    .locals 1

    .line 849
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawFlag:I

    return v0
.end method

.method public getRawName()[B
    .locals 4

    .line 673
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    if-eqz v0, :cond_0

    .line 674
    array-length v1, v0

    new-array v1, v1, [B

    .line 675
    .local v1, "b":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    return-object v1

    .line 678
    .end local v1    # "b":[B
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 631
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    return-wide v0
.end method

.method public getUnixMode()I
    .locals 4

    .line 284
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getUnparseableExtraFieldData()Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
    .locals 1

    .line 523
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    return-object v0
.end method

.method public getVersionMadeBy()I
    .locals 1

    .line 840
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->versionMadeBy:I

    return v0
.end method

.method public getVersionRequired()I
    .locals 1

    .line 831
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->versionRequired:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 692
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 605
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnixSymlink()Z
    .locals 2

    .line 297
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getUnixMode()I

    move-result v0

    const v1, 0xa000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 6
    .param p1, "type"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 468
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-eqz v0, :cond_3

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v0, "newResult":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .local v1, "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 474
    .local v4, "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 475
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    .end local v4    # "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 481
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 482
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 483
    return-void

    .line 479
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 469
    .end local v0    # "newResult":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeUnparseableExtraFieldData()V
    .locals 1

    .line 491
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 495
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 496
    return-void

    .line 492
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public setCentralDirectoryExtra([B)V
    .locals 3
    .param p1, "b"    # [B

    .line 564
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 567
    .local v0, "central":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v0    # "central":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    nop

    .line 571
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/util/zip/ZipException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setExternalAttributes(J)V
    .locals 0
    .param p1, "value"    # J

    .line 260
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    .line 261
    return-void
.end method

.method protected setExtra()V
    .locals 1

    .line 555
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->mergeLocalFileDataData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 556
    return-void
.end method

.method public setExtra([B)V
    .locals 4
    .param p1, "extra"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 537
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 540
    .local v0, "local":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v0    # "local":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    nop

    .line 546
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/util/zip/ZipException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing extra fields for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 6
    .param p1, "fields"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, "newFields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    move-object v1, p1

    .local v1, "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 326
    .local v4, "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v5, v4, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v5, :cond_0

    .line 327
    move-object v5, v4

    check-cast v5, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    goto :goto_1

    .line 329
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v4    # "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 333
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 334
    return-void
.end method

.method public setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V
    .locals 0
    .param p1, "b"    # Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 710
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 711
    return-void
.end method

.method public setInternalAttributes(I)V
    .locals 0
    .param p1, "value"    # I

    .line 239
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    .line 240
    return-void
.end method

.method public setMethod(I)V
    .locals 3
    .param p1, "method"    # I

    .line 214
    if-ltz p1, :cond_0

    .line 218
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 219
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZIP compression method can not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 613
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 617
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    .line 618
    return-void
.end method

.method protected setName(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawName"    # [B

    .line 658
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 659
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    .line 660
    return-void
.end method

.method protected setPlatform(I)V
    .locals 0
    .param p1, "platform"    # I

    .line 316
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 317
    return-void
.end method

.method public setRawFlag(I)V
    .locals 0
    .param p1, "rawFlag"    # I

    .line 858
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawFlag:I

    .line 859
    return-void
.end method

.method public setSize(J)V
    .locals 2
    .param p1, "size"    # J

    .line 642
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 645
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 646
    return-void

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUnixMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 270
    shl-int/lit8 v0, p1, 0x10

    and-int/lit16 v1, p1, 0x80

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x10

    :cond_1
    or-int/2addr v0, v2

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 276
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 277
    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0
    .param p1, "versionMadeBy"    # I

    .line 813
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->versionMadeBy:I

    .line 814
    return-void
.end method

.method public setVersionRequired(I)V
    .locals 0
    .param p1, "versionRequired"    # I

    .line 822
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->versionRequired:I

    .line 823
    return-void
.end method
