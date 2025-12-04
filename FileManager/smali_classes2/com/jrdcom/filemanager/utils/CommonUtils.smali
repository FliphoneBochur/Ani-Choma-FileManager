.class public Lcom/jrdcom/filemanager/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static final Audio_Category:I = 0x5

.field public static GRID_ITEM_RES_ID:I

.field public static IS_ELDER_STATUS:Z

.field public static LIST_ITEM_RES_ID:I

.field public static SELECT_BACKGROUND_COLOR:Ljava/lang/String;

.field public static SELECT_BACKGROUND_COLOR_ID:I

.field public static SURE_BTN_TEXT_RES_ID:I

.field private static final TAG:Ljava/lang/String;

.field private static normalModeColor:Ljava/lang/String;

.field private static simpleModeColor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lcom/jrdcom/filemanager/utils/CommonUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    .line 83
    const v0, 0x7f0c0093

    sput v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    .line 84
    const-string v0, "#000000"

    sput-object v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->simpleModeColor:Ljava/lang/String;

    .line 85
    const-string v0, "#D2A727"

    sput-object v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->normalModeColor:Ljava/lang/String;

    .line 86
    sput-object v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->SELECT_BACKGROUND_COLOR:Ljava/lang/String;

    .line 87
    const v0, 0x7f0500db

    sput v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->SELECT_BACKGROUND_COLOR_ID:I

    .line 88
    const v0, 0x7f0b003a

    sput v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->LIST_ITEM_RES_ID:I

    .line 89
    const v0, 0x7f0b0038

    sput v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->GRID_ITEM_RES_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;ILcom/jrdcom/filemanager/manager/MountManager;Z)V
    .locals 4

    .line 627
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p0

    .line 628
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {p1, p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 631
    const/16 v1, 0x31

    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->getCacheSize()I

    move-result v2

    if-ge v2, v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 632
    :cond_0
    invoke-virtual {p2, v0, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 634
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 635
    :cond_2
    const-string p0, "/storage/emulated/0/Locker"

    if-ltz p3, :cond_4

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 636
    if-eqz v0, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 637
    :cond_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 640
    :cond_4
    invoke-static {v0, p4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDownLoadFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_7

    if-eqz p5, :cond_5

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->getCacheSize()I

    move-result p3

    if-ge p3, v1, :cond_7

    :cond_5
    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 641
    if-eqz v0, :cond_6

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_a

    .line 642
    :cond_6
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    goto :goto_0

    .line 644
    :cond_7
    invoke-static {v0, p4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isBluetoothFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz p5, :cond_8

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->getCacheSize()I

    move-result p3

    if-ge p3, v1, :cond_a

    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 645
    if-eqz v0, :cond_9

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 646
    :cond_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 649
    :cond_a
    :goto_0
    const-string p3, "/.thumbnails"

    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_c

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 650
    if-eqz v0, :cond_b

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 651
    :cond_b
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 655
    :cond_c
    return-void
.end method

.method public static addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;)V
    .locals 5

    .line 695
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p0

    .line 696
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    invoke-virtual {p2, v0, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 699
    return-void

    .line 701
    :cond_0
    invoke-virtual {p1, p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 702
    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 703
    invoke-virtual {p2, v0, p1, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 705
    :cond_1
    const/4 v1, -0x1

    .line 706
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    .line 707
    if-nez p0, :cond_2

    .line 708
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v1

    .line 710
    :cond_2
    const/4 v3, 0x1

    if-nez p0, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 711
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 713
    :cond_3
    if-nez p0, :cond_4

    invoke-static {v0, p3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDownLoadFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 714
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 716
    :cond_4
    if-nez p0, :cond_5

    invoke-static {v0, p3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isBluetoothFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 717
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 719
    :cond_5
    if-nez p0, :cond_6

    const-string p0, "/.thumbnails"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 720
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 721
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 723
    :cond_6
    return-void
.end method

.method public static addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;Z)V
    .locals 4

    .line 658
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p0

    .line 659
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {p2, v0, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 662
    return-void

    .line 664
    :cond_0
    invoke-virtual {p1, p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 665
    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    invoke-virtual {p2, v0, p1, p4}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 668
    :cond_1
    const/4 v1, -0x1

    .line 669
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 670
    if-nez v2, :cond_4

    .line 672
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v1

    const-string v3, "audio/mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    const/4 v1, 0x5

    goto :goto_1

    .line 675
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileCategory(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getFileCategory(Ljava/lang/String;)I

    move-result p0

    :goto_0
    move v1, p0

    .line 679
    :cond_4
    :goto_1
    const/4 p0, 0x1

    if-nez v2, :cond_5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 680
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p1, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 682
    :cond_5
    if-nez v2, :cond_6

    invoke-static {v0, p3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDownLoadFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result p4

    if-eqz p4, :cond_6

    const/4 p4, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 683
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p1, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 685
    :cond_6
    if-nez v2, :cond_7

    invoke-static {v0, p3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isBluetoothFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 686
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 688
    :cond_7
    if-nez v2, :cond_8

    const-string p3, "/.thumbnails"

    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_8

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 689
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Z

    .line 691
    :cond_8
    return-void
.end method

.method public static addCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;I)V
    .locals 1

    .line 591
    new-instance p2, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-direct {p2, p0, p1}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p0

    .line 593
    invoke-virtual {p2, p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 594
    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 595
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 596
    invoke-virtual {p3, p1, p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 597
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    .line 598
    if-nez p0, :cond_0

    if-ltz p5, :cond_0

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5, p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 601
    :cond_0
    if-nez p0, :cond_1

    invoke-static {p1, p4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDownLoadFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 602
    const/4 p5, 0x2

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5, p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 604
    :cond_1
    if-nez p0, :cond_2

    invoke-static {p1, p4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isBluetoothFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 605
    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 607
    :cond_2
    if-nez p0, :cond_3

    const-string p0, "/.thumbnails"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 608
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0, p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 610
    :cond_3
    return-void
.end method

.method public static changeLight(Landroid/widget/ImageView;I)V
    .locals 5

    .line 584
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 585
    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    int-to-float p1, p1

    const/4 v2, 0x4

    aput p1, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    const/16 v2, 0x8

    aput v4, v1, v2

    const/16 v2, 0x9

    aput p1, v1, v2

    const/16 v2, 0xa

    aput v4, v1, v2

    const/16 v2, 0xb

    aput v4, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v4, v1, v2

    const/16 v2, 0xe

    aput p1, v1, v2

    const/16 p1, 0xf

    aput v4, v1, p1

    const/16 p1, 0x10

    aput v4, v1, p1

    const/16 p1, 0x11

    aput v4, v1, p1

    const/16 p1, 0x12

    aput v3, v1, p1

    const/16 p1, 0x13

    aput v4, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 587
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 588
    return-void
.end method

.method public static checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 183
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    .line 187
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    const/4 p0, 0x1

    return p0

    .line 190
    :catch_0
    move-exception p0

    .line 191
    return v0

    .line 184
    :cond_1
    :goto_0
    return v0
.end method

.method public static commitFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V
    .locals 1

    .line 1156
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1159
    :cond_0
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1160
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1162
    :goto_0
    return-void
.end method

.method public static deleteCache(Lcom/jrdcom/filemanager/utils/FileInfo;ILcom/jrdcom/filemanager/utils/FileListCache;)V
    .locals 2

    .line 613
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 618
    if-ltz p1, :cond_1

    .line 619
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(ILjava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 621
    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(ILjava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 622
    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(ILjava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 623
    const/4 p1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0, p0}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(ILjava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 624
    return-void

    .line 614
    :cond_2
    :goto_0
    return-void
.end method

.method public static fieldDialog(Landroid/app/AlertDialog;)V
    .locals 4

    .line 1105
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mAlert"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1107
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mHandler"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1109
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1110
    new-instance v1, Lcom/jrdcom/filemanager/utils/ButtonHandler;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/utils/ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    goto :goto_0

    .line 1111
    :catch_0
    move-exception p0

    .line 1112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1114
    :goto_0
    return-void
.end method

.method public static getActionbarItemTheme(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 354
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101039c

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 356
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 357
    return-object p0
.end method

.method public static getAvailMemory(Landroid/content/Context;)J
    .locals 2

    .line 1145
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1146
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1147
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1148
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1149
    :catch_0
    move-exception p0

    .line 1150
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1151
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;IIILandroid/widget/TextView;Ljava/lang/String;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 2

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 431
    new-instance p4, Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-direct {p4, p0, p1, p2}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 432
    invoke-virtual {p4, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileFilter(I)V

    .line 433
    invoke-virtual {p4, v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 434
    const/4 p0, 0x1

    invoke-virtual {p4, p0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    .line 435
    invoke-virtual {p4, p5}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setStorageSize(Landroid/widget/TextView;)V

    .line 437
    invoke-virtual {p4, p6}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSrcPath(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p4, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileFilter(I)V

    .line 439
    return-object p4
.end method

.method public static getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IZLcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 11

    .line 362
    move-object v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 363
    new-instance v9, Lcom/jrdcom/filemanager/utils/TaskInfo;

    new-instance v10, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;

    move-object v1, p4

    move-wide v2, v7

    move/from16 v4, p5

    move v5, p2

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getListenerInfo(Ljava/lang/String;JIII)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    move/from16 v1, p5

    invoke-direct {v9, p0, v10, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 365
    move/from16 v1, p6

    invoke-virtual {v9, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCategoryIndex(I)V

    .line 366
    move v1, p1

    invoke-virtual {v9, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setRefreshMode(I)V

    .line 367
    invoke-virtual {v9, v7, v8}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 368
    move v1, p3

    invoke-virtual {v9, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    .line 369
    move-object/from16 v1, p8

    invoke-virtual {v9, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDestPath(Ljava/lang/String;)V

    .line 370
    move-object/from16 v1, p7

    invoke-virtual {v9, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSrcPath(Ljava/lang/String;)V

    .line 371
    move/from16 v1, p9

    invoke-virtual {v9, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDrmType(I)V

    .line 372
    move/from16 v1, p10

    invoke-virtual {v9, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setShowDir(Z)V

    .line 373
    move-object/from16 v1, p11

    invoke-virtual {v9, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSrcFile(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 374
    invoke-static {v7, v8, v9}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->addtaskInfo(JLcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 375
    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0, v9}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 376
    return-void
.end method

.method public static getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jrdcom/filemanager/FileManagerApplication;",
            "I",
            "Ljava/lang/String;",
            "III",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;ZI)V"
        }
    .end annotation

    .line 408
    move-object v0, p0

    move v1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 409
    new-instance v4, Lcom/jrdcom/filemanager/utils/TaskInfo;

    new-instance v5, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;

    move v6, p1

    move-object v7, p2

    invoke-static {p2, v2, v3, p3, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getListenerInfo(Ljava/lang/String;JII)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    invoke-direct {v4, p0, v5, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 411
    move v1, p4

    invoke-virtual {v4, p4}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileFilter(I)V

    .line 412
    move-object v1, p6

    invoke-virtual {v4, p6}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSrcFile(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 413
    invoke-virtual {v4, v2, v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 414
    move-object/from16 v1, p7

    invoke-virtual {v4, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDstFile(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 415
    move v1, p5

    invoke-virtual {v4, p5}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    .line 416
    iget-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDestPath(Ljava/lang/String;)V

    .line 417
    move-object/from16 v1, p9

    invoke-virtual {v4, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSearchContent(Ljava/lang/String;)V

    .line 418
    move-object/from16 v1, p8

    invoke-virtual {v4, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDestPath(Ljava/lang/String;)V

    .line 419
    move-object/from16 v1, p10

    invoke-virtual {v4, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSourceFileList(Ljava/util/List;)V

    .line 420
    move/from16 v1, p11

    invoke-virtual {v4, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setShowDir(Z)V

    .line 421
    move/from16 v1, p12

    invoke-virtual {v4, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCategoryIndex(I)V

    .line 422
    new-instance v1, Lcom/jrdcom/filemanager/task/ProgressInfo;

    const-string v5, ""

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(Ljava/lang/String;IJ)V

    .line 423
    invoke-virtual {v1, v2, v3}, Lcom/jrdcom/filemanager/task/ProgressInfo;->setCreateTime(J)V

    .line 424
    invoke-virtual {v4, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setProgressInfo(Lcom/jrdcom/filemanager/task/ProgressInfo;)V

    .line 425
    invoke-static {v2, v3, v4}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->addtaskInfo(JLcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 426
    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0, v4}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 427
    return-void
.end method

.method public static getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jrdcom/filemanager/FileManagerApplication;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 380
    new-instance v2, Lcom/jrdcom/filemanager/utils/TaskInfo;

    new-instance v3, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;

    invoke-static {p2, v0, v1, p3, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getListenerInfo(Ljava/lang/String;JII)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    invoke-direct {v2, p0, v3, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 381
    invoke-virtual {v2, p4}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCategoryIndex(I)V

    .line 382
    invoke-virtual {v2, p5}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSearchContent(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v2, p7}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSourceFileList(Ljava/util/List;)V

    .line 384
    invoke-virtual {v2, p6}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileFilter(I)V

    .line 385
    invoke-virtual {v2, v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 386
    invoke-virtual {v2, p8}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDestPath(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v2, p9}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDesPathList(Ljava/util/List;)V

    .line 388
    invoke-static {v0, v1, v2}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->addtaskInfo(JLcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 389
    iget-object p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 390
    return-void
.end method

.method public static getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jrdcom/filemanager/FileManagerApplication;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 394
    new-instance v2, Lcom/jrdcom/filemanager/utils/TaskInfo;

    new-instance v3, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;

    invoke-static {p2, v0, v1, p3, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getListenerInfo(Ljava/lang/String;JII)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    invoke-direct {v2, p0, v3, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 395
    invoke-virtual {v2, p4}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCategoryIndex(I)V

    .line 396
    invoke-virtual {v2, p5}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSearchContent(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v2, p7}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSourceFileList(Ljava/util/List;)V

    .line 398
    invoke-virtual {v2, p6}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileFilter(I)V

    .line 399
    invoke-virtual {v2, v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 400
    invoke-virtual {v2, p8}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDestPath(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v2, p9}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDesPathList(Ljava/util/List;)V

    .line 402
    invoke-virtual {v2, p10}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setShowDir(Z)V

    .line 403
    invoke-static {v0, v1, v2}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->addtaskInfo(JLcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 404
    iget-object p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 405
    return-void
.end method

.method public static getCategoryRefreshMode(I)I
    .locals 1

    .line 264
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 265
    const/4 p0, 0x2

    return p0

    .line 267
    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public static getCurrentTag(Lcom/jrdcom/filemanager/manager/MountManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 827
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v1

    .line 830
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 831
    const-string p0, "phone"

    return-object p0

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 835
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    const-string p0, "sdcard"

    return-object p0

    .line 839
    :cond_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object p0

    .line 840
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 841
    const-string p0, "usbotg"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 845
    :cond_3
    goto :goto_0

    .line 843
    :catch_0
    move-exception p0

    .line 844
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 847
    :goto_0
    return-object v0

    .line 827
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static getCurrentTime()J
    .locals 4

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getDateFormatPattern(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 757
    nop

    .line 759
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.text.format.DateFormat"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 760
    const-string v2, "getDateFormatForSetting"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 761
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    aput-object p1, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 762
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    goto :goto_0

    .line 763
    :catch_0
    move-exception p0

    .line 768
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 769
    goto :goto_1

    .line 768
    :cond_0
    move-object p1, v0

    .line 771
    :goto_1
    return-object p1
.end method

.method public static getDiffList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 122
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 123
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 124
    return-object p0
.end method

.method public static getFileCategory(Ljava/lang/String;)I
    .locals 2

    .line 890
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 891
    return v0

    .line 893
    :cond_0
    sget-object v1, Lcom/jrdcom/filemanager/utils/CommonIdentity;->videoMimeTypeList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    const/4 p0, 0x5

    return p0

    .line 895
    :cond_1
    sget-object v1, Lcom/jrdcom/filemanager/utils/CommonIdentity;->audioMimeTypeList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 896
    const/4 p0, 0x3

    return p0

    .line 897
    :cond_2
    sget-object v1, Lcom/jrdcom/filemanager/utils/CommonIdentity;->imageMimeTypeList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 898
    const/4 p0, 0x4

    return p0

    .line 899
    :cond_3
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 900
    const/4 p0, 0x7

    return p0

    .line 901
    :cond_4
    sget-object v1, Lcom/jrdcom/filemanager/utils/CommonIdentity;->docMimeTypeList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 902
    const/4 p0, 0x6

    return p0

    .line 903
    :cond_5
    sget-object v1, Lcom/jrdcom/filemanager/utils/CommonIdentity;->achiveMimeTypeList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 904
    const/16 p0, 0x8

    return p0

    .line 906
    :cond_6
    return v0
.end method

.method public static getGridColumn(Lcom/jrdcom/filemanager/FileManagerApplication;)I
    .locals 0

    .line 516
    iget-boolean p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    if-eqz p0, :cond_1

    .line 518
    sget-boolean p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p0, :cond_0

    .line 519
    const/4 p0, 0x2

    return p0

    .line 522
    :cond_0
    const/4 p0, 0x3

    return p0

    .line 524
    :cond_1
    const/4 p0, 0x5

    return p0
.end method

.method public static getListenerInfo(Ljava/lang/String;JII)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 2

    .line 324
    new-instance v0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(I)V

    .line 325
    invoke-virtual {v0, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileFilter(I)V

    .line 326
    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTitleStr(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p4}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    .line 328
    invoke-virtual {v0, p1, p2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 329
    return-object v0
.end method

.method public static getListenerInfo(Ljava/lang/String;JIII)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 2

    .line 333
    new-instance v0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(I)V

    .line 334
    invoke-virtual {v0, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileFilter(I)V

    .line 335
    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTitleStr(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p4}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    .line 337
    invoke-virtual {v0, p1, p2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 338
    invoke-virtual {v0, p5}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCategoryIndex(I)V

    .line 339
    return-object v0
.end method

.method public static getNotificationIconId(I)I
    .locals 1

    .line 1015
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1016
    const p0, 0x7f07007d

    .line 1017
    return p0

    .line 1018
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 1019
    const p0, 0x7f07007f

    .line 1020
    return p0

    .line 1021
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 1022
    const p0, 0x7f070081

    .line 1023
    return p0

    .line 1024
    :cond_2
    const/16 v0, 0x22

    if-ne p0, v0, :cond_3

    .line 1025
    const p0, 0x7f07007a

    .line 1026
    return p0

    .line 1027
    :cond_3
    const/16 v0, 0x23

    if-ne p0, v0, :cond_4

    .line 1028
    const p0, 0x7f070084

    .line 1029
    return p0

    .line 1030
    :cond_4
    const/16 v0, 0x26

    if-ne p0, v0, :cond_5

    .line 1031
    const p0, 0x7f070085

    .line 1032
    return p0

    .line 1033
    :cond_5
    const/16 v0, 0x28

    if-ne p0, v0, :cond_6

    .line 1034
    const p0, 0x7f0700cc

    .line 1035
    return p0

    .line 1037
    :cond_6
    const p0, 0x7f0700b4

    return p0
.end method

.method public static getNotificationTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 1041
    nop

    .line 1042
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1043
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c0044

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1044
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1045
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c004b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1046
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1047
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c0050

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1048
    :cond_2
    const/16 v0, 0x22

    if-ne p1, v0, :cond_3

    .line 1049
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c0041

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1050
    :cond_3
    const/16 v0, 0x23

    if-ne p1, v0, :cond_4

    .line 1051
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c0076

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1052
    :cond_4
    const/16 v0, 0x26

    if-ne p1, v0, :cond_5

    .line 1053
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c0098

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1054
    :cond_5
    const/16 v0, 0x28

    if-ne p1, v0, :cond_6

    .line 1055
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c00da

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1054
    :cond_6
    const-string p0, ""

    .line 1057
    :goto_0
    return-object p0
.end method

.method public static getProgressInfo(Lcom/jrdcom/filemanager/utils/FileInfo;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;
    .locals 3

    .line 296
    new-instance v0, Lcom/jrdcom/filemanager/task/ProgressInfo;

    int-to-long v1, p5

    invoke-direct {v0, p0, p4, v1, v2}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(Lcom/jrdcom/filemanager/utils/FileInfo;IJ)V

    .line 297
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->setProgressTaskType(I)V

    .line 298
    invoke-virtual {v0, p2, p3}, Lcom/jrdcom/filemanager/task/ProgressInfo;->setCreateTime(J)V

    .line 299
    return-object v0
.end method

.method public static getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;
    .locals 3

    .line 303
    new-instance v0, Lcom/jrdcom/filemanager/task/ProgressInfo;

    int-to-long v1, p5

    invoke-direct {v0, p0, p4, v1, v2}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(Ljava/lang/String;IJ)V

    .line 304
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->setProgressTaskType(I)V

    .line 305
    invoke-virtual {v0, p2, p3}, Lcom/jrdcom/filemanager/task/ProgressInfo;->setCreateTime(J)V

    .line 306
    return-object v0
.end method

.method public static getProgressInfo(Ljava/lang/String;IJIII)Lcom/jrdcom/filemanager/task/ProgressInfo;
    .locals 3

    .line 310
    new-instance v0, Lcom/jrdcom/filemanager/task/ProgressInfo;

    int-to-long v1, p5

    invoke-direct {v0, p0, p4, v1, v2}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(Ljava/lang/String;IJ)V

    .line 311
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->setProgressTaskType(I)V

    .line 312
    invoke-virtual {v0, p2, p3}, Lcom/jrdcom/filemanager/task/ProgressInfo;->setCreateTime(J)V

    .line 313
    invoke-virtual {v0, p6}, Lcom/jrdcom/filemanager/task/ProgressInfo;->setUnitStyle(I)V

    .line 314
    return-object v0
.end method

.method public static getProgressInfo(Ljava/lang/String;JJLcom/jrdcom/filemanager/utils/TaskInfo;)Lcom/jrdcom/filemanager/task/ProgressInfo;
    .locals 7

    .line 318
    new-instance v6, Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(Ljava/lang/String;JJ)V

    .line 319
    invoke-virtual {v6, p5}, Lcom/jrdcom/filemanager/task/ProgressInfo;->setTaskInfo(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 320
    return-object v6
.end method

.method public static getRefreshMode(Ljava/lang/String;I)I
    .locals 3

    .line 249
    nop

    .line 250
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0xb

    if-gt p1, v0, :cond_0

    .line 252
    goto :goto_0

    .line 253
    :cond_0
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne p1, v1, :cond_1

    if-eqz p0, :cond_1

    .line 255
    move v1, v2

    goto :goto_0

    .line 257
    :cond_1
    move v1, v2

    .line 259
    :goto_0
    return v1
.end method

.method public static getRobotoMedium()Landroid/graphics/Typeface;
    .locals 1

    .line 129
    const-string v0, "/system/fonts/Roboto-Medium.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2

    .line 165
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 166
    nop

    .line 167
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 168
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 169
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 170
    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2

    .line 156
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 157
    nop

    .line 158
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 159
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 160
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 161
    return p0
.end method

.method public static getStorageRootPath(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Ljava/lang/String;
    .locals 1

    .line 279
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 281
    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 283
    :cond_1
    const-string v0, "usbotg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 284
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 286
    :cond_2
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemDateFormat(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 2

    .line 732
    nop

    .line 735
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 736
    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "dd MMM HH:mm"

    .line 741
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    const-string v0, "dd MMM"

    .line 745
    :cond_0
    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getDateFormatPattern(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 746
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " HH:mm"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTotalWidthofListView(Landroid/widget/AdapterView;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "Landroid/widget/ListAdapter;",
            ">;)I"
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 135
    return v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 138
    if-nez v1, :cond_1

    .line 139
    return v0

    .line 141
    :cond_1
    nop

    .line 142
    move v2, v0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 143
    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 144
    nop

    .line 145
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 146
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 144
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 148
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_2
    return v3
.end method

.method public static getYesterdayTime()J
    .locals 4

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static hasBelowN()Z
    .locals 2

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasHighN()Z
    .locals 2

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasM()Z
    .locals 2

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasN()Z
    .locals 2

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hawkeyeTimeEvent(Landroid/content/Context;Ljava/lang/String;JLcom/jrdcom/filemanager/FileManagerApplication;)V
    .locals 2

    .line 1097
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 1099
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "eventTime"

    invoke-static {p0, p1, p3, p2, p4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    .line 1101
    :cond_0
    return-void
.end method

.method public static hideSoftInput(Landroid/app/Activity;)V
    .locals 2

    .line 877
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 878
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 879
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 881
    :cond_0
    return-void
.end method

.method public static isActivityMultiWindowMode(Ljava/lang/String;)Z
    .locals 4

    .line 530
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 531
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 532
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 533
    const-string v2, "isInMultiWindowMode"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 534
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 535
    sget-object v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is Activity multi window--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    return p0

    .line 537
    :catch_0
    move-exception p0

    .line 538
    sget-object v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is Activity multi window--exception--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    const/4 p0, 0x0

    return p0
.end method

.method public static isAddPrivateFileMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 2

    .line 953
    iget v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    sget p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBluetoothFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z
    .locals 4

    .line 923
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 925
    return v2

    .line 926
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    return v2

    .line 928
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 929
    return v2

    .line 932
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isCategoryMode()Z
    .locals 3

    .line 572
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ltz v0, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isCategoryNormalMode(I)Z
    .locals 2

    .line 349
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isCategoryTag(Ljava/lang/String;)Z
    .locals 1

    .line 795
    const-string v0, "category"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isCopyNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 1

    .line 873
    iget p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDBFileExist(Landroid/content/Context;Ljava/io/File;I)Z
    .locals 10

    .line 488
    nop

    .line 489
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 491
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v1, p2, :cond_0

    .line 492
    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 504
    :catch_0
    move-exception p0

    goto :goto_2

    .line 493
    :cond_0
    const/4 v1, 0x5

    if-ne v1, p2, :cond_1

    .line 494
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v0

    goto :goto_0

    .line 495
    :cond_1
    const/4 v1, 0x3

    if-ne v1, p2, :cond_2

    .line 496
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v0

    goto :goto_0

    .line 495
    :cond_2
    move-object v5, v0

    .line 498
    :goto_0
    const-string v7, "_data=?"

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 p0, 0x1

    new-array v8, p0, [Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v2

    const/4 v9, 0x0

    .line 499
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 501
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p0, :cond_4

    .line 502
    nop

    .line 508
    if-eqz v3, :cond_3

    .line 509
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_3
    return p0

    .line 508
    :cond_4
    if-eqz v3, :cond_5

    .line 509
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 512
    :cond_5
    return v2

    .line 508
    :goto_1
    if-eqz v3, :cond_6

    .line 509
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_6
    throw p0

    .line 506
    :goto_2
    nop

    .line 508
    if-eqz v3, :cond_7

    .line 509
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 506
    :cond_7
    return v2
.end method

.method public static isDRMColumn(Landroid/content/Context;)Z
    .locals 7

    .line 443
    nop

    .line 445
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 446
    const-string v1, "is_drm"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    if-eqz p0, :cond_0

    .line 454
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_0
    sget-object p0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "qcom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 458
    const/4 p0, 0x1

    return p0

    .line 460
    :cond_1
    return v0

    .line 453
    :catchall_0
    move-exception p0

    .line 456
    throw p0

    .line 449
    :catch_0
    move-exception p0

    .line 451
    nop

    .line 453
    nop

    .line 451
    return v0
.end method

.method public static isDiagnosticExist(Landroid/content/Context;)Z
    .locals 3

    .line 1117
    nop

    .line 1118
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1120
    nop

    .line 1119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "def.diagnostic.on"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_0

    .line 1120
    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :cond_0
    nop

    .line 1122
    :cond_1
    :goto_0
    return v0
.end method

.method public static isDiagnosticOn(Landroid/content/Context;)Z
    .locals 3

    .line 1126
    nop

    .line 1127
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1129
    nop

    .line 1128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x1

    const-string v2, "def.diagnostic.on"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 1129
    move v0, v1

    goto :goto_0

    :cond_0
    nop

    .line 1131
    :cond_1
    :goto_0
    return v0
.end method

.method public static isDialogProgressTask(I)Z
    .locals 2

    .line 1061
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/16 v1, 0x22

    if-eq p0, v1, :cond_1

    const/16 v1, 0x23

    if-eq p0, v1, :cond_1

    const/16 v1, 0x26

    if-eq p0, v1, :cond_1

    const/16 v1, 0x28

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDownLoadFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z
    .locals 4

    .line 910
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 912
    return v2

    .line 913
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    return v2

    .line 915
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 916
    return v2

    .line 919
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 1

    .line 861
    iget p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z
    .locals 2

    .line 974
    if-eqz p0, :cond_1

    .line 975
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    .line 976
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object p1

    .line 977
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    return v1

    .line 979
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 980
    return v1

    .line 983
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z
    .locals 2

    .line 959
    if-eqz p0, :cond_1

    .line 960
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object p1

    .line 962
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 963
    return v1

    .line 964
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 965
    return v1

    .line 968
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isFilePathLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 1

    .line 949
    iget p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFragmentMultiWindowMode(Ljava/lang/String;)Z
    .locals 4

    .line 546
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 547
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 548
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 549
    const-string v2, "isInMultiWindowMode"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 550
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 551
    sget-object v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is fragment multi window--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    return p0

    .line 553
    :catch_0
    move-exception p0

    .line 554
    sget-object v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is fragment multi window--exception--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 557
    const/4 p0, 0x0

    return p0
.end method

.method public static isGlobalSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 1

    .line 865
    iget p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGlobalSearchTag(Ljava/lang/String;)Z
    .locals 1

    .line 807
    const-string v0, "global_search"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isGridMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 1

    .line 779
    iget-object p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    const-string v0, "gridMode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 3

    .line 884
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 885
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isInPrivacyMode(Landroid/content/Context;)Z
    .locals 1

    .line 936
    new-instance v0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->getInstance()Ltct/util/privacymode/TctPrivacyModeHelper;

    move-result-object p0

    invoke-virtual {p0}, Ltct/util/privacymode/TctPrivacyModeHelper;->isInPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public static isListMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 1

    .line 775
    iget-object p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    const-string v0, "listMode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMediaURI(Landroid/content/Context;)Z
    .locals 1

    .line 1005
    const v0, 0x7f040006

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isMemory512(Landroid/content/Context;)Z
    .locals 4

    .line 238
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 239
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 240
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 241
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v2, 0x20000000

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    .line 242
    const/4 p0, 0x1

    return p0

    .line 244
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMultiWindowMode(Lcom/jrdcom/filemanager/FileManagerApplication;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 561
    invoke-static {p2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isFragmentMultiWindowMode(Ljava/lang/String;)Z

    move-result p2

    .line 562
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isActivityMultiWindowMode(Ljava/lang/String;)Z

    move-result p1

    .line 563
    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    iget-boolean p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->isInMultiWindowMode:Z

    if-eqz p0, :cond_1

    .line 566
    return v0

    .line 568
    :cond_1
    const/4 p0, 0x0

    return p0

    .line 564
    :cond_2
    :goto_0
    return v0
.end method

.method public static isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 1

    .line 857
    iget p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOTGStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z
    .locals 0

    .line 989
    if-eqz p0, :cond_0

    .line 990
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object p1

    .line 991
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 992
    const/4 p0, 0x1

    return p0

    .line 995
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isOTGUSBTag(Ljava/lang/String;)Z
    .locals 1

    .line 803
    const-string v0, "usbotg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPathMode()Z
    .locals 2

    .line 783
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPathMode(Ljava/lang/String;)Z
    .locals 2

    .line 580
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPathMultiScreenChanage(Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 2

    .line 852
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSDCARDTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isOTGUSBTag(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    iget-object p0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 852
    :goto_0
    return p0
.end method

.method public static isPathNormalMode(I)Z
    .locals 3

    .line 344
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-eq p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isPermissionTag(Ljava/lang/String;)Z
    .locals 1

    .line 799
    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPhoneStorageZero()Z
    .locals 8

    .line 212
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    .line 213
    nop

    .line 214
    nop

    .line 216
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 220
    :try_start_1
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 221
    :try_start_2
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    goto :goto_2

    .line 222
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-wide v4, v1

    .line 223
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 224
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 217
    :cond_0
    move-wide v4, v1

    move-wide v6, v4

    .line 229
    :goto_1
    goto :goto_3

    .line 227
    :catch_3
    move-exception v0

    move-wide v4, v1

    .line 228
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v6, v1

    .line 230
    :goto_3
    mul-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    .line 231
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isPhoneTag(Ljava/lang/String;)Z
    .locals 1

    .line 787
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 2

    .line 944
    iget v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isRecentCategoryMode()Z
    .locals 2

    .line 576
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSDCARDTag(Ljava/lang/String;)Z
    .locals 1

    .line 791
    const-string v0, "sdcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSafeFileView(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 3

    .line 290
    iget v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    sget p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z
    .locals 1

    .line 869
    iget p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isShareMediaURI(Landroid/content/Context;)Z
    .locals 1

    .line 1009
    const v0, 0x7f040008

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isShowCircularProgressBar(I)Z
    .locals 1

    .line 818
    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isShowHorizontalProgressBar(I)Z
    .locals 1

    .line 822
    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isShowProgressDialog(I)Z
    .locals 2

    .line 811
    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p0, v1, :cond_1

    .line 812
    sget p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne p0, v0, :cond_0

    sget p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 814
    :cond_1
    return v0
.end method

.method public static isSupportPrivacyMode(Landroid/content/Context;)Z
    .locals 1

    .line 940
    new-instance v0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->getInstance()Ltct/util/privacymode/TctPrivacyModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Ltct/util/privacymode/TctPrivacyModeHelper;->isInPrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSupportPrivateModePlf(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportPrivateModePlf(Landroid/content/Context;)Z
    .locals 1

    .line 1001
    const v0, 0x7f040007

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isTctPrivateColumn(Landroid/content/Context;)Z
    .locals 0

    .line 481
    const/4 p0, 0x0

    return p0
.end method

.method public static matcherFolderName(Ljava/lang/String;)Z
    .locals 1

    .line 1135
    if-eqz p0, :cond_0

    .line 1136
    nop

    .line 1137
    const-string v0, ".*[/\\\\:*?\"<>|].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1138
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1139
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0

    .line 1141
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static recordCountNumForFA(Landroid/content/Context;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V
    .locals 0

    .line 1094
    return-void
.end method

.method public static recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V
    .locals 1

    .line 1071
    const-string v0, "status"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    .line 1072
    return-void
.end method

.method private static recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V
    .locals 0

    .line 1085
    return-void
.end method

.method public static returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V
    .locals 0

    .line 273
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setResultCode(I)V

    .line 274
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 276
    return-void
.end method

.method public static updateMenuBarIconIfNeed(Landroid/content/Context;Landroid/widget/MenuBar;ZZ)V
    .locals 2

    .line 104
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v0, :cond_2

    .line 105
    if-eqz p2, :cond_0

    .line 106
    const/4 p2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/MenuBar;->setSoftKeyImage(ILandroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_0
    if-eqz p3, :cond_1

    .line 109
    const/4 p2, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f0700b8

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/MenuBar;->setSoftKeyImage(ILandroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_1
    const p0, 0x7f070117

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setOptionMenuItemBackground(I)V

    goto :goto_0

    .line 113
    :cond_2
    const p0, 0x7f070116

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setOptionMenuItemBackground(I)V

    .line 115
    :goto_0
    return-void
.end method

.method public static updateModeThemeStyle(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "def_simple_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    sput-boolean v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    .line 92
    if-eqz v1, :cond_1

    const p0, 0x7f0c00a9

    goto :goto_0

    :cond_1
    const p0, 0x7f0c0093

    :goto_0
    sput p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    .line 93
    sget-boolean p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->simpleModeColor:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->normalModeColor:Ljava/lang/String;

    :goto_1
    sput-object p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->SELECT_BACKGROUND_COLOR:Ljava/lang/String;

    .line 94
    sget-boolean p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p0, :cond_3

    const p0, 0x7f0500bd

    goto :goto_2

    :cond_3
    const p0, 0x7f0500db

    :goto_2
    sput p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->SELECT_BACKGROUND_COLOR_ID:I

    .line 95
    sget-boolean p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p0, :cond_4

    const p0, 0x7f0b003b

    goto :goto_3

    :cond_4
    const p0, 0x7f0b003a

    :goto_3
    sput p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->LIST_ITEM_RES_ID:I

    .line 96
    sget-boolean p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p0, :cond_5

    const p0, 0x7f0b0039

    goto :goto_4

    :cond_5
    const p0, 0x7f0b0038

    :goto_4
    sput p0, Lcom/jrdcom/filemanager/utils/CommonUtils;->GRID_ITEM_RES_ID:I

    .line 102
    return-void
.end method
