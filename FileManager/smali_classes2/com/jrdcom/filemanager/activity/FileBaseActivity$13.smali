.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;->updatePrivateEditMode()V
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

    .line 1626
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1628
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCheckedList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCheckedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCheckedList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivityListener;->restoreCheckedList(Ljava/util/List;)V

    .line 1631
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCheckedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1632
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->updateEditBarState()V

    .line 1633
    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1634
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v3, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_0

    .line 1637
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1640
    :goto_0
    return-void
.end method
