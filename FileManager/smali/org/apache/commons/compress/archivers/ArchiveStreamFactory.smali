.class public Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
.super Ljava/lang/Object;
.source "ArchiveStreamFactory.java"


# static fields
.field public static final AR:Ljava/lang/String; = "ar"

.field public static final ARJ:Ljava/lang/String; = "arj"

.field public static final CPIO:Ljava/lang/String; = "cpio"

.field public static final DUMP:Ljava/lang/String; = "dump"

.field public static final JAR:Ljava/lang/String; = "jar"

.field public static final SEVEN_Z:Ljava/lang/String; = "7z"

.field public static final TAR:Ljava/lang/String; = "tar"

.field public static final ZIP:Ljava/lang/String; = "zip"


# instance fields
.field private final encoding:Ljava/lang/String;

.field private volatile entryEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->encoding:Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 322
    if-eqz p1, :cond_b

    .line 326
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 330
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 331
    .local v0, "signature":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 333
    :try_start_0
    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 334
    .local v1, "signatureLength":I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 335
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "zip"

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v2

    return-object v2

    .line 337
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    const-string v2, "jar"

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v2

    return-object v2

    .line 339
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    const-string v2, "ar"

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v2

    return-object v2

    .line 341
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    const-string v2, "cpio"

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v2

    return-object v2

    .line 343
    :cond_3
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    const-string v2, "arj"

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v2

    return-object v2

    .line 345
    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->matches([BI)Z

    move-result v2

    if-nez v2, :cond_9

    .line 350
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 351
    .local v2, "dumpsig":[B
    array-length v3, v2

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 352
    invoke-static {p1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    move v1, v3

    .line 353
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 354
    invoke-static {v2, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 355
    const-string v3, "dump"

    invoke-virtual {p0, v3, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v3

    return-object v3

    .line 359
    :cond_5
    const/16 v3, 0x200

    new-array v4, v3, [B

    .line 360
    .local v4, "tarheader":[B
    array-length v5, v4

    invoke-virtual {p1, v5}, Ljava/io/InputStream;->mark(I)V

    .line 361
    invoke-static {p1, v4}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v5

    move v1, v5

    .line 362
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 363
    invoke-static {v4, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->matches([BI)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "tar"

    if-eqz v5, :cond_6

    .line 364
    :try_start_1
    invoke-virtual {p0, v6, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 367
    :cond_6
    if-lt v1, v3, :cond_8

    .line 368
    const/4 v3, 0x0

    .line 370
    .local v3, "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    :try_start_2
    new-instance v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 372
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isCheckSumOK()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 373
    invoke-virtual {p0, v6, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    :try_start_3
    invoke-static {v3}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v5

    :catchall_0
    move-exception v5

    invoke-static {v3}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v0    # "signature":[B
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
    .end local p1    # "in":Ljava/io/InputStream;
    throw v5

    .line 375
    .restart local v0    # "signature":[B
    .restart local p0    # "this":Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
    .restart local p1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 381
    :cond_7
    invoke-static {v3}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 386
    .end local v1    # "signatureLength":I
    .end local v2    # "dumpsig":[B
    .end local v3    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .end local v4    # "tarheader":[B
    :cond_8
    nop

    .line 388
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v2, "No Archiver found for the stream signature"

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    .restart local v1    # "signatureLength":I
    :cond_9
    :try_start_4
    new-instance v2, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;

    const-string v3, "7z"

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "signature":[B
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
    .end local p1    # "in":Ljava/io/InputStream;
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 384
    .end local v1    # "signatureLength":I
    .restart local v0    # "signature":[B
    .restart local p0    # "this":Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
    .restart local p1    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 385
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v3, "Could not use reset and mark operations."

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 327
    .end local v0    # "signature":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mark is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 3
    .param p1, "archiverName"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 198
    if-eqz p1, :cond_f

    .line 202
    if-eqz p2, :cond_e

    .line 206
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 209
    :cond_0
    const-string v0, "arj"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 211
    new-instance v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 213
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 215
    :cond_2
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 217
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 219
    :cond_3
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 221
    :cond_4
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 222
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 223
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 225
    :cond_5
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 227
    :cond_6
    const-string v0, "jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 229
    new-instance v0, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 231
    :cond_7
    new-instance v0, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 233
    :cond_8
    const-string v0, "cpio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 234
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 235
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 237
    :cond_9
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 239
    :cond_a
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 241
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 243
    :cond_b
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 245
    :cond_c
    const-string v0, "7z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 246
    new-instance v1, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_d
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Archiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archivername must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 3
    .param p1, "archiverName"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 267
    if-eqz p1, :cond_b

    .line 270
    if-eqz p2, :cond_a

    .line 274
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 277
    :cond_0
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 279
    .local v0, "zip":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->setEncoding(Ljava/lang/String;)V

    .line 282
    :cond_1
    return-object v0

    .line 284
    .end local v0    # "zip":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :cond_2
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 286
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0

    .line 288
    :cond_3
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 290
    :cond_4
    const-string v0, "jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 292
    new-instance v0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0

    .line 294
    :cond_5
    new-instance v0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 296
    :cond_6
    const-string v0, "cpio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 298
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0

    .line 300
    :cond_7
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 302
    :cond_8
    const-string v0, "7z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 303
    new-instance v1, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_9
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Archiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OutputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archivername must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEntryEncoding()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public setEntryEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "entryEncoding"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    .line 180
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot overide encoding set by the constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
