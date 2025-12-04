.class public Lcom/jrdcom/filemanager/utils/FileListCache;
.super Ljava/lang/Object;
.source "FileListCache.java"


# static fields
.field private static final MAX_COUNT:I = 0x32

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private lruCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAllFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileListCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->mAllFileList:Ljava/util/List;

    .line 34
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    .line 35
    return-void
.end method


# virtual methods
.method public addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 173
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    return v2

    .line 180
    :cond_0
    return v1

    .line 183
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    return v1

    .line 186
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return v2
.end method

.method public addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z
    .locals 3

    .line 198
    iget-object p3, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p3, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 201
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return v1

    .line 206
    :cond_0
    return v0

    .line 209
    :cond_1
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 212
    return v0

    .line 214
    :cond_2
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    return v1
.end method

.method public clearCache()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 90
    return-void
.end method

.method public deleteCacheFiles(ILjava/io/File;Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)Z"
        }
    .end annotation

    .line 244
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-ltz p1, :cond_0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p0, v0, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 248
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public deleteCacheFiles(ILjava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z
    .locals 1

    .line 149
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 151
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    const/4 p1, 0x1

    return p1

    .line 161
    :cond_1
    return p2

    .line 153
    :cond_2
    :goto_0
    return p2
.end method

.method public deleteCacheFiles(Ljava/io/File;Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)Z"
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p0, v0, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    move-result p1

    return p1

    .line 230
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public deleteCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 130
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    const/4 p1, 0x1

    return p1

    .line 139
    :cond_1
    return v0

    .line 131
    :cond_2
    :goto_0
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 p1, 0x0

    return-object p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getAllFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->mAllFileList:Ljava/util/List;

    return-object v0
.end method

.method public getCacheSize()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public hasCachedKey(Ljava/lang/String;)Z
    .locals 2

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    return v1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 117
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasCachedPath(Ljava/lang/String;)Z
    .locals 2

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    return v1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 103
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public observerDataChanage(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;Lcom/jrdcom/filemanager/manager/MountManager;)V
    .locals 11

    .line 252
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 255
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 257
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_2

    .line 261
    :goto_1
    invoke-virtual {p3, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isPhoneRootPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 262
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 263
    nop

    .line 264
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 265
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    iget-object v4, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    iget-object v6, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    iput-object v2, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 270
    new-instance v4, Lcom/jrdcom/filemanager/utils/FileInfo;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, p1, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {p0, v2, v4}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 271
    invoke-virtual {p0, p1, p2, v5, v5}, Lcom/jrdcom/filemanager/utils/FileListCache;->refreshAdapter(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;IZ)V

    .line 261
    :cond_0
    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 275
    :cond_1
    iget-object v3, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 276
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 279
    :cond_2
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/utils/FileListCache;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 280
    if-nez v2, :cond_3

    .line 281
    goto/16 :goto_0

    .line 284
    :cond_3
    nop

    .line 285
    const/4 v3, 0x0

    move v6, v3

    move v7, v5

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_8

    .line 286
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v8}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v8

    .line 287
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7

    .line 288
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v4, :cond_5

    .line 289
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 290
    if-eqz v9, :cond_4

    .line 291
    new-instance v10, Lcom/jrdcom/filemanager/utils/FileListCache$1;

    invoke-direct {v10, p0, v8}, Lcom/jrdcom/filemanager/utils/FileListCache$1;-><init>(Lcom/jrdcom/filemanager/utils/FileListCache;Ljava/io/File;)V

    invoke-virtual {v9, v10}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v9

    array-length v9, v9

    .line 297
    if-ne v9, v5, :cond_4

    goto :goto_4

    .line 299
    :cond_4
    goto :goto_3

    .line 300
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 301
    invoke-static {p1, v8, v9}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDBFileExist(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v9

    .line 302
    if-eqz v9, :cond_6

    goto :goto_4

    .line 304
    :cond_6
    :goto_3
    nop

    .line 305
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {v7, v8, v9}, Lcom/jrdcom/filemanager/utils/CommonUtils;->deleteCache(Lcom/jrdcom/filemanager/utils/FileInfo;ILcom/jrdcom/filemanager/utils/FileListCache;)V

    move v7, v3

    .line 285
    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 308
    :cond_8
    if-nez v7, :cond_b

    .line 314
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 315
    nop

    .line 316
    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 317
    :cond_9
    iget-object v2, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 318
    invoke-virtual {p0, p1, p2, v5, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->refreshAdapter(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;IZ)V

    goto :goto_5

    .line 320
    :cond_a
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 321
    invoke-virtual {p0, p1, p2, v4, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->refreshAdapter(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;IZ)V

    .line 326
    :cond_b
    :goto_5
    goto/16 :goto_0

    .line 328
    :cond_c
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public refreshAdapter(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;IZ)V
    .locals 2

    .line 331
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_2

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 332
    :cond_0
    new-instance p4, Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/4 v0, 0x0

    const/16 v1, 0x21

    invoke-direct {p4, p1, v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 333
    invoke-virtual {p4, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    .line 334
    new-instance p3, Landroid/os/Message;

    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    .line 335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    const-string v1, "TASKRESULT"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 337
    invoke-virtual {p3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 338
    if-nez p2, :cond_1

    .line 339
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getAppHandler()Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object p2

    .line 341
    :cond_1
    invoke-virtual {p2, p3}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->handleMessage(Landroid/os/Message;)V

    .line 343
    :cond_2
    return-void
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void
.end method

.method public setAllFileList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->mAllFileList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache;->mAllFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    return-void
.end method
