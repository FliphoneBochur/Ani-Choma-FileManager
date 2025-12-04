.class Lcom/jrdcom/filemanager/view/FloatingActionsMenu$2;
.super Ljava/lang/Object;
.source "FloatingActionsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$2;->this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$2;->this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->toggle()V

    .line 171
    return-void
.end method
