.class Ltct/util/privacymode/TctPrivacyModeHelperImpl$2;
.super Ljava/lang/Object;
.source "TctPrivacyModeHelperImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/util/privacymode/TctPrivacyModeHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;


# direct methods
.method constructor <init>(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)V
    .locals 0
    .param p1, "this$0"    # Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    .line 76
    iput-object p1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$2;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 80
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$2;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    invoke-static {p2}, Ltct/util/privacymode/ITctPrivacyModeService$Stub;->asInterface(Landroid/os/IBinder;)Ltct/util/privacymode/ITctPrivacyModeService;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->access$302(Ltct/util/privacymode/TctPrivacyModeHelperImpl;Ltct/util/privacymode/ITctPrivacyModeService;)Ltct/util/privacymode/ITctPrivacyModeService;

    .line 83
    :try_start_0
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$2;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    invoke-static {v0}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->access$300(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)Ltct/util/privacymode/ITctPrivacyModeService;

    move-result-object v0

    iget-object v1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$2;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    iget-boolean v1, v1, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mIsPrivacyMode:Z

    iget-object v2, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$2;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    invoke-static {v2}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->access$400(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)Ltct/util/privacymode/ITctPrivacyModeResult$Stub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ltct/util/privacymode/ITctPrivacyModeService;->enterPrivacyMode(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$2;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    invoke-static {v1}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->access$000(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$2;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    invoke-static {v1}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->access$000(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;->onResult(I)V

    .line 87
    const-string v1, "==Test=="

    const-string v2, "onResult failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 94
    return-void
.end method
