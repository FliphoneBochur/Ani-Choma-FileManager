.class Lcom/jrdcom/filemanager/activity/PathSelectionActivity$2;
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

    .line 122
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 127
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->finish()V

    .line 128
    return-void
.end method
