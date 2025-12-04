.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
.super Ljava/lang/Object;
.source "SevenZOutputFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;
    }
.end annotation


# instance fields
.field private additionalCountingStreams:[Lorg/apache/commons/compress/utils/CountingOutputStream;

.field private final additionalSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            "[J>;"
        }
    .end annotation
.end field

.field private final compressedCrc32:Ljava/util/zip/CRC32;

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

.field private final crc32:Ljava/util/zip/CRC32;

.field private currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

.field private final file:Ljava/io/RandomAccessFile;

.field private fileBytesWritten:J

.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Z

.field private numNonEmptyStreams:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "filename"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    .line 49
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->crc32:Ljava/util/zip/CRC32;

    .line 50
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->compressedCrc32:Ljava/util/zip/CRC32;

    .line 51
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    .line 52
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finished:Z

    .line 55
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->contentMethods:Ljava/lang/Iterable;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalSizes:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    .line 67
    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/util/zip/CRC32;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 45
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->crc32:Ljava/util/zip/CRC32;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 45
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/util/zip/CRC32;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 45
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->compressedCrc32:Ljava/util/zip/CRC32;

    return-object v0
.end method

.method static synthetic access$408(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)J
    .locals 4
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 45
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    return-wide v0
.end method

.method static synthetic access$414(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;J)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    .param p1, "x1"    # J

    .line 45
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    return-wide v0
.end method

