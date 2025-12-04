.class public Lorg/apache/commons/compress/archivers/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final CFH_SIG:J

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final ZIP64_EOCDL_LENGTH:I = 0x14

.field private static final ZIP64_EOCDL_LOCATOR_OFFSET:I = 0x8

.field private static final ZIP64_EOCD_CFD_LOCATOR_OFFSET:I = 0x30


# instance fields
.field private final CFH_BUF:[B

.field private final DWORD_BUF:[B

.field private final OFFSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final SHORT_BUF:[B

.field private final WORD_BUF:[B

.field private final archive:Ljava/io/RandomAccessFile;

.field private final archiveName:Ljava/lang/String;

.field private volatile closed:Z

.field private final encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 523
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const-string v0, "UTF8"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "useUnicodeExtraFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1fd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 141
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    .line 142
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    .line 143
    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    .line 144
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    .line 1093
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    .line 210
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archiveName:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 212
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 213
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 214
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object v1

    .line 219
    .local v1, "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    const/4 v0, 0x1

    .line 222
    .end local v1    # "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 223
    if-nez v0, :cond_0

    .line 224
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-static {v1}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    :cond_0
    return-void

    .line 222
    :catchall_0
    move-exception v1

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 223
    if-nez v0, :cond_1

    .line 224
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF8"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 180
    return-void
.end method

.method static synthetic access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 79
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public static closeQuietly(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0
    .param p0, "zipfile"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 258
    invoke-static {p0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 259
    return-void
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 542
    .local v0, "noUTF8Flag":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory()V

    .line 544
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 545
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    .line 547
    .local v1, "sig":J
    sget-wide v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 552
    :cond_1
    :goto_0
    sget-wide v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 553
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->readCentralDirectoryEntry(Ljava/util/Map;)V

    .line 554
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 555
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    goto :goto_0

    .line 557
    :cond_2
    return-object v0
.end method

.method private positionAtCentralDirectory()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtEndOfCentralDirectoryRecord()V

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "found":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v3, 0x14

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 805
    .local v1, "searchedForZip64EOCD":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 806
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 807
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 808
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 811
    :cond_1
    if-nez v0, :cond_3

    .line 813
    if-eqz v1, :cond_2

    .line 814
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 816
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory32()V

    goto :goto_1

    .line 818
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory64()V

    .line 820
    :goto_1
    return-void
.end method

.method private positionAtCentralDirectory32()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 857
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 858
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 859
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 860
    return-void
.end method

.method private positionAtCentralDirectory64()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 835
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 836
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 837
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 838
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 844
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 845
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 846
    return-void

    .line 839
    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private positionAtEndOfCentralDirectoryRecord()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const-wide/16 v1, 0x16

    const-wide/32 v3, 0x10015

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->tryToLocateSignature(JJ[B)Z

    move-result v0

    .line 870
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 873
    return-void

    .line 871
    :cond_0
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "archive is not a ZIP archive"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readCentralDirectoryEntry(Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    .local p1, "noUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 573
    const/4 v1, 0x0

    .line 574
    .local v1, "off":I
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    .line 575
    .local v2, "offset":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    invoke-direct {v4, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)V

    .line 577
    .local v4, "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v5, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v5

    .line 578
    .local v5, "versionMadeBy":I
    add-int/lit8 v1, v1, 0x2

    .line 579
    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setVersionMadeBy(I)V

    .line 580
    shr-int/lit8 v6, v5, 0x8

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v4, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setPlatform(I)V

    .line 582
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v6, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setVersionRequired(I)V

    .line 583
    add-int/lit8 v1, v1, 0x2

    .line 585
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v6, v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v6

    .line 586
    .local v6, "gpFlag":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v7

    .line 587
    .local v7, "hasUTF8Flag":Z
    if-eqz v7, :cond_0

    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 589
    .local v8, "entryEncoding":Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    :goto_0
    invoke-virtual {v4, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 590
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v9, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setRawFlag(I)V

    .line 592
    add-int/lit8 v1, v1, 0x2

    .line 595
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v9, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setMethod(I)V

    .line 596
    add-int/lit8 v1, v1, 0x2

    .line 598
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v9, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v9

    .line 599
    .local v9, "time":J
    invoke-virtual {v4, v9, v10}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setTime(J)V

    .line 600
    add-int/lit8 v1, v1, 0x4

    .line 602
    iget-object v11, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v11, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCrc(J)V

    .line 603
    add-int/lit8 v1, v1, 0x4

    .line 605
    iget-object v11, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v11, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCompressedSize(J)V

    .line 606
    add-int/lit8 v1, v1, 0x4

    .line 608
    iget-object v11, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v11, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setSize(J)V

    .line 609
    add-int/lit8 v1, v1, 0x4

    .line 611
    iget-object v11, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v11, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v11

    .line 612
    .local v11, "fileNameLen":I
    add-int/lit8 v1, v1, 0x2

    .line 614
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v12, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v12

    .line 615
    .local v12, "extraLen":I
    add-int/lit8 v1, v1, 0x2

    .line 617
    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v13, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v13

    .line 618
    .local v13, "commentLen":I
    add-int/lit8 v1, v1, 0x2

    .line 620
    iget-object v14, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v14, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v14

    .line 621
    .local v14, "diskStart":I
    add-int/lit8 v1, v1, 0x2

    .line 623
    iget-object v15, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v15, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v15

    invoke-virtual {v4, v15}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setInternalAttributes(I)V

    .line 624
    add-int/lit8 v1, v1, 0x2

    .line 626
    iget-object v15, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "versionMadeBy":I
    .end local v6    # "gpFlag":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .local v16, "versionMadeBy":I
    .local v17, "gpFlag":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    invoke-static {v15, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setExternalAttributes(J)V

    .line 627
    add-int/lit8 v1, v1, 0x4

    .line 629
    new-array v5, v11, [B

    .line 630
    .local v5, "fileName":[B
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 631
    invoke-interface {v8, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setName(Ljava/lang/String;[B)V

    .line 634
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v18, v4

    .end local v4    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    .local v18, "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    invoke-static {v6, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 636
    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    move-object/from16 v4, v18

    .end local v18    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    .restart local v4    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    new-array v3, v12, [B

    .line 639
    .local v3, "cdExtraData":[B
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 640
    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCentralDirectoryExtra([B)V

    .line 642
    invoke-direct {v0, v4, v2, v14}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;I)V

    .line 644
    new-array v6, v13, [B

    .line 645
    .local v6, "comment":[B
    iget-object v15, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v15, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 646
    invoke-interface {v8, v6}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setComment(Ljava/lang/String;)V

    .line 648
    if-nez v7, :cond_1

    iget-boolean v15, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    if-eqz v15, :cond_1

    .line 649
    new-instance v15, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    const/4 v0, 0x0

    invoke-direct {v15, v5, v6, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 648
    :cond_1
    move-object/from16 v0, p1

    .line 651
    :goto_1
    return-void
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    .local p1, "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 958
    .local v1, "zipArchiveEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 959
    .local v2, "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v3

    .line 960
    .local v3, "offsetEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    .line 961
    .local v4, "offset":J
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v7, 0x1a

    add-long v9, v4, v7

    invoke-virtual {v6, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 962
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    invoke-virtual {v6, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 963
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v6

    .line 964
    .local v6, "fileNameLen":I
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 965
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v9

    .line 966
    .local v9, "extraFieldLen":I
    move v10, v6

    .line 967
    .local v10, "lenToSkip":I
    :goto_1
    if-lez v10, :cond_1

    .line 968
    iget-object v11, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v11, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v11

    .line 969
    .local v11, "skipped":I
    if-lez v11, :cond_0

    .line 973
    sub-int/2addr v10, v11

    .line 974
    .end local v11    # "skipped":I
    goto :goto_1

    .line 970
    .restart local v11    # "skipped":I
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "failed to skip file name in local file header"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 975
    .end local v11    # "skipped":I
    :cond_1
    new-array v11, v9, [B

    .line 976
    .local v11, "localExtraData":[B
    iget-object v12, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v12, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 977
    invoke-virtual {v2, v11}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setExtra([B)V

    .line 978
    add-long/2addr v7, v4

    const-wide/16 v12, 0x2

    add-long/2addr v7, v12

    add-long/2addr v7, v12

    int-to-long v12, v6

    add-long/2addr v7, v12

    int-to-long v12, v9

    add-long/2addr v7, v12

    invoke-static {v3, v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$002(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 981
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 982
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 983
    .local v7, "nc":Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v8

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v12

    invoke-static {v2, v8, v12}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 987
    .end local v7    # "nc":Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 988
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedList;

    .line 989
    .local v8, "entriesOfThatName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    if-nez v8, :cond_3

    .line 990
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    move-object v8, v12

    .line 991
    iget-object v12, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v12, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :cond_3
    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 994
    .end local v1    # "zipArchiveEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v2    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    .end local v3    # "offsetEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .end local v4    # "offset":J
    .end local v6    # "fileNameLen":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "entriesOfThatName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v9    # "extraFieldLen":I
    .end local v10    # "lenToSkip":I
    .end local v11    # "localExtraData":[B
    goto/16 :goto_0

    .line 995
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;I)V
    .locals 9
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "offset"    # Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .param p3, "diskStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 672
    .local v0, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    if-eqz v0, :cond_8

    .line 673
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v5

    .line 674
    .local v1, "hasUncompressedSize":Z
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-nez v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v5

    .line 675
    .local v6, "hasCompressedSize":Z
    :goto_1
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v5

    .line 677
    .local v3, "hasRelativeHeaderOffset":Z
    :goto_2
    const v4, 0xffff

    if-ne p3, v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v5

    :goto_3
    invoke-virtual {v0, v1, v6, v3, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->reparseCentralDirectoryData(ZZZZ)V

    .line 682
    if-eqz v1, :cond_4

    .line 683
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    goto :goto_4

    .line 684
    :cond_4
    if-eqz v6, :cond_5

    .line 685
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 688
    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    .line 689
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    goto :goto_5

    .line 690
    :cond_6
    if-eqz v1, :cond_7

    .line 691
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 694
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 695
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getRelativeHeaderOffset()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 699
    .end local v1    # "hasUncompressedSize":Z
    .end local v3    # "hasRelativeHeaderOffset":Z
    .end local v6    # "hasCompressedSize":Z
    :cond_8
    return-void
.end method

.method private skipBytes(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 920
    const/4 v0, 0x0

    .line 921
    .local v0, "totalSkipped":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 922
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v1

    .line 923
    .local v1, "skippedNow":I
    if-lez v1, :cond_0

    .line 926
    add-int/2addr v0, v1

    .line 927
    .end local v1    # "skippedNow":I
    goto :goto_0

    .line 924
    .restart local v1    # "skippedNow":I
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 928
    .end local v1    # "skippedNow":I
    :cond_1
    return-void
.end method

.method private startsWithLocalFileHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1003
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 1004
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private tryToLocateSignature(JJ[B)Z
    .locals 7
    .param p1, "minDistanceFromEnd"    # J
    .param p3, "maxDistanceFromEnd"    # J
    .param p5, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    const/4 v0, 0x0

    .line 884
    .local v0, "found":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 885
    .local v1, "off":J
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    sub-long/2addr v3, p3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 887
    .local v3, "stopSearching":J
    cmp-long v5, v1, v5

    if-ltz v5, :cond_2

    .line 888
    :goto_0
    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 889
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 890
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    .line 891
    .local v5, "curr":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 892
    goto :goto_1

    .line 894
    :cond_0
    const/4 v6, 0x0

    aget-byte v6, p5, v6

    if-ne v5, v6, :cond_1

    .line 895
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    .line 896
    const/4 v6, 0x1

    aget-byte v6, p5, v6

    if-ne v5, v6, :cond_1

    .line 897
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    .line 898
    const/4 v6, 0x2

    aget-byte v6, p5, v6

    if-ne v5, v6, :cond_1

    .line 899
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    .line 900
    const/4 v6, 0x3

    aget-byte v6, p5, v6

    if-ne v5, v6, :cond_1

    .line 901
    const/4 v0, 0x1

    .line 902
    goto :goto_1

    .line 888
    .end local v5    # "curr":I
    :cond_1
    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    goto :goto_0

    .line 909
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 910
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 912
    :cond_3
    return v0
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 349
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 249
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 250
    return-void
.end method

.method public copyRawEntries(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryPredicate;)V
    .locals 3
    .param p1, "target"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    .param p2, "predicate"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryPredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntriesInPhysicalOrder()Ljava/util/Enumeration;

    move-result-object v0

    .line 384
    .local v0, "src":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 386
    .local v1, "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-interface {p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryPredicate;->test(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getRawInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/InputStream;)V

    .line 389
    .end local v1    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_0
    goto :goto_0

    .line 390
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 491
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    if-nez v0, :cond_0

    .line 492
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up unclosed ZipFile for archive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archiveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 498
    nop

    .line 499
    return-void

    .line 497
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 317
    .local v0, "entriesOfThatName":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesInPhysicalOrder(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 331
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 332
    .local v0, "entriesOfThatName":[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 334
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 336
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 285
    .local v0, "allEntries":[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 286
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 303
    .local v0, "entriesOfThatName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 10
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 402
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v0

    .line 407
    .local v0, "offsetEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 408
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v7

    .line 409
    .local v7, "start":J
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v5

    move-object v1, v9

    move-object v2, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    .line 411
    .local v1, "bis":Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->$SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod:[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 433
    new-instance v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2

    .line 448
    :cond_1
    new-instance v2, Ljava/util/zip/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found unsupported compression method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummy()V

    .line 421
    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 422
    .local v2, "inflater":Ljava/util/zip/Inflater;
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;

    invoke-direct {v3, p0, v1, v2, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    return-object v3

    .line 417
    .end local v2    # "inflater":Ljava/util/zip/Inflater;
    :cond_3
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getSlidingDictionarySize()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getNumberOfShannonFanoTrees()I

    move-result v4

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;-><init>(IILjava/io/InputStream;)V

    return-object v2

    .line 415
    :cond_4
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2

    .line 413
    :cond_5
    return-object v1
.end method

.method public getRawInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 10
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 363
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x0

    return-object v0

    .line 366
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v0

    .line 367
    .local v0, "offsetEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v7

    .line 368
    .local v7, "start":J
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v5

    move-object v1, v9

    move-object v2, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    return-object v9
.end method

.method public getUnixSymlink(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;
    .locals 3
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 472
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 473
    .local v1, "symlinkBytes":[B
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v2

    .line 475
    .end local v1    # "symlinkBytes":[B
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v1

    .line 480
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
