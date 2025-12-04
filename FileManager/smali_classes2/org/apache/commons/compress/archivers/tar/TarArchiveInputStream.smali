.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "TarArchiveInputStream.java"


# static fields
.field private static final SMALL_BUFFER_SIZE:I = 0x100


# instance fields
.field private final SMALL_BUF:[B

.field private final blockSize:I

.field private currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field final encoding:Ljava/lang/String;

.field private entryOffset:J

.field private entrySize:J

.field private globalPaxHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasHitEOF:Z

.field private final is:Ljava/io/InputStream;

.field private final recordSize:I

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .line 89
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I

    .line 109
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I
    .param p4, "encoding"    # Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->SMALL_BUF:[B

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    .line 144
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    .line 146
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->encoding:Ljava/lang/String;

    .line 147
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 148
    iput p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    .line 149
    iput p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "encoding"    # Ljava/lang/String;

    .line 121
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 99
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 101
    return-void
.end method

.method private applyPaxHeadersToCurrentEntry(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 525
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 526
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 528
    .local v3, "val":Ljava/lang/String;
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 530
    :cond_0
    const-string v4, "linkpath"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 532
    :cond_1
    const-string v4, "gid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 533
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(J)V

    goto/16 :goto_1

    .line 534
    :cond_2
    const-string v4, "gname"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 535
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 536
    :cond_3
    const-string v4, "uid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 537
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(J)V

    goto/16 :goto_1

    .line 538
    :cond_4
    const-string v4, "uname"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 539
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 540
    :cond_5
    const-string v4, "size"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 541
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    goto/16 :goto_1

    .line 542
    :cond_6
    const-string v4, "mtime"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 543
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    double-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setModTime(J)V

    goto :goto_1

    .line 544
    :cond_7
    const-string v4, "SCHILY.devminor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 545
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDevMinor(I)V

    goto :goto_1

    .line 546
    :cond_8
    const-string v4, "SCHILY.devmajor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 547
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDevMajor(I)V

    goto :goto_1

    .line 548
    :cond_9
    const-string v4, "GNU.sparse.size"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 549
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v4, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillGNUSparse0xData(Ljava/util/Map;)V

    goto :goto_1

    .line 550
    :cond_a
    const-string v4, "GNU.sparse.realsize"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 551
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v4, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillGNUSparse1xData(Ljava/util/Map;)V

    goto :goto_1

    .line 552
    :cond_b
    const-string v4, "SCHILY.filetype"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "sparse"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 553
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v4, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillStarSparseData(Ljava/util/Map;)V

    .line 555
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_c
    :goto_1
    goto/16 :goto_0

    .line 556
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_d
    return-void
.end method

.method private consumeRemainderOfLastBlock()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getBytesRead()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    int-to-long v3, v2

    rem-long/2addr v0, v3

    .line 713
    .local v0, "bytesReadOfLastBlock":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 714
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    int-to-long v4, v2

    sub-long/2addr v4, v0

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v2

    .line 715
    .local v2, "skipped":J
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(J)V

    .line 717
    .end local v2    # "skipped":J
    :cond_0
    return-void
.end method

.method private getRecord()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readRecord()[B

    move-result-object v0

    .line 399
    .local v0, "headerBuf":[B
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isEOFRecord([B)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    .line 400
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->tryToConsumeSecondEOFRecord()V

    .line 402
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->consumeRemainderOfLastBlock()V

    .line 403
    const/4 v0, 0x0

    .line 405
    :cond_0
    return-object v0
.end method

.method private isDirectory()Z
    .locals 1

    .line 588
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static matches([BI)Z
    .locals 8
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 729
    const/4 v0, 0x0

    const/16 v1, 0x109

    if-ge p1, v1, :cond_0

    .line 730
    return v0

    .line 733
    :cond_0
    const-string v1, "ustar\u0000"

    const/16 v2, 0x101

    const/4 v3, 0x6

    invoke-static {v1, p0, v2, v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x107

    if-eqz v4, :cond_1

    const-string v4, "00"

    invoke-static {v4, p0, v7, v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 739
    return v5

    .line 741
    :cond_1
    const-string v4, "ustar "

    invoke-static {v4, p0, v2, v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, " \u0000"

    invoke-static {v4, p0, v7, v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0\u0000"

    invoke-static {v4, p0, v7, v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 752
    :cond_2
    return v5

    .line 755
    :cond_3
    invoke-static {v1, p0, v2, v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u0000\u0000"

    invoke-static {v1, p0, v7, v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 761
    return v5

    .line 763
    :cond_4
    return v0
.end method

.method private paxHeaders()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0, p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePaxHeaders(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    .line 445
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 446
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;)V

    .line 447
    return-void
.end method

.method private readGlobalPaxHeaders()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0, p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePaxHeaders(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    .line 440
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 441
    return-void
.end method

.method private readOldGNUSparse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecord()[B

    move-result-object v0

    .line 575
    .local v0, "headerBuf":[B
    if-nez v0, :cond_1

    .line 576
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 577
    goto :goto_0

    .line 579
    :cond_1
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;-><init>([B)V

    move-object v0, v1

    .line 583
    .local v0, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended()Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    .end local v0    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
    :cond_2
    :goto_0
    return-void
.end method

.method private skipRecordPadding()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v5, v4

    rem-long v5, v0, v5

    cmp-long v2, v5, v2

    if-eqz v2, :cond_0

    .line 343
    int-to-long v2, v4

    div-long v2, v0, v2

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 344
    .local v2, "numRecords":J
    int-to-long v4, v4

    mul-long/2addr v4, v2

    sub-long/2addr v4, v0

    .line 345
    .local v4, "padding":J
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-static {v0, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 346
    .local v0, "skipped":J
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(J)V

    .line 348
    .end local v0    # "skipped":J
    .end local v2    # "numRecords":J
    .end local v4    # "padding":J
    :cond_0
    return-void
.end method

.method private tryToConsumeSecondEOFRecord()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    const/4 v0, 0x1

    .line 615
    .local v0, "shouldReset":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    .line 616
    .local v1, "marked":Z
    if-eqz v1, :cond_0

    .line 617
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 620
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readRecord()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isEOFRecord([B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 622
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 623
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->pushedBackBytes(J)V

    .line 624
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 627
    :cond_1
    return-void

    .line 622
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 623
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->pushedBackBytes(J)V

    .line 624
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    :cond_2
    throw v2
.end method


# virtual methods
.method public available()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 188
    const v0, 0x7fffffff

    return v0

    .line 190
    :cond_1
    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 2
    .param p1, "ae"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 678
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_0

    .line 679
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 680
    .local v0, "te":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 682
    .end local v0    # "te":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 159
    return-void
.end method

.method public getCurrentEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 1

    .line 691
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v0
.end method

.method protected getLongNameData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 359
    .local v0, "longName":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 360
    .local v1, "length":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->SMALL_BUF:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->read([B)I

    move-result v2

    move v1, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    .line 361
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->SMALL_BUF:[B

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 364
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-nez v2, :cond_1

    .line 367
    const/4 v2, 0x0

    return-object v2

    .line 369
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 371
    .local v2, "longNameData":[B
    array-length v1, v2

    .line 372
    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v2, v4

    if-nez v4, :cond_2

    .line 373
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 375
    :cond_2
    array-length v4, v2

    if-eq v1, v4, :cond_3

    .line 376
    new-array v4, v1, [B

    .line 377
    .local v4, "l":[B
    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    move-object v2, v4

    .line 380
    .end local v4    # "l":[B
    :cond_3
    return-object v2
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 264
    return-object v1

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_1

    .line 269
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 272
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->skipRecordPadding()V

    .line 275
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecord()[B

    move-result-object v0

    .line 277
    .local v0, "headerBuf":[B
    if-nez v0, :cond_2

    .line 279
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 280
    return-object v1

    .line 284
    :cond_2
    :try_start_0
    new-instance v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    nop

    .line 289
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 290
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    .line 292
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongLinkEntry()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getLongNameData()[B

    move-result-object v2

    .line 294
    .local v2, "longLinkData":[B
    if-nez v2, :cond_3

    .line 298
    return-object v1

    .line 300
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v4, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    .line 303
    .end local v2    # "longLinkData":[B
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongNameEntry()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 304
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getLongNameData()[B

    move-result-object v2

    .line 305
    .local v2, "longNameData":[B
    if-nez v2, :cond_5

    .line 309
    return-object v1

    .line 311
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v3, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    .line 314
    .end local v2    # "longNameData":[B
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 315
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readGlobalPaxHeaders()V

    .line 318
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 319
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->paxHeaders()V

    goto :goto_0

    .line 320
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 321
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;)V

    .line 324
    :cond_9
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isOldGNUSparse()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 325
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readOldGNUSparse()V

    .line 332
    :cond_a
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    .line 334
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v1

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error detected parsing the header"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getRecordSize()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    return v0
.end method

.method protected final isAtEOF()Z
    .locals 1

    .line 699
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    return v0
.end method

.method protected isEOFRecord([B)Z
    .locals 1
    .param p1, "record"    # [B

    .line 416
    if-eqz p1, :cond_1

    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isArrayZero([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mark(I)V
    .locals 0
    .param p1, "markLimit"    # I

    .line 240
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method parsePaxHeaders(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 14
    .param p1, "i"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 458
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v1, 0x0

    .line 459
    .local v1, "len":I
    const/4 v2, 0x0

    .line 460
    .local v2, "read":I
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    move v4, v3

    .local v4, "ch":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 461
    add-int/lit8 v2, v2, 0x1

    .line 462
    const/16 v3, 0xa

    if-ne v4, v3, :cond_0

    .line 463
    goto :goto_3

    .line 464
    :cond_0
    const/16 v3, 0x20

    if-ne v4, v3, :cond_4

    .line 466
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 467
    .local v3, "coll":Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    move v4, v6

    if-eq v6, v5, :cond_5

    .line 468
    add-int/lit8 v2, v2, 0x1

    .line 469
    const/16 v6, 0x3d

    if-ne v4, v6, :cond_3

    .line 470
    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, "keyword":Ljava/lang/String;
    sub-int v8, v1, v2

    .line 473
    .local v8, "restLen":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 474
    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 476
    :cond_1
    new-array v9, v8, [B

    .line 477
    .local v9, "rest":[B
    invoke-static {p1, v9}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v10

    .line 478
    .local v10, "got":I
    if-ne v10, v8, :cond_2

    .line 486
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    add-int/lit8 v13, v8, -0x1

    invoke-direct {v11, v9, v12, v13, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v6, v11

    .line 488
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .end local v6    # "value":Ljava/lang/String;
    .end local v9    # "rest":[B
    .end local v10    # "got":I
    goto :goto_3

    .line 479
    .restart local v9    # "rest":[B
    .restart local v10    # "got":I
    :cond_2
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read Paxheader. Expected "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " bytes, read "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 492
    .end local v7    # "keyword":Ljava/lang/String;
    .end local v8    # "restLen":I
    .end local v9    # "rest":[B
    .end local v10    # "got":I
    :cond_3
    int-to-byte v6, v4

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 496
    .end local v3    # "coll":Ljava/io/ByteArrayOutputStream;
    :cond_4
    mul-int/lit8 v1, v1, 0xa

    .line 497
    add-int/lit8 v3, v4, -0x30

    add-int/2addr v1, v3

    goto :goto_1

    .line 499
    :cond_5
    :goto_3
    if-ne v4, v5, :cond_6

    .line 500
    nop

    .line 503
    .end local v1    # "len":I
    .end local v2    # "read":I
    .end local v4    # "ch":I
    return-object v0

    .line 502
    :cond_6
    goto :goto_0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "numToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    const/4 v0, 0x0

    .line 646
    .local v0, "totalRead":I
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    const/4 v2, -0x1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_0

    goto :goto_1

    .line 650
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v1, :cond_3

    .line 654
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 656
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 658
    if-ne v0, v2, :cond_2

    .line 659
    if-gtz p3, :cond_1

    .line 662
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    goto :goto_0

    .line 660
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Truncated TAR archive"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 664
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(I)V

    .line 665
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 668
    :goto_0
    return v0

    .line 651
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No current tar entry"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_4
    :goto_1
    return v2
.end method

.method protected readRecord()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    new-array v0, v0, [B

    .line 429
    .local v0, "record":[B
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 430
    .local v1, "readNow":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(I)V

    .line 431
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    if-eq v1, v2, :cond_0

    .line 432
    const/4 v2, 0x0

    return-object v2

    .line 435
    :cond_0
    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    .line 247
    monitor-exit p0

    return-void
.end method

.method protected final setAtEOF(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 703
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    .line 704
    return-void
.end method

.method protected final setCurrentEntry(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 0
    .param p1, "e"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 695
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 696
    return-void
.end method

.method public skip(J)J
    .locals 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    .line 217
    .local v0, "available":J
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 218
    .local v2, "skipped":J
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(J)V

    .line 219
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 220
    return-wide v2

    .line 213
    .end local v0    # "available":J
    .end local v2    # "skipped":J
    :cond_1
    :goto_0
    return-wide v0
.end method
