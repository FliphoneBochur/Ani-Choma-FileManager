.class Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$2;
.super Ljava/lang/Object;
.source "FileInfoAdapter.java"

# interfaces
.implements Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->loadImage(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/view/FileItemView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;Landroid/os/Handler;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$2;->this$0:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$2;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iconLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$2;->val$mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 274
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$2;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    :cond_0
    return-void
.end method
