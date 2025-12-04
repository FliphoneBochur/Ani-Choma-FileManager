.class Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;
.super Ljava/io/InputStream;
.source "BoundedRandomAccessFileInputStream.java"


# instance fields
.field private bytesRemaining:J

.field private final file:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .locals 0
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "size"    # J

    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->file:Ljava/io/RandomAccessFile;

    .line 31
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->bytesRemaining:J

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 62
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 37
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->bytesRemaining:J

    .line 38
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0

    .line 40
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 46
    const/4 v0, -0x1

    return v0

    .line 48
    :cond_0
    move v2, p3

    .line 49
    .local v2, "bytesToRead":I
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-lez v3, :cond_1

    .line 50
    long-to-int v2, v0

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 53
    .local v0, "bytesRead":I
    if-ltz v0, :cond_2

    .line 54
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->bytesRemaining:J

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->bytesRemaining:J

    .line 56
    :cond_2
    return v0
.end method
