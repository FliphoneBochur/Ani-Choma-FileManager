.class public Lcom/jrdcom/filemanager/manager/FolderCountManager;
.super Ljava/lang/Object;
.source "FolderCountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;
    }
.end annotation


# static fields
.field public static mFolderItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/jrdcom/filemanager/manager/FolderCountManager;


# instance fields
.field private countCallback:Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;

.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/jrdcom/filemanager/manager/FolderCountManager;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/manager/FolderCountManager;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/manager/FolderCountManager;->sInstance:Lcom/jrdcom/filemanager/manager/FolderCountManager;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/manager/FolderCountManager;->mFolderItemMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FolderCountManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    return-void
.end method

.method public static getInstance()Lcom/jrdcom/filemanager/manager/FolderCountManager;
    .locals 1

    .line 24
    sget-object v0, Lcom/jrdcom/filemanager/manager/FolderCountManager;->sInstance:Lcom/jrdcom/filemanager/manager/FolderCountManager;

    return-object v0
.end method


# virtual methods
.method public getCountCallback()Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FolderCountManager;->countCallback:Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;

    return-object v0
.end method

.method public loadFolderCountText(Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FolderCountManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x0

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 40
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFolderCountCallback(Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;)V

    .line 41
    invoke-virtual {v0, p2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSourceFileList(Ljava/util/List;)V

    .line 42
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FolderCountManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 44
    return-void
.end method

.method public setCountCallback(Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/FolderCountManager;->countCallback:Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;

    .line 35
    return-void
.end method
