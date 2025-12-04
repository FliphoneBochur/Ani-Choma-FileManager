.class Lcom/jrdcom/filemanager/activity/FileBrowserActivity$3;
.super Ljava/lang/Object;
.source "FileBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->afreshItemMorePop()V

    .line 642
    return-void
.end method
