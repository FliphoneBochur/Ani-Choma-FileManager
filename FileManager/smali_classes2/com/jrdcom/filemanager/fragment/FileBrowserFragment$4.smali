.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$4;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showDrmWifidisplyDiaog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/content/Context;)V
    .locals 0

    .line 1210
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$4;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1213
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    .line 1215
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$4;->val$context:Landroid/content/Context;

    const p2, 0x7f0c00ed

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1216
    return-void
.end method
