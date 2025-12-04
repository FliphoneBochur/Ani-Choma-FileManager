.class Lcom/jrdcom/filemanager/manager/IconManager$2;
.super Ljava/lang/Object;
.source "IconManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/manager/IconManager;->loadImage(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/manager/IconManager;

.field final synthetic val$callback:Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/manager/IconManager;Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->this$0:Lcom/jrdcom/filemanager/manager/IconManager;

    iput-object p2, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    iput-object p4, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$filePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$callback:Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 370
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v7

    .line 371
    nop

    .line 372
    nop

    .line 373
    nop

    .line 374
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 376
    :goto_1
    if-eqz v0, :cond_2

    .line 377
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/jrdcom/filemanager/drm/DrmManager;->isRightsStatus(Ljava/lang/String;)Z

    move-result v1

    .line 378
    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/jrdcom/filemanager/drm/DrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v8, v1

    move-object v6, v2

    goto :goto_2

    .line 376
    :cond_2
    move v8, v1

    move-object v6, v2

    goto :goto_2

    .line 374
    :cond_3
    move v0, v1

    move v8, v0

    move-object v6, v2

    .line 381
    :goto_2
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->this$0:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-static {v1}, Lcom/jrdcom/filemanager/manager/IconManager;->access$000(Lcom/jrdcom/filemanager/manager/IconManager;)Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 382
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->this$0:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-static {v1}, Lcom/jrdcom/filemanager/manager/IconManager;->access$000(Lcom/jrdcom/filemanager/manager/IconManager;)Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 383
    if-eqz v1, :cond_6

    .line 384
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->this$0:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-static {v2}, Lcom/jrdcom/filemanager/manager/IconManager;->access$100(Lcom/jrdcom/filemanager/manager/IconManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$filePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 385
    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->this$0:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-static {v2}, Lcom/jrdcom/filemanager/manager/IconManager;->access$100(Lcom/jrdcom/filemanager/manager/IconManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$filePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 386
    if-ne v2, v8, :cond_4

    .line 387
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$callback:Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;->iconLoaded(Landroid/graphics/drawable/Drawable;)V

    .line 388
    return-void

    .line 390
    :cond_4
    goto :goto_3

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$callback:Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;->iconLoaded(Landroid/graphics/drawable/Drawable;)V

    .line 392
    return-void

    .line 397
    :cond_6
    :goto_3
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v3, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v3

    move v4, v0

    move v5, v8

    invoke-static/range {v1 .. v7}, Lcom/jrdcom/filemanager/utils/FileUtils;->queryThumbnail(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;ZZLjava/lang/String;Lcom/jrdcom/filemanager/drm/DrmManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 398
    if-eqz v1, :cond_8

    .line 399
    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->this$0:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-static {v2}, Lcom/jrdcom/filemanager/manager/IconManager;->access$000(Lcom/jrdcom/filemanager/manager/IconManager;)Landroid/support/v4/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    if-eqz v0, :cond_7

    .line 401
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->this$0:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/IconManager;->access$100(Lcom/jrdcom/filemanager/manager/IconManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$filePath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_7
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager$2;->val$callback:Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;->iconLoaded(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_8
    goto :goto_4

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    :goto_4
    return-void
.end method
