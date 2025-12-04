.class public final Lcom/jrdcom/filemanager/compress/TarType;
.super Lcom/jrdcom/filemanager/compress/CommonCompress;
.source "TarType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/jrdcom/filemanager/compress/CommonCompress;-><init>()V

    return-void
.end method

.method private getTotal(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;)I
    .locals 3

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    goto :goto_1

    .line 162
    :catch_0
    move-exception p1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TarType->getTotal:  failed to getTotal. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FileManager_YY"

    invoke-static {v1, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_1
    return v0
.end method


# virtual methods
.method public doArchive()Z
    .locals 16

    .line 27
    move-object/from16 v1, p0

    const-string v2, ", result: "

    const-string v3, "Delete file: "

    const-string v4, "bos close failed."

    .line 28
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/compress/TarType;->mPrepare:Z

    const-string v5, "FileManager_YY"

    if-nez v0, :cond_0

    .line 29
    const-string v0, "Please call prepare() before doArchive()."

    invoke-static {v5, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    const/4 v6, 0x0

    .line 34
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v9, v1, Lcom/jrdcom/filemanager/compress/TarType;->mDestPath:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {v0, v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 40
    iget-object v10, v1, Lcom/jrdcom/filemanager/compress/TarType;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 42
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_6

    .line 44
    iget-object v12, v1, Lcom/jrdcom/filemanager/compress/TarType;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;

    .line 45
    iget-object v13, v12, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->zipFile:Ljava/io/File;

    .line 46
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 47
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-direct {v15, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    new-instance v14, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v12, v12, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->relPath:Ljava/lang/String;

    invoke-direct {v14, v12}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    .line 51
    invoke-virtual {v0, v14}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 53
    :goto_1
    invoke-virtual {v15, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_2

    .line 54
    iget-boolean v8, v1, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_1

    .line 58
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v0, v6, v8, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->write([BII)V

    goto :goto_1

    .line 55
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V

    .line 56
    new-instance v0, Ljava/lang/Exception;

    const-string v6, "User cancelled."

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V

    .line 61
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 65
    array-length v7, v7

    if-gtz v7, :cond_4

    .line 66
    new-instance v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v12, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->relPath:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 67
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 71
    :cond_4
    :goto_2
    iget-object v7, v1, Lcom/jrdcom/filemanager/compress/TarType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    if-eqz v7, :cond_5

    .line 72
    iget-object v7, v1, Lcom/jrdcom/filemanager/compress/TarType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    add-int/lit8 v12, v11, 0x1

    invoke-interface {v7, v13, v12, v10}, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;->onArchiveComplete(Ljava/io/File;II)V

    .line 74
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has compress sucessfully"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 76
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    nop

    .line 84
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 85
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z

    if-eqz v0, :cond_8

    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Lcom/jrdcom/filemanager/compress/TarType;->mDestPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 91
    :cond_7
    move v7, v8

    goto :goto_3

    .line 85
    :cond_8
    const/4 v7, 0x1

    .line 95
    :goto_3
    goto/16 :goto_6

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    nop

    .line 98
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 78
    :catch_1
    move-exception v0

    goto :goto_4

    .line 82
    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object v6, v9

    goto :goto_7

    .line 78
    :catch_2
    move-exception v0

    const/4 v8, 0x0

    :goto_4
    move-object v6, v9

    goto :goto_5

    .line 82
    :catchall_1
    move-exception v0

    move-object v7, v0

    goto :goto_7

    .line 78
    :catch_3
    move-exception v0

    const/4 v8, 0x0

    .line 79
    :goto_5
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TarCompress->doArchive:  compress failed."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 80
    nop

    .line 82
    if-eqz v6, :cond_a

    .line 84
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 85
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z

    if-eqz v0, :cond_9

    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Lcom/jrdcom/filemanager/compress/TarType;->mDestPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 95
    :cond_9
    move v7, v8

    goto :goto_6

    .line 93
    :catch_4
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_a
    move v7, v8

    :goto_6
    return v7

    .line 82
    :goto_7
    if-eqz v6, :cond_c

    .line 84
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 85
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z

    if-eqz v0, :cond_b

    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Lcom/jrdcom/filemanager/compress/TarType;->mDestPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 95
    :cond_b
    goto :goto_8

    .line 93
    :catch_5
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_c
    :goto_8
    throw v7
.end method

.method public doUnArchive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 104
    const-string v0, "FileManager_YY"

    const/16 v1, 0x400

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [B

    .line 105
    new-instance v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    nop

    .line 107
    invoke-direct {p0, v3}, Lcom/jrdcom/filemanager/compress/TarType;->getTotal(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;)I

    move-result v3

    .line 109
    new-instance v4, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    move v5, p1

    .line 112
    :goto_0
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 113
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    goto :goto_3

    .line 117
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 118
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 119
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 123
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    :goto_1
    invoke-virtual {v4, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    .line 126
    iget-boolean v9, p0, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z

    if-eqz v9, :cond_2

    .line 127
    goto :goto_2

    .line 129
    :cond_2
    invoke-virtual {v8, v1, v2, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 131
    :cond_3
    :goto_2
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 132
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 136
    :goto_3
    iget-object v6, p0, Lcom/jrdcom/filemanager/compress/TarType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    if-eqz v6, :cond_4

    .line 137
    iget-object v6, p0, Lcom/jrdcom/filemanager/compress/TarType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v6, v7, v5, v3}, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;->onUnArchiveComplete(Ljava/io/File;II)V

    move v5, v8

    .line 139
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " onUnArchive success"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    goto :goto_0

    .line 141
    :cond_5
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-boolean p2, p0, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z

    if-eqz p2, :cond_6

    .line 147
    iput-boolean v2, p0, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z

    .line 151
    :cond_6
    return p1

    .line 146
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 142
    :catch_0
    move-exception p1

    .line 143
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TarType->doUnArchive:  failed to UnArchive. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    nop

    .line 146
    iget-boolean p1, p0, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z

    if-eqz p1, :cond_7

    .line 147
    iput-boolean v2, p0, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z

    .line 144
    :cond_7
    return v2

    .line 146
    :goto_4
    iget-boolean p2, p0, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z

    if-eqz p2, :cond_8

    .line 147
    iput-boolean v2, p0, Lcom/jrdcom/filemanager/compress/TarType;->sInterrupt:Z

    .line 149
    :cond_8
    throw p1
.end method
