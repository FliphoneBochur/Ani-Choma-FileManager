.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;
.super Landroid/os/Handler;
.source "FileBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 3081
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 3084
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f3

    if-eq v0, v1, :cond_3

    const/16 v1, 0x44d

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3096
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3098
    return-void

    .line 3100
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;

    .line 3101
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_2

    .line 3102
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    iget v2, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->count:I

    iget-boolean v3, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->hasDirectory:Z

    iget-boolean v4, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->hasZip:Z

    iget-boolean v5, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->hasDrm:Z

    iget-boolean v6, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->canShare:Z

    iget-boolean v7, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->hasPrivate:Z

    iget-boolean v8, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->isFLorSDDrm:Z

    invoke-interface/range {v1 .. v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateEditBar(IZZZZZZ)V

    .line 3103
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3104
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget v1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->count:I

    iget-boolean v2, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->hasDirectory:Z

    iget-boolean p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->hasZip:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showFloatMenu(IZZ)V

    .line 3107
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1800(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1800(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3108
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1800(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 3086
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1800(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_4

    .line 3087
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    const v0, 0x7f0c00ff

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x11

    const/4 v3, 0x7

    invoke-static {p1, v0, v1, v2, v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getListenerInfo(Ljava/lang/String;JII)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    .line 3088
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->newInstance(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/TaskInfo;)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1802(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3089
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1800(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3091
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1800(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3092
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1800(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 3112
    :cond_5
    :goto_0
    return-void
.end method
