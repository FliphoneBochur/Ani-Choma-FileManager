.class Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$2;
.super Ljava/lang/Object;
.source "SafeCategoryFragment.java"

# interfaces
.implements Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->loadCountText(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

.field final synthetic val$mmHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;Landroid/os/Handler;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$2;->val$mmHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countTextCallback(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$2;->val$mmHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCategoryIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSearchContent()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$2;->val$mmHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    return-void
.end method
