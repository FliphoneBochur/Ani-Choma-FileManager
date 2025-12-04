.class Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;
.super Ljava/lang/Object;
.source "FileShowAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->onBindViewHolder(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

.field final synthetic val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;ILcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iput p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;->val$position:I

    iput-object p3, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 602
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 603
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget-object p2, p2, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    iget v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;->val$position:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 604
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget v2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;->val$position:I

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isCanShare(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v1

    .line 606
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 607
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getUri(Z)Landroid/net/Uri;

    move-result-object p2

    .line 610
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 611
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 612
    new-instance v4, Landroid/content/ClipData$Item;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 613
    new-instance p2, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v3, [Ljava/lang/String;

    aput-object v1, v6, v0

    invoke-direct {p2, v2, v6, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 614
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 615
    const/16 v1, 0x103

    invoke-virtual {p1, p2, v0, v5, v1}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 618
    return v3

    .line 620
    :cond_0
    return v0

    .line 622
    :cond_1
    return v0
.end method
