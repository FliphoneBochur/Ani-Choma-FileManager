.class public final Lcom/jrdcom/filemanager/manager/MediaStoreHelper;
.super Ljava/lang/Object;
.source "MediaStoreHelper.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field private static final SCAN_FOLDER_NUM:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MediaStoreHelper"


# instance fields
.field private mBaseAsyncTask:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

.field private final mContext:Landroid/content/Context;

.field private mDstFolder:Ljava/lang/String;

.field private mMediaScanner:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mBaseAsyncTask:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    .line 53
    return-void
.end method


# virtual methods
.method public deleteFileInMediaStore(Ljava/lang/String;)V
    .locals 6

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 198
    const-string v1, "_data=?"

    .line 199
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 202
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 204
    const-string v4, "MediaStoreHelper"

    const-string v5, "deleteFileInMediaStore,delete."

    invoke-static {v4, v5}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :try_start_0
    invoke-virtual {p1, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_0

    .line 207
    :catch_0
    move-exception p1

    .line 208
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mBaseAsyncTask:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    if-eqz p1, :cond_1

    .line 209
    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->cancel(Z)Z

    .line 213
    :cond_1
    :goto_0
    return-void
.end method

.method public deleteFileInMediaStore(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 157
    nop

    .line 158
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    int-to-double v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/16 v4, 0x12c

    int-to-float v4, v4

    div-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v3, " IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    mul-int/lit16 v3, v1, 0x12c

    .line 163
    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v4, v1, 0x12c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 165
    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_1

    .line 166
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v7, "?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_0

    .line 169
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 172
    :cond_1
    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    sub-int/2addr v4, v3

    new-array v3, v4, [Ljava/lang/String;

    .line 174
    invoke-interface {v5, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 176
    :try_start_0
    iget-object v4, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 182
    :catch_0
    move-exception v2

    .line 183
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 177
    :catch_1
    move-exception v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 179
    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mBaseAsyncTask:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    if-eqz v2, :cond_2

    .line 180
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->cancel(Z)Z

    .line 184
    :cond_2
    :goto_2
    nop

    .line 158
    :goto_3
    goto/16 :goto_0

    .line 186
    :cond_3
    return-void
.end method

.method public scanFileOrDirecotry(Ljava/io/File;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 124
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 127
    :cond_0
    return-void
.end method

.method public scanMedia(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanFileOrDirecotry(Ljava/io/File;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 96
    :cond_0
    return-void
.end method

.method public scanPathforMediaStore(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanFileOrDirecotry(Ljava/io/File;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 110
    :cond_0
    return-void
.end method

.method public scanPathforMediaStore(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanFileOrDirecotry(Ljava/io/File;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 134
    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public scanPathforMediaStore(Ljava/util/List;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/media/MediaScannerConnection$OnScanCompletedListener;",
            ")V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanFileOrDirecotry(Ljava/io/File;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 143
    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public setDstFolder(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mDstFolder:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public updateInMediaStore(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 56
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 59
    const-string v0, "content://media/external/object"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "need_update_media_values"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 61
    const-string v6, "_data=?"

    .line 62
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    .line 66
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 67
    const-string v1, "_data"

    invoke-virtual {v5, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-nez p3, :cond_0

    .line 69
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "_display_name"

    invoke-virtual {v5, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    new-array v7, v0, [Ljava/lang/String;

    aput-object p2, v7, v3

    .line 73
    :try_start_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanPathforMediaStore(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 77
    :catch_1
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 79
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->mBaseAsyncTask:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 75
    :catch_2
    move-exception p1

    .line 76
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 86
    :cond_1
    :goto_0
    return-void
.end method
