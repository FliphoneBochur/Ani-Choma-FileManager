.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;
.super Landroid/os/Handler;
.source "FileBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 1305
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26

    .line 1309
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1310
    iget-object v2, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    const-string v3, "TASKRESULT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    iput-object v0, v2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 1311
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    if-nez v0, :cond_0

    .line 1312
    return-void

    .line 1314
    :cond_0
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getResultCode()I

    move-result v2

    .line 1315
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getErrorCode()I

    move-result v0

    .line 1316
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v3

    const/16 v4, 0x28

    const/16 v5, 0x26

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v3, :cond_3

    .line 1318
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v0

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    const/16 v3, 0x22

    if-eq v0, v3, :cond_1

    const/16 v3, 0x23

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 1326
    :cond_1
    if-gez v2, :cond_2

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v2, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showErrorToast(ILcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1329
    :cond_2
    :goto_0
    return-void

    .line 1331
    :cond_3
    nop

    .line 1332
    nop

    .line 1333
    nop

    .line 1334
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v3

    const v9, 0x7f0c00b2

    const/4 v10, -0x8

    if-eq v3, v8, :cond_4c

    if-eq v3, v7, :cond_45

    const/4 v9, 0x3

    if-eq v3, v9, :cond_44

    const/4 v10, 0x4

    const/16 v11, 0xc

    if-eq v3, v10, :cond_3f

    if-eq v3, v6, :cond_33

    if-eq v3, v5, :cond_2f

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    .line 1773
    iget-object v12, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v12, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v13, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v14, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v15, 0x4

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1775
    return-void

    .line 1714
    :pswitch_0
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1716
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onTaskComplete(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1717
    if-ltz v2, :cond_4

    .line 1718
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->showBottomView(Ljava/lang/String;)V

    goto :goto_1

    .line 1720
    :cond_4
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v2, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showErrorToast(ILcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1722
    :goto_1
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$900(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 1723
    goto/16 :goto_15

    .line 1703
    :pswitch_1
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1705
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onTaskComplete(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1706
    if-ltz v2, :cond_5

    .line 1707
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->showBottomView(Ljava/lang/String;)V

    goto :goto_2

    .line 1709
    :cond_5
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v2, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showErrorToast(ILcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1711
    :goto_2
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$900(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 1712
    goto/16 :goto_15

    .line 1360
    :pswitch_2
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1361
    return-void

    .line 1363
    :cond_6
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getAdapterMode()I

    move-result v0

    .line 1364
    if-ne v0, v8, :cond_7

    .line 1365
    iget-object v9, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v9, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v10, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v11, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_3

    .line 1367
    :cond_7
    if-ne v0, v7, :cond_8

    .line 1368
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_3

    .line 1370
    :cond_8
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1371
    iget-object v1, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    const/4 v2, 0x0

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_3

    .line 1373
    :cond_9
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1374
    iget-object v1, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1377
    :cond_a
    :goto_3
    return-void

    .line 1595
    :pswitch_3
    iget-object v1, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v2, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1, v0, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showErrorToast(ILcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1596
    return-void

    .line 1336
    :pswitch_4
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getProgressInfo()Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v0

    .line 1337
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getProgressTaskType()I

    move-result v15

    .line 1338
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getProgeress()I

    move-result v3

    .line 1339
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getTotal()J

    move-result-wide v4

    long-to-int v4, v4

    .line 1340
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 1341
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1342
    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v6}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v10

    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v10, v11, v6}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->addtaskInfo(JLcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1343
    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_c

    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    if-ne v6, v8, :cond_c

    .line 1344
    iget-object v10, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v10, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v6}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v12

    move-object v11, v0

    move v14, v5

    move/from16 v16, v4

    move/from16 v17, v3

    invoke-static/range {v10 .. v17}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$400(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/task/ProgressInfo;JIIII)V

    .line 1345
    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v6, :cond_b

    .line 1346
    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v7, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v7, v7, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Lcom/jrdcom/filemanager/FileManagerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    .line 1347
    :cond_b
    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_58

    .line 1348
    iget-object v10, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    const/4 v15, 0x0

    move-object v11, v0

    move v12, v5

    move v13, v4

    move v14, v3

    invoke-static/range {v10 .. v15}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/task/ProgressInfo;IIIZ)V

    goto/16 :goto_15

    .line 1350
    :cond_c
    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    if-ne v6, v7, :cond_d

    .line 1351
    iget-object v10, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    const/4 v15, 0x1

    move-object v11, v0

    move v12, v5

    move v13, v4

    move v14, v3

    invoke-static/range {v10 .. v15}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/task/ProgressInfo;IIIZ)V

    goto/16 :goto_15

    .line 1352
    :cond_d
    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    if-ne v6, v9, :cond_58

    .line 1353
    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_e

    iget-object v6, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v6, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1354
    iget-object v10, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v6, v10, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v6}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v12

    move-object v11, v0

    move v14, v5

    move/from16 v16, v4

    move/from16 v17, v3

    invoke-static/range {v10 .. v17}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$400(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/task/ProgressInfo;JIIII)V

    .line 1356
    :cond_e
    iget-object v10, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    const/4 v15, 0x1

    move-object v11, v0

    move v12, v5

    move v13, v4

    move v14, v3

    invoke-static/range {v10 .. v15}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/task/ProgressInfo;IIIZ)V

    goto/16 :goto_15

    .line 1553
    :pswitch_5
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1554
    return-void

    .line 1557
    :cond_f
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1558
    const-string v0, "FileBrowserFragment"

    const-string v1, "mTaskResultHandler progressDialog is showing, return."

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    return-void

    .line 1562
    :cond_10
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v6

    .line 1563
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    .line 1564
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v8, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 1566
    :try_start_0
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1569
    goto :goto_4

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1570
    :goto_4
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    .line 1572
    :cond_11
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    if-eq v0, v8, :cond_12

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    if-eq v0, v9, :cond_12

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    .line 1574
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0c008e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getTitleStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1575
    :cond_12
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v4, v4, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->newInstance(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/TaskInfo;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    .line 1576
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1577
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1578
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1581
    :cond_13
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFileFilter()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_14

    .line 1582
    return-void

    .line 1584
    :cond_14
    nop

    .line 1585
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_58

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFileFilter()I

    move-result v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isShowHorizontalProgressBar(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1586
    invoke-static {v6, v7}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->isExist(J)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1587
    new-instance v0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;-><init>(J)V

    .line 1588
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getTitleStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->setDialogTitle(Ljava/lang/String;)V

    .line 1589
    invoke-static {v6, v7, v0}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->addFinishTask(JLcom/jrdcom/filemanager/utils/RunningTaskInfo;)V

    goto/16 :goto_15

    .line 1452
    :pswitch_6
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showFileDetailInfo(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1453
    goto/16 :goto_15

    .line 1455
    :pswitch_7
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSearchContent()Ljava/lang/String;

    move-result-object v0

    .line 1456
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getResultCode()I

    move-result v3

    if-eqz v3, :cond_15

    .line 1457
    return-void

    .line 1459
    :cond_15
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v4, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getQueryText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$602(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1460
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-nez v3, :cond_16

    return-void

    .line 1461
    :cond_16
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemCount()I

    move-result v3

    if-lez v3, :cond_17

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$600(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1462
    return-void

    .line 1464
    :cond_17
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$600(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$700(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-void

    .line 1465
    :cond_18
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v3, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$702(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1466
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v3, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 1467
    invoke-virtual {v3, v10}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    if-ne v3, v10, :cond_58

    .line 1470
    :cond_19
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v4, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v4, v4, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    invoke-virtual {v3, v4}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->updateSearchList(I)V

    .line 1471
    iget-object v5, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    const/16 v7, 0xbc

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, ""

    invoke-virtual/range {v5 .. v11}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1472
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v4, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onTaskComplete(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1473
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v3, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$800(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1379
    :pswitch_8
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getRefreshMode()I

    move-result v0

    if-ne v0, v8, :cond_1c

    .line 1380
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 1381
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-lez v0, :cond_1a

    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    if-eq v0, v11, :cond_1a

    .line 1383
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToEditView()V

    goto :goto_5

    .line 1384
    :cond_1a
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1385
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshPathBar()V

    .line 1387
    :cond_1b
    :goto_5
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_23

    .line 1388
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v5, v5, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    invoke-virtual {v0, v3, v5}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->loadFileInfoList(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 1390
    :cond_1c
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getRefreshMode()I

    move-result v0

    if-eq v0, v7, :cond_1d

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 1391
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getRefreshMode()I

    move-result v0

    if-ne v0, v9, :cond_23

    .line 1392
    :cond_1d
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-gez v0, :cond_1e

    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    if-ne v0, v11, :cond_21

    .line 1394
    :cond_1e
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 1395
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getShowFileList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 1396
    invoke-virtual {v0, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1398
    :try_start_1
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNo_messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    .line 1399
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNo_messageView:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c00a3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    :cond_1f
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoFolderResultView(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 1402
    :catch_1
    move-exception v0

    .line 1403
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1404
    :goto_6
    goto :goto_7

    .line 1406
    :cond_20
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0, v5}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoFolderResultView(Z)V

    .line 1409
    :cond_21
    :goto_7
    sput-boolean v5, Lcom/jrdcom/filemanager/utils/FileInfo;->mountReceiver:Z

    .line 1410
    sput-boolean v5, Lcom/jrdcom/filemanager/utils/FileInfo;->scanFinishReceiver:Z

    .line 1411
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getRefreshMode()I

    move-result v0

    if-ne v0, v7, :cond_22

    .line 1412
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mLastCagegory:I

    goto :goto_8

    .line 1414
    :cond_22
    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mLastCagegory:I

    .line 1417
    :cond_23
    :goto_8
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onTaskComplete(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1418
    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    if-ne v0, v11, :cond_24

    .line 1419
    iget-object v12, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v12, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v13, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v14, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/4 v15, 0x4

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v18}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_9

    .line 1422
    :cond_24
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v21, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/16 v22, 0x4

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v25}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1425
    :goto_9
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getShowFileList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_25

    .line 1426
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v9

    sub-long/2addr v5, v9

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v9, "listfile_time"

    invoke-static {v0, v9, v5, v6, v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hawkeyeTimeEvent(Landroid/content/Context;Ljava/lang/String;JLcom/jrdcom/filemanager/FileManagerApplication;)V

    .line 1428
    :cond_25
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_26

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, v7}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1429
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateEditBarState()V

    .line 1431
    :cond_26
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1432
    return-void

    .line 1434
    :cond_27
    nop

    .line 1435
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getRefreshMode()I

    move-result v0

    if-ne v0, v7, :cond_28

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne v0, v8, :cond_28

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ltz v0, :cond_28

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/16 v3, 0x9

    if-ge v0, v3, :cond_28

    .line 1436
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    .line 1437
    :cond_28
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getRefreshMode()I

    move-result v0

    if-ne v0, v8, :cond_29

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 1438
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1440
    :cond_29
    :goto_a
    if-eqz v4, :cond_58

    .line 1441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v3, v4}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1444
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->getAllFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1445
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 1446
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v3, v4, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->put(Ljava/lang/String;Ljava/util/List;)V

    .line 1449
    :cond_2a
    goto/16 :goto_15

    .line 1749
    :cond_2b
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1750
    sput v11, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 1751
    sput v8, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 1752
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->changeMode(I)Z

    .line 1753
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->clearChecked()V

    .line 1754
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1200(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 1755
    sput v8, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 1756
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_2c

    .line 1757
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/4 v6, 0x5

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v7, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_b

    .line 1760
    :cond_2c
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_2e

    .line 1761
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->refreashSafeFilesCategory()V

    goto :goto_b

    .line 1765
    :cond_2d
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1768
    :cond_2e
    :goto_b
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onTaskComplete(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1769
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$900(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 1770
    goto/16 :goto_15

    .line 1725
    :cond_2f
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1726
    sput v11, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 1727
    sput v8, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 1728
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->changeMode(I)Z

    .line 1729
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->clearChecked()V

    .line 1730
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1200(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 1731
    sput v8, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 1732
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_30

    .line 1733
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/4 v6, 0x5

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v7, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_c

    .line 1736
    :cond_30
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_32

    .line 1737
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->refreashSafeFilesCategory()V

    goto :goto_c

    .line 1741
    :cond_31
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1744
    :cond_32
    :goto_c
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onTaskComplete(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1745
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$900(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 1746
    goto/16 :goto_15

    .line 1598
    :cond_33
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onTaskComplete(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1599
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_34

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/32 v5, 0x3200000

    cmp-long v0, v3, v5

    if-gez v0, :cond_34

    .line 1600
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v5, v5, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v5, v5, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v6, "delete_time"

    invoke-static {v0, v6, v3, v4, v5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hawkeyeTimeEvent(Landroid/content/Context;Ljava/lang/String;JLcom/jrdcom/filemanager/FileManagerApplication;)V

    .line 1602
    :cond_34
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCategoryIndex()I

    move-result v14

    .line 1604
    if-gez v14, :cond_35

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1605
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_d

    .line 1607
    :cond_35
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    move-object v13, v0

    .line 1609
    :goto_d
    nop

    .line 1610
    invoke-static {v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1611
    move v15, v8

    goto :goto_e

    .line 1612
    :cond_36
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isFilePathLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v0

    if-eqz v0, :cond_37

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ne v14, v0, :cond_37

    .line 1613
    move v15, v7

    goto :goto_e

    .line 1616
    :cond_37
    move v15, v10

    :goto_e
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isFilePathLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v0

    if-eqz v0, :cond_38

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-eq v14, v0, :cond_39

    :cond_38
    if-eqz v13, :cond_3a

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1617
    :cond_39
    iget-object v12, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_f

    .line 1619
    :cond_3a
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    if-ne v0, v7, :cond_3c

    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v0, v8, :cond_3c

    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    if-ne v0, v11, :cond_3c

    .line 1622
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_3b

    .line 1623
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_f

    .line 1626
    :cond_3b
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_3c

    .line 1627
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->refreashSafeFilesCategory()V

    .line 1631
    :cond_3c
    :goto_f
    if-ltz v2, :cond_3e

    .line 1632
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->showBottomView(Ljava/lang/String;)V

    .line 1634
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1635
    invoke-static {}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete file path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jrdcom/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/storage/emulated/0/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1638
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1639
    const-string v4, "com.filemanager.delete.ringtones"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1640
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.notification.RingtoneDeleteBroadcast"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1641
    iget-object v4, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1657
    :cond_3d
    goto :goto_10

    .line 1660
    :cond_3e
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$900(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 1661
    goto/16 :goto_15

    .line 1663
    :cond_3f
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSearchContent()Ljava/lang/String;

    move-result-object v0

    .line 1664
    if-eqz v0, :cond_40

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 1665
    invoke-virtual {v3, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1666
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v3, :cond_58

    .line 1667
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    invoke-interface {v3, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateSearch(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1669
    :cond_40
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    if-ne v0, v7, :cond_41

    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v0, v8, :cond_41

    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    if-ne v0, v11, :cond_41

    .line 1672
    iget-object v12, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v12, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v13, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v14, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto/16 :goto_15

    .line 1675
    :cond_41
    nop

    .line 1676
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCategoryIndex()I

    move-result v0

    .line 1677
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1678
    move v14, v8

    goto :goto_11

    .line 1679
    :cond_42
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v3

    if-eqz v3, :cond_43

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ne v0, v3, :cond_43

    .line 1680
    move v14, v7

    goto :goto_11

    .line 1683
    :cond_43
    move v14, v10

    :goto_11
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1002(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Z)Z

    .line 1687
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setCanSetFocus(Z)V

    .line 1690
    iget-object v11, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v11, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v12, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v13, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1693
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDstFile()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1100(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 1696
    goto/16 :goto_15

    .line 1698
    :cond_44
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSrcFile()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$102(Lcom/jrdcom/filemanager/utils/FileInfo;)Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1699
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1701
    goto/16 :goto_15

    .line 1477
    :cond_45
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1478
    return-void

    .line 1480
    :cond_46
    if-eq v2, v10, :cond_47

    .line 1481
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onTaskComplete(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1483
    :cond_47
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v0

    .line 1484
    if-eqz v0, :cond_4a

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v3, :cond_4a

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1485
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v3, :cond_48

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v3, :cond_48

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v3, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1486
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    invoke-interface {v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->enableScrollActionbar()V

    .line 1488
    :cond_48
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v3, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1489
    iget-object v10, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v10, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v11, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v12, -0x1

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_12

    .line 1492
    :cond_49
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/16 v19, -0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v23}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1496
    :cond_4a
    :goto_12
    if-ltz v2, :cond_4b

    .line 1497
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->showBottomView(Ljava/lang/String;)V

    .line 1499
    :cond_4b
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$900(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 1500
    goto/16 :goto_15

    .line 1502
    :cond_4c
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1503
    return-void

    .line 1505
    :cond_4d
    if-eq v2, v10, :cond_4e

    .line 1506
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onTaskComplete(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1508
    :cond_4e
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v0

    .line 1509
    if-eqz v0, :cond_51

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v3, :cond_51

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1510
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v3, :cond_4f

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v3, :cond_4f

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v3, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1511
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    invoke-interface {v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->enableScrollActionbar()V

    .line 1513
    :cond_4f
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v3, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1514
    iget-object v10, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v10, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v11, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v12, -0x1

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_13

    .line 1517
    :cond_50
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v4, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/16 v19, -0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v23}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1523
    :cond_51
    :goto_13
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1524
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v4, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v4, v4, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1525
    iget-object v10, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v10, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v11, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v12, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_14

    .line 1528
    :cond_52
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v4, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v19, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v23}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_14

    .line 1532
    :cond_53
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isFilePathLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1533
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    sget v4, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1534
    iget-object v10, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v10, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v11, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v12, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_14

    .line 1537
    :cond_54
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v4, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v19, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v23}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1542
    :cond_55
    :goto_14
    if-ltz v2, :cond_57

    .line 1543
    if-eqz v0, :cond_56

    const-string v3, "/storage/emulated/0/Locker"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v4, v4, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1545
    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v3, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1548
    :cond_56
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    iget-object v3, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->showBottomView(Ljava/lang/String;)V

    .line 1550
    :cond_57
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$900(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 1551
    nop

    .line 1778
    :cond_58
    :goto_15
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, v2, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showErrorToast(ILcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1781
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
