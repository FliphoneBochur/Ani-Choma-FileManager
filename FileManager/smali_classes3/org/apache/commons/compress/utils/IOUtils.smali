.class public final Lorg/apache/commons/compress/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final COPY_BUF_SIZE:I = 0x1f58

.field private static final SKIP_BUF:[B

.field private static final SKIP_BUF_SIZE:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 199
    if-eqz p0, :cond_0

    .line 201
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 205
    :cond_0
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/16 v0, 0x1f58

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "buffersize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-array v0, p2, [B

    .line 75
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 76
    .local v1, "n":I
    const-wide/16 v2, 0x0

    .line 77
    .local v2, "count":J
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v1, v5

    if-eq v4, v5, :cond_0

    .line 78
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 79
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 81
    :cond_0
    return-wide v2
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    if-ltz p3, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 158
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 159
    .local v1, "x":I
    :goto_0
    if-eq v0, p3, :cond_1

    .line 160
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 161
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 162
    goto :goto_1

    .line 164
    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    return v0

    .line 156
    .end local v0    # "count":I
    .end local v1    # "x":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "numToSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    move-wide v0, p1

    .line 102
    .local v0, "available":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 103
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 104
    .local v4, "skipped":J
    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 105
    goto :goto_1

    .line 107
    :cond_0
    sub-long/2addr p1, v4

    .line 108
    .end local v4    # "skipped":J
    goto :goto_0

    .line 110
    :cond_1
    :goto_1
    cmp-long v4, p1, v2

    if-lez v4, :cond_3

    .line 111
    sget-object v4, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    const/4 v5, 0x0

    const-wide/16 v6, 0x1000

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {p0, v4, v5, v6}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 113
    .local v4, "read":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 114
    goto :goto_2

    .line 116
    :cond_2
    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 117
    .end local v4    # "read":I
    goto :goto_1

    .line 118
    :cond_3
    :goto_2
    sub-long v2, v0, p1

    return-wide v2
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
