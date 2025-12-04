.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameDoneListener;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameDoneListener"
.end annotation


# instance fields
.field mSrcfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 0

    .line 2325
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameDoneListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2326
    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameDoneListener;->mSrcfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2327
    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 2

    .line 2331
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameDoneListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameDoneListener;->mSrcfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-static {v0, p1, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1300(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 2332
    return-void
.end method
