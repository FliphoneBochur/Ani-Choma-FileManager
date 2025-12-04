.class public Lcom/jrdcom/filemanager/utils/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/utils/PermissionUtil$PermissionLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final CHECK_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field private static final CHECK_PERMISSION2:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final CHECK_REQUEST_PERMISSION_RESULT:I = 0x3

.field public static final JUMPTOSETTINGFORSTORAGE:I = 0x11

.field static dialog:Landroid/app/Dialog;

.field public static isSecondRequest:Z

.field public static isShowPermissionDialog:Z

.field protected static permissionPop:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isSecondRequest:Z

    .line 44
    sput-boolean v0, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isShowPermissionDialog:Z

    .line 172
    const/4 v0, 0x0

    sput-object v0, Lcom/jrdcom/filemanager/utils/PermissionUtil;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 5

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 70
    invoke-static {p0, v3}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_2

    .line 76
    sput-boolean v1, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isShowPermissionDialog:Z

    .line 77
    nop

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 77
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 80
    :cond_2
    sput-boolean v1, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isSecondRequest:Z

    .line 81
    return-void
.end method

.method public static checkAppPermission(Landroid/content/Context;)Z
    .locals 1

    .line 259
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static closePermissionDialogShowning()V
    .locals 1

    .line 238
    sget-object v0, Lcom/jrdcom/filemanager/utils/PermissionUtil;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/jrdcom/filemanager/utils/PermissionUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 241
    :cond_0
    return-void
.end method

.method public static getActivityLifecycleCallbacks([Ljava/lang/String;)Lcom/jrdcom/filemanager/utils/PermissionUtil$PermissionLifecycleCallbacks;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    new-instance v0, Lcom/jrdcom/filemanager/utils/PermissionUtil$PermissionLifecycleCallbacks;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil$PermissionLifecycleCallbacks;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static isAllowPermission(Landroid/app/Activity;)Z
    .locals 1

    .line 150
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDenyPermission(Landroid/app/Activity;)Z
    .locals 1

    .line 154
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 155
    :goto_0
    return p0
.end method

.method public static isPermissionDialogShowning()Z
    .locals 1

    .line 230
    sget-object v0, Lcom/jrdcom/filemanager/utils/PermissionUtil;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSecondRequestPermission(Landroid/content/Context;)Z
    .locals 2

    .line 159
    const-string v0, "firstTimeEnterApp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 161
    const-string v0, "secondrequestpermission"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isUerGrant(Landroid/content/Context;)Z
    .locals 9

    .line 244
    nop

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 247
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 248
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getPermissionFlags"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    const-class v8, Landroid/os/UserHandle;

    aput-object v8, v7, v3

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 249
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v6, v5, v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v2

    new-instance p0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/os/UserHandle;-><init>(I)V

    aput-object p0, v5, v3

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_1

    .line 252
    :catch_0
    move-exception p0

    .line 253
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 250
    :catch_1
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 254
    nop

    .line 255
    :goto_0
    move p0, v1

    :goto_1
    and-int/2addr p0, v3

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static popPermissionDialog(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3

    .line 175
    nop

    .line 176
    nop

    .line 178
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isDenyPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    const v1, 0x7f0c00bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 181
    const v1, 0x7f0c00ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 182
    const v1, 0x7f0c00bc

    new-instance v2, Lcom/jrdcom/filemanager/utils/PermissionUtil$1;

    invoke-direct {v2, p1}, Lcom/jrdcom/filemanager/utils/PermissionUtil$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    const v1, 0x7f0c00b8

    new-instance v2, Lcom/jrdcom/filemanager/utils/PermissionUtil$2;

    invoke-direct {v2, p0, p1}, Lcom/jrdcom/filemanager/utils/PermissionUtil$2;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    sput-object p1, Lcom/jrdcom/filemanager/utils/PermissionUtil;->dialog:Landroid/app/Dialog;

    .line 217
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 218
    sget-object p1, Lcom/jrdcom/filemanager/utils/PermissionUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 219
    sget-object p0, Lcom/jrdcom/filemanager/utils/PermissionUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 221
    goto :goto_0

    .line 222
    :cond_0
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 223
    const/4 v0, 0x3

    invoke-static {p1, p0, v0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->checkAndRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 227
    :goto_0
    return-void
.end method

.method public static setSecondRequestPermission(Landroid/content/Context;)V
    .locals 2

    .line 165
    const-string v0, "firstTimeEnterApp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 167
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 168
    const-string v0, "secondrequestpermission"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method
