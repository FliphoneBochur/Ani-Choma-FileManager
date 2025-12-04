.class public Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Pos"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

.field top:I


# direct methods
.method protected constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    const/4 p1, 0x0

    iput p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;->index:I

    .line 784
    iput p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;->top:I

    return-void
.end method
