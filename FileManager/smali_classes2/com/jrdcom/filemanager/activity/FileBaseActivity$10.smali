.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;->showChoiceResourceDialog(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

.field final synthetic val$simAdapter:Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;

.field final synthetic val$sortList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/widget/ListView;Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;)V
    .locals 0

    .line 1441
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iput-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->val$sortList:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->val$simAdapter:Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1444
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/16 p1, 0x13

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->val$sortList:Landroid/widget/ListView;

    .line 1445
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 1447
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 1449
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->val$sortList:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->val$simAdapter:Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1450
    return v0

    .line 1451
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    const/16 p1, 0x14

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->val$sortList:Landroid/widget/ListView;

    .line 1452
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->val$simAdapter:Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_1

    .line 1454
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 1456
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;->val$sortList:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1457
    return v0

    .line 1459
    :cond_1
    return p3
.end method
