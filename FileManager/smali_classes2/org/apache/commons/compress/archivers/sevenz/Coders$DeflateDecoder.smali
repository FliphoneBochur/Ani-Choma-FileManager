.class Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeflateDecoder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Number;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 150
    return-void
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 4
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

    .line 156
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 157
    .local v0, "inflater":Ljava/util/zip/Inflater;
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coders$1;)V

    invoke-direct {v1, v2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 159
    .local v1, "inflaterInputStream":Ljava/util/zip/InflaterInputStream;
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;Ljava/util/zip/InflaterInputStream;Ljava/util/zip/Inflater;)V

    return-object v2
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # Ljava/lang/Object;

    .line 187
    const/16 v0, 0x9

    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;->numberOptionOrDefault(Ljava/lang/Object;I)I

    move-result v0

    .line 188
    .local v0, "level":I
    new-instance v1, Ljava/util/zip/Deflater;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 189
    .local v1, "deflater":Ljava/util/zip/Deflater;
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, p1, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 190
    .local v2, "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$2;

    invoke-direct {v3, p0, v2, v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$2;-><init>(Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V

    return-object v3
.end method
