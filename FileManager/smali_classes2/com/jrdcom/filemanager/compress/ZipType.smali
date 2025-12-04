.class public Lcom/jrdcom/filemanager/compress/ZipType;
.super Lcom/jrdcom/filemanager/compress/CommonCompress;
.source "ZipType.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/jrdcom/filemanager/compress/ZipType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/jrdcom/filemanager/compress/CommonCompress;-><init>()V

    return-void
.end method


# virtual methods
.method public doArchive()Z
    .locals 18

    .line 151
    move-object/from16 v1, p0

    const-string v2, "ZipType->zip:  close output stream success"

    const-string v3, "ZipType->zip:  failed to close stream"

    .line 153
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/compress/ZipType;->mPrepare:Z

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    const-string v4, "Please call prepare() before doArchive()."

    invoke-static {v0, v4}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/jrdcom/filemanager/compress/ZipType;->sInterrupt:Z

    .line 158
    nop

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 164
    :try_start_0
    new-instance v6, Ljava/io/File;

    iget-object v0, v1, Lcom/jrdcom/filemanager/compress/ZipType;->mDestPath:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 165
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 166
    :try_start_2
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 167
    :try_start_3
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 169
    const/16 v0, 0x1000

    :try_start_4
    new-array v10, v0, [B

    .line 170
    iget-object v0, v1, Lcom/jrdcom/filemanager/compress/ZipType;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 172
    move v12, v4

    :goto_0
    if-ge v12, v11, :cond_a

    .line 175
    iget-object v0, v1, Lcom/jrdcom/filemanager/compress/ZipType;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;

    .line 176
    iget-object v0, v13, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->zipFile:Ljava/io/File;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v16, :cond_7

    .line 179
    nop

    .line 180
    nop

    .line 182
    :try_start_5
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v0, v13, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->zipFile:Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    :try_start_6
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 184
    :try_start_7
    new-instance v0, Ljava/util/zip/ZipEntry;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v17, v6

    :try_start_8
    iget-object v6, v1, Lcom/jrdcom/filemanager/compress/ZipType;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;

    iget-object v6, v6, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->relPath:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 188
    :goto_1
    invoke-virtual {v4, v10}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    .line 189
    iget-boolean v6, v1, Lcom/jrdcom/filemanager/compress/ZipType;->sInterrupt:Z

    if-nez v6, :cond_1

    .line 193
    const/4 v6, 0x0

    invoke-virtual {v9, v10, v6, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 191
    new-instance v0, Ljava/lang/Exception;

    const-string v6, "User cancelled."

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_2
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 199
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 200
    nop

    :goto_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    .line 196
    :catch_0
    move-exception v0

    goto :goto_3

    .line 199
    :catchall_0
    move-exception v0

    move-object/from16 v17, v6

    goto :goto_5

    .line 196
    :catch_1
    move-exception v0

    move-object/from16 v17, v6

    goto :goto_3

    .line 199
    :catchall_1
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v16, v5

    const/4 v5, 0x0

    goto :goto_6

    .line 196
    :catch_2
    move-exception v0

    move-object/from16 v17, v6

    const/4 v4, 0x0

    goto :goto_3

    .line 199
    :catchall_2
    move-exception v0

    move-object/from16 v17, v6

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto :goto_6

    .line 196
    :catch_3
    move-exception v0

    move-object/from16 v17, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 197
    :goto_3
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 199
    if-eqz v4, :cond_3

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 200
    :cond_3
    if-eqz v5, :cond_4

    goto :goto_2

    .line 202
    :cond_4
    :goto_4
    goto :goto_7

    .line 199
    :catchall_3
    move-exception v0

    :goto_5
    move-object/from16 v16, v5

    move-object v5, v4

    :goto_6
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 200
    :cond_5
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 201
    :cond_6
    throw v0

    .line 203
    :cond_7
    move-object/from16 v17, v6

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 204
    array-length v0, v0

    if-gtz v0, :cond_8

    .line 205
    new-instance v0, Ljava/util/zip/ZipEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/jrdcom/filemanager/compress/ZipType;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;

    iget-object v5, v5, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->relPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 206
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 210
    :cond_8
    :goto_7
    iget-object v0, v1, Lcom/jrdcom/filemanager/compress/ZipType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, v1, Lcom/jrdcom/filemanager/compress/ZipType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    iget-object v4, v13, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->zipFile:Ljava/io/File;

    add-int/lit8 v5, v12, 0x1

    invoke-interface {v0, v4, v5, v11}, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;->onArchiveComplete(Ljava/io/File;II)V

    .line 213
    :cond_9
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->zipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " complete. Size =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->zipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v14

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 172
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v17

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 217
    :catch_4
    move-exception v0

    goto :goto_b

    .line 221
    :cond_a
    move-object/from16 v17, v6

    .line 223
    :try_start_c
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 224
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 227
    goto :goto_8

    .line 225
    :catch_5
    move-exception v0

    .line 226
    sget-object v2, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_8
    nop

    .line 230
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 231
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 232
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 236
    :goto_9
    goto :goto_a

    .line 234
    :catch_6
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 240
    :goto_a
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v6, v17

    goto/16 :goto_11

    .line 221
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v5, v9

    goto/16 :goto_13

    .line 217
    :catch_7
    move-exception v0

    move-object/from16 v17, v6

    :goto_b
    move-object v5, v9

    goto :goto_e

    .line 221
    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    goto/16 :goto_13

    .line 217
    :catch_8
    move-exception v0

    move-object/from16 v17, v6

    const/4 v5, 0x0

    goto :goto_e

    .line 221
    :catchall_6
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    goto :goto_d

    .line 217
    :catch_9
    move-exception v0

    move-object/from16 v17, v6

    const/4 v5, 0x0

    goto :goto_c

    :catch_a
    move-exception v0

    move-object/from16 v17, v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_c
    const/4 v8, 0x0

    goto :goto_e

    .line 221
    :catchall_7
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_d
    const/4 v8, 0x0

    goto/16 :goto_13

    .line 217
    :catch_b
    move-exception v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    .line 218
    :goto_e
    nop

    .line 219
    :try_start_e
    sget-object v4, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ZipType->zip:  failed to zip files"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 221
    if-eqz v5, :cond_b

    .line 223
    :try_start_f
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 224
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 227
    goto :goto_f

    .line 225
    :catch_c
    move-exception v0

    .line 226
    sget-object v2, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_f
    if-eqz v7, :cond_b

    .line 230
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 231
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 232
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    goto :goto_10

    .line 234
    :catch_d
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 240
    :cond_b
    :goto_10
    move-object/from16 v6, v17

    const/4 v0, 0x0

    :goto_11
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/compress/ZipType;->sInterrupt:Z

    if-eqz v2, :cond_d

    .line 242
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    const-string v2, "ZipType->zip: Zip cancelled"

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 245
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 246
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZipType->zip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has been deleted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jrdcom/filemanager/compress/ZipType;->sInterrupt:Z

    .line 250
    move v4, v2

    goto :goto_12

    .line 252
    :cond_d
    sget-object v1, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    const-string v2, "Zip end"

    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    .line 254
    :goto_12
    return v4

    .line 221
    :catchall_8
    move-exception v0

    move-object v1, v0

    :goto_13
    if-eqz v5, :cond_e

    .line 223
    :try_start_11
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 224
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    .line 227
    goto :goto_14

    .line 225
    :catch_e
    move-exception v0

    .line 226
    sget-object v2, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_14
    if-eqz v7, :cond_e

    .line 230
    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 231
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 232
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    goto :goto_15

    .line 234
    :catch_f
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    .line 238
    :cond_e
    :goto_15
    throw v1
.end method

.method public doUnArchive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    .line 29
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "ZipType->unzip: unzip failed, please check."

    const-string v4, "ZipType->unzip: close zipFile failed."

    const-string v5, "ZipType->unzip: failed to close output stream"

    const-string v6, "ZipType->unzip: failed to close input stream"

    const-string v0, "FileManager_YY"

    const-string v7, "unzip begin"

    invoke-static {v0, v7}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    nop

    .line 32
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/jrdcom/filemanager/compress/ZipType;->sInterrupt:Z

    .line 33
    nop

    .line 36
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    const-string v0, "GBK"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 37
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v10

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ZipType->unzip:  failed to create dir0: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    nop

    .line 44
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->size()I

    move-result v11

    const/4 v12, 0x1

    move v13, v12

    move v14, v13

    .line 45
    :goto_0
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 46
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/compress/ZipType;->sInterrupt:Z

    if-eqz v0, :cond_1

    .line 47
    goto/16 :goto_11

    .line 52
    :cond_1
    nop

    .line 53
    nop

    .line 55
    const/16 v0, 0x400

    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 58
    :try_start_2
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/zip/ZipEntry;

    .line 61
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 62
    const-string v7, "../"

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 110
    nop

    .line 117
    nop

    .line 45
    const/4 v7, 0x0

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 66
    const-string v7, "/"

    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 67
    array-length v8, v7

    sub-int/2addr v8, v12

    aget-object v8, v7, v8

    .line 69
    :cond_3
    new-instance v7, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ZipType->unzip: dir1: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_4
    const/4 v2, 0x0

    const/4 v8, 0x0

    goto :goto_3

    .line 77
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 82
    :cond_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v9, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :goto_1
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_8

    .line 88
    iget-boolean v15, v1, Lcom/jrdcom/filemanager/compress/ZipType;->sInterrupt:Z

    if-eqz v15, :cond_7

    .line 89
    goto :goto_2

    .line 91
    :cond_7
    const/4 v15, 0x0

    invoke-virtual {v8, v0, v15, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 93
    :cond_8
    :goto_2
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 94
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 98
    :goto_3
    iget-object v0, v1, Lcom/jrdcom/filemanager/compress/ZipType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, v1, Lcom/jrdcom/filemanager/compress/ZipType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v12, v14, 0x1

    :try_start_5
    invoke-interface {v0, v7, v14, v11}, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;->onUnArchiveComplete(Ljava/io/File;II)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v14, v12

    goto :goto_4

    .line 106
    :catch_0
    move-exception v0

    move v14, v12

    goto :goto_7

    .line 103
    :catch_1
    move-exception v0

    move v14, v12

    goto/16 :goto_9

    .line 101
    :cond_9
    :goto_4
    :try_start_6
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " onUnArchive success"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 110
    if-eqz v2, :cond_a

    .line 112
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 115
    goto :goto_5

    .line 113
    :catch_2
    move-exception v0

    .line 114
    :try_start_8
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 117
    :cond_a
    :goto_5
    if-eqz v8, :cond_e

    .line 119
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 122
    :goto_6
    goto/16 :goto_d

    .line 120
    :catch_3
    move-exception v0

    .line 121
    :try_start_a
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    .line 106
    :catch_4
    move-exception v0

    goto :goto_7

    .line 103
    :catch_5
    move-exception v0

    goto :goto_9

    .line 110
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v8

    const/4 v8, 0x0

    goto :goto_e

    .line 106
    :catch_6
    move-exception v0

    const/4 v2, 0x0

    goto :goto_7

    .line 103
    :catch_7
    move-exception v0

    const/4 v2, 0x0

    goto :goto_9

    .line 110
    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v8, 0x0

    const/16 v16, 0x0

    goto :goto_e

    .line 106
    :catch_8
    move-exception v0

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 107
    :goto_7
    nop

    .line 108
    :try_start_b
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 110
    if-eqz v2, :cond_b

    .line 112
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 115
    goto :goto_8

    .line 113
    :catch_9
    move-exception v0

    .line 114
    :try_start_d
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 117
    :cond_b
    :goto_8
    if-eqz v8, :cond_d

    .line 119
    :try_start_e
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_b

    .line 120
    :catch_a
    move-exception v0

    .line 121
    :try_start_f
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_b

    .line 103
    :catch_b
    move-exception v0

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 104
    :goto_9
    nop

    .line 105
    :try_start_10
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 110
    if-eqz v2, :cond_c

    .line 112
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 115
    goto :goto_a

    .line 113
    :catch_c
    move-exception v0

    .line 114
    :try_start_12
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 117
    :cond_c
    :goto_a
    if-eqz v8, :cond_d

    .line 119
    :try_start_13
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 122
    :goto_b
    goto :goto_c

    .line 120
    :catch_d
    move-exception v0

    .line 121
    :try_start_14
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_b

    .line 125
    :cond_d
    :goto_c
    const/4 v13, 0x0

    :cond_e
    :goto_d
    move-object/from16 v2, p2

    const/4 v7, 0x0

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 110
    :catchall_2
    move-exception v0

    move-object/from16 v16, v8

    move-object v8, v2

    move-object v2, v0

    :goto_e
    if-eqz v8, :cond_f

    .line 112
    :try_start_15
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 115
    goto :goto_f

    .line 113
    :catch_e
    move-exception v0

    .line 114
    :try_start_16
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 117
    :cond_f
    :goto_f
    if-eqz v16, :cond_10

    .line 119
    :try_start_17
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 122
    goto :goto_10

    .line 120
    :catch_f
    move-exception v0

    .line 121
    :try_start_18
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_10
    :goto_10
    throw v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 130
    :cond_11
    :goto_11
    nop

    .line 132
    :try_start_19
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    .line 135
    :goto_12
    goto :goto_16

    .line 133
    :catch_10
    move-exception v0

    .line 134
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 130
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v8, v9

    goto :goto_18

    .line 126
    :catch_11
    move-exception v0

    move-object v8, v9

    goto :goto_13

    .line 130
    :catchall_4
    move-exception v0

    move-object v1, v0

    const/4 v8, 0x0

    goto :goto_18

    .line 126
    :catch_12
    move-exception v0

    const/4 v8, 0x0

    .line 127
    :goto_13
    nop

    .line 128
    :try_start_1a
    sget-object v2, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZipType->unzip: unzip failed, may be not valid zip file."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 130
    if-eqz v8, :cond_12

    .line 132
    :try_start_1b
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_13

    .line 135
    :goto_14
    goto :goto_15

    .line 133
    :catch_13
    move-exception v0

    .line 134
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 139
    :cond_12
    :goto_15
    const/4 v13, 0x0

    :goto_16
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/compress/ZipType;->sInterrupt:Z

    if-eqz v0, :cond_13

    .line 140
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    const-string v2, "ZipType->doUnArchive: unzip cancelled"

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jrdcom/filemanager/compress/ZipType;->sInterrupt:Z

    goto :goto_17

    .line 143
    :cond_13
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    const-string v1, "unzip end"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_17
    return v13

    .line 130
    :catchall_5
    move-exception v0

    move-object v1, v0

    :goto_18
    if-eqz v8, :cond_14

    .line 132
    :try_start_1c
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_14

    .line 135
    goto :goto_19

    .line 133
    :catch_14
    move-exception v0

    .line 134
    sget-object v0, Lcom/jrdcom/filemanager/compress/ZipType;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_14
    :goto_19
    throw v1
.end method
