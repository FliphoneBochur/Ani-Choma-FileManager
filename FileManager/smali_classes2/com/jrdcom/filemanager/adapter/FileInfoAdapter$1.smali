.class Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$1;
.super Landroid/os/Handler;
.source "FileInfoAdapter.java"


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

.field final synthetic val$fileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field final synthetic val$viewHolder:Lcom/jrdcom/filemanager/view/FileItemView;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;Lcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$1;->this$0:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$1;->val$viewHolder:Lcom/jrdcom/filemanager/view/FileItemView;

    iput-object p3, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$1;->val$fileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$1;->val$viewHolder:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$1;->val$fileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 265
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_0
    return-void
.end method
