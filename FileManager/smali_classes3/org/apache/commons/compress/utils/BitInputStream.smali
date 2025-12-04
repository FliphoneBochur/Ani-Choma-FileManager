.class public Lorg/apache/commons/compress/utils/BitInputStream;
.super Ljava/lang/Object;
.source "BitInputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MASKS:[J

.field private static final MAXIMUM_CACHE_SIZE:I = 0x3f


# instance fields
.field private bitsCached:J

.field private bitsCachedSize:I

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final in:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    const/16 v0, 0x40

    new-array v0, v0, [J

    sput-object v0, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    .line 36
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 37
    sget-object v1, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 53
    iput-object p1, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Ljava/io/InputStream;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    .line 55
    return-void
.end method


# virtual methods
.method public clearBitCache()V
    .locals 2

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 69
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 60
    return-void
.end method

.method public readBits(I)J
    .locals 7
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-ltz p1, :cond_4

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_4

    .line 85
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    if-ge v0, p1, :cond_2

    .line 86
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v0, v0

    .line 87
    .local v0, "nextByte":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 88
    return-wide v0

    .line 90
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v4, 0x8

    if-ne v2, v3, :cond_1

    .line 91
    iget-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    iget v5, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    shl-long v5, v0, v5

    or-long/2addr v2, v5

    iput-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    goto :goto_1

    .line 93
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    shl-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 94
    or-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 96
    :goto_1
    iget v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 97
    .end local v0    # "nextByte":J
    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_3

    .line 101
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    sget-object v2, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, v0

    .line 102
    .local v2, "bitsOut":J
    ushr-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    goto :goto_2

    .line 104
    .end local v2    # "bitsOut":J
    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    iget v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    sub-int/2addr v2, p1

    shr-long/2addr v0, v2

    sget-object v2, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, v0

    .line 106
    .restart local v2    # "bitsOut":J
    :goto_2
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 107
    return-wide v2

    .line 83
    .end local v2    # "bitsOut":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must not be negative or greater than 63"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
