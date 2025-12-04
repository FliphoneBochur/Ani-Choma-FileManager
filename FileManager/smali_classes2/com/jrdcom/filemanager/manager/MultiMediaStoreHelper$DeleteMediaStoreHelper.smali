.class public Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;
.super Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;
.source "MultiMediaStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteMediaStoreHelper"
.end annotation


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/manager/MediaStoreHelper;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;-><init>(Lcom/jrdcom/filemanager/manager/MediaStoreHelper;)V

    .line 65
    return-void
.end method


# virtual methods
.method public updateRecords()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->mMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->mPathList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->deleteFileInMediaStore(Ljava/util/List;)V

    .line 70
    invoke-super {p0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper;->updateRecords()V

    .line 71
    return-void
.end method
