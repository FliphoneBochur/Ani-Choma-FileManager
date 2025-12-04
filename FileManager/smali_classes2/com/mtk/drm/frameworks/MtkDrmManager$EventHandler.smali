.class Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;
.super Landroid/os/Handler;
.source "MtkDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mtk/drm/frameworks/MtkDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mtk/drm/frameworks/MtkDrmManager;


# direct methods
.method public constructor <init>(Lcom/mtk/drm/frameworks/MtkDrmManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1182
    iput-object p1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->this$0:Lcom/mtk/drm/frameworks/MtkDrmManager;

    .line 1183
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1184
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "event":Landroid/drm/DrmEvent;
    const/4 v1, 0x0

    .line 1189
    .local v1, "error":Landroid/drm/DrmErrorEvent;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1191
    .local v2, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3ec

    if-eq v3, v4, :cond_0

    .line 1207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkDrmManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    return-void

    .line 1200
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1201
    .local v3, "filepath":Ljava/lang/String;
    iget-object v4, p0, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->this$0:Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-static {v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->access$000(Lcom/mtk/drm/frameworks/MtkDrmManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/mtk/drm/frameworks/MtkDrmManager;->watchingDrmWallpaperStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 1203
    .end local v3    # "filepath":Ljava/lang/String;
    goto :goto_0

    .line 1195
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1196
    .local v3, "uri":Ljava/lang/String;
    iget-object v4, p0, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->this$0:Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-static {v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->access$000(Lcom/mtk/drm/frameworks/MtkDrmManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/mtk/drm/frameworks/MtkDrmManager;->access$100(Lcom/mtk/drm/frameworks/MtkDrmManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 1198
    .end local v3    # "uri":Ljava/lang/String;
    nop

    .line 1211
    :goto_0
    return-void
.end method
