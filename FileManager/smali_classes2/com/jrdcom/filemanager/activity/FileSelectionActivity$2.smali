.class Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;
.super Landroid/os/Handler;
.source "FileSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 200
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 213
    invoke-static {}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    iget-object v1, v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    .line 212
    invoke-virtual {p1, v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->loadFileInfoList(Ljava/lang/String;I)V

    .line 215
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->refresh()V

    .line 216
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->setDisablePrivatefolder(Z)V

    .line 217
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->notifyDataSetChanged()V

    .line 218
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$500(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)I

    move-result p1

    .line 219
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$600(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;I)V

    .line 220
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$700(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)V

    .line 221
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$300(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 222
    goto :goto_0

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    const v0, 0x7f0c008e

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x11

    const/4 v3, 0x7

    invoke-static {p1, v0, v1, v2, v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getListenerInfo(Ljava/lang/String;JII)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->newInstance(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/TaskInfo;)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$302(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 204
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$300(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 205
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$300(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 207
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->clearData()V

    .line 208
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->notifyDataSetChanged()V

    .line 210
    nop

    .line 225
    :goto_0
    return-void
.end method
