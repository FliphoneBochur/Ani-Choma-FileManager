.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$NoLeakThread;
.super Ljava/lang/Thread;
.source "FileBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoLeakThread"
.end annotation


# instance fields
.field private final mFragmentReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$NoLeakThread;->mFragmentReference:Ljava/lang/ref/WeakReference;

    .line 226
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 230
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 231
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$NoLeakThread;->mFragmentReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 233
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    .line 234
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateEditBarDo()V

    .line 237
    :cond_1
    return-void
.end method
