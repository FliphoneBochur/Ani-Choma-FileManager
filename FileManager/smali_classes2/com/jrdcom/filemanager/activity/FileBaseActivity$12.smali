.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$12;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V
    .locals 0

    .line 1474
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$12;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1477
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$12;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->updateMenubarView(I)V

    .line 1478
    return-void
.end method
