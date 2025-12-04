.class Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "FileBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V
    .locals 0

    .line 2693
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 2696
    if-eqz p2, :cond_4

    .line 2697
    const-string p1, "sync_state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2698
    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p2, p2, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncText:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 2699
    const-string p2, "open"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2700
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    if-eqz p1, :cond_0

    .line 2701
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->clearCache()V

    .line 2702
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p2, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 2704
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncText:Landroid/widget/TextView;

    const p2, 0x7f0c0101

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 2705
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncIcon:Landroid/widget/ImageView;

    const p2, 0x7f070142

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2706
    :cond_1
    const-string p2, "sync"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2707
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncText:Landroid/widget/TextView;

    const p2, 0x7f0c0103

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 2708
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncIcon:Landroid/widget/ImageView;

    const p2, 0x7f070144

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2709
    :cond_2
    const-string p2, "close"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const p2, 0x7f070143

    if-eqz p1, :cond_3

    .line 2710
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncText:Landroid/widget/TextView;

    const v0, 0x7f0c0102

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2711
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2713
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncText:Landroid/widget/TextView;

    const v0, 0x7f0c00f3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2714
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2718
    :cond_4
    :goto_0
    return-void
.end method
