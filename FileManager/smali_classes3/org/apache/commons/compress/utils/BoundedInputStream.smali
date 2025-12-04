.class public Lorg/apache/commons/compress/utils/BoundedInputStream;
.super Ljava/io/InputStream;
.source "BoundedInputStream.java"


# instance fields
.field private bytesRemaining:J

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # J

    .line 38
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 40
    iput-wide p2, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 72
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 46
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    .line 47
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 49
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

    .line 54
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 55
    const/4 v0, -0x1

    return v0

    .line 57
    :cond_0
    move v2, p3

    .line 58
    .local v2, "bytesToRead":I
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-lez v3, :cond_1

    .line 59
    long-to-int v2, v0

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 62
    .local v0, "bytesRead":I
    if-ltz v0, :cond_2

    .line 63
    iget-wide v3, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    .line 65
    :cond_2
    return v0
.end method
