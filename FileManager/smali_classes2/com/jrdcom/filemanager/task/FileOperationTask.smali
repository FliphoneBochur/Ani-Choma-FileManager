.class public abstract Lcom/jrdcom/filemanager/task/FileOperationTask;
.super Lcom/jrdcom/filemanager/task/BaseAsyncTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;,
        Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 47
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private calcNeedSpace(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .line 105
    nop

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    return-wide v0
.end method


# virtual methods
.method protected addItem(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 276
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 277
    new-instance p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object p2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 278
    iget-object p2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p2, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 280
    :cond_0
    return-void
.end method

.method protected addItemWithMimeType(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/jrdcom/filemanager/manager/FileInfoManager;",
            ")V"
        }
    .end annotation

    .line 284
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 286
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 288
    invoke-virtual {p4, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 290
    :cond_0
    return-void
.end method

.method protected canOperate(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 944
    new-instance v1, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;

    invoke-direct {v1}, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;-><init>()V

    .line 945
    invoke-virtual {p0, p2, v0, v1}, Lcom/jrdcom/filemanager/task/FileOperationTask;->getAllFileList(Ljava/util/List;Ljava/util/List;Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;)I

    move-result p2

    .line 946
    if-gez p2, :cond_0

    .line 947
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 950
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;->isEnoughSpace(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 951
    const/4 p1, -0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 953
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public checkFileNameAndRename(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 242
    nop

    .line 245
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask;->isCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 247
    return-object v2

    .line 249
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v3, "image/jpeg+"

    if-nez v1, :cond_2

    .line 250
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->genrateNextNewName4Image(Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    .line 253
    :cond_1
    return-object p1

    .line 256
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->genrateNextNewName4Image(Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    goto :goto_1

    .line 259
    :cond_3
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->genrateNextNewName(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 262
    :goto_1
    if-nez p1, :cond_4

    .line 263
    return-object v2

    .line 265
    :cond_4
    goto :goto_0
.end method

.method protected copyFile([BLjava/io/File;Ljava/io/File;)I
    .locals 5

    .line 196
    nop

    .line 197
    nop

    .line 198
    nop

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, -0xe

    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    nop

    .line 224
    nop

    .line 229
    nop

    .line 231
    nop

    .line 236
    nop

    .line 201
    return v2

    .line 203
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    nop

    .line 224
    nop

    .line 229
    nop

    .line 231
    nop

    .line 236
    nop

    .line 204
    return v2

    .line 206
    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 207
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    nop

    .line 209
    :goto_0
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 212
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "delete fail in copyFile()"

    invoke-static {p1, p3}, Lcom/jrdcom/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :cond_2
    const/4 p1, -0x7

    .line 224
    nop

    .line 225
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 229
    goto :goto_1

    .line 227
    :catch_0
    move-exception p3

    .line 228
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 231
    :goto_1
    nop

    .line 232
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 236
    goto :goto_2

    .line 234
    :catch_1
    move-exception p2

    .line 235
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 215
    :goto_2
    return p1

    .line 217
    :cond_3
    :try_start_5
    invoke-virtual {p2, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 224
    :cond_4
    nop

    .line 225
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 229
    goto :goto_3

    .line 227
    :catch_2
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 231
    :goto_3
    nop

    .line 232
    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 236
    goto :goto_b

    .line 234
    :catch_3
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    goto :goto_b

    .line 223
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 219
    :catch_4
    move-exception p1

    goto :goto_5

    .line 223
    :catchall_1
    move-exception p1

    move-object p2, v1

    :goto_4
    move-object v1, v3

    goto :goto_c

    .line 219
    :catch_5
    move-exception p1

    move-object p2, v1

    :goto_5
    move-object v1, v3

    goto :goto_6

    .line 223
    :catchall_2
    move-exception p1

    move-object p2, v1

    goto :goto_c

    .line 219
    :catch_6
    move-exception p1

    move-object p2, v1

    .line 220
    :goto_6
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 221
    nop

    .line 224
    if-eqz v1, :cond_5

    .line 225
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    .line 227
    :catch_7
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 229
    :cond_5
    :goto_7
    nop

    .line 231
    :goto_8
    if-eqz p2, :cond_6

    .line 232
    :try_start_a
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    .line 234
    :catch_8
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    goto :goto_a

    .line 236
    :cond_6
    :goto_9
    nop

    .line 238
    :goto_a
    move v0, v2

    :goto_b
    return v0

    .line 223
    :catchall_3
    move-exception p1

    .line 224
    :goto_c
    if-eqz v1, :cond_7

    .line 225
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_d

    .line 227
    :catch_9
    move-exception p3

    .line 228
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 229
    :cond_7
    :goto_d
    nop

    .line 231
    :goto_e
    if-eqz p2, :cond_8

    .line 232
    :try_start_c
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_f

    .line 234
    :catch_a
    move-exception p2

    .line 235
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 236
    :cond_8
    :goto_f
    nop

    .line 237
    :goto_10
    throw p1
.end method

.method protected deleteFile(Ljava/io/File;)Z
    .locals 7

    .line 64
    const/16 v0, -0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 65
    new-array p1, v2, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    new-instance v3, Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-direct {v3, v0, v2}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(IZ)V

    aput-object v3, p1, v1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    .line 74
    :cond_1
    new-array p1, v2, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    new-instance v3, Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-direct {v3, v0, v2}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(IZ)V

    aput-object v3, p1, v1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;->publishProgress([Ljava/lang/Object;)V

    .line 77
    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    return v2

    .line 81
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    .line 82
    return v2

    .line 85
    :cond_4
    new-array p1, v2, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    new-instance v3, Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-direct {v3, v0, v2}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(IZ)V

    aput-object v3, p1, v1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;->publishProgress([Ljava/lang/Object;)V

    .line 90
    :goto_0
    return v1
.end method

.method protected getAllDeleteFile(Ljava/io/File;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 p1, -0x7

    return p1

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 145
    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 148
    if-nez p1, :cond_1

    .line 149
    const/4 p1, -0x1

    return p1

    .line 151
    :cond_1
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 152
    invoke-virtual {p0, v3, p2}, Lcom/jrdcom/filemanager/task/FileOperationTask;->getAllDeleteFile(Ljava/io/File;Ljava/util/List;)I

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_2
    goto :goto_1

    .line 156
    :cond_3
    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    :cond_4
    :goto_1
    return v1
.end method

.method protected getAllDeleteFiles(Ljava/util/List;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .line 130
    nop

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 132
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/jrdcom/filemanager/task/FileOperationTask;->getAllDeleteFile(Ljava/io/File;Ljava/util/List;)I

    move-result v0

    .line 133
    if-gez v0, :cond_0

    .line 134
    goto :goto_1

    .line 136
    :cond_0
    goto :goto_0

    .line 137
    :cond_1
    :goto_1
    return v0
.end method

.method protected getAllFile(Ljava/io/File;Ljava/util/List;Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;",
            ")I"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 p1, -0x7

    return p1

    .line 178
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->updateTotal(J)V

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 182
    if-nez p1, :cond_1

    .line 183
    const/4 p1, -0x1

    return p1

    .line 185
    :cond_1
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 186
    invoke-virtual {p0, v3, p2, p3}, Lcom/jrdcom/filemanager/task/FileOperationTask;->getAllFile(Ljava/io/File;Ljava/util/List;Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;)I

    move-result v3

    .line 187
    if-gez v3, :cond_2

    .line 188
    return v3

    .line 185
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_3
    return v1
.end method

.method protected getAllFileList(Ljava/util/List;Ljava/util/List;Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;",
            ")I"
        }
    .end annotation

    .line 164
    nop

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 166
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/jrdcom/filemanager/task/FileOperationTask;->getAllFile(Ljava/io/File;Ljava/util/List;Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;)I

    move-result v0

    .line 167
    if-gez v0, :cond_0

    .line 168
    goto :goto_1

    .line 170
    :cond_0
    goto :goto_0

    .line 171
    :cond_1
    :goto_1
    return v0
.end method

.method public getConditionCount(II)I
    .locals 4

    .line 738
    nop

    .line 739
    const/16 v0, 0xa

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 740
    move v0, v1

    goto :goto_1

    .line 741
    :cond_0
    const/16 v2, 0x64

    if-le p1, v0, :cond_1

    if-gt p1, v2, :cond_1

    .line 742
    const/4 v0, 0x2

    goto :goto_1

    .line 743
    :cond_1
    const/16 v3, 0x190

    if-le p1, v2, :cond_2

    if-gt p1, v3, :cond_2

    .line 744
    const/4 v0, 0x4

    goto :goto_1

    .line 745
    :cond_2
    const/16 v2, 0x3e8

    if-le p1, v3, :cond_3

    if-gt p1, v2, :cond_3

    .line 746
    const/16 v0, 0x8

    goto :goto_1

    .line 747
    :cond_3
    if-le p1, v2, :cond_6

    .line 748
    const/4 p1, 0x5

    if-eq p2, p1, :cond_5

    const/16 p1, 0x22

    if-eq p2, p1, :cond_5

    const/16 p1, 0x23

    if-eq p2, p1, :cond_5

    const/16 p1, 0x28

    if-ne p2, p1, :cond_4

    goto :goto_0

    .line 754
    :cond_4
    goto :goto_1

    .line 752
    :cond_5
    :goto_0
    const/16 v0, 0x32

    goto :goto_1

    .line 747
    :cond_6
    move v0, v1

    .line 757
    :goto_1
    return v0
.end method

.method public getCountFromMedia(ILandroid/content/Context;Z)Ljava/lang/String;
    .locals 20

    .line 1462
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1465
    const-string v2, "count(*)"

    const-string v3, "+sum(_size)"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1466
    nop

    .line 1468
    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-ne v4, v1, :cond_0

    .line 1469
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1470
    :cond_0
    if-ne v3, v1, :cond_1

    .line 1471
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1472
    :cond_1
    if-ne v2, v1, :cond_2

    .line 1473
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1475
    :cond_2
    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1477
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1479
    iget-object v8, v0, Lcom/jrdcom/filemanager/task/FileOperationTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v8, v8, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    const-string v9, "_data not like "

    const-string v10, " and "

    if-nez v8, :cond_3

    .line 1480
    const-string v8, "title not like "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    const-string v8, ".%"

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    const-string v8, "%/.%"

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    :cond_3
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    const-string v8, "null"

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1494
    const/16 v8, 0x9

    if-eqz p3, :cond_4

    iget-object v0, v0, Lcom/jrdcom/filemanager/task/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eq v1, v8, :cond_4

    .line 1495
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    const-string v0, "tct_is_private != "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    const-string v0, "1"

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1499
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1500
    const-string v9, "%.xlsx"

    const-string v11, "%.docx"

    const-string v12, "%.ppt"

    const-string v13, "%.xls"

    const-string v14, "%.doc"

    const-string v15, "text/%"

    const-string v4, "12289"

    const-string v8, "format!="

    const-string v2, "mime_type like "

    const-string v3, " and ("

    move-object/from16 v16, v0

    const-string v0, ")"

    move-object/from16 v17, v6

    const-string v6, "_data like "

    move-object/from16 v18, v5

    const-string v5, " or "

    move-object/from16 v19, v0

    const/4 v0, 0x6

    if-ne v0, v1, :cond_5

    .line 1503
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    invoke-static {v7, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1510
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    invoke-static {v7, v15}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1514
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    invoke-static {v7, v14}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    invoke-static {v7, v13}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1520
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    invoke-static {v7, v12}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    invoke-static {v7, v11}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1524
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    const-string v0, "%.xlsm"

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    const-string v0, "%.pptx"

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    const-string v0, "%.pdf"

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    const-string v0, "%.vcf"

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    const-string v0, "%.vcs"

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1536
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1537
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v19, v9

    const/4 v9, 0x7

    if-ne v9, v1, :cond_6

    .line 1540
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    invoke-static {v7, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1546
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    const-string v2, "application/vnd.android.package-archive"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1548
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    const-string v2, "%.apk"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1550
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1551
    :cond_6
    if-nez v1, :cond_7

    .line 1553
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    invoke-static {v7, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "bucket_display_name not like "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    const-string v4, ".thumbnails"

    invoke-static {v7, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-static {v7, v15}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-static {v7, v14}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1564
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    invoke-static {v7, v13}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1566
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-static {v7, v12}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    invoke-static {v7, v11}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    move-object/from16 v2, v19

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    const-string v2, "%.xlsm"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    const-string v2, "%.pptx"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1576
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    const-string v2, "%.pdf"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    const-string v2, "%.jpg"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    const-string v2, "%.jpeg"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    const-string v2, "%.png"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    const-string v2, "%.bmp"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    const-string v2, "%.mp3"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    const-string v2, "%.wav"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1590
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    const-string v2, "%.mp4"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    const-string v2, "%.avi"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    const-string v2, "%.mid"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    const-string v2, "%.3g2"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    const-string v2, "%.aac"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    const-string v2, "%.amr"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1603
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    const-string v2, "%.awb"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    const-string v2, "%.mxmf"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1607
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    const-string v2, "%.ogg"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1609
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    const-string v2, "%.rtttl"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    const-string v2, "%.imy"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1613
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    const-string v2, "%.xmf"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    const-string v2, "%.flac"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    const-string v2, "%.mov"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    const-string v2, "%.zip"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    const-string v2, "%.rar"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1624
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    const-string v2, "%.apk"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1626
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    const-string v2, "%.vcf"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1628
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    const-string v2, "%.vcs"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1630
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    const-string v2, "%.m4a"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    const-string v2, "%.3gp"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1634
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    const-string v2, "%.dcf"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1636
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    const-string v2, "%.3gpp"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    const-string v2, "%.gif"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    const-string v2, "%.pptm"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    const-string v2, "%.xps"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1645
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    const-string v2, "%.potx"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    const-string v2, "%.potm"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1649
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    const-string v2, "%.thmx"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1651
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    const-string v2, "%.ppsx"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    const-string v2, "%.ppsm"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    const-string v2, "%.pps"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    const-string v2, "%.ppam"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1659
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    const-string v2, "%.ppa"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    const-string v2, "%.xml"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    const-string v2, "%.pot"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    const-string v2, "%.wmv"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    const-string v2, "%.tif"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    const-string v2, "%.wmf"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    const-string v2, "%.emf"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    const-string v2, "%.rtf"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    const-string v2, "%.odp"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    const-string v2, "%.docm"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1679
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    const-string v2, "%.dotx"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    const-string v2, "%.dotm"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1683
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    const-string v2, "%.dot"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1685
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    const-string v2, "%.mht"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    const-string v2, "%.mhtml"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    const-string v2, "%.htm"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    const-string v2, "%.html"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1693
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    const-string v2, "%.odt"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    const-string v2, "%.xlsb"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    const-string v2, "%.xltx"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1699
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    const-string v2, "%.xltm"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    const-string v2, "%.xlt"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1704
    const-string v2, "%.csv"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    const-string v2, "%.prn"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1707
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    const-string v2, "%.dif"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1709
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    const-string v2, "%.slk"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    const-string v2, "%.xlam"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    const-string v2, "%.xla"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1715
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    const-string v2, "%.ods"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1717
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    const-string v2, "%.mpp"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    const-string v2, "%.mpt"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    const-string v2, "%.oft"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1723
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    const-string v2, "%.msg"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1726
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1727
    :cond_7
    const/16 v4, 0x8

    if-ne v4, v1, :cond_8

    .line 1728
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    const-string v2, "application/zip"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1731
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    const-string v2, "%.rar"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1734
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    const-string v2, "%.zip"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1737
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    const-string v2, "%.tar"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1740
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    const-string v2, "%.7z"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1744
    :cond_8
    const/16 v2, 0x9

    if-ne v2, v1, :cond_9

    .line 1745
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tct_is_private = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    const-string v2, "1"

    invoke-static {v7, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1749
    :cond_9
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1751
    const/4 v3, 0x0

    .line 1753
    const-string v10, ""

    const/4 v4, 0x4

    if-eq v4, v1, :cond_d

    const/4 v4, 0x5

    if-eq v4, v1, :cond_d

    const/4 v4, 0x3

    if-ne v4, v1, :cond_a

    goto :goto_4

    .line 1767
    :cond_a
    const/4 v4, 0x6

    if-eq v4, v1, :cond_c

    const/4 v4, 0x7

    if-eq v4, v1, :cond_c

    if-eqz v1, :cond_c

    const/16 v4, 0x8

    if-eq v4, v1, :cond_c

    const/16 v4, 0x9

    if-ne v4, v1, :cond_b

    goto :goto_3

    :cond_b
    :goto_2
    goto :goto_5

    .line 1773
    :cond_c
    :goto_3
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_5

    .line 1759
    :cond_d
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1760
    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    const-string v1, " and (_data not in (select _data from files where format==12289))"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1766
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_2

    .line 1776
    :goto_5
    if-eqz v3, :cond_10

    .line 1778
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1779
    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1780
    move-object/from16 v4, p2

    invoke-static {v4, v1, v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->sizeToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1781
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1782
    const-string v1, "0 B"

    .line 1784
    :cond_e
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_f

    .line 1785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "999+ ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_6

    .line 1787
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    .line 1794
    :cond_10
    :goto_6
    if-eqz v3, :cond_12

    .line 1795
    :goto_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 1794
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_11

    .line 1795
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1797
    :cond_11
    throw v0

    .line 1791
    :catch_0
    move-exception v0

    .line 1794
    if-eqz v3, :cond_12

    .line 1795
    goto :goto_7

    .line 1798
    :cond_12
    :goto_8
    return-object v10
.end method

.method protected getDstFile(Ljava/util/HashMap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 54
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 55
    if-nez p1, :cond_0

    .line 56
    goto :goto_0

    .line 55
    :cond_0
    move-object p3, p1

    .line 58
    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;->checkFileNameAndRename(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getSafeCountFromMedia(ILandroid/content/Context;Z)Ljava/lang/String;
    .locals 16

    .line 1802
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1804
    const-string v2, "count(*)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 1805
    nop

    .line 1807
    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-ne v4, v1, :cond_0

    .line 1808
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1809
    :cond_0
    if-ne v3, v1, :cond_1

    .line 1810
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1811
    :cond_1
    if-ne v2, v1, :cond_2

    .line 1812
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1814
    :cond_2
    const-string v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1816
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1818
    iget-object v8, v0, Lcom/jrdcom/filemanager/task/FileOperationTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v8, v8, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    const-string v9, " and "

    if-nez v8, :cond_3

    .line 1819
    const-string v8, "title not like "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    const-string v8, ".%"

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1821
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    :cond_3
    const-string v8, "_data not like "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    const-string v8, "null"

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1827
    const-string v8, "_data like "

    if-eqz p3, :cond_4

    iget-object v0, v0, Lcom/jrdcom/filemanager/task/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1828
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    const-string v0, "tct_is_private != "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    const-string v0, "1"

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    const-string v0, "/storage/emulated/0/%"

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1836
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1837
    const/4 v10, 0x5

    const/4 v11, 0x1

    const-string v12, ")"

    const-string v13, "mime_type like "

    const-string v14, " and ("

    const-string v15, " or "

    if-ne v11, v1, :cond_5

    .line 1839
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    const-string v9, "text/%"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    const-string v9, "%.doc"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    const-string v9, "%.xls"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    const-string v9, "%.ppt"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1851
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    const-string v9, "%.docx"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1854
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    const-string v9, "%.xlsx"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    const-string v9, "%.xlsm"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    const-string v9, "%.pptx"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    const-string v9, "%.pdf"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1866
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    const-string v9, "%.vcf"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1868
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    const-string v8, "%.vcs"

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1870
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1871
    :cond_5
    if-nez v1, :cond_6

    .line 1874
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    const-string v9, "format!="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    const-string v9, "12289"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    const-string v9, "application/vnd.android.package-archive"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    const-string v8, "%.apk"

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1885
    :cond_6
    if-ne v10, v1, :cond_7

    .line 1886
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    const-string v9, "application/zip"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1889
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    const-string v9, "%.rar"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1892
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    const-string v9, "%.zip"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    const-string v9, "%.tar"

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    const-string v8, "%.7z"

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1901
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    :cond_7
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1906
    const/4 v9, 0x0

    .line 1908
    const-string v12, ""

    if-eq v4, v1, :cond_b

    if-eq v3, v1, :cond_b

    if-ne v2, v1, :cond_8

    goto :goto_4

    .line 1922
    :cond_8
    if-eq v11, v1, :cond_a

    if-eqz v1, :cond_a

    if-ne v10, v1, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    goto :goto_5

    .line 1926
    :cond_a
    :goto_3
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object v4, v6

    move-object v6, v8

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_5

    .line 1914
    :cond_b
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1915
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    const-string v0, " and (_data not in (select _data from files where format==12289))"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v6

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2

    .line 1929
    :goto_5
    if-eqz v9, :cond_d

    .line 1931
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1933
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_c

    .line 1934
    const-string v0, "999+"

    move-object v12, v0

    goto :goto_6

    .line 1936
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    .line 1943
    :cond_d
    :goto_6
    if-eqz v9, :cond_e

    .line 1945
    :goto_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 1943
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 1940
    :catch_0
    move-exception v0

    .line 1941
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1943
    if-eqz v9, :cond_e

    .line 1945
    goto :goto_7

    .line 1948
    :cond_e
    :goto_8
    return-object v12

    .line 1943
    :goto_9
    if-eqz v9, :cond_f

    .line 1945
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1947
    :cond_f
    throw v0
.end method

.method protected isEnoughSpace(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;->calcNeedSpace(Ljava/util/List;)J

    move-result-wide v1

    .line 115
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    cmp-long p1, v1, p1

    if-lez p1, :cond_0

    .line 119
    return v0

    .line 124
    :cond_0
    nop

    .line 125
    const/4 p1, 0x1

    return p1

    .line 121
    :catch_0
    move-exception p1

    .line 122
    const-string p2, "FileOperationTask"

    const-string v1, "Exception occured when isEnoughSpace():"

    invoke-static {p2, v1, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    return v0
.end method

.method protected mkdir(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 94
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return v1

    .line 98
    :cond_0
    new-array p1, v1, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    new-instance p2, Lcom/jrdcom/filemanager/task/ProgressInfo;

    const/16 p3, -0xe

    invoke-direct {p2, p3, v1}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(IZ)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;->publishProgress([Ljava/lang/Object;)V

    .line 100
    return p3
.end method

.method protected removeItem(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 293
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 294
    iget-object p2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p2, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->removeItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 296
    :cond_0
    return-void
.end method

.method protected updateProgressWithTime(Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;Ljava/io/File;)V
    .locals 6

    .line 269
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->needUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->getProgress()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->getTotal()J

    move-result-wide v4

    div-long/2addr v0, v4

    long-to-int p1, v0

    .line 271
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    const/4 v1, 0x0

    new-instance v4, Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2, p1, v2, v3}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(Ljava/lang/String;IJ)V

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/task/FileOperationTask;->publishProgress([Ljava/lang/Object;)V

    .line 273
    :cond_0
    return-void
.end method
