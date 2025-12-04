.class Lorg/apache/commons/compress/archivers/sevenz/Coders$LZMADecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LZMADecoder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 102
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 11
    .param p1, "archiveName"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "uncompressedLength"    # J
    .param p5, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p6, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    move-object/from16 v0, p5

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    .line 107
    .local v1, "propsByte":B
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    int-to-long v2, v2

    .line 108
    .local v2, "dictSize":J
    const/4 v4, 0x1

    move-wide v9, v2

    .end local v2    # "dictSize":J
    .local v4, "i":I
    .local v9, "dictSize":J
    :goto_0
    const/4 v2, 0x4

    if-ge v4, v2, :cond_0

    .line 109
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const-wide/16 v5, 0xff

    and-long/2addr v2, v5

    mul-int/lit8 v5, v4, 0x8

    shl-long/2addr v2, v5

    or-long/2addr v9, v2

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    .end local v4    # "i":I
    :cond_0
    const-wide/32 v2, 0x7ffffff0

    cmp-long v2, v9, v2

    if-gtz v2, :cond_1

    .line 114
    new-instance v2, Lorg/tukaani/xz/LZMAInputStream;

    long-to-int v8, v9

    move-object v3, v2

    move-object v4, p2

    move-wide v5, p3

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;JBI)V

    return-object v2

    .line 112
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dictionary larger than 4GiB maximum size used in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
