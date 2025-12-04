.class public Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressFileTask"
.end annotation


# instance fields
.field private condition:I

.field protected dstFolder:Ljava/lang/String;

.field private mArchiveName:Ljava/lang/String;

.field private mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

.field private mContext:Landroid/content/Context;

.field protected mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field protected final mSrcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZipFileName:Ljava/lang/String;

.field private mzipName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 1147
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mzipName:Ljava/lang/String;

    .line 1135
    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mArchiveName:Ljava/lang/String;

    .line 1138
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->condition:I

    .line 1148
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 1149
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mContext:Landroid/content/Context;

    .line 1151
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mSrcList:Ljava/util/List;

    .line 1152
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->dstFolder:Ljava/lang/String;

    .line 1153
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSearchContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mArchiveName:Ljava/lang/String;

    .line 1154
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;)I
    .locals 0

    .line 1127
    iget p0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->condition:I

    return p0
.end method

.method static synthetic access$002(Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;I)I
    .locals 0

    .line 1127
    iput p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->condition:I

    return p1
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;[Ljava/lang/Object;)V
    .locals 0

    .line 1127
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1142
    invoke-super {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask;->cancel()V

    .line 1143
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/compress/CommonCompress;->cancel()V

    .line 1144
    return-void
.end method

.method public compressFile()I
    .locals 12

    .line 1201
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v0

    .line 1202
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v7

    .line 1203
    const/4 v9, 0x1

    new-array v10, v9, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    const-string v1, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, v0

    move-wide v3, v7

    invoke-static/range {v1 .. v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v1

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {p0, v10}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 1204
    nop

    .line 1205
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mSrcList:Ljava/util/List;

    iget-object v3, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jrdcom/filemanager/compress/CommonCompress;->prepare(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1206
    const/4 v1, -0x1

    move v10, v1

    goto :goto_0

    .line 1205
    :cond_0
    move v10, v11

    .line 1209
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mArchiveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    .line 1210
    const/16 v0, -0x15

    return v0

    .line 1212
    :cond_1
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/compress/CommonCompress;->getAllFilesCount()I

    move-result v6

    .line 1213
    new-array v9, v9, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move v2, v0

    move-wide v3, v7

    invoke-static/range {v1 .. v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v1

    aput-object v1, v9, v11

    invoke-virtual {p0, v9}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 1214
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    new-instance v2, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;

    invoke-direct {v2, p0, v0, v7, v8}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;-><init>(Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;IJ)V

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/compress/CommonCompress;->setObserver(Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;)V

    .line 1229
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/compress/CommonCompress;->doArchive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1230
    const/16 v10, -0x18

    .line 1233
    :cond_2
    if-ltz v10, :cond_3

    .line 1234
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 1235
    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mZipFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->dstFolder:Ljava/lang/String;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v6, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    const/16 v7, 0x8

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;I)V

    .line 1237
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 1238
    return v10
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 3

    .line 1166
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 1167
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 1168
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1169
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v0, -0x11

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 1170
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 1172
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ltz p1, :cond_1

    .line 1174
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mArchiveName:Ljava/lang/String;

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mzipName:Ljava/lang/String;

    .line 1182
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->dstFolder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mzipName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mZipFileName:Ljava/lang/String;

    .line 1183
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/jrdcom/filemanager/compress/CommonCompress;->createCompressType(I)Lcom/jrdcom/filemanager/compress/CommonCompress;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    .line 1184
    const/4 v0, 0x0

    .line 1185
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mZipFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->dstFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mzipName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ").zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mZipFileName:Ljava/lang/String;

    .line 1187
    add-int/2addr v0, p1

    goto :goto_0

    .line 1189
    :cond_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->compressFile()I

    move-result p1

    .line 1190
    if-gez p1, :cond_3

    .line 1191
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mZipFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1193
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1196
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 1197
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1127
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method

.method public isSourceExists()Z
    .locals 3

    .line 1157
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mSrcList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1160
    :cond_0
    return v1

    .line 1158
    :cond_1
    :goto_0
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isMountPoint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
