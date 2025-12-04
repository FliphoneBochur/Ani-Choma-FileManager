.class Lcom/jrdcom/filemanager/activity/InputMessageActivity$3;
.super Ljava/lang/Object;
.source "InputMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/InputMessageActivity;->setTextChangedCallback(Landroid/widget/EditText;)V
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

    .line 320
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/InputMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 323
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 328
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 333
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 334
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/InputMessageActivity;

    invoke-static {p2, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->access$300(Lcom/jrdcom/filemanager/activity/InputMessageActivity;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->access$202(Lcom/jrdcom/filemanager/activity/InputMessageActivity;Z)Z

    .line 335
    return-void
.end method
