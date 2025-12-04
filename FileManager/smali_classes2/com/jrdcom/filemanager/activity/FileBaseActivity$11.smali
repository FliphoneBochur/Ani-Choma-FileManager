.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$11;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 1467
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$11;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 1471
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$11;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {p1, p3}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->refreshData(I)V

    .line 1472
    return-void
.end method
