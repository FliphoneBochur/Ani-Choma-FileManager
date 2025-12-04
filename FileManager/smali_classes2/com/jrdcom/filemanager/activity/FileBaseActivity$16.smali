.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$16;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;->refreshNavBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V
    .locals 0

    .line 1760
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$16;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1763
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$16;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$16;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$16;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v1, v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V

    .line 1766
    :cond_0
    return-void
.end method
