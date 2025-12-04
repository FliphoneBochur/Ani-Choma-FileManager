.class Lcom/jrdcom/filemanager/activity/InputMessageActivity$1;
.super Ljava/lang/Object;
.source "InputMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/InputMessageActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/InputMessageActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/InputMessageActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/InputMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/InputMessageActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->access$000(Lcom/jrdcom/filemanager/activity/InputMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 97
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/InputMessageActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/InputMessageActivity;

    invoke-static {v1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->access$000(Lcom/jrdcom/filemanager/activity/InputMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMessageActivity"

    invoke-static {v1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void
.end method
