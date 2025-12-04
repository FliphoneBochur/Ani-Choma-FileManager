.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$2;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 361
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataRefresh()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->refreshDataChangeIfNeed()V

    .line 367
    :cond_0
    return-void
.end method
