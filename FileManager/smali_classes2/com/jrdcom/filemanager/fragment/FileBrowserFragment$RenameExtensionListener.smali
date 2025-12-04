.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameExtensionListener"
.end annotation


# instance fields
.field private final mNewFilePath:Ljava/lang/String;

.field private final mSrcFile:Lcom/jrdcom/filemanager/utils/FileInfo;

.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;)V
    .locals 0

    .line 2391
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2392
    iput-object p3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->mNewFilePath:Ljava/lang/String;

    .line 2393
    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->mSrcFile:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2394
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 2398
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz p1, :cond_0

    .line 2399
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1402(Landroid/app/Activity;)Landroid/app/Activity;

    .line 2400
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1200(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 2401
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x2

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c00c9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->mSrcFile:Lcom/jrdcom/filemanager/utils/FileInfo;

    new-instance v7, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    .line 2402
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->mNewFilePath:Ljava/lang/String;

    invoke-direct {v7, p1, p2}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v8, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 2401
    invoke-static/range {v0 .. v12}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 2403
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1600(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 2405
    :cond_0
    return-void
.end method
