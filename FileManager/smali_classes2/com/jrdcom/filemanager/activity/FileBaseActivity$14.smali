.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;
.super Landroid/os/storage/StorageEventListener;
.source "FileBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V
    .locals 0

    .line 1676
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 0

    .line 1725
    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 0

    .line 1720
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    .line 1679
    if-nez p1, :cond_0

    .line 1680
    return-void

    .line 1681
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p1

    .line 1682
    if-nez p1, :cond_1

    .line 1683
    return-void

    .line 1685
    :cond_1
    if-nez p3, :cond_5

    .line 1686
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1687
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p3, p2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p3}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onUnmounted(Ljava/lang/String;)V

    .line 1689
    :cond_2
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1690
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->removeCategoryCache(ZZ)V

    .line 1691
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p2, p2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-eqz p1, :cond_4

    .line 1692
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->onScannerFinished()V

    .line 1694
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_9

    .line 1695
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneStorageZero()Z

    move-result p1

    sput-boolean p1, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    goto :goto_0

    .line 1698
    :cond_5
    const/4 p2, 0x2

    if-ne p3, p2, :cond_8

    .line 1699
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1700
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onMounted()V

    .line 1702
    :cond_6
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p2, p2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-eqz p1, :cond_9

    .line 1703
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->onScannerFinished()V

    .line 1704
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_9

    .line 1705
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneStorageZero()Z

    move-result p1

    sput-boolean p1, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    goto :goto_0

    .line 1708
    :cond_8
    const/4 p2, 0x5

    if-ne p3, p2, :cond_9

    .line 1709
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1710
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onEject()V

    .line 1714
    :cond_9
    :goto_0
    return-void
.end method
