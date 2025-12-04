.class public Lorg/apache/commons/compress/compressors/CompressorStreamFactory;
.super Ljava/lang/Object;
.source "CompressorStreamFactory.java"


# static fields
.field public static final BZIP2:Ljava/lang/String; = "bzip2"

.field public static final DEFLATE:Ljava/lang/String; = "deflate"

.field public static final GZIP:Ljava/lang/String; = "gz"

.field public static final LZMA:Ljava/lang/String; = "lzma"

.field public static final PACK200:Ljava/lang/String; = "pack200"

.field public static final SNAPPY_FRAMED:Ljava/lang/String; = "snappy-framed"

.field public static final SNAPPY_RAW:Ljava/lang/String; = "snappy-raw"

.field public static final XZ:Ljava/lang/String; = "xz"

.field public static final Z:Ljava/lang/String; = "z"


# instance fields
.field private volatile decompressConcatenated:Z

.field private final decompressUntilEOF:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressUntilEOF:Ljava/lang/Boolean;

    .line 151
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "decompressUntilEOF"    # Z

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    .line 164
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressUntilEOF:Ljava/lang/Boolean;

    .line 166
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    .line 167
    return-void
.end method


# virtual methods
.method public createCompressorInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 206
    if-eqz p1, :cond_9

    .line 210
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 214
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 215
    .local v0, "signature":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 217
    :try_start_0
    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 218
    .local v1, "signatureLength":I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 220
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    new-instance v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v2

    .line 224
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    new-instance v2, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v2

    .line 228
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    new-instance v2, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2

    .line 232
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    new-instance v2, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2

    .line 236
    :cond_3
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    new-instance v2, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2

    .line 240
    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    new-instance v2, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2

    .line 244
    :cond_5
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->isXZCompressionAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 246
    new-instance v2, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v2

    .line 249
    :cond_6
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->isLZMACompressionAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 251
    new-instance v2, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 256
    .end local v1    # "signatureLength":I
    :cond_7
    nop

    .line 258
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v2, "No Compressor found for the stream signature."

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v3, "Failed to detect Compressor from InputStream."

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 211
    .end local v0    # "signature":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mark is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 275
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 282
    :try_start_0
    const-string v0, "gz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 286
    :cond_0
    const-string v0, "bzip2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 290
    :cond_1
    const-string v0, "xz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 294
    :cond_2
    const-string v0, "lzma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 298
    :cond_3
    const-string v0, "pack200"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    new-instance v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 302
    :cond_4
    const-string v0, "snappy-raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 306
    :cond_5
    const-string v0, "snappy-framed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 307
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 310
    :cond_6
    const-string v0, "z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 311
    new-instance v0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 314
    :cond_7
    const-string v0, "deflate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 315
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 321
    :cond_8
    nop

    .line 322
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compressor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v2, "Could not create CompressorInputStream."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Compressor name and stream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 339
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 346
    :try_start_0
    const-string v0, "gz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 350
    :cond_0
    const-string v0, "bzip2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 354
    :cond_1
    const-string v0, "xz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 358
    :cond_2
    const-string v0, "pack200"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    new-instance v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 362
    :cond_3
    const-string v0, "deflate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 369
    :cond_4
    nop

    .line 370
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compressor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v2, "Could not create CompressorOutputStream"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 340
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Compressor name and stream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDecompressConcatenated()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    return v0
.end method

.method public setDecompressConcatenated(Z)V
    .locals 2
    .param p1, "decompressConcatenated"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressUntilEOF:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 190
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    .line 191
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot override the setting defined by the constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
