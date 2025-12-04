.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$9;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$simAdapter:Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;)V
    .locals 0

    .line 1427
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$9;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iput-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$9;->val$simAdapter:Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;

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

    .line 1430
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$9;->val$simAdapter:Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;

    invoke-virtual {p1, p3}, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->setSelectPosition(I)V

    .line 1431
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$9;->val$simAdapter:Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->notifyDataSetChanged()V

    .line 1432
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

    .line 1437
    return-void
.end method
