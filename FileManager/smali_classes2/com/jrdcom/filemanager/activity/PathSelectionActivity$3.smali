.class Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;
.super Landroid/os/Handler;
.source "PathSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/PathSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 183
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 184
    invoke-static {}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    iget-object v1, v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    .line 183
    invoke-virtual {p1, v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->loadFileInfoList(Ljava/lang/String;I)V

    .line 186
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$300(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->refresh()V

    .line 187
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$300(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->setDisablePrivatefolder(Z)V

    .line 188
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$300(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->notifyDataSetChanged()V

    .line 189
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$400(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)I

    move-result p1

    .line 190
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$500(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;I)V

    .line 192
    return-void
.end method
