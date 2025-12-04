.class public Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SelectedItemInfo"
.end annotation


# instance fields
.field canShare:Z

.field count:I

.field hasDirectory:Z

.field hasDrm:Z

.field hasPrivate:Z

.field hasZip:Z

.field isFLorSDDrm:Z

.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;


# direct methods
.method protected constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 3066
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
