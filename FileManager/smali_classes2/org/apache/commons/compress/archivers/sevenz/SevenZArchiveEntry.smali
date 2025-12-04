.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
.super Ljava/lang/Object;
.source "SevenZArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# instance fields
.field private accessDate:J

.field private compressedCrc:J

.field private compressedSize:J

.field private contentMethods:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private crc:J

.field private creationDate:J

.field private hasAccessDate:Z

.field private hasCrc:Z

.field private hasCreationDate:Z

.field private hasLastModifiedDate:Z

.field private hasStream:Z

.field private hasWindowsAttributes:Z

.field private isAntiItem:Z

.field private isDirectory:Z

.field private lastModifiedDate:J

.field private name:Ljava/lang/String;

.field private size:J

.field private windowsAttributes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static javaTimeToNtfsTime(Ljava/util/Date;)J
    .locals 8
    .param p0, "date"    # Ljava/util/Date;

    .line 507
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 508
    .local v7, "ntfsEpoch":Ljava/util/Calendar;
    const-string v0, "GMT+0"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 509
    const/16 v1, 0x641

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 510
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 511
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static ntfsTimeToJavaTime(J)Ljava/util/Date;
    .locals 8
    .param p0, "ntfsTime"    # J

    .line 493
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 494
    .local v7, "ntfsEpoch":Ljava/util/Calendar;
    const-string v0, "GMT+0"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 495
    const/16 v1, 0x641

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 496
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 497
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long v2, p0, v2

    add-long/2addr v0, v2

    .line 498
    .local v0, "realTime":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public getAccessDate()Ljava/util/Date;
    .locals 2

    .line 252
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    if-eqz v0, :cond_0

    .line 253
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->ntfsTimeToJavaTime(J)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The entry doesn\'t have this timestamp"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCompressedCrc()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    long-to-int v0, v0

    return v0
.end method

.method getCompressedCrcValue()J
    .locals 2

    .line 393
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    return-wide v0
.end method

.method getCompressedSize()J
    .locals 2

    .line 430
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedSize:J

    return-wide v0
.end method

.method public getContentMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getCrc()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    long-to-int v0, v0

    return v0
.end method

.method public getCrcValue()J
    .locals 2

    .line 355
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    return-wide v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 2

    .line 150
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    if-eqz v0, :cond_0

    .line 151
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->ntfsTimeToJavaTime(J)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The entry doesn\'t have this timestamp"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHasAccessDate()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    return v0
.end method

.method public getHasCrc()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    return v0
.end method

.method public getHasCreationDate()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    return v0
.end method

.method public getHasLastModifiedDate()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    return v0
.end method

.method public getHasWindowsAttributes()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasWindowsAttributes:Z

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 2

    .line 202
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    if-eqz v0, :cond_0

    .line 203
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->ntfsTimeToJavaTime(J)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The entry doesn\'t have this timestamp"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 412
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    return-wide v0
.end method

.method public getWindowsAttributes()I
    .locals 1

    .line 300
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->windowsAttributes:I

    return v0
.end method

.method public hasStream()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    return v0
.end method

.method public isAntiItem()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isAntiItem:Z

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory:Z

    return v0
.end method

.method public setAccessDate(J)V
    .locals 0
    .param p1, "ntfsAccessDate"    # J

    .line 265
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:J

    .line 266
    return-void
.end method

.method public setAccessDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "accessDate"    # Ljava/util/Date;

    .line 273
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    .line 274
    if-eqz v0, :cond_1

    .line 275
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:J

    .line 277
    :cond_1
    return-void
.end method

.method public setAntiItem(Z)V
    .locals 0
    .param p1, "isAntiItem"    # Z

    .line 124
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isAntiItem:Z

    .line 125
    return-void
.end method

.method setCompressedCrc(I)V
    .locals 2
    .param p1, "crc"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    .line 385
    return-void
.end method

.method setCompressedCrcValue(J)V
    .locals 0
    .param p1, "crc"    # J

    .line 402
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    .line 403
    return-void
.end method

.method setCompressedSize(J)V
    .locals 0
    .param p1, "size"    # J

    .line 439
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedSize:J

    .line 440
    return-void
.end method

.method public setContentMethods(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 457
    .local p1, "methods":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    if-eqz p1, :cond_1

    .line 458
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 459
    .local v0, "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 460
    .local v2, "m":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 461
    .end local v2    # "m":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    goto :goto_0

    .line 462
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    .line 463
    .end local v0    # "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    goto :goto_1

    .line 464
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    .line 466
    :goto_1
    return-void
.end method

.method public setCrc(I)V
    .locals 2
    .param p1, "crc"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 346
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    .line 347
    return-void
.end method

.method public setCrcValue(J)V
    .locals 0
    .param p1, "crc"    # J

    .line 364
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    .line 365
    return-void
.end method

.method public setCreationDate(J)V
    .locals 0
    .param p1, "ntfsCreationDate"    # J

    .line 163
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:J

    .line 164
    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "creationDate"    # Ljava/util/Date;

    .line 171
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    .line 172
    if-eqz v0, :cond_1

    .line 173
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:J

    .line 175
    :cond_1
    return-void
.end method

.method public setDirectory(Z)V
    .locals 0
    .param p1, "isDirectory"    # Z

    .line 106
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory:Z

    .line 107
    return-void
.end method

.method public setHasAccessDate(Z)V
    .locals 0
    .param p1, "hasAcessDate"    # Z

    .line 242
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    .line 243
    return-void
.end method

.method public setHasCrc(Z)V
    .locals 0
    .param p1, "hasCrc"    # Z

    .line 326
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    .line 327
    return-void
.end method

.method public setHasCreationDate(Z)V
    .locals 0
    .param p1, "hasCreationDate"    # Z

    .line 140
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    .line 141
    return-void
.end method

.method public setHasLastModifiedDate(Z)V
    .locals 0
    .param p1, "hasLastModifiedDate"    # Z

    .line 191
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    .line 192
    return-void
.end method

.method public setHasStream(Z)V
    .locals 0
    .param p1, "hasStream"    # Z

    .line 87
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    .line 88
    return-void
.end method

.method public setHasWindowsAttributes(Z)V
    .locals 0
    .param p1, "hasWindowsAttributes"    # Z

    .line 292
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasWindowsAttributes:Z

    .line 293
    return-void
.end method

.method public setLastModifiedDate(J)V
    .locals 0
    .param p1, "ntfsLastModifiedDate"    # J

    .line 215
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:J

    .line 216
    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "lastModifiedDate"    # Ljava/util/Date;

    .line 223
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    .line 224
    if-eqz v0, :cond_1

    .line 225
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:J

    .line 227
    :cond_1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .param p1, "size"    # J

    .line 421
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    .line 422
    return-void
.end method

.method public setWindowsAttributes(I)V
    .locals 0
    .param p1, "windowsAttributes"    # I

    .line 308
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->windowsAttributes:I

    .line 309
    return-void
.end method
