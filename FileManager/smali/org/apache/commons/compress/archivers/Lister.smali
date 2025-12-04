.class public final Lorg/apache/commons/compress/archivers/Lister;
.super Ljava/lang/Object;
.source "Lister.java"


# static fields
.field private static final factory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/Lister;->factory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    array-length v0, p0

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lorg/apache/commons/compress/archivers/Lister;->usage()V

    .line 40
    return-void

    .line 42
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Analysing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/io/File;

    aget-object v1, p0, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist or is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    :cond_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v1, "fis":Ljava/io/InputStream;
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 50
    sget-object v2, Lorg/apache/commons/compress/archivers/Lister;->factory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    aget-object v3, p0, v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v2

    .local v2, "ais":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    goto :goto_0

    .line 52
    .end local v2    # "ais":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    :cond_2
    sget-object v2, Lorg/apache/commons/compress/archivers/Lister;->factory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v2

    .line 54
    .restart local v2    # "ais":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    :goto_1
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    move-object v4, v3

    .local v4, "ae":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    if-eqz v3, :cond_3

    .line 57
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->close()V

    .line 60
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 61
    return-void
.end method

.method private static usage()V
    .locals 2

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Parameters: archive-name [archive-type]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    return-void
.end method
