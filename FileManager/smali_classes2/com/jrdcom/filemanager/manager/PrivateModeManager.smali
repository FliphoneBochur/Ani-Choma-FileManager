.class public Lcom/jrdcom/filemanager/manager/PrivateModeManager;
.super Ljava/lang/Object;
.source "PrivateModeManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTctPrivacyModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static isPrivateFile(Ltct/util/privacymode/TctPrivacyModeHelper;Ljava/lang/String;)Z
    .locals 1

    .line 68
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    const-string v0, "com.jrdcom.filemanager.bb"

    invoke-virtual {p0, v0, p1}, Ltct/util/privacymode/TctPrivacyModeHelper;->isPrivateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 71
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addPrivateModeFile(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->mTctPrivacyModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    const/4 v1, 0x1

    const-string v2, "com.jrdcom.filemanager.bb"

    invoke-virtual {v0, v2, p1, v1}, Ltct/util/privacymode/TctPrivacyModeHelper;->setFilePrivateFlag(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 47
    :cond_0
    return-void
.end method

.method public addPrivateModeFile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 35
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 36
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->mTctPrivacyModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    const-string v1, "com.jrdcom.filemanager.bb"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Ltct/util/privacymode/TctPrivacyModeHelper;->setFilePrivateFlag(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 41
    :cond_1
    return-void
.end method

.method public getInstance()Ltct/util/privacymode/TctPrivacyModeHelper;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->mTctPrivacyModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/util/privacymode/TctPrivacyModeHelper;->createHelper(Landroid/content/Context;)Ltct/util/privacymode/TctPrivacyModeHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->mTctPrivacyModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->mTctPrivacyModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    return-object v0
.end method

.method public removePrivateModeFile(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->mTctPrivacyModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    const/4 v1, 0x0

    const-string v2, "com.jrdcom.filemanager.bb"

    invoke-virtual {v0, v2, p1, v1}, Ltct/util/privacymode/TctPrivacyModeHelper;->setFilePrivateFlag(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 65
    :cond_0
    return-void
.end method

.method public removePrivateModeFile(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 52
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 53
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->mTctPrivacyModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    const-string v2, "com.jrdcom.filemanager.bb"

    invoke-virtual {p1, v2, v0, v1}, Ltct/util/privacymode/TctPrivacyModeHelper;->setFilePrivateFlag(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 58
    :cond_1
    return-void
.end method
