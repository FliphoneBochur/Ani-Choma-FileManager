.class Lcom/jrdcom/filemanager/view/FloatingActionsMenu$1;
.super Lcom/jrdcom/filemanager/view/FloatingActionButton;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;Landroid/content/Context;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$1;->this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-direct {p0, p2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method updateBackground()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$1;->this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-static {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$000(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$1;->mColorNormal:I

    .line 158
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$1;->this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-static {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$100(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$1;->mColorPressed:I

    .line 159
    invoke-super {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 160
    return-void
.end method
