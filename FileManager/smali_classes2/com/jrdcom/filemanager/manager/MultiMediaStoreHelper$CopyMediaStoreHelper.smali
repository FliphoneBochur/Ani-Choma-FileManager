.class public Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;
.super Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;
.source "MultiMediaStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyMediaStoreHelper"
.end annotation


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/manager/MediaStoreHelper;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;-><init>(Lcom/jrdcom/filemanager/manager/MediaStoreHelper;)V

    .line 47
    return-void
.end method


# virtual methods
.method public updateRecords()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->mMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->mPathList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanPathforMediaStore(Ljava/util/List;)V

    .line 52
    invoke-super {p0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;->updateRecords()V

    .line 53
    return-void
.end method

.method public updateRecords(Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->mMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->mPathList:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanPathforMediaStore(Ljava/util/List;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 58
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;->updateRecords(Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 59
    return-void
.end method
