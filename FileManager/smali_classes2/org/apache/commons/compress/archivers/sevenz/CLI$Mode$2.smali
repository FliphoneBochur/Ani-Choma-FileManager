.class final enum Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;
.super Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
.source "CLI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "x0"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/CLI$1;)V

    return-void
.end method


# virtual methods
.method public takeAction(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    .locals 12
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p2, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "outFile":Ljava/io/File;
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    return-void

    .line 80
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extracting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 82
    .local v1, "parent":Ljava/io/File;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 83
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_4
    :goto_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 87
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v3

    .line 88
    .local v3, "total":J
    const-wide/16 v5, 0x0

    .line 89
    .local v5, "off":J
    :goto_2
    cmp-long v7, v5, v3

    if-gez v7, :cond_6

    .line 90
    sub-long v7, v3, v5

    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/CLI;->access$100()[B

    move-result-object v9

    array-length v9, v9

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    .line 91
    .local v7, "toRead":I
    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/CLI;->access$100()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result v8

    .line 92
    .local v8, "bytesRead":I
    const/4 v10, 0x1

    if-lt v8, v10, :cond_5

    .line 99
    int-to-long v10, v8

    add-long/2addr v5, v10

    .line 100
    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/CLI;->access$100()[B

    move-result-object v10

    invoke-virtual {v2, v10, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 101
    .end local v7    # "toRead":I
    .end local v8    # "bytesRead":I
    goto :goto_2

    .line 93
    .restart local v7    # "toRead":I
    .restart local v8    # "bytesRead":I
    :cond_5
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reached end of entry "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " bytes, expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outFile":Ljava/io/File;
    .end local v1    # "parent":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;
    .end local p1    # "archive":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .end local p2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v3    # "total":J
    .end local v5    # "off":J
    .end local v7    # "toRead":I
    .end local v8    # "bytesRead":I
    .restart local v0    # "outFile":Ljava/io/File;
    .restart local v1    # "parent":Ljava/io/File;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;
    .restart local p1    # "archive":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .restart local p2    # "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 104
    nop

    .line 105
    return-void

    .line 103
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v3
.end method
