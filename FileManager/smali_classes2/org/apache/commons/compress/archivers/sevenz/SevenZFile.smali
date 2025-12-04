.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final SIGNATURE_HEADER_SIZE:I = 0x20

.field static final sevenZSignature:[B


# instance fields
.field private final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field private currentEntryIndex:I

.field private currentFolderIndex:I

.field private currentFolderInputStream:Ljava/io/InputStream;

.field private final deferredBlockStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/io/RandomAccessFile;

.field private final fileName:Ljava/lang/String;

.field private password:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "filename"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[B)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 4
    .param p1, "filename"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 76
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "succeeded":Z
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 100
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 101
    if-eqz p2, :cond_0

    .line 102
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 103
    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 105
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    const/4 v0, 0x1

    .line 109
    .end local v1    # "succeeded":Z
    .local v0, "succeeded":Z
    if-nez v0, :cond_1

    .line 110
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 113
    :cond_1
    return-void

    .line 109
    .end local v0    # "succeeded":Z
    .restart local v1    # "succeeded":Z
    :catchall_0
    move-exception v0

    if-nez v1, :cond_2

    .line 110
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    throw v0
.end method

.method private buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 15
    .param p1, "folder"    # Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .param p2, "folderOffset"    # J
    .param p4, "firstPackStreamIndex"    # I
    .param p5, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    move-wide/from16 v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 867
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v7, v7, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v7, v7, p4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;J)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 871
    .local v2, "inputStreamStack":Ljava/io/InputStream;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 872
    .local v5, "methods":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 873
    .local v13, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v7, v13, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    iget-wide v7, v13, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 876
    iget-object v7, v13, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v14

    .line 877
    .local v14, "method":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v9

    iget-object v12, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    move-object v8, v2

    move-object v11, v13

    invoke-static/range {v7 .. v12}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v2

    .line 879
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    invoke-static {v14}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v8

    invoke-virtual {v8, v13, v2}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v14, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 881
    .end local v13    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .end local v14    # "method":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    goto :goto_0

    .line 874
    .restart local v13    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Multi input/output stream coders are not yet supported"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 882
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v13    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_1
    move-object/from16 v6, p5

    invoke-virtual {v6, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 883
    iget-boolean v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v7, :cond_2

    .line 884
    new-instance v13, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v9

    iget-wide v11, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-object v7, v13

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    return-object v13

    .line 887
    :cond_2
    return-object v2
.end method

.method private buildDecodingStream()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    move-object/from16 v6, p0

    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    iget v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget v7, v0, v1

    .line 825
    .local v7, "folderIndex":I
    if-gez v7, :cond_0

    .line 826
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 829
    return-void

    .line 831
    :cond_0
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v8, v0, v1

    .line 832
    .local v8, "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    iget v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    if-ne v0, v7, :cond_1

    .line 839
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 842
    :cond_1
    iput v7, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 843
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 844
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 845
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 846
    const/4 v0, 0x0

    iput-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 849
    :cond_2
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v0, v7

    .line 850
    .local v9, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aget v10, v0, v7

    .line 851
    .local v10, "firstPackStreamIndex":I
    const-wide/16 v0, 0x20

    iget-object v2, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    add-long/2addr v2, v0

    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aget-wide v0, v0, v10

    add-long v11, v2, v0

    .line 853
    .local v11, "folderOffset":J
    move-object/from16 v0, p0

    move-object v1, v9

    move-wide v2, v11

    move v4, v10

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 856
    .end local v9    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v10    # "firstPackStreamIndex":I
    .end local v11    # "folderOffset":J
    :goto_0
    new-instance v14, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v1

    invoke-direct {v14, v0, v1, v2}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 857
    .local v14, "fileStream":Ljava/io/InputStream;
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v15

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v17

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .end local v14    # "fileStream":Ljava/io/InputStream;
    .local v0, "fileStream":Ljava/io/InputStream;
    goto :goto_1

    .line 857
    .end local v0    # "fileStream":Ljava/io/InputStream;
    .restart local v14    # "fileStream":Ljava/io/InputStream;
    :cond_3
    move-object v0, v14

    .line 861
    .end local v14    # "fileStream":Ljava/io/InputStream;
    .restart local v0    # "fileStream":Ljava/io/InputStream;
    :goto_1
    iget-object v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    return-void
.end method

.method private calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 11
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;-><init>()V

    .line 773
    .local v0, "streamMap":Lorg/apache/commons/compress/archivers/sevenz/StreamMap;
    const/4 v1, 0x0

    .line 774
    .local v1, "nextFolderPackStreamIndex":I
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 775
    .local v2, "numFolders":I
    :goto_0
    new-array v4, v2, [I

    iput-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 776
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 777
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aput v1, v5, v4

    .line 778
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    array-length v5, v5

    add-int/2addr v1, v5

    .line 776
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 781
    .end local v4    # "i":I
    :cond_1
    const-wide/16 v4, 0x0

    .line 782
    .local v4, "nextPackStreamOffset":J
    iget-object v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    if-eqz v6, :cond_2

    iget-object v3, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v3, v3

    .line 783
    .local v3, "numPackSizes":I
    :cond_2
    new-array v6, v3, [J

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 784
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_3

    .line 785
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aput-wide v4, v7, v6

    .line 786
    iget-object v7, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v7, v7, v6

    add-long/2addr v4, v7

    .line 784
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 789
    .end local v6    # "i":I
    :cond_3
    new-array v6, v2, [I

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 790
    iget-object v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 791
    const/4 v6, 0x0

    .line 792
    .local v6, "nextFolderIndex":I
    const/4 v7, 0x0

    .line 793
    .local v7, "nextFolderUnpackStreamIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v9, v9

    if-ge v8, v9, :cond_b

    .line 794
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v7, :cond_4

    .line 795
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    const/4 v10, -0x1

    aput v10, v9, v8

    .line 796
    goto :goto_7

    .line 798
    :cond_4
    if-nez v7, :cond_8

    .line 799
    :goto_4
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v9

    if-ge v6, v9, :cond_6

    .line 800
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aput v8, v9, v6

    .line 801
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v9, v6

    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lez v9, :cond_5

    .line 802
    goto :goto_5

    .line 799
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 805
    :cond_6
    :goto_5
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v9

    if-ge v6, v9, :cond_7

    goto :goto_6

    .line 806
    :cond_7
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Too few folders in archive"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 809
    :cond_8
    :goto_6
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aput v6, v9, v8

    .line 810
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v9

    if-nez v9, :cond_9

    .line 811
    goto :goto_7

    .line 813
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 814
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v9, v6

    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lt v7, v9, :cond_a

    .line 815
    add-int/lit8 v6, v6, 0x1

    .line 816
    const/4 v7, 0x0

    .line 793
    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 820
    .end local v8    # "i":I
    :cond_b
    iput-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 821
    return-void
.end method

.method private getCurrentStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 905
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 909
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 913
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 914
    .local v0, "stream":Ljava/io/InputStream;
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 915
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 916
    .end local v0    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 906
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current 7z entry (call getNextEntry() first)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 974
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 975
    return v1

    .line 978
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 979
    aget-byte v3, p0, v0

    aget-byte v2, v2, v0

    if-eq v3, v2, :cond_1

    .line 980
    return v1

    .line 978
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 983
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;
    .locals 4
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 586
    .local v0, "areAllDefined":I
    if-eqz v0, :cond_1

    .line 587
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 588
    .local v1, "bits":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 589
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 592
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v1

    .line 594
    .restart local v1    # "bits":Ljava/util/BitSet;
    :goto_1
    return-object v1
.end method

.method private readArchiveProperties(Ljava/io/DataInput;)V
    .locals 4
    .param p1, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 277
    .local v0, "nid":I
    :goto_0
    if-eqz v0, :cond_0

    .line 278
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v1

    .line 279
    .local v1, "propertySize":J
    long-to-int v3, v1

    new-array v3, v3, [B

    .line 280
    .local v3, "property":[B
    invoke-interface {p1, v3}, Ljava/io/DataInput;->readFully([B)V

    .line 281
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 282
    .end local v1    # "propertySize":J
    .end local v3    # "property":[B
    goto :goto_0

    .line 283
    :cond_0
    return-void
.end method

.method private readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;
    .locals 5
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 599
    .local v0, "bits":Ljava/util/BitSet;
    const/4 v1, 0x0

    .line 600
    .local v1, "mask":I
    const/4 v2, 0x0

    .line 601
    .local v2, "cache":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_2

    .line 602
    if-nez v1, :cond_0

    .line 603
    const/16 v1, 0x80

    .line 604
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 606
    :cond_0
    and-int v4, v2, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 607
    ushr-int/lit8 v1, v1, 0x1

    .line 601
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 609
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method private readEncodedHeader(Ljava/io/DataInputStream;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/io/DataInputStream;
    .locals 15
    .param p1, "header"    # Ljava/io/DataInputStream;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 290
    iget-object v0, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    .line 291
    .local v4, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    const/4 v5, 0x0

    .line 292
    .local v5, "firstPackStreamIndex":I
    iget-wide v6, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    const-wide/16 v8, 0x20

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    .line 295
    .local v6, "folderOffset":J
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 296
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;

    iget-object v8, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    iget-object v9, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v9, v9, v3

    invoke-direct {v0, v8, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 298
    .local v0, "inputStreamStack":Ljava/io/InputStream;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 299
    .local v14, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v8, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    iget-wide v8, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 302
    iget-object v8, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v10

    move-object v9, v0

    move-object v12, v14

    move-object/from16 v13, p3

    invoke-static/range {v8 .. v13}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v0

    .line 304
    .end local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    goto :goto_0

    .line 300
    .restart local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_0
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Multi input/output stream coders are not yet supported"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 305
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_1
    iget-boolean v3, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v3, :cond_2

    .line 306
    new-instance v3, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v10

    iget-wide v12, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-object v8, v3

    move-object v9, v0

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v0, v3

    goto :goto_1

    .line 305
    :cond_2
    move-object v3, v0

    .line 309
    .end local v0    # "inputStreamStack":Ljava/io/InputStream;
    .local v3, "inputStreamStack":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v8

    long-to-int v0, v8

    new-array v8, v0, [B

    .line 310
    .local v8, "nextHeader":[B
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v0

    .line 312
    .local v9, "nextHeaderInputStream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v9, v8}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 315
    nop

    .line 316
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 314
    :catchall_0
    move-exception v0

    move-object v10, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    throw v10
.end method

.method private readFilesInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 20
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v3

    .line 614
    .local v3, "numFiles":J
    long-to-int v5, v3

    new-array v5, v5, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 615
    .local v5, "files":[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 616
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    aput-object v7, v5, v6

    .line 615
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 618
    .end local v6    # "i":I
    :cond_0
    const/4 v6, 0x0

    .line 619
    .local v6, "isEmptyStream":Ljava/util/BitSet;
    const/4 v7, 0x0

    .line 620
    .local v7, "isEmptyFile":Ljava/util/BitSet;
    const/4 v8, 0x0

    .line 622
    .local v8, "isAnti":Ljava/util/BitSet;
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v9

    .line 623
    .local v9, "propertyType":I
    if-nez v9, :cond_8

    .line 624
    nop

    .line 747
    .end local v9    # "propertyType":I
    const/4 v9, 0x0

    .line 748
    .local v9, "nonEmptyFileCounter":I
    const/4 v12, 0x0

    .line 749
    .local v12, "emptyFileCounter":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    array-length v14, v5

    if-ge v13, v14, :cond_7

    .line 750
    aget-object v14, v5, v13

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-nez v6, :cond_1

    :goto_3
    move/from16 v10, v16

    goto :goto_4

    :cond_1
    invoke-virtual {v6, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-nez v17, :cond_2

    goto :goto_3

    :cond_2
    move v10, v15

    :goto_4
    invoke-virtual {v14, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 751
    aget-object v10, v5, v13

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 752
    aget-object v10, v5, v13

    invoke-virtual {v10, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 753
    aget-object v10, v5, v13

    invoke-virtual {v10, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 754
    aget-object v10, v5, v13

    iget-object v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 755
    aget-object v10, v5, v13

    iget-object v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v14, v11, v9

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 756
    aget-object v10, v5, v13

    iget-object v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    aget-wide v14, v11, v9

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 757
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 759
    :cond_3
    aget-object v10, v5, v13

    if-nez v7, :cond_4

    :goto_5
    move/from16 v11, v16

    goto :goto_6

    :cond_4
    invoke-virtual {v7, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_5

    :cond_5
    move v11, v15

    :goto_6
    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 760
    aget-object v10, v5, v13

    if-nez v8, :cond_6

    move v11, v15

    goto :goto_7

    :cond_6
    invoke-virtual {v8, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    :goto_7
    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 761
    aget-object v10, v5, v13

    invoke-virtual {v10, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 762
    aget-object v10, v5, v13

    const-wide/16 v14, 0x0

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 763
    add-int/lit8 v12, v12, 0x1

    .line 749
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 766
    .end local v13    # "i":I
    :cond_7
    iput-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 767
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 768
    return-void

    .line 626
    .end local v12    # "emptyFileCounter":I
    .local v9, "propertyType":I
    :cond_8
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v10

    .line 627
    .local v10, "size":J
    const-string v12, "Unimplemented"

    packed-switch v9, :pswitch_data_0

    .line 740
    :pswitch_0
    move-wide/from16 v18, v3

    move-object/from16 v17, v7

    .end local v3    # "numFiles":J
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .local v17, "isEmptyFile":Ljava/util/BitSet;
    .local v18, "numFiles":J
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/io/DataInput;J)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-ltz v2, :cond_1d

    goto/16 :goto_10

    .line 732
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "numFiles":J
    .restart local v3    # "numFiles":J
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :pswitch_1
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/io/DataInput;J)J

    move-result-wide v12

    cmp-long v12, v12, v10

    if-ltz v12, :cond_9

    move-wide/from16 v18, v3

    move-object/from16 v17, v7

    goto/16 :goto_10

    .line 733
    :cond_9
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Incomplete kDummy property"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 726
    :pswitch_2
    new-instance v12, Ljava/io/IOException;

    const-string v13, "kStartPos is unsupported, please report"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 712
    :pswitch_3
    array-length v13, v5

    invoke-direct {v0, v1, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v13

    .line 713
    .local v13, "attributesDefined":Ljava/util/BitSet;
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v14

    .line 714
    .local v14, "external":I
    if-nez v14, :cond_c

    .line 717
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_9
    array-length v15, v5

    if-ge v12, v15, :cond_b

    .line 718
    aget-object v15, v5, v12

    invoke-virtual {v13, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    invoke-virtual {v15, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    .line 719
    aget-object v2, v5, v12

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 720
    aget-object v2, v5, v12

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v15

    invoke-virtual {v2, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    .line 717
    :cond_a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    goto :goto_9

    .line 723
    .end local v12    # "i":I
    :cond_b
    move-wide/from16 v18, v3

    move-object/from16 v17, v7

    goto/16 :goto_10

    .line 715
    :cond_c
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    .end local v13    # "attributesDefined":Ljava/util/BitSet;
    .end local v14    # "external":I
    :pswitch_4
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    .line 699
    .local v2, "timesDefined":Ljava/util/BitSet;
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v13

    .line 700
    .local v13, "external":I
    if-nez v13, :cond_f

    .line 703
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    array-length v14, v5

    if-ge v12, v14, :cond_e

    .line 704
    aget-object v14, v5, v12

    invoke-virtual {v2, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    invoke-virtual {v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    .line 705
    aget-object v14, v5, v12

    invoke-virtual {v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 706
    aget-object v14, v5, v12

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v15

    move-wide/from16 v18, v3

    move-object v4, v2

    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v3    # "numFiles":J
    .local v4, "timesDefined":Ljava/util/BitSet;
    .restart local v18    # "numFiles":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    goto :goto_b

    .line 705
    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v18    # "numFiles":J
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    :cond_d
    move-wide/from16 v18, v3

    move-object v4, v2

    .line 703
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v3    # "numFiles":J
    .restart local v4    # "timesDefined":Ljava/util/BitSet;
    .restart local v18    # "numFiles":J
    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object v2, v4

    move-wide/from16 v3, v18

    goto :goto_a

    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v18    # "numFiles":J
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    :cond_e
    move-wide/from16 v18, v3

    move-object v4, v2

    .line 709
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v3    # "numFiles":J
    .end local v12    # "i":I
    .restart local v4    # "timesDefined":Ljava/util/BitSet;
    .restart local v18    # "numFiles":J
    move-object/from16 v17, v7

    goto/16 :goto_10

    .line 701
    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v18    # "numFiles":J
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    :cond_f
    move-object v4, v2

    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v4    # "timesDefined":Ljava/util/BitSet;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v13    # "external":I
    :pswitch_5
    move-wide/from16 v18, v3

    .end local v3    # "numFiles":J
    .restart local v18    # "numFiles":J
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    .line 685
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 686
    .local v3, "external":I
    if-nez v3, :cond_12

    .line 689
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    array-length v12, v5

    if-ge v4, v12, :cond_11

    .line 690
    aget-object v12, v5, v4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    .line 691
    aget-object v12, v5, v4

    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 692
    aget-object v12, v5, v4

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    .line 689
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 695
    .end local v4    # "i":I
    :cond_11
    move-object/from16 v17, v7

    goto/16 :goto_10

    .line 687
    :cond_12
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 670
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v18    # "numFiles":J
    .local v3, "numFiles":J
    :pswitch_6
    move-wide/from16 v18, v3

    .end local v3    # "numFiles":J
    .restart local v18    # "numFiles":J
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    .line 671
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 672
    .local v3, "external":I
    if-nez v3, :cond_15

    .line 675
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_d
    array-length v12, v5

    if-ge v4, v12, :cond_14

    .line 676
    aget-object v12, v5, v4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    .line 677
    aget-object v12, v5, v4

    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 678
    aget-object v12, v5, v4

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    .line 675
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 681
    .end local v4    # "i":I
    :cond_14
    move-object/from16 v17, v7

    goto/16 :goto_10

    .line 673
    :cond_15
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 647
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v18    # "numFiles":J
    .local v3, "numFiles":J
    :pswitch_7
    move-wide/from16 v18, v3

    .end local v3    # "numFiles":J
    .restart local v18    # "numFiles":J
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 648
    .local v2, "external":I
    if-nez v2, :cond_1a

    .line 651
    const-wide/16 v3, 0x1

    sub-long v12, v10, v3

    and-long/2addr v12, v3

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_19

    .line 654
    sub-long v3, v10, v3

    long-to-int v3, v3

    new-array v3, v3, [B

    .line 655
    .local v3, "names":[B
    invoke-interface {v1, v3}, Ljava/io/DataInput;->readFully([B)V

    .line 656
    const/4 v4, 0x0

    .line 657
    .local v4, "nextFile":I
    const/4 v12, 0x0

    .line 658
    .local v12, "nextName":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_e
    array-length v14, v3

    if-ge v13, v14, :cond_17

    .line 659
    aget-byte v14, v3, v13

    if-nez v14, :cond_16

    add-int/lit8 v14, v13, 0x1

    aget-byte v14, v3, v14

    if-nez v14, :cond_16

    .line 660
    add-int/lit8 v14, v4, 0x1

    .end local v4    # "nextFile":I
    .local v14, "nextFile":I
    aget-object v4, v5, v4

    new-instance v15, Ljava/lang/String;

    move/from16 v16, v2

    .end local v2    # "external":I
    .local v16, "external":I
    sub-int v2, v13, v12

    move-object/from16 v17, v7

    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    const-string v7, "UTF-16LE"

    invoke-direct {v15, v3, v12, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 661
    add-int/lit8 v2, v13, 0x2

    move v12, v2

    move v4, v14

    .end local v12    # "nextName":I
    .local v2, "nextName":I
    goto :goto_f

    .line 659
    .end local v14    # "nextFile":I
    .end local v16    # "external":I
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .local v2, "external":I
    .restart local v4    # "nextFile":I
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v12    # "nextName":I
    :cond_16
    move/from16 v16, v2

    move-object/from16 v17, v7

    .line 658
    .end local v2    # "external":I
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v16    # "external":I
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    :goto_f
    add-int/lit8 v13, v13, 0x2

    move/from16 v2, v16

    move-object/from16 v7, v17

    goto :goto_e

    .end local v16    # "external":I
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v2    # "external":I
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :cond_17
    move/from16 v16, v2

    move-object/from16 v17, v7

    .line 664
    .end local v2    # "external":I
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .end local v13    # "i":I
    .restart local v16    # "external":I
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    array-length v2, v3

    if-ne v12, v2, :cond_18

    array-length v2, v5

    if-ne v4, v2, :cond_18

    goto :goto_10

    .line 665
    :cond_18
    new-instance v2, Ljava/io/IOException;

    const-string v7, "Error parsing file names"

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 652
    .end local v3    # "names":[B
    .end local v4    # "nextFile":I
    .end local v12    # "nextName":I
    .end local v16    # "external":I
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v2    # "external":I
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :cond_19
    move/from16 v16, v2

    .end local v2    # "external":I
    .restart local v16    # "external":I
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File names length invalid"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 649
    .end local v16    # "external":I
    .restart local v2    # "external":I
    :cond_1a
    move/from16 v16, v2

    .end local v2    # "external":I
    .restart local v16    # "external":I
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not implemented"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 640
    .end local v16    # "external":I
    .end local v18    # "numFiles":J
    .local v3, "numFiles":J
    :pswitch_8
    move-wide/from16 v18, v3

    move-object/from16 v17, v7

    .end local v3    # "numFiles":J
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "numFiles":J
    if-eqz v6, :cond_1b

    .line 643
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    .line 644
    .end local v8    # "isAnti":Ljava/util/BitSet;
    .local v2, "isAnti":Ljava/util/BitSet;
    move-object v8, v2

    move-object/from16 v7, v17

    goto :goto_11

    .line 641
    .end local v2    # "isAnti":Ljava/util/BitSet;
    .restart local v8    # "isAnti":Ljava/util/BitSet;
    :cond_1b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "numFiles":J
    .restart local v3    # "numFiles":J
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :pswitch_9
    move-wide/from16 v18, v3

    move-object/from16 v17, v7

    .end local v3    # "numFiles":J
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "numFiles":J
    if-eqz v6, :cond_1c

    .line 636
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    .line 637
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .local v2, "isEmptyFile":Ljava/util/BitSet;
    move-object v7, v2

    goto :goto_11

    .line 634
    .end local v2    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    :cond_1c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 629
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "numFiles":J
    .restart local v3    # "numFiles":J
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :pswitch_a
    move-wide/from16 v18, v3

    move-object/from16 v17, v7

    .end local v3    # "numFiles":J
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "numFiles":J
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    .line 630
    .end local v6    # "isEmptyStream":Ljava/util/BitSet;
    .local v2, "isEmptyStream":Ljava/util/BitSet;
    move-object v6, v2

    goto :goto_11

    .line 746
    .end local v2    # "isEmptyStream":Ljava/util/BitSet;
    .end local v9    # "propertyType":I
    .end local v10    # "size":J
    .restart local v6    # "isEmptyStream":Ljava/util/BitSet;
    :goto_10
    move-object/from16 v7, v17

    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :goto_11
    move-object/from16 v2, p2

    move-wide/from16 v3, v18

    goto/16 :goto_1

    .line 741
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v9    # "propertyType":I
    .restart local v10    # "size":J
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    :cond_1d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incomplete property of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readFolder(Ljava/io/DataInput;)Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .locals 20
    .param p1, "header"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    move-object/from16 v0, p1

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;-><init>()V

    .line 507
    .local v1, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v2

    .line 508
    .local v2, "numCoders":J
    long-to-int v4, v2

    new-array v4, v4, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 509
    .local v4, "coders":[Lorg/apache/commons/compress/archivers/sevenz/Coder;
    const-wide/16 v5, 0x0

    .line 510
    .local v5, "totalInStreams":J
    const-wide/16 v7, 0x0

    .line 511
    .local v7, "totalOutStreams":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v4

    if-ge v9, v10, :cond_6

    .line 512
    new-instance v10, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    invoke-direct {v10}, Lorg/apache/commons/compress/archivers/sevenz/Coder;-><init>()V

    aput-object v10, v4, v9

    .line 513
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    .line 514
    .local v10, "bits":I
    and-int/lit8 v14, v10, 0xf

    .line 515
    .local v14, "idSize":I
    and-int/lit8 v15, v10, 0x10

    const/16 v16, 0x1

    if-nez v15, :cond_0

    move/from16 v15, v16

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    .line 516
    .local v15, "isSimple":Z
    :goto_1
    and-int/lit8 v17, v10, 0x20

    if-eqz v17, :cond_1

    move/from16 v17, v16

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    .line 517
    .local v17, "hasAttributes":Z
    :goto_2
    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_2

    move/from16 v11, v16

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    .line 519
    .local v11, "moreAlternativeMethods":Z
    :goto_3
    aget-object v12, v4, v9

    new-array v13, v14, [B

    iput-object v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 520
    aget-object v12, v4, v9

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-interface {v0, v12}, Ljava/io/DataInput;->readFully([B)V

    .line 521
    if-eqz v15, :cond_3

    .line 522
    aget-object v12, v4, v9

    move-wide/from16 v18, v2

    const-wide/16 v2, 0x1

    .end local v2    # "numCoders":J
    .local v18, "numCoders":J
    iput-wide v2, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 523
    aget-object v12, v4, v9

    iput-wide v2, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    goto :goto_4

    .line 525
    .end local v18    # "numCoders":J
    .restart local v2    # "numCoders":J
    :cond_3
    move-wide/from16 v18, v2

    .end local v2    # "numCoders":J
    .restart local v18    # "numCoders":J
    aget-object v2, v4, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v12

    iput-wide v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 526
    aget-object v2, v4, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v12

    iput-wide v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 528
    :goto_4
    aget-object v2, v4, v9

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    add-long/2addr v5, v2

    .line 529
    aget-object v2, v4, v9

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    add-long/2addr v7, v2

    .line 530
    if-eqz v17, :cond_4

    .line 531
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v2

    .line 532
    .local v2, "propertiesSize":J
    aget-object v12, v4, v9

    long-to-int v13, v2

    new-array v13, v13, [B

    iput-object v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 533
    aget-object v12, v4, v9

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    invoke-interface {v0, v12}, Ljava/io/DataInput;->readFully([B)V

    .line 536
    .end local v2    # "propertiesSize":J
    :cond_4
    if-nez v11, :cond_5

    .line 511
    .end local v10    # "bits":I
    .end local v11    # "moreAlternativeMethods":Z
    .end local v14    # "idSize":I
    .end local v15    # "isSimple":Z
    .end local v17    # "hasAttributes":Z
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v2, v18

    goto :goto_0

    .line 537
    .restart local v10    # "bits":I
    .restart local v11    # "moreAlternativeMethods":Z
    .restart local v14    # "idSize":I
    .restart local v15    # "isSimple":Z
    .restart local v17    # "hasAttributes":Z
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    .end local v10    # "bits":I
    .end local v11    # "moreAlternativeMethods":Z
    .end local v14    # "idSize":I
    .end local v15    # "isSimple":Z
    .end local v17    # "hasAttributes":Z
    .end local v18    # "numCoders":J
    .local v2, "numCoders":J
    :cond_6
    move-wide/from16 v18, v2

    .line 541
    .end local v2    # "numCoders":J
    .end local v9    # "i":I
    .restart local v18    # "numCoders":J
    iput-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 542
    iput-wide v5, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 543
    iput-wide v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 545
    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-eqz v2, :cond_e

    .line 548
    const-wide/16 v2, 0x1

    sub-long v9, v7, v2

    .line 549
    .local v9, "numBindPairs":J
    long-to-int v2, v9

    new-array v2, v2, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 550
    .local v2, "bindPairs":[Lorg/apache/commons/compress/archivers/sevenz/BindPair;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    array-length v11, v2

    if-ge v3, v11, :cond_7

    .line 551
    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    invoke-direct {v11}, Lorg/apache/commons/compress/archivers/sevenz/BindPair;-><init>()V

    aput-object v11, v2, v3

    .line 552
    aget-object v11, v2, v3

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v12

    iput-wide v12, v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 553
    aget-object v11, v2, v3

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v12

    iput-wide v12, v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    .line 550
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 555
    .end local v3    # "i":I
    :cond_7
    iput-object v2, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 557
    cmp-long v3, v5, v9

    if-ltz v3, :cond_d

    .line 560
    sub-long v11, v5, v9

    .line 561
    .local v11, "numPackedStreams":J
    long-to-int v3, v11

    new-array v3, v3, [J

    .line 562
    .local v3, "packedStreams":[J
    const-wide/16 v13, 0x1

    cmp-long v13, v11, v13

    if-nez v13, :cond_b

    .line 564
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    long-to-int v14, v5

    if-ge v13, v14, :cond_9

    .line 565
    invoke-virtual {v1, v13}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForInStream(I)I

    move-result v14

    if-gez v14, :cond_8

    .line 566
    goto :goto_7

    .line 564
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 569
    :cond_9
    :goto_7
    long-to-int v14, v5

    if-eq v13, v14, :cond_a

    .line 572
    int-to-long v14, v13

    const/16 v16, 0x0

    aput-wide v14, v3, v16

    .line 573
    .end local v13    # "i":I
    goto :goto_9

    .line 570
    .restart local v13    # "i":I
    :cond_a
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Couldn\'t find stream\'s bind pair index"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 574
    .end local v13    # "i":I
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    long-to-int v14, v11

    if-ge v13, v14, :cond_c

    .line 575
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v14

    aput-wide v14, v3, v13

    .line 574
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 578
    .end local v13    # "i":I
    :cond_c
    :goto_9
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 580
    return-object v1

    .line 558
    .end local v3    # "packedStreams":[J
    .end local v11    # "numPackedStreams":J
    :cond_d
    new-instance v3, Ljava/io/IOException;

    const-string v11, "Total input streams can\'t be less than the number of bind pairs"

    invoke-direct {v3, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    .end local v2    # "bindPairs":[Lorg/apache/commons/compress/archivers/sevenz/BindPair;
    .end local v9    # "numBindPairs":J
    :cond_e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Total output streams can\'t be 0"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readHeader(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 4
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 249
    .local v0, "nid":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 250
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readArchiveProperties(Ljava/io/DataInput;)V

    .line 251
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 254
    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 259
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 260
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 261
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 264
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 265
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFilesInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 266
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 269
    :cond_2
    if-nez v0, :cond_3

    .line 272
    return-void

    .line 270
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Badly terminated header, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Additional streams unsupported"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 17
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    move-object/from16 v0, p0

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 180
    .local v1, "signature":[B
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 181
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 185
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    .line 186
    .local v2, "archiveVersionMajor":B
    iget-object v3, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    .line 187
    .local v3, "archiveVersionMinor":B
    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 192
    const-wide v5, 0xffffffffL

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    .line 193
    .local v5, "startHeaderCrc":J
    invoke-direct {v0, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-result-object v7

    .line 195
    .local v7, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    iget-wide v8, v7, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    long-to-int v8, v8

    .line 196
    .local v8, "nextHeaderSizeInt":I
    int-to-long v9, v8

    iget-wide v11, v7, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 199
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    const-wide/16 v10, 0x20

    iget-wide v12, v7, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    add-long/2addr v12, v10

    invoke-virtual {v9, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 200
    new-array v9, v8, [B

    .line 201
    .local v9, "nextHeader":[B
    iget-object v10, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 202
    new-instance v10, Ljava/util/zip/CRC32;

    invoke-direct {v10}, Ljava/util/zip/CRC32;-><init>()V

    .line 203
    .local v10, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v10, v9}, Ljava/util/zip/CRC32;->update([B)V

    .line 204
    iget-wide v11, v7, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    .line 208
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 209
    .local v11, "byteStream":Ljava/io/ByteArrayInputStream;
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 211
    .local v12, "nextHeaderInputStream":Ljava/io/DataInputStream;
    new-instance v13, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v13}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 212
    .local v13, "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v14

    .line 213
    .local v14, "nid":I
    const/16 v15, 0x17

    if-ne v14, v15, :cond_0

    .line 214
    move-object/from16 v15, p1

    invoke-direct {v0, v12, v13, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readEncodedHeader(Ljava/io/DataInputStream;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/io/DataInputStream;

    move-result-object v12

    .line 217
    new-instance v16, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct/range {v16 .. v16}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    move-object/from16 v13, v16

    .line 218
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v14

    goto :goto_0

    .line 213
    :cond_0
    move-object/from16 v15, p1

    .line 220
    :goto_0
    if-ne v14, v4, :cond_1

    .line 221
    invoke-direct {v0, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeader(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 222
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 226
    return-object v13

    .line 224
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v0, "Broken or unsupported archive: no Header"

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 205
    .end local v11    # "byteStream":Ljava/io/ByteArrayInputStream;
    .end local v12    # "nextHeaderInputStream":Ljava/io/DataInputStream;
    .end local v13    # "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .end local v14    # "nid":I
    :cond_2
    move-object/from16 v15, p1

    new-instance v0, Ljava/io/IOException;

    const-string v4, "NextHeader CRC mismatch"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    .end local v9    # "nextHeader":[B
    .end local v10    # "crc":Ljava/util/zip/CRC32;
    :cond_3
    move-object/from16 v15, p1

    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot handle nextHeaderSize "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    .end local v5    # "startHeaderCrc":J
    .end local v7    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .end local v8    # "nextHeaderSizeInt":I
    :cond_4
    move-object/from16 v15, p1

    new-instance v0, Ljava/io/IOException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "Unsupported 7z version (%d,%d)"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    .end local v2    # "archiveVersionMajor":B
    .end local v3    # "archiveVersionMinor":B
    :cond_5
    move-object/from16 v15, p1

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad 7z signature"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 9
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 347
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v0

    .line 348
    .local v0, "numPackStreams":J
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 349
    .local v2, "nid":I
    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 350
    long-to-int v3, v0

    new-array v3, v3, [J

    iput-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 351
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 352
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 357
    :cond_1
    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 358
    long-to-int v3, v0

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 359
    long-to-int v3, v0

    new-array v3, v3, [J

    iput-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    .line 360
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    long-to-int v4, v0

    if-ge v3, v4, :cond_3

    .line 361
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    const-wide v5, 0xffffffffL

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    aput-wide v5, v4, v3

    .line 360
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 366
    .end local v3    # "i":I
    :cond_3
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 369
    :cond_4
    if-nez v2, :cond_5

    .line 372
    return-void

    .line 370
    :cond_5
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Badly terminated PackInfo ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .locals 10
    .param p1, "startHeaderCrc"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>()V

    .line 231
    .local v0, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    const/4 v1, 0x0

    .line 233
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v9, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    const-wide/16 v5, 0x14

    invoke-direct {v4, v3, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;J)V

    const-wide/16 v5, 0x14

    move-object v3, v9

    move-wide v7, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    invoke-direct {v2, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 235
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 236
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    .line 237
    const-wide v2, 0xffffffffL

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    nop

    .line 240
    nop

    .line 241
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-object v0

    .line 240
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_0
    throw v2
.end method

.method private readStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 3
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 322
    .local v0, "nid":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 323
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readPackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 324
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 327
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 328
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUnpackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 329
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 332
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 335
    :goto_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 336
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readSubStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 337
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 340
    :cond_2
    if-nez v0, :cond_3

    .line 343
    return-void

    .line 341
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Badly terminated StreamsInfo"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readSubStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 21
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    move-object/from16 v0, p2

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .local v1, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 423
    .local v5, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iput v4, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 422
    .end local v5    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    .end local v1    # "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v1, v1

    .line 427
    .local v1, "totalUnpackStreams":I
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 428
    .local v2, "nid":I
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 429
    const/4 v1, 0x0

    .line 430
    iget-object v3, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .local v3, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 431
    .local v7, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v8

    .line 432
    .local v8, "numStreams":J
    long-to-int v10, v8

    iput v10, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 433
    int-to-long v10, v1

    add-long/2addr v10, v8

    long-to-int v1, v10

    .line 430
    .end local v7    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v8    # "numStreams":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 435
    .end local v3    # "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 438
    :cond_2
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    invoke-direct {v3}, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;-><init>()V

    .line 439
    .local v3, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    new-array v5, v1, [J

    iput-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 440
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 441
    new-array v5, v1, [J

    iput-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 443
    const/4 v5, 0x0

    .line 444
    .local v5, "nextUnpackStream":I
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .local v6, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    const/16 v9, 0x9

    if-ge v8, v7, :cond_5

    aget-object v10, v6, v8

    .line 445
    .local v10, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-nez v11, :cond_3

    .line 446
    goto :goto_4

    .line 448
    :cond_3
    const-wide/16 v11, 0x0

    .line 449
    .local v11, "sum":J
    if-ne v2, v9, :cond_4

    .line 450
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    iget v13, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    sub-int/2addr v13, v4

    if-ge v9, v13, :cond_4

    .line 451
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v13

    .line 452
    .local v13, "size":J
    iget-object v15, v3, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v16, v5, 0x1

    .end local v5    # "nextUnpackStream":I
    .local v16, "nextUnpackStream":I
    aput-wide v13, v15, v5

    .line 453
    add-long/2addr v11, v13

    .line 450
    .end local v13    # "size":J
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    goto :goto_3

    .line 456
    .end local v9    # "i":I
    .end local v16    # "nextUnpackStream":I
    .restart local v5    # "nextUnpackStream":I
    :cond_4
    iget-object v9, v3, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v13, v5, 0x1

    .end local v5    # "nextUnpackStream":I
    .local v13, "nextUnpackStream":I
    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v14

    sub-long/2addr v14, v11

    aput-wide v14, v9, v5

    move v5, v13

    .line 444
    .end local v10    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v11    # "sum":J
    .end local v13    # "nextUnpackStream":I
    .restart local v5    # "nextUnpackStream":I
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 458
    .end local v6    # "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    :cond_5
    if-ne v2, v9, :cond_6

    .line 459
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 462
    :cond_6
    const/4 v6, 0x0

    .line 463
    .local v6, "numDigests":I
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .local v7, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_5
    if-ge v9, v8, :cond_9

    aget-object v10, v7, v9

    .line 464
    .restart local v10    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v11, v4, :cond_7

    iget-boolean v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-nez v11, :cond_8

    .line 465
    :cond_7
    iget v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-int/2addr v6, v11

    .line 463
    .end local v10    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 469
    .end local v7    # "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    :cond_9
    const/16 v7, 0xa

    if-ne v2, v7, :cond_f

    .line 470
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct {v7, v8, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v9

    .line 471
    .local v9, "hasMissingCrc":Ljava/util/BitSet;
    new-array v10, v6, [J

    .line 472
    .local v10, "missingCrcs":[J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v6, :cond_b

    .line 473
    invoke-virtual {v9, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 474
    const-wide v12, 0xffffffffL

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    int-to-long v14, v14

    and-long/2addr v12, v14

    aput-wide v12, v10, v11

    .line 472
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 477
    .end local v11    # "i":I
    :cond_b
    const/4 v11, 0x0

    .line 478
    .local v11, "nextCrc":I
    const/4 v12, 0x0

    .line 479
    .local v12, "nextMissingCrc":I
    iget-object v13, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .local v13, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    array-length v14, v13

    .local v14, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_7
    if-ge v15, v14, :cond_e

    aget-object v4, v13, v15

    .line 480
    .local v4, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    move/from16 v17, v1

    .end local v1    # "totalUnpackStreams":I
    .local v17, "totalUnpackStreams":I
    iget v1, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "nid":I
    .local v18, "nid":I
    if-ne v1, v2, :cond_c

    iget-boolean v1, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v1, :cond_c

    .line 481
    iget-object v1, v3, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v1, v11, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 482
    iget-object v1, v3, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    move-object/from16 v16, v3

    .end local v3    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    .local v16, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    iget-wide v2, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    aput-wide v2, v1, v11

    .line 483
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    goto :goto_9

    .line 480
    .end local v16    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    .restart local v3    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    :cond_c
    move-object/from16 v16, v3

    .line 485
    .end local v3    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    .restart local v16    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget v2, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ge v1, v2, :cond_d

    .line 486
    move-object/from16 v2, v16

    .end local v16    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    .local v2, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    iget-object v3, v2, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    move-object/from16 v16, v4

    .end local v4    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .local v16, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-virtual {v9, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    invoke-virtual {v3, v11, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 487
    iget-object v3, v2, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v19, v10, v12

    aput-wide v19, v3, v11

    .line 488
    add-int/lit8 v11, v11, 0x1

    .line 489
    add-int/lit8 v12, v12, 0x1

    .line 485
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v16

    move-object/from16 v16, v2

    goto :goto_8

    .end local v2    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    .restart local v4    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .local v16, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    :cond_d
    move-object/from16 v2, v16

    move-object/from16 v16, v4

    .line 479
    .end local v1    # "i":I
    .end local v4    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v16    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    .restart local v2    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    :goto_9
    add-int/lit8 v15, v15, 0x1

    move-object v3, v2

    move/from16 v1, v17

    move/from16 v2, v18

    const/4 v4, 0x1

    goto :goto_7

    .end local v17    # "totalUnpackStreams":I
    .end local v18    # "nid":I
    .local v1, "totalUnpackStreams":I
    .local v2, "nid":I
    .restart local v3    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    :cond_e
    move/from16 v17, v1

    move/from16 v18, v2

    move-object v2, v3

    .line 494
    .end local v1    # "totalUnpackStreams":I
    .end local v3    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    .end local v13    # "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v14    # "len$":I
    .end local v15    # "i$":I
    .local v2, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    .restart local v17    # "totalUnpackStreams":I
    .restart local v18    # "nid":I
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .end local v18    # "nid":I
    .local v1, "nid":I
    goto :goto_a

    .line 469
    .end local v9    # "hasMissingCrc":Ljava/util/BitSet;
    .end local v10    # "missingCrcs":[J
    .end local v11    # "nextCrc":I
    .end local v12    # "nextMissingCrc":I
    .end local v17    # "totalUnpackStreams":I
    .local v1, "totalUnpackStreams":I
    .local v2, "nid":I
    .restart local v3    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    :cond_f
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v17, v1

    move/from16 v18, v2

    move-object v2, v3

    .end local v1    # "totalUnpackStreams":I
    .end local v3    # "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    .local v2, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    .restart local v17    # "totalUnpackStreams":I
    .restart local v18    # "nid":I
    move/from16 v1, v18

    .line 497
    .end local v18    # "nid":I
    .local v1, "nid":I
    :goto_a
    if-nez v1, :cond_10

    .line 501
    iput-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 502
    return-void

    .line 498
    :cond_10
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Badly terminated SubStreamsInfo"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static readUint64(Ljava/io/DataInput;)J
    .locals 10
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    int-to-long v0, v0

    .line 950
    .local v0, "firstByte":J
    const/16 v2, 0x80

    .line 951
    .local v2, "mask":I
    const-wide/16 v3, 0x0

    .line 952
    .local v3, "value":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 953
    int-to-long v6, v2

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 954
    add-int/lit8 v6, v2, -0x1

    int-to-long v6, v6

    and-long/2addr v6, v0

    mul-int/lit8 v8, v5, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v6, v3

    return-wide v6

    .line 956
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    int-to-long v6, v6

    .line 957
    .local v6, "nextByte":J
    mul-int/lit8 v8, v5, 0x8

    shl-long v8, v6, v8

    or-long/2addr v3, v8

    .line 958
    ushr-int/lit8 v2, v2, 0x1

    .line 952
    .end local v6    # "nextByte":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 960
    .end local v5    # "i":I
    :cond_1
    return-wide v3
.end method

.method private readUnpackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 15
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 376
    .local v0, "nid":I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 379
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v1

    .line 380
    .local v1, "numFolders":J
    long-to-int v3, v1

    new-array v3, v3, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 381
    .local v3, "folders":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    move-object/from16 v4, p2

    iput-object v3, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 382
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    .line 383
    .local v5, "external":I
    if-nez v5, :cond_8

    .line 386
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    long-to-int v7, v1

    if-ge v6, v7, :cond_0

    .line 387
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFolder(Ljava/io/DataInput;)Lorg/apache/commons/compress/archivers/sevenz/Folder;

    move-result-object v7

    aput-object v7, v3, v6

    .line 386
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 390
    .end local v6    # "i":I
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 391
    const/16 v6, 0xc

    if-ne v0, v6, :cond_7

    .line 394
    move-object v6, v3

    .local v6, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 395
    .local v9, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget-wide v10, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    long-to-int v10, v10

    new-array v10, v10, [J

    iput-object v10, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 396
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    int-to-long v11, v10

    iget-wide v13, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    .line 397
    iget-object v11, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v12

    aput-wide v12, v11, v10

    .line 396
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 394
    .end local v9    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v10    # "i":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 401
    .end local v6    # "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 402
    const/16 v6, 0xa

    if-ne v0, v6, :cond_5

    .line 403
    long-to-int v6, v1

    move-object v7, p0

    move-object/from16 v8, p1

    invoke-direct {p0, v8, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v6

    .line 404
    .local v6, "crcsDefined":Ljava/util/BitSet;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    long-to-int v10, v1

    if-ge v9, v10, :cond_4

    .line 405
    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 406
    aget-object v10, v3, v9

    const/4 v11, 0x1

    iput-boolean v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 407
    aget-object v10, v3, v9

    const-wide v11, 0xffffffffL

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v13

    int-to-long v13, v13

    and-long/2addr v11, v13

    iput-wide v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    goto :goto_4

    .line 409
    :cond_3
    aget-object v10, v3, v9

    const/4 v11, 0x0

    iput-boolean v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 404
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 413
    .end local v9    # "i":I
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_5

    .line 402
    .end local v6    # "crcsDefined":Ljava/util/BitSet;
    :cond_5
    move-object v7, p0

    move-object/from16 v8, p1

    .line 416
    :goto_5
    if-nez v0, :cond_6

    .line 419
    return-void

    .line 417
    :cond_6
    new-instance v6, Ljava/io/IOException;

    const-string v9, "Badly terminated UnpackInfo"

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 392
    :cond_7
    move-object v7, p0

    move-object/from16 v8, p1

    new-instance v6, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected kCodersUnpackSize, got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 384
    :cond_8
    move-object v7, p0

    move-object/from16 v8, p1

    new-instance v6, Ljava/io/IOException;

    const-string v9, "External unsupported"

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 377
    .end local v1    # "numFolders":J
    .end local v3    # "folders":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v5    # "external":I
    :cond_9
    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v4, p2

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected kFolder, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static skipBytesFully(Ljava/io/DataInput;J)J
    .locals 7
    .param p0, "input"    # Ljava/io/DataInput;
    .param p1, "bytesToSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 987
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    .line 988
    return-wide v1

    .line 990
    :cond_0
    const-wide/16 v3, 0x0

    .line 991
    .local v3, "skipped":J
    :goto_0
    const-wide/32 v5, 0x7fffffff

    cmp-long v0, p1, v5

    if-lez v0, :cond_2

    .line 992
    invoke-static {p0, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/io/DataInput;J)J

    move-result-wide v5

    .line 993
    .local v5, "skippedNow":J
    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    .line 994
    return-wide v3

    .line 996
    :cond_1
    add-long/2addr v3, v5

    .line 997
    sub-long/2addr p1, v5

    .line 998
    .end local v5    # "skippedNow":J
    goto :goto_0

    .line 999
    :cond_2
    :goto_1
    cmp-long v0, p1, v1

    if-lez v0, :cond_4

    .line 1000
    long-to-int v0, p1

    invoke-interface {p0, v0}, Ljava/io/DataInput;->skipBytes(I)I

    move-result v0

    .line 1001
    .local v0, "skippedNow":I
    if-nez v0, :cond_3

    .line 1002
    return-wide v3

    .line 1004
    :cond_3
    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 1005
    int-to-long v5, v0

    sub-long/2addr p1, v5

    .line 1006
    .end local v0    # "skippedNow":I
    goto :goto_1

    .line 1007
    :cond_4
    return-wide v3
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 133
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    .line 136
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v0, :cond_0

    .line 137
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 139
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 140
    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    .line 136
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v3, :cond_1

    .line 137
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 139
    :cond_1
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    throw v0

    .line 142
    :cond_2
    :goto_0
    return-void
.end method

.method public getEntries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 156
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    .line 157
    .local v0, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream()V

    .line 158
    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
