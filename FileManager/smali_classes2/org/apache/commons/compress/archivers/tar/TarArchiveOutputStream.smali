.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "TarArchiveOutputStream.java"


# static fields
.field private static final ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field public static final BIGNUMBER_ERROR:I = 0x0

.field public static final BIGNUMBER_POSIX:I = 0x2

.field public static final BIGNUMBER_STAR:I = 0x1

.field public static final LONGFILE_ERROR:I = 0x0

.field public static final LONGFILE_GNU:I = 0x2

.field public static final LONGFILE_POSIX:I = 0x3

.field public static final LONGFILE_TRUNCATE:I = 0x1


# instance fields
.field private addPaxHeadersForNonAsciiNames:Z

.field private final assemBuf:[B

.field private assemLen:I

.field private bigNumberMode:I

.field private closed:Z

.field private currBytes:J

.field private currName:Ljava/lang/String;

.field private currSize:J

.field final encoding:Ljava/lang/String;

.field private finished:Z

.field private haveUnclosedEntry:Z

.field private longFileMode:I

.field private final out:Ljava/io/OutputStream;

.field private final recordBuf:[B

.field private final recordSize:I

.field private final recordsPerBlock:I

.field private recordsWritten:I

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-string v0, "ASCII"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 101
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I

    .line 120
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;II)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IILjava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I
    .param p4, "encoding"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    .line 72
    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    .line 77
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closed:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 83
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    .line 92
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    .line 155
    new-instance v1, Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 156
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 157
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 159
    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .line 160
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    .line 161
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    .line 162
    iput p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordSize:I

    .line 163
    div-int v0, p2, p3

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsPerBlock:I

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .param p3, "encoding"    # Ljava/lang/String;

    .line 132
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 111
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    .line 112
    return-void
.end method

.method private addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 2
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "maxValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .line 607
    .local p1, "paxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    cmp-long v0, p3, p5

    if-lez v0, :cond_1

    .line 608
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_1
    return-void
.end method

.method private addPaxHeadersForBigNumbers(Ljava/util/Map;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 18
    .param p2, "entry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
            ")V"
        }
    .end annotation

    .line 586
    .local p1, "paxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v3

    const-string v2, "size"

    const-wide v5, 0x1ffffffffL

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLongGroupId()J

    move-result-wide v10

    const-string v9, "gid"

    const-wide/32 v12, 0x1fffff

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v13}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    const-string v6, "mtime"

    const-wide v9, 0x1ffffffffL

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLongUserId()J

    move-result-wide v14

    const-string v13, "uid"

    const-wide/32 v16, 0x1fffff

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMajor()I

    move-result v0

    int-to-long v4, v0

    const-string v3, "SCHILY.devmajor"

    const-wide/32 v6, 0x1fffff

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMinor()I

    move-result v0

    int-to-long v4, v0

    const-string v3, "SCHILY.devminor"

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    move-result v0

    int-to-long v3, v0

    const-string v2, "mode"

    const-wide/32 v5, 0x1fffff

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 602
    return-void
.end method

