.class Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;
.super Ljava/lang/Object;
.source "FileSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->setMainContentView()V
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

    .line 131
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$100(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    if-nez p1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/16 p1, 0x13

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    .line 138
    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$100(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_1

    .line 139
    new-instance p1, Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-direct {p1, p2}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 141
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$100(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p2}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 142
    return v1

    .line 143
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x14

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    .line 144
    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$100(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p2}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_2

    .line 145
    new-instance p1, Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-direct {p1, p2}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 147
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$100(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 148
    return v1

    .line 150
    :cond_2
    return v0

    .line 135
    :cond_3
    :goto_0
    return v0
.end method
