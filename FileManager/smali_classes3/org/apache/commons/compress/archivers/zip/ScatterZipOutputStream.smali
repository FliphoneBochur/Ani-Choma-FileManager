.class public Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
.super Ljava/lang/Object;
.source "ScatterZipOutputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    }
.end annotation


# instance fields
.field private final backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

.field private final items:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;Lorg/apache/commons/compress/archivers/zip/StreamCompressor;)V
    .locals 1
    .param p1, "backingStore"    # Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;
    .param p2, "streamCompressor"    # Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->items:Ljava/util/Queue;

    .line 84
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    .line 85
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 86
    return-void
.end method

.method public static fileBased(Ljava/io/File;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 140
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->fileBased(Ljava/io/File;I)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static fileBased(Ljava/io/File;I)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "compressionLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 152
    new-instance v0, Lorg/apache/commons/compress/parallel/FileBasedScatterGatherBackingStore;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/parallel/FileBasedScatterGatherBackingStore;-><init>(Ljava/io/File;)V

    .line 153
    .local v0, "bs":Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(ILorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object v1

    .line 154
    .local v1, "sc":Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;-><init>(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;Lorg/apache/commons/compress/archivers/zip/StreamCompressor;)V

    return-object v2
.end method


# virtual methods
.method public addArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)V
    .locals 11
    .param p1, "zipArchiveEntryRequest"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->getPayloadStream()Ljava/io/InputStream;

    move-result-object v0

    .line 97
    .local v0, "payloadStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->getMethod()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflate(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 100
    nop

    .line 101
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->items:Ljava/util/Queue;

    new-instance v10, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getCrc32()J

    move-result-wide v4

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getBytesWrittenForLastEntry()J

    move-result-wide v6

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getBytesRead()J

    move-result-wide v8

    move-object v2, v10

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;JJJ)V

    invoke-interface {v1, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 103
    return-void

    .line 99
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->close()V

    .line 130
    return-void
.end method

.method public writeTo(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;)V
    .locals 6
    .param p1, "target"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->closeForWriting()V

    .line 113
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 114
    .local v0, "data":Ljava/io/InputStream;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->items:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;

    .line 115
    .local v2, "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    new-instance v3, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-wide v4, v2, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->compressedSize:J

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 116
    .local v3, "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->transferToArchiveEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/InputStream;)V

    .line 117
    invoke-virtual {v3}, Lorg/apache/commons/compress/utils/BoundedInputStream;->close()V

    .line 118
    .end local v2    # "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    .end local v3    # "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    goto :goto_0

    .line 119
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 120
    return-void
.end method
