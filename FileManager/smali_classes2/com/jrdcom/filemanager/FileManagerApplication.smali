.class public Lcom/jrdcom/filemanager/FileManagerApplication;
.super Landroid/app/Application;
.source "FileManagerApplication.java"


# static fields
.field private static application:Lcom/jrdcom/filemanager/FileManagerApplication;

.field public static isBuiltInStorage:Z


# instance fields
.field public cancelTaskTime:J

.field public currentOperation:I

.field public isInMultiWindowMode:Z

.field public isMediaURI:Z

.field public isShareMediaURI:Z

.field public isShowHidden:Z

.field public isSysteSupportDrm:Z

.field public mAppLife:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public mAppStartTime:J

.field public mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

.field public mCategorySelectId:I

.field public mCurrentLocation:I

.field public mCurrentPath:Ljava/lang/String;

.field public mCurrentProgressMode:I

.field public mCurrentStatus:I

.field public mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

.field public mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

.field public mNotiManager:Landroid/app/NotificationManager;

.field public mPortraitOrientation:Z

.field public mProgressDialog:Landroid/app/Dialog;

.field public mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

.field public mRunningTaskMap:Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

.field public mSortType:I

.field public mViewMode:Ljava/lang/String;

.field public mWaittingTaskList:Lcom/jrdcom/filemanager/singleton/WaittingTaskList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    .line 30
    iput v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 32
    iput v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 34
    const-string v1, "listMode"

    iput-object v1, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    .line 36
    iput v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppStartTime:J

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    .line 50
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->isInMultiWindowMode:Z

    .line 52
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    .line 55
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->isMediaURI:Z

    .line 56
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->isShareMediaURI:Z

    .line 61
    new-instance v1, Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-direct {v1}, Lcom/jrdcom/filemanager/utils/FileListCache;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    .line 69
    const/16 v1, 0x2713

    iput v1, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 74
    iput v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCategorySelectId:I

    return-void
.end method

.method public static getInstance()Landroid/app/Application;
    .locals 1

    .line 79
    sget-object v0, Lcom/jrdcom/filemanager/FileManagerApplication;->application:Lcom/jrdcom/filemanager/FileManagerApplication;

    return-object v0
.end method


# virtual methods
.method public getAppHandler()Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 84
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 85
    sput-object p0, Lcom/jrdcom/filemanager/FileManagerApplication;->application:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 86
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->getActivityLifecycleCallbacks([Ljava/lang/String;)Lcom/jrdcom/filemanager/utils/PermissionUtil$PermissionLifecycleCallbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppLife:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    goto :goto_1

    .line 91
    :cond_2
    :goto_0
    const-string v0, "listMode"

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefViewBy(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    :goto_1
    const-string v0, "category"

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsStatus(Landroid/content/Context;I)V

    .line 97
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->isShowHidden(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    .line 98
    new-instance v0, Lcom/jrdcom/filemanager/manager/FileInfoManager;

    sget-object v1, Lcom/jrdcom/filemanager/FileManagerApplication;->application:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-direct {v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 99
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getInstance()Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mRunningTaskMap:Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    .line 100
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->getInstance()Lcom/jrdcom/filemanager/singleton/WaittingTaskList;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mWaittingTaskList:Lcom/jrdcom/filemanager/singleton/WaittingTaskList;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppStartTime:J

    .line 102
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->getInstance()Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    .line 103
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isMediaURI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->isMediaURI:Z

    .line 104
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isShareMediaURI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->isShareMediaURI:Z

    .line 107
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 112
    iget-object v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppLife:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->clearCache()V

    .line 119
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->clearRunningTask()V

    .line 120
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->clearWaittingTask()V

    .line 121
    return-void
.end method

.method public setAppHandler(Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 134
    return-void
.end method

.method public setDefaultSortBy(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    .line 125
    return-void
.end method
