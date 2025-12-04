.class public Lcom/jrdcom/filemanager/utils/RunningTaskInfo;
.super Ljava/lang/Object;
.source "RunningTaskInfo.java"


# instance fields
.field private dialogTitle:Ljava/lang/String;

.field private max:I

.field private prgressBarIndex:Ljava/lang/Long;

.field private progress:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->prgressBarIndex:Ljava/lang/Long;

    .line 23
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->prgressBarIndex:Ljava/lang/Long;

    .line 27
    iput p3, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->max:I

    .line 28
    return-void
.end method


# virtual methods
.method public getDialogTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->dialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->max:I

    return v0
.end method

.method public getPrgressBarIndex()J
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->prgressBarIndex:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->progress:I

    return v0
.end method

.method public setDialogTitle(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->dialogTitle:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->max:I

    .line 44
    return-void
.end method

.method public setPrgressBarIndex(J)V
    .locals 0

    .line 51
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->prgressBarIndex:Ljava/lang/Long;

    .line 52
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->progress:I

    .line 36
    return-void
.end method
