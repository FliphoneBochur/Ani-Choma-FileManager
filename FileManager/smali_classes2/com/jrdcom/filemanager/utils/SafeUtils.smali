.class public Lcom/jrdcom/filemanager/utils/SafeUtils;
.super Ljava/lang/Object;
.source "SafeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fieldDialog(Landroid/app/AlertDialog;)V
    .locals 4

    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mAlert"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mHandler"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    new-instance v1, Lcom/jrdcom/filemanager/utils/ButtonHandler;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/utils/ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :goto_0
    return-void
.end method

.method public static getMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 42
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 43
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 44
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 45
    array-length v1, p0

    .line 46
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [C

    .line 47
    nop

    .line 48
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    .line 49
    aget-byte v5, p0, v3

    .line 50
    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v0, v7

    aput-char v7, v2, v4

    .line 51
    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v2, v6

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const/4 p0, 0x0

    return-object p0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static isActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 74
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 76
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 78
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 79
    return v0

    .line 82
    :cond_0
    return v1
.end method

.method public static isQuitSafe(Landroid/content/Context;)Z
    .locals 3

    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/manager/SafeManager;->notQuitSafe:Z

    .line 87
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "com.jrdcom.filemanager.activity.FileSafeBrowserActivity"

    invoke-static {p0, v1}, Lcom/jrdcom/filemanager/utils/SafeUtils;->isActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 90
    const/4 p0, 0x1

    return p0

    .line 92
    :cond_0
    return v0
.end method
