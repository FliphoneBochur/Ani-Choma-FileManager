.class public abstract Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
.super Ljava/lang/Object;
.source "StreamCompressor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;,
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$OutputStreamCompressor;,
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;
    }
.end annotation


# static fields
.field private static final DEFLATER_BLOCK_SIZE:I = 0x2000

.field private static final bufferSize:I = 0x1000


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final def:Ljava/util/zip/Deflater;

.field private final outputBuffer:[B

.field private final readerBuf:[B

.field private sourcePayloadLength:J

.field private totalWrittenToOutputStream:J

.field private writtenToOutputStreamForLastEntry:J


# direct methods
.method constructor <init>(Ljava/util/zip/Deflater;)V
    .locals 2
    .param p1, "deflater"    # Ljava/util/zip/Deflater;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 54
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    .line 55
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    .line 58
    const/16 v0, 0x1000

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->outputBuffer:[B

    .line 59
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->readerBuf:[B

    .line 62
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 63
    return-void
.end method

.method public static create(ILorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 2
    .param p0, "compressionLevel"    # I
    .param p1, "bs"    # Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    .line 105
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 106
    .local v0, "deflater":Ljava/util/zip/Deflater;
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;-><init>(Ljava/util/zip/Deflater;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)V

    return-object v1
.end method

.method static create(Ljava/io/DataOutput;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 1
    .param p0, "os"    # Ljava/io/DataOutput;
    .param p1, "deflater"    # Ljava/util/zip/Deflater;

    .line 94
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;-><init>(Ljava/util/zip/Deflater;Ljava/io/DataOutput;)V

    return-object v0
.end method

.method static create(Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;

    .line 83
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object v0

    return-object v0
.end method

.method static create(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "deflater"    # Ljava/util/zip/Deflater;

    .line 73
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$OutputStreamCompressor;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$OutputStreamCompressor;-><init>(Ljava/util/zip/Deflater;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static create(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 1
    .param p0, "bs"    # Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    .line 116
    const/4 v0, -0x1

    invoke-static {v0, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(ILorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object v0

    return-object v0
.end method

.method private deflateUntilInputIsNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflate()V

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method private writeDeflated([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    if-lez p3, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    const/16 v0, 0x2000

    if-gt p3, v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 224
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflateUntilInputIsNeeded()V

    goto :goto_1

    .line 226
    :cond_0
    div-int/lit16 v1, p3, 0x2000

    .line 227
    .local v1, "fullblocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 228
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    mul-int/lit16 v4, v2, 0x2000

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 230
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflateUntilInputIsNeeded()V

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "i":I
    :cond_1
    mul-int/lit16 v0, v1, 0x2000

    .line 233
    .local v0, "done":I
    if-ge v0, p3, :cond_2

    .line 234
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 235
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflateUntilInputIsNeeded()V

    .line 239
    .end local v0    # "done":I
    .end local v1    # "fullblocks":I
    :cond_2
    :goto_1
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

    .line 209
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 210
    return-void
.end method

.method deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->outputBuffer:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 249
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 250
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->outputBuffer:[B

    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    .line 252
    :cond_0
    return-void
.end method

.method public deflate(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->reset()V

    .line 169
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->readerBuf:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v1, v0

    .local v1, "length":I
    if-ltz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->readerBuf:[B

    invoke-virtual {p0, v0, v2, v1, p2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->write([BIII)J

    goto :goto_0

    .line 172
    :cond_0
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->flushDeflater()V

    .line 175
    :cond_1
    return-void
.end method

.method flushDeflater()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 214
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflate()V

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    return-wide v0
.end method

.method public getBytesWrittenForLastEntry()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    return-wide v0
.end method

.method public getCrc32()J
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalBytesWritten()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    return-wide v0
.end method

.method reset()V
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 202
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    .line 204
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 205
    return-void
.end method

.method write([BIII)J
    .locals 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 189
    .local v0, "current":J
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 190
    const/16 v2, 0x8

    if-ne p4, v2, :cond_0

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeDeflated([BII)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    .line 195
    :goto_0
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    .line 196
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public writeCounted([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    .line 256
    return-void
.end method

.method public writeCounted([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeOut([BII)V

    .line 260
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 261
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    .line 262
    return-void
.end method

.method protected abstract writeOut([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
