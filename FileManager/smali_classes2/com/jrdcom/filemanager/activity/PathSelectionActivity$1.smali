.class Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;
.super Ljava/lang/Object;
.source "PathSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->setMainContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 107
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    invoke-static {}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "result_dir_sel"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ** mCurrentPick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    .line 115
    invoke-static {v1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ** intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "PathSelectionActivity"

    invoke-static {v1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 118
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->finish()V

    .line 119
    return-void
.end method
