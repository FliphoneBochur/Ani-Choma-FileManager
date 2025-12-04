.class Lcom/jrdcom/filemanager/view/PopWindowUtil$1;
.super Ljava/lang/Object;
.source "PopWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/view/PopWindowUtil;->showDetailPopWindow(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$detailList:Landroid/widget/ListView;

.field final synthetic val$simAdapter:Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;


# direct methods
.method constructor <init>(Landroid/widget/ListView;Landroid/app/Activity;Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$detailList:Landroid/widget/ListView;

    iput-object p2, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$simAdapter:Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/16 p1, 0x13

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$detailList:Landroid/widget/ListView;

    .line 96
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 98
    new-instance p1, Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    iget-object p2, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 101
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$detailList:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$simAdapter:Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 102
    return v0

    .line 103
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    const/16 p1, 0x14

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$detailList:Landroid/widget/ListView;

    .line 104
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$simAdapter:Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_1

    .line 106
    new-instance p1, Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    iget-object p2, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 109
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;->val$detailList:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 110
    return v0

    .line 112
    :cond_1
    return p3
.end method
