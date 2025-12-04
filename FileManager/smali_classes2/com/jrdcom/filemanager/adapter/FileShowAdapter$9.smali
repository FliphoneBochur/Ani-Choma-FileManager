.class Lcom/jrdcom/filemanager/adapter/FileShowAdapter$9;
.super Landroid/os/Handler;
.source "FileShowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->loadCountText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)V
    .locals 0

    .line 1512
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$9;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1517
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1518
    iget p1, p1, Landroid/os/Message;->what:I

    .line 1519
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$9;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$800(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$9;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$800(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 1524
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1525
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1527
    :cond_1
    const/4 v0, 0x0

    .line 1529
    :goto_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$9;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFolderCount(I)V

    .line 1530
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$9;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    goto :goto_2

    .line 1520
    :cond_2
    :goto_1
    return-void

    .line 1531
    :catch_0
    move-exception p1

    .line 1532
    sget-object v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred when loadCountText():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :goto_2
    return-void
.end method
