.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$7;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;
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

    .line 1238
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$7;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1241
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 1242
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$7;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 1243
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$7;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 1244
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$7;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 1247
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$7;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 1248
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$7;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 1249
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$7;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 1251
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 1252
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    .line 1253
    const/4 p1, 0x1

    return p1

    .line 1255
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
