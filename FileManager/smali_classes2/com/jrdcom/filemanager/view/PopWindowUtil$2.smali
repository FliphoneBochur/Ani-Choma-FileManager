.class Lcom/jrdcom/filemanager/view/PopWindowUtil$2;
.super Ljava/lang/Object;
.source "PopWindowUtil.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/view/PopWindowUtil;->showDetailPopWindow(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$2;->val$popupWindow:Landroid/widget/PopupWindow;

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

    .line 128
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/PopWindowUtil$2;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 129
    return-void
.end method