.method private getContentMethods(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v0

    .line 321
    .local v0, "ms":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->contentMethods:Ljava/lang/Iterable;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private getCurrentOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->setupFileOutputStream()Lorg/apache/commons/compress/utils/CountingOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    return-object v0
.end method

.method private static reverse(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 733
    .local p0, "i":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 734
    .local v0, "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 735
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 736
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 737
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method private setupFileOutputStream()Lorg/apache/commons/compress/utils/CountingOutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$1;)V

    .line 283
    .local v0, "out":Ljava/io/OutputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v1, "moreStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/compress/utils/CountingOutputStream;>;"
    const/4 v2, 0x1

    .line 285
    .local v2, "first":Z
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->getContentMethods(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 286
    .local v4, "m":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    if-nez v2, :cond_0

    .line 287
    new-instance v5, Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-direct {v5, v0}, Lorg/apache/commons/compress/utils/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 288
    .local v5, "cos":Lorg/apache/commons/compress/utils/CountingOutputStream;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    move-object v0, v5

    .line 291
    .end local v5    # "cos":Lorg/apache/commons/compress/utils/CountingOutputStream;
    :cond_0
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->getMethod()Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->getOptions()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addEncoder(Ljava/io/OutputStream;Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v0

    .line 292
    const/4 v2, 0x0

    .line 293
    .end local v4    # "m":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    goto :goto_0

    .line 294
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 295
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/compress/utils/CountingOutputStream;

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalCountingStreams:[Lorg/apache/commons/compress/utils/CountingOutputStream;

    .line 297
    :cond_2
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$1;

    invoke-direct {v3, p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/OutputStream;)V

    return-object v3

    .line 279
    .end local v0    # "out":Ljava/io/OutputStream;
    .end local v1    # "moreStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/compress/utils/CountingOutputStream;>;"
    .end local v2    # "first":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current 7z entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V
    .locals 4
    .param p1, "header"    # Ljava/io/DataOutput;
    .param p2, "bits"    # Ljava/util/BitSet;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "cache":I
    const/4 v1, 0x7

    .line 719
    .local v1, "shift":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 720
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    .line 721
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    .line 722
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 723
    const/4 v1, 0x7

    .line 724
    const/4 v0, 0x0

    .line 719
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    .line 728
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 730
    :cond_2
    return-void
.end method

.method private writeFileATimes(Ljava/io/DataOutput;)V
    .locals 7
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, "numAccessDates":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 593
    .local v2, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    add-int/lit8 v0, v0, 0x1

    .line 596
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_0
    goto :goto_0

    .line 597
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    if-lez v0, :cond_6

    .line 598
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 600
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 601
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 602
    .local v2, "out":Ljava/io/DataOutputStream;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    .line 603
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 604
    new-instance v3, Ljava/util/BitSet;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 605
    .local v3, "aTimes":Ljava/util/BitSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 606
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/BitSet;->set(IZ)V

    .line 605
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 608
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v2, v3, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 609
    .end local v3    # "aTimes":Ljava/util/BitSet;
    goto :goto_2

    .line 610
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 612
    :goto_2
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 613
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 614
    .local v4, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 615
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getAccessDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 618
    .end local v4    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_4
    goto :goto_3

    .line 619
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 620
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 621
    .local v3, "contents":[B
    array-length v4, v3

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 622
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write([B)V

    .line 624
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v3    # "contents":[B
    :cond_6
    return-void
.end method

.method private writeFileAntiItems(Ljava/io/DataOutput;)V
    .locals 8
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "hasAntiItems":Z
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 518
    .local v1, "antiItems":Ljava/util/BitSet;
    const/4 v2, 0x0

    .line 519
    .local v2, "antiItemCounter":I
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 520
    .local v4, "file1":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v5

    if-nez v5, :cond_0

    .line 521
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isAntiItem()Z

    move-result v5

    .line 522
    .local v5, "isAnti":Z
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "antiItemCounter":I
    .local v6, "antiItemCounter":I
    invoke-virtual {v1, v2, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 523
    or-int/2addr v0, v5

    move v2, v6

    .line 525
    .end local v4    # "file1":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .end local v5    # "isAnti":Z
    .end local v6    # "antiItemCounter":I
    .restart local v2    # "antiItemCounter":I
    :cond_0
    goto :goto_0

    .line 526
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v0, :cond_2

    .line 527
    const/16 v3, 0x10

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    .line 528
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 529
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 530
    .local v4, "out":Ljava/io/DataOutputStream;
    invoke-direct {p0, v4, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 531
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 532
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 533
    .local v5, "contents":[B
    array-length v6, v5

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 534
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->write([B)V

    .line 536
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .end local v5    # "contents":[B
    :cond_2
    return-void
.end method

.method private writeFileCTimes(Ljava/io/DataOutput;)V
    .locals 7
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "numCreationDates":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 557
    .local v2, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    add-int/lit8 v0, v0, 0x1

    .line 560
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_0
    goto :goto_0

    .line 561
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    if-lez v0, :cond_6

    .line 562
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 564
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 565
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 566
    .local v2, "out":Ljava/io/DataOutputStream;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    .line 567
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 568
    new-instance v3, Ljava/util/BitSet;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 569
    .local v3, "cTimes":Ljava/util/BitSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 570
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/BitSet;->set(IZ)V

    .line 569
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 572
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v2, v3, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 573
    .end local v3    # "cTimes":Ljava/util/BitSet;
    goto :goto_2

    .line 574
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 576
    :goto_2
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 577
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 578
    .local v4, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 579
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 582
    .end local v4    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_4
    goto :goto_3

    .line 583
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 584
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 585
    .local v3, "contents":[B
    array-length v4, v3

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 586
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write([B)V

    .line 588
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v3    # "contents":[B
    :cond_6
    return-void
.end method

.method private writeFileEmptyFiles(Ljava/io/DataOutput;)V
    .locals 8
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "hasEmptyFiles":Z
    const/4 v1, 0x0

    .line 495
    .local v1, "emptyStreamCounter":I
    new-instance v2, Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 496
    .local v2, "emptyFiles":Ljava/util/BitSet;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 497
    .local v4, "file1":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v5

    if-nez v5, :cond_0

    .line 498
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory()Z

    move-result v5

    .line 499
    .local v5, "isDir":Z
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "emptyStreamCounter":I
    .local v6, "emptyStreamCounter":I
    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v2, v1, v7}, Ljava/util/BitSet;->set(IZ)V

    .line 500
    xor-int/lit8 v1, v5, 0x1

    or-int/2addr v0, v1

    move v1, v6

    .line 502
    .end local v4    # "file1":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .end local v5    # "isDir":Z
    .end local v6    # "emptyStreamCounter":I
    .restart local v1    # "emptyStreamCounter":I
    :cond_0
    goto :goto_0

    .line 503
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v0, :cond_2

    .line 504
    const/16 v3, 0xf

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    .line 505
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 506
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 507
    .local v4, "out":Ljava/io/DataOutputStream;
    invoke-direct {p0, v4, v2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 508
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 509
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 510
    .local v5, "contents":[B
    array-length v6, v5

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 511
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->write([B)V

    .line 513
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .end local v5    # "contents":[B
    :cond_2
    return-void
.end method

.method private writeFileEmptyStreams(Ljava/io/DataOutput;)V
    .locals 7
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "hasEmptyStreams":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 471
    .local v2, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v3

    if-nez v3, :cond_0

    .line 472
    const/4 v0, 0x1

    .line 473
    goto :goto_1

    .line 475
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_0
    goto :goto_0

    .line 476
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 477
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 478
    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 479
    .local v1, "emptyStreams":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 480
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 482
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 483
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 484
    .local v3, "out":Ljava/io/DataOutputStream;
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 485
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 486
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 487
    .local v4, "contents":[B
    array-length v5, v4

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 488
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write([B)V

    .line 490
    .end local v1    # "emptyStreams":Ljava/util/BitSet;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .end local v4    # "contents":[B
    :cond_3
    return-void
.end method

.method private writeFileMTimes(Ljava/io/DataOutput;)V
    .locals 7
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    const/4 v0, 0x0

    .line 628
    .local v0, "numLastModifiedDates":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 629
    .local v2, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    add-int/lit8 v0, v0, 0x1

    .line 632
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_0
    goto :goto_0

    .line 633
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    if-lez v0, :cond_6

    .line 634
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 636
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 637
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 638
    .local v2, "out":Ljava/io/DataOutputStream;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    .line 639
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 640
    new-instance v3, Ljava/util/BitSet;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 641
    .local v3, "mTimes":Ljava/util/BitSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 642
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/BitSet;->set(IZ)V

    .line 641
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 644
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v2, v3, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 645
    .end local v3    # "mTimes":Ljava/util/BitSet;
    goto :goto_2

    .line 646
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 648
    :goto_2
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 649
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 650
    .local v4, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 651
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 654
    .end local v4    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_4
    goto :goto_3

    .line 655
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 656
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 657
    .local v3, "contents":[B
    array-length v4, v3

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 658
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write([B)V

    .line 660
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v3    # "contents":[B
    :cond_6
    return-void
.end method

.method private writeFileNames(Ljava/io/DataOutput;)V
    .locals 7
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 541
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 542
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 543
    .local v1, "out":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 544
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 545
    .local v4, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-16LE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 546
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 547
    .end local v4    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    goto :goto_0

    .line 548
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 549
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 550
    .local v2, "contents":[B
    array-length v3, v2

    int-to-long v3, v3

    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 551
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write([B)V

    .line 552
    return-void
.end method

.method private writeFileWindowsAttributes(Ljava/io/DataOutput;)V
    .locals 7
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, "numWindowsAttributes":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 665
    .local v2, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    add-int/lit8 v0, v0, 0x1

    .line 668
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_0
    goto :goto_0

    .line 669
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    if-lez v0, :cond_6

    .line 670
    const/16 v1, 0x15

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 672
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 673
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 674
    .local v2, "out":Ljava/io/DataOutputStream;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    .line 675
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 676
    new-instance v3, Ljava/util/BitSet;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 677
    .local v3, "attributes":Ljava/util/BitSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 678
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/BitSet;->set(IZ)V

    .line 677
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 680
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v2, v3, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 681
    .end local v3    # "attributes":Ljava/util/BitSet;
    goto :goto_2

    .line 682
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 684
    :goto_2
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 685
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 686
    .local v4, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 687
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getWindowsAttributes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 689
    .end local v4    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_4
    goto :goto_3

    .line 690
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 691
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 692
    .local v3, "contents":[B
    array-length v4, v3

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 693
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write([B)V

    .line 695
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v3    # "contents":[B
    :cond_6
    return-void
.end method

.method private writeFilesInfo(Ljava/io/DataOutput;)V
    .locals 2
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 455
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 457
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileEmptyStreams(Ljava/io/DataOutput;)V

    .line 458
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileEmptyFiles(Ljava/io/DataOutput;)V

    .line 459
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileAntiItems(Ljava/io/DataOutput;)V

    .line 460
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileNames(Ljava/io/DataOutput;)V

    .line 461
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileCTimes(Ljava/io/DataOutput;)V

    .line 462
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileATimes(Ljava/io/DataOutput;)V

    .line 463
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileMTimes(Ljava/io/DataOutput;)V

    .line 464
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileWindowsAttributes(Ljava/io/DataOutput;)V

    .line 465
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 466
    return-void
.end method

.method private writeFolder(Ljava/io/DataOutput;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    .locals 5
    .param p1, "header"    # Ljava/io/DataOutput;
    .param p2, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 406
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 407
    .local v1, "numCoders":I
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->getContentMethods(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 408
    .local v3, "m":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    add-int/lit8 v1, v1, 0x1

    .line 409
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeSingleCodec(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;Ljava/io/OutputStream;)V

    .line 410
    .end local v3    # "m":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    goto :goto_0

    .line 412
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    int-to-long v2, v1

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 413
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write([B)V

    .line 414
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    .line 415
    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 416
    int-to-long v3, v2

    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 418
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private writeHeader(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 327
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 328
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeStreamsInfo(Ljava/io/DataOutput;)V

    .line 329
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFilesInfo(Ljava/io/DataOutput;)V

    .line 330
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 331
    return-void
.end method

.method private writePackInfo(Ljava/io/DataOutput;)V
    .locals 4
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 347
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 348
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 350
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 351
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 352
    .local v1, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 355
    .end local v1    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_0
    goto :goto_0

    .line 357
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 358
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 359
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 360
    .restart local v1    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCompressedCrcValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 363
    .end local v1    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_2
    goto :goto_1

    .line 365
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 366
    return-void
.end method

.method private writeSingleCodec(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "m"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    .param p2, "bos"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->getMethod()Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->getId()[B

    move-result-object v0

    .line 422
    .local v0, "id":[B
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->getMethod()Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->getOptions()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->getOptionsAsProperties(Ljava/lang/Object;)[B

    move-result-object v1

    .line 425
    .local v1, "properties":[B
    array-length v2, v0

    .line 426
    .local v2, "codecFlags":I
    array-length v3, v1

    if-lez v3, :cond_0

    .line 427
    or-int/lit8 v2, v2, 0x20

    .line 429
    :cond_0
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 430
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 432
    array-length v3, v1

    if-lez v3, :cond_1

    .line 433
    array-length v3, v1

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 434
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 436
    :cond_1
    return-void
.end method

.method private writeStreamsInfo(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    if-lez v0, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writePackInfo(Ljava/io/DataOutput;)V

    .line 336
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUnpackInfo(Ljava/io/DataOutput;)V

    .line 339
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeSubStreamsInfo(Ljava/io/DataOutput;)V

    .line 341
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 342
    return-void
.end method

.method private writeSubStreamsInfo(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 449
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 450
    return-void
.end method

.method private writeUint64(Ljava/io/DataOutput;J)V
    .locals 8
    .param p1, "header"    # Ljava/io/DataOutput;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "firstByte":I
    const/16 v1, 0x80

    .line 701
    .local v1, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 702
    const-wide/16 v4, 0x1

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v6, v6, 0x7

    shl-long/2addr v4, v6

    cmp-long v4, p2, v4

    if-gez v4, :cond_0

    .line 703
    int-to-long v4, v0

    mul-int/lit8 v6, v2, 0x8

    ushr-long v6, p2, v6

    or-long/2addr v4, v6

    long-to-int v0, v4

    .line 704
    goto :goto_1

    .line 706
    :cond_0
    or-int/2addr v0, v1

    .line 707
    ushr-int/lit8 v1, v1, 0x1

    .line 701
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    :cond_1
    :goto_1
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 710
    :goto_2
    if-lez v2, :cond_2

    .line 711
    const-wide/16 v4, 0xff

    and-long/2addr v4, p2

    long-to-int v4, v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write(I)V

    .line 712
    ushr-long/2addr p2, v3

    .line 710
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 714
    :cond_2
    return-void
.end method

.method private writeUnpackInfo(Ljava/io/DataOutput;)V
    .locals 9
    .param p1, "header"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 371
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 372
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 373
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 374
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 375
    .local v2, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFolder(Ljava/io/DataOutput;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    .line 378
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_0
    goto :goto_0

    .line 380
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 381
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 382
    .restart local v2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 383
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalSizes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 384
    .local v3, "moreSizes":[J
    if-eqz v3, :cond_2

    .line 385
    move-object v4, v3

    .local v4, "arr$":[J
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v5, :cond_2

    aget-wide v7, v4, v6

    .line 386
    .local v7, "s":J
    invoke-direct {p0, p1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 385
    .end local v7    # "s":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 389
    .end local v4    # "arr$":[J
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 391
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .end local v3    # "moreSizes":[J
    :cond_3
    goto :goto_1

    .line 393
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 394
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 395
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 396
    .restart local v2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 397
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 399
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_5
    goto :goto_3

    .line 401
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 402
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finished:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finish()V

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 115
    return-void
.end method

.method public closeArchiveEntry()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingOutputStream;->flush()V

    .line 156
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingOutputStream;->close()V

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 160
    .local v0, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 161
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 162
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    .line 163
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-virtual {v1}, Lorg/apache/commons/compress/utils/CountingOutputStream;->getBytesWritten()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 164
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCompressedSize(J)V

    .line 165
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 166
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->compressedCrc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCompressedCrcValue(J)V

    .line 167
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 168
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalCountingStreams:[Lorg/apache/commons/compress/utils/CountingOutputStream;

    if-eqz v1, :cond_3

    .line 169
    array-length v1, v1

    new-array v1, v1, [J

    .line 170
    .local v1, "sizes":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalCountingStreams:[Lorg/apache/commons/compress/utils/CountingOutputStream;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 171
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/commons/compress/utils/CountingOutputStream;->getBytesWritten()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalSizes:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v1    # "sizes":[J
    goto :goto_1

    .line 176
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 177
    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 178
    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCompressedSize(J)V

    .line 179
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 181
    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    .line 182
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalCountingStreams:[Lorg/apache/commons/compress/utils/CountingOutputStream;

    .line 183
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 184
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->compressedCrc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 185
    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    .line 186
    return-void
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 4
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    .line 129
    .local v0, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 130
    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(Ljava/util/Date;)V

    .line 132
    return-object v0
.end method

.method public finish()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finished:Z

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finished:Z

    .line 230
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 232
    .local v0, "headerPosition":J
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    .local v2, "headerBaos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 235
    .local v3, "header":Ljava/io/DataOutputStream;
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeHeader(Ljava/io/DataOutput;)V

    .line 236
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 237
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 238
    .local v4, "headerBytes":[B
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 240
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 243
    .local v5, "crc32":Ljava/util/zip/CRC32;
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 244
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    sget-object v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 246
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write(I)V

    .line 247
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write(I)V

    .line 250
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    .local v6, "startHeaderBaos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 252
    .local v7, "startHeaderStream":Ljava/io/DataOutputStream;
    const-wide/16 v8, 0x20

    sub-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 253
    const-wide v8, 0xffffffffL

    array-length v10, v4

    int-to-long v10, v10

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 254
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 255
    invoke-virtual {v5, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 256
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 257
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 258
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 259
    .local v8, "startHeaderBytes":[B
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 260
    invoke-virtual {v5, v8}, Ljava/util/zip/CRC32;->update([B)V

    .line 261
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 262
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v8}, Ljava/io/RandomAccessFile;->write([B)V

    .line 263
    return-void

    .line 226
    .end local v0    # "headerPosition":J
    .end local v2    # "headerBaos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "header":Ljava/io/DataOutputStream;
    .end local v4    # "headerBytes":[B
    .end local v5    # "crc32":Ljava/util/zip/CRC32;
    .end local v6    # "startHeaderBaos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "startHeaderStream":Ljava/io/DataOutputStream;
    .end local v8    # "startHeaderBytes":[B
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 2
    .param p1, "archiveEntry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 146
    .local v0, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public setContentCompression(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)V
    .locals 1
    .param p1, "method"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 83
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->setContentMethods(Ljava/lang/Iterable;)V

    .line 84
    return-void
.end method

.method public setContentMethods(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "methods":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->reverse(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->contentMethods:Ljava/lang/Iterable;

    .line 102
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->getCurrentOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 195
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->write([BII)V

    .line 204
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    if-lez p3, :cond_0

    .line 215
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->getCurrentOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 217
    :cond_0
    return-void
.end method
