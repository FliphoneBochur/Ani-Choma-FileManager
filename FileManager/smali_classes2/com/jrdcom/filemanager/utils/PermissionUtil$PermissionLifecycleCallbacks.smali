.class Lcom/jrdcom/filemanager/utils/PermissionUtil$PermissionLifecycleCallbacks;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/utils/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionLifecycleCallbacks"
.end annotation


# static fields
.field public static mActivity:Landroid/app/Activity;


# instance fields
.field permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/PermissionUtil$PermissionLifecycleCallbacks;->permissions:[Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 99
    sput-object p1, Lcom/jrdcom/filemanager/utils/PermissionUtil$PermissionLifecycleCallbacks;->mActivity:Landroid/app/Activity;

    .line 100
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 131
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isSecondRequestPermission(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    sput-boolean v1, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isShowPermissionDialog:Z

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 139
    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 117
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 112
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 127
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 105
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 122
    return-void
.end method