.method private failForBigNumber(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "maxValue"    # J

    .line 627
    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V

    .line 628
    return-void
.end method

.method private failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "maxValue"    # J
    .param p6, "additionalMsg"    # Ljava/lang/String;

    .line 635
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    cmp-long v0, p2, p4

    if-gtz v0, :cond_0

    .line 640
    return-void

    .line 636
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' is too big ( > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " )."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private failForBigNumberWithPosixMessage(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "maxValue"    # J

    .line 631
    const-string v6, " Use STAR or POSIX extensions to overcome this limit"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V

    .line 632
    return-void
.end method

.method private failForBigNumbers(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 16
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 613
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v2

    const-string v1, "entry size"

    const-wide v4, 0x1ffffffffL

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 614
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLongGroupId()J

    move-result-wide v8

    const-string v7, "group id"

    const-wide/32 v10, 0x1fffff

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumberWithPosixMessage(Ljava/lang/String;JJ)V

    .line 615
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    const-string v5, "last modification time"

    const-wide v8, 0x1ffffffffL

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 618
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLongUserId()J

    move-result-wide v12

    const-string v11, "user id"

    const-wide/32 v14, 0x1fffff

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 619
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    move-result v0

    int-to-long v3, v0

    const-string v2, "mode"

    const-wide/32 v5, 0x1fffff

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 620
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMajor()I

    move-result v0

    int-to-long v3, v0

    const-string v2, "major device number"

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 622
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMinor()I

    move-result v0

    int-to-long v3, v0

    const-string v2, "minor device number"

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 624
    return-void
.end method

.method private handleLongName(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 7
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "paxHeaderName"    # Ljava/lang/String;
    .param p5, "linkType"    # B
    .param p6, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "B",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    .local p3, "paxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 669
    .local v0, "encodedName":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 670
    .local v1, "len":I
    const/4 v2, 0x0

    const/16 v3, 0x64

    if-lt v1, v3, :cond_3

    .line 672
    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 673
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    return v6

    .line 675
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 678
    new-instance v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    const-string v4, "././@LongLink"

    invoke-direct {v3, v4, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;B)V

    .line 680
    .local v3, "longLinkEntry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    add-int/lit8 v4, v1, 0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    .line 681
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->transferModTime(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    .line 682
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 683
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->write([BII)V

    .line 684
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->write(I)V

    .line 685
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .end local v3    # "longLinkEntry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    goto :goto_0

    .line 686
    :cond_1
    if-ne v4, v6, :cond_2

    :goto_0
    goto :goto_1

    .line 687
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is too long ( > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 692
    :cond_3
    :goto_1
    return v2
.end method

.method private padAsNeeded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsPerBlock:I

    rem-int/2addr v0, v1

    .line 577
    .local v0, "start":I
    if-eqz v0, :cond_0

    .line 578
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsPerBlock:I

    if-ge v1, v2, :cond_0

    .line 579
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeEOFRecord()V

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private shouldBeReplaced(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 507
    if-eqz p1, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5c

    if-ne p1, v0, :cond_0

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

.method private stripTo7Bits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 490
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 491
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 492
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    .line 493
    .local v3, "stripped":C
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->shouldBeReplaced(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 496
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    .end local v3    # "stripped":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private transferModTime(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 7
    .param p1, "from"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .param p2, "to"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 696
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    .line 697
    .local v0, "fromModTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 698
    .local v1, "fromModTimeSeconds":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const-wide v5, 0x1ffffffffL

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    .line 699
    :cond_0
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    move-object v0, v5

    .line 701
    :cond_1
    invoke-virtual {p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setModTime(Ljava/util/Date;)V

    .line 702
    return-void
.end method

.method private writeEOFRecord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 518
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeRecord([B)V

    .line 519
    return-void
.end method

.method private writeRecord([B)V
    .locals 3
    .param p1, "record"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordSize:I

    if-ne v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 550
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    .line 551
    return-void

    .line 543
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record to write has length \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' which is not the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeRecord([BI)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordSize:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_0

    .line 571
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 572
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    .line 573
    return-void

    .line 565
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record has length \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' with offset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' which is less than the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finish()V

    .line 244
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closed:Z

    .line 248
    :cond_1
    return-void
.end method

.method public closeArchiveEntry()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    if-nez v0, :cond_4

    .line 339
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    if-eqz v0, :cond_3

    .line 342
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 343
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 344
    aput-byte v1, v2, v0

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeRecord([B)V

    .line 349
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 350
    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .line 353
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 359
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 360
    return-void

    .line 354
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' closed at \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' before the \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' bytes specified in the header were written"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No current entry to close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 2
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 530
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    if-nez v0, :cond_1

    .line 224
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeEOFRecord()V

    .line 228
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeEOFRecord()V

    .line 229
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->padAsNeeded()V

    .line 230
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    .line 232
    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archives contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 524
    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingOutputStream;->getBytesWritten()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 256
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordSize:I

    return v0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 14
    .param p1, "archiveEntry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    if-nez v0, :cond_9

    .line 277
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 278
    .local v0, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v8, v1

    .line 279
    .local v8, "paxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 280
    .local v9, "entryName":Ljava/lang/String;
    const/16 v6, 0x4c

    const-string v5, "path"

    const-string v7, "file name"

    move-object v1, p0

    move-object v2, v0

    move-object v3, v9

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->handleLongName(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z

    move-result v10

    .line 283
    .local v10, "paxHeaderContainsPath":Z
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLinkName()Ljava/lang/String;

    move-result-object v11

    .line 284
    .local v11, "linkName":Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v6, 0x4b

    const-string v5, "linkpath"

    const-string v7, "link name"

    move-object v1, p0

    move-object v2, v0

    move-object v3, v11

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->handleLongName(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v13

    goto :goto_0

    :cond_0
    move v1, v12

    .line 288
    .local v1, "paxHeaderContainsLinkPath":Z
    :goto_0
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 289
    invoke-direct {p0, v8, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForBigNumbers(Ljava/util/Map;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    goto :goto_1

    .line 290
    :cond_1
    if-eq v2, v13, :cond_2

    .line 291
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumbers(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    .line 294
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    if-eqz v2, :cond_3

    if-nez v10, :cond_3

    sget-object v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v2, v9}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    const-string v2, "path"

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_3
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isLink()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSymbolicLink()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    sget-object v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v2, v11}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 302
    const-string v2, "linkpath"

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_5
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 306
    invoke-virtual {p0, v0, v9, v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writePaxHeaders(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/lang/String;Ljava/util/Map;)V

    .line 309
    :cond_6
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    if-ne v4, v13, :cond_7

    move v12, v13

    :cond_7
    invoke-virtual {v0, v2, v3, v12}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    .line 311
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeRecord([B)V

    .line 313
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 315
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 316
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    goto :goto_2

    .line 318
    :cond_8
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    .line 320
    :goto_2
    iput-object v9, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currName:Ljava/lang/String;

    .line 321
    iput-boolean v13, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 322
    return-void

    .line 275
    .end local v0    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .end local v1    # "paxHeaderContainsLinkPath":Z
    .end local v8    # "paxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "entryName":Ljava/lang/String;
    .end local v10    # "paxHeaderContainsPath":Z
    .end local v11    # "linkName":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAddPaxHeadersForNonAsciiNames(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 195
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    .line 196
    return-void
.end method

.method public setBigNumberMode(I)V
    .locals 0
    .param p1, "bigNumberMode"    # I

    .line 186
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    .line 187
    return-void
.end method

.method public setLongFileMode(I)V
    .locals 0
    .param p1, "longFileMode"    # I

    .line 174
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    .line 175
    return-void
.end method

.method public write([BII)V
    .locals 7
    .param p1, "wBuf"    # [B
    .param p2, "wOffset"    # I
    .param p3, "numToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    if-eqz v0, :cond_5

    .line 381
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 396
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    if-lez v0, :cond_1

    .line 397
    add-int v1, v0, p3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 398
    array-length v1, v2

    sub-int/2addr v1, v0

    .line 400
    .local v1, "aLen":I
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeRecord([B)V

    .line 406
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    array-length v0, v0

    int-to-long v5, v0

    add-long/2addr v2, v5

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 407
    add-int/2addr p2, v1

    .line 408
    sub-int/2addr p3, v1

    .line 409
    iput v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .line 410
    .end local v1    # "aLen":I
    goto :goto_0

    .line 411
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    add-int/2addr p2, p3

    .line 415
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .line 416
    const/4 p3, 0x0

    .line 425
    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 426
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    array-length v0, v0

    if-ge p3, v0, :cond_2

    .line 427
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .line 432
    goto :goto_1

    .line 435
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeRecord([BI)V

    .line 437
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    array-length v0, v0

    .line 439
    .local v0, "num":I
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 440
    sub-int/2addr p3, v0

    .line 441
    add-int/2addr p2, v0

    .line 442
    .end local v0    # "num":I
    goto :goto_0

    .line 443
    :cond_3
    :goto_1
    return-void

    .line 382
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request to write \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' bytes exceeds size in header of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' bytes for entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current tar entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writePaxHeaders(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/lang/String;Ljava/util/Map;)V
    .locals 18
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "./PaxHeaders.X/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->stripTo7Bits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    .line 454
    const/4 v3, 0x0

    const/16 v4, 0x63

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 456
    :cond_0
    new-instance v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    const/16 v4, 0x78

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;B)V

    .line 458
    .local v3, "pex":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->transferModTime(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    .line 460
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 461
    .local v5, "w":Ljava/io/StringWriter;
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "UTF-8"

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 462
    .local v7, "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 463
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 464
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v11, v11, 0x2

    .line 467
    .local v11, "len":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\n"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 468
    .local v12, "line":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    .line 469
    .local v1, "actualLength":I
    :goto_1
    if-eq v11, v1, :cond_1

    .line 475
    move v11, v1

    .line 476
    move/from16 v17, v1

    .end local v1    # "actualLength":I
    .local v17, "actualLength":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 477
    invoke-virtual {v12, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    .end local v17    # "actualLength":I
    .restart local v1    # "actualLength":I
    goto :goto_1

    .line 479
    :cond_1
    move/from16 v17, v1

    .end local v1    # "actualLength":I
    .restart local v17    # "actualLength":I
    invoke-virtual {v5, v12}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 480
    .end local v7    # "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "len":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v17    # "actualLength":I
    move-object/from16 v1, v16

    goto :goto_0

    .line 461
    .end local v16    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v1

    .line 481
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .restart local v16    # "name":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 482
    .local v1, "data":[B
    array-length v6, v1

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    .line 483
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 484
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->write([B)V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 486
    return-void
.end method
