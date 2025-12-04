.class Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$1;
.super Landroid/os/Handler;
.source "SafeCategoryFragment.java"


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


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->access$000(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->updateCount(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->access$100(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;)Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->notifyDataSetChanged()V

    .line 172
    return-void
.end method
