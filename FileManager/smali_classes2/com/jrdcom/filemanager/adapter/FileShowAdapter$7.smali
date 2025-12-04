.class Lcom/jrdcom/filemanager/adapter/FileShowAdapter$7;
.super Landroid/os/Handler;
.source "FileShowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->loadGridImage(Lcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

.field final synthetic val$fileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field final synthetic val$viewHolder:Lcom/jrdcom/filemanager/view/FileItemView;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Lcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 0

    .line 1421
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$7;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$7;->val$viewHolder:Lcom/jrdcom/filemanager/view/FileItemView;

    iput-object p3, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$7;->val$fileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1424
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$7;->val$viewHolder:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$7;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    iget-object v2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$7;->val$fileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/manager/IconManager;->isMusicType(Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1426
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1427
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1430
    :cond_0
    return-void
.end method
