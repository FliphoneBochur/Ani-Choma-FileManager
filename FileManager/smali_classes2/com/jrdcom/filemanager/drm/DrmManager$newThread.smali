.class Lcom/jrdcom/filemanager/drm/DrmManager$newThread;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "newThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/jrdcom/filemanager/drm/DrmManager;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/drm/DrmManager;Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;->this$0:Lcom/jrdcom/filemanager/drm/DrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;->path:Ljava/lang/String;

    .line 312
    iput-object p2, p0, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;->path:Ljava/lang/String;

    .line 313
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    .line 316
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 317
    invoke-static {}, Lcom/jrdcom/filemanager/drm/DrmManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    sget v1, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;->this$0:Lcom/jrdcom/filemanager/drm/DrmManager;

    invoke-static {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->access$300(Lcom/jrdcom/filemanager/drm/DrmManager;)Lcom/tct/drm/api/TctDrmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tct/drm/api/TctDrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 328
    goto :goto_0

    .line 320
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;->this$0:Lcom/jrdcom/filemanager/drm/DrmManager;

    invoke-static {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->access$100(Lcom/jrdcom/filemanager/drm/DrmManager;)Lcom/tct/omadrm/MtkDrmManager;

    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/tct/omadrm/MtkDrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;->this$0:Lcom/jrdcom/filemanager/drm/DrmManager;

    invoke-static {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->access$200(Lcom/jrdcom/filemanager/drm/DrmManager;)Lcom/mtk/drm/frameworks/MtkDrmManager;

    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v0

    .line 333
    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
