.class public final Lcom/jrdcom/filemanager/manager/MountManager;
.super Ljava/lang/Object;
.source "MountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;
    }
.end annotation


# static fields
.field public static final HOME:Ljava/lang/String; = "Home"

.field public static final ROOT_PATH:Ljava/lang/String; = "Root Path"

.field public static final SEPARATOR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MountManager"

.field private static sInstance:Lcom/jrdcom/filemanager/manager/MountManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMountPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mRootPath:Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "Root Path"

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mRootPath:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/jrdcom/filemanager/manager/MountManager;
    .locals 1

    .line 128
    sget-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->sInstance:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/manager/MountManager;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->sInstance:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 132
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->sInstance:Lcom/jrdcom/filemanager/manager/MountManager;

    return-object v0
.end method


# virtual methods
.method public changeMountState(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 370
    iget-object v3, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    iget-boolean p1, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 372
    return v2

    .line 374
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    .line 375
    const/4 p1, 0x1

    return p1

    .line 378
    :cond_1
    goto :goto_0

    .line 379
    :cond_2
    return v2
.end method

.method public getDefaultPath()Ljava/lang/String;
    .locals 1

    .line 259
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 579
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 584
    :cond_0
    iget-object p1, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mDescription:Ljava/lang/String;

    .line 582
    :goto_1
    return-object p1

    .line 586
    :cond_1
    goto :goto_0

    .line 588
    :cond_2
    return-object p1
.end method

.method public getMountCount()I
    .locals 3

    .line 244
    nop

    .line 245
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 246
    iget-boolean v2, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    if-eqz v2, :cond_0

    .line 247
    add-int/lit8 v1, v1, 0x1

    .line 249
    :cond_0
    goto :goto_0

    .line 250
    :cond_1
    return v1
.end method

.method public getMountPointDescription(Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;Landroid/content/Context;)V
    .locals 1

    .line 227
    iget-boolean v0, p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c005d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 230
    :cond_0
    iget-boolean v0, p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isOTG:Z

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c00f8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c00ce

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mDescription:Ljava/lang/String;

    .line 236
    :goto_0
    return-void
.end method

.method public getMountPointFileInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    nop

    .line 187
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 188
    iget-boolean v6, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-nez v6, :cond_0

    .line 189
    new-instance v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v6, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-direct {v2, v6, v5}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_0
    iget-boolean v6, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isSdCard:Z

    if-eqz v6, :cond_1

    .line 191
    new-instance v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v6, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-direct {v3, v6, v5}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_1
    iget-boolean v6, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isOTG:Z

    if-eqz v6, :cond_2

    .line 193
    new-instance v4, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v6, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    :cond_2
    :goto_1
    goto :goto_0

    .line 196
    :cond_3
    if-eqz v2, :cond_4

    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_4
    if-eqz v3, :cond_5

    .line 200
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_5
    if-eqz v4, :cond_6

    .line 203
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_6
    return-object v0
.end method

.method public getPhoneFile()Ljava/io/File;
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 473
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-nez v2, :cond_0

    .line 474
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 476
    :cond_0
    goto :goto_0

    .line 477
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhonePath()Ljava/lang/String;
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 501
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-nez v2, :cond_0

    .line 502
    iget-object v0, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    return-object v0

    .line 504
    :cond_0
    goto :goto_0

    .line 505
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 351
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    iget-object p1, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    return-object p1

    .line 355
    :cond_0
    goto :goto_0

    .line 356
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSDCardFile()Ljava/io/File;
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 487
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v2, :cond_0

    .line 488
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 490
    :cond_0
    goto :goto_0

    .line 491
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 515
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isSdCard:Z

    if-eqz v2, :cond_0

    .line 516
    iget-object v0, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    return-object v0

    .line 518
    :cond_0
    goto :goto_0

    .line 519
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsbOtgPath()Ljava/lang/String;
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 525
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isOTG:Z

    if-eqz v2, :cond_0

    .line 526
    iget-object v0, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    return-object v0

    .line 528
    :cond_0
    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 12

    .line 46
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mRootPath:Ljava/lang/String;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 56
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 57
    array-length v4, v0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    .line 58
    new-instance v7, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    invoke-direct {v7, v2}, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;-><init>(Lcom/jrdcom/filemanager/manager/MountManager$1;)V

    .line 59
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    .line 60
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/jrdcom/filemanager/manager/MountManager;->isMounted(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    .line 61
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    iput-boolean v6, v7, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    .line 62
    iget-boolean v6, v7, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v6, :cond_2

    iget-object v6, v7, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    const-string v8, "/storage/usbotg"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    iput-boolean v3, v7, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isOTG:Z

    goto :goto_1

    .line 64
    :cond_2
    iget-boolean v6, v7, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v6, :cond_3

    .line 65
    iput-boolean v3, v7, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isSdCard:Z

    .line 67
    :cond_3
    :goto_1
    invoke-virtual {p0, v7, p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getMountPointDescription(Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;Landroid/content/Context;)V

    .line 68
    iget-boolean v6, v7, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    if-eqz v6, :cond_4

    .line 69
    iget-object v6, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    :cond_5
    nop

    .line 74
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 74
    :cond_6
    move-object v0, v2

    .line 77
    :goto_2
    if-eqz v0, :cond_e

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 79
    new-instance v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    invoke-direct {v5, v2}, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;-><init>(Lcom/jrdcom/filemanager/manager/MountManager$1;)V

    .line 80
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    .line 81
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_8
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_9

    .line 82
    goto :goto_3

    .line 84
    :cond_9
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v7

    .line 85
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v8

    .line 86
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    .line 90
    iget-object v9, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    if-eqz v9, :cond_b

    .line 91
    move v9, v1

    :goto_4
    iget-object v10, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 92
    iget-object v10, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 93
    iget-object v11, v10, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    if-eqz v11, :cond_a

    iget-object v11, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    if-eqz v11, :cond_a

    iget-object v10, v10, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    iget-object v11, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    .line 94
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 95
    iget-object v10, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 99
    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    .line 100
    iput-boolean v3, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    goto :goto_5

    .line 102
    :cond_c
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/manager/MountManager;->isMounted(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    .line 104
    :goto_5
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 105
    iput-boolean v7, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    .line 106
    iput-boolean v7, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isOTG:Z

    goto :goto_6

    .line 108
    :cond_d
    iput-boolean v8, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    .line 109
    iput-boolean v8, v5, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isSdCard:Z

    .line 111
    :goto_6
    invoke-virtual {p0, v5, p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getMountPointDescription(Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;Landroid/content/Context;)V

    .line 113
    iget-object v4, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    goto/16 :goto_3

    .line 118
    :cond_e
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/manager/IconManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public isExternalFile(Lcom/jrdcom/filemanager/utils/FileInfo;)Z
    .locals 2

    .line 560
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 561
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 563
    return v0

    .line 565
    :cond_0
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isExternalMountPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 566
    const/4 p1, 0x1

    return p1

    .line 569
    :cond_1
    return v0
.end method

.method public isExternalMountPath(Ljava/lang/String;)Z
    .locals 4

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 428
    return v1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 431
    iget-boolean v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    const/4 p1, 0x1

    return p1

    .line 434
    :cond_1
    goto :goto_0

    .line 435
    :cond_2
    return v1
.end method

.method public isInternalMountPath(Ljava/lang/String;)Z
    .locals 4

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 409
    return v1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 412
    iget-boolean v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    const/4 p1, 0x1

    return p1

    .line 415
    :cond_1
    goto :goto_0

    .line 416
    :cond_2
    return v1
.end method

.method public isMountPoint(Ljava/lang/String;)Z
    .locals 3

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 390
    return v1

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 393
    iget-object v2, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    const/4 p1, 0x1

    return p1

    .line 396
    :cond_1
    goto :goto_0

    .line 397
    :cond_2
    return v1
.end method

.method public isMounted(Ljava/lang/String;)Z
    .locals 1

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 p1, 0x0

    return p1

    .line 272
    :cond_0
    nop

    .line 273
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->isOtgMounted()Z

    move-result p1

    return p1

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 277
    const-string v0, "mounted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isOTGMountPath(Ljava/lang/String;)Z
    .locals 4

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    return v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 213
    iget-boolean v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v2, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isOTG:Z

    if-eqz v2, :cond_1

    .line 215
    const/4 p1, 0x1

    return p1

    .line 217
    :cond_1
    goto :goto_0

    .line 218
    :cond_2
    return v1
.end method

.method public isOtgMounted()Z
    .locals 4

    .line 301
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 302
    iget-boolean v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isOTG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 303
    const/4 v0, 0x1

    return v0

    .line 305
    :cond_0
    goto :goto_0

    .line 309
    :cond_1
    nop

    .line 310
    return v0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    const-string v2, "MountManager"

    const-string v3, "Exception occured when isOtgMounted():"

    invoke-static {v2, v3, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    return v0
.end method

.method public isPhoneRootPath(Ljava/lang/String;)Z
    .locals 2

    .line 155
    if-eqz p1, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 157
    return v1

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    return v1

    .line 160
    :cond_1
    const-string v0, "/storage/usbotg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    return v1

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 163
    return v1

    .line 167
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public isRootPath(Ljava/lang/String;)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mRootPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSDCardMounted()Z
    .locals 4

    .line 287
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 288
    iget-boolean v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isSdCard:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 289
    const/4 v0, 0x1

    return v0

    .line 291
    :cond_0
    goto :goto_0

    .line 295
    :cond_1
    nop

    .line 296
    return v0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    const-string v2, "MountManager"

    const-string v3, "Exception occured when isSDCardMounted():"

    invoke-static {v2, v3, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    return v0
.end method

.method public isSDMountPath(Ljava/lang/String;)Z
    .locals 4

    .line 440
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 441
    return v1

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 444
    iget-boolean v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v2, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isSdCard:Z

    if-eqz v2, :cond_1

    .line 446
    const/4 p1, 0x1

    return p1

    .line 448
    :cond_1
    goto :goto_0

    .line 449
    :cond_2
    return v1
.end method

.method public isSdOrOtg()Z
    .locals 3

    .line 542
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/manager/MountManager;->getMountCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 543
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isOTG:Z

    if-eqz v0, :cond_0

    .line 544
    return v2

    .line 546
    :cond_0
    return v1

    .line 549
    :cond_1
    return v1
.end method

.method public isSdOrPhonePath(Ljava/lang/String;)Z
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 336
    iget-object v1, v1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const/4 p1, 0x1

    return p1

    .line 339
    :cond_0
    goto :goto_0

    .line 340
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isSignalSDCardMounted(I)Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 321
    iget-boolean v0, p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsMounted:Z

    if-eqz p1, :cond_0

    .line 322
    const/4 p1, 0x1

    return p1

    .line 324
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isUSBMountPath(Ljava/lang/String;)Z
    .locals 4

    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 454
    return v1

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 457
    iget-boolean v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v2, v2, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isOTG:Z

    if-eqz v2, :cond_1

    .line 459
    const/4 p1, 0x1

    return p1

    .line 461
    :cond_1
    goto :goto_0

    .line 462
    :cond_2
    return v1
.end method

.method public isUsbOtg(I)Z
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/MountManager;->mMountPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;

    .line 534
    iget-boolean v0, p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->mIsExternal:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;->isOTG:Z

    if-eqz p1, :cond_0

    .line 535
    const/4 p1, 0x1

    return p1

    .line 537
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
