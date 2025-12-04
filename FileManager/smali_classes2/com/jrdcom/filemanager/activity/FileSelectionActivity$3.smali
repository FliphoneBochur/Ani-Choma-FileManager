.class Lcom/jrdcom/filemanager/activity/FileSelectionActivity$3;
.super Ljava/lang/Object;
.source "FileSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 240
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->setSelectPosition(I)V

    .line 241
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 246
    return-void
.end method
