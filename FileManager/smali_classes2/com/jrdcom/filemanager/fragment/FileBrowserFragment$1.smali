.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$1;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

.field final synthetic val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field final synthetic val$postion:I


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/support/v7/widget/LinearLayoutManager;I)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$1;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iput p3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$1;->val$postion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1047
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$1;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$1;->val$postion:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1048
    return-void
.end method
