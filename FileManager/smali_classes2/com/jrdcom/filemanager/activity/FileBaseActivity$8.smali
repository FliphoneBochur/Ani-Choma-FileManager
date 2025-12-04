.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$8;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 1259
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$8;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1262
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$8;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 1263
    if-eqz p2, :cond_0

    .line 1264
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$8;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p2, p2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$8;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1266
    if-eqz p1, :cond_1

    .line 1267
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$8;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    goto :goto_0

    .line 1271
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$8;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$8;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05005a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1273
    :cond_1
    :goto_0
    return-void
.end method
