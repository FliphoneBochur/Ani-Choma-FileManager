.class Lcom/jrdcom/filemanager/fragment/PermissionFragment$1;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/PermissionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/PermissionFragment;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/PermissionFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 59
    return-void
.end method
