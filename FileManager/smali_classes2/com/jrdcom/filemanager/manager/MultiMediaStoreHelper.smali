.class public abstract Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;
.super Ljava/lang/Object;
.source "MultiMediaStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;,
        Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;
    }
.end annotation


# instance fields
.field protected final mMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

.field protected final mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/manager/MediaStoreHelper;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;->mPathList:Ljava/util/List;

    .line 15
    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;->mMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    .line 19
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mediaStoreHelper has not been initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addRecord(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;->mPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public setDstFolder(Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;->mMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->setDstFolder(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public updateRecords()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;->mPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    return-void
.end method

.method public updateRecords(Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;->mPathList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 42
    return-void
.end method
