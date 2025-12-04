.class Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;
.super Ltct/util/privacymode/ITctPrivacyModeResult$Stub;
.source "TctPrivacyModeHelperImpl.java"


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

    .line 58
    iput-object p1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    invoke-direct {p0}, Ltct/util/privacymode/ITctPrivacyModeResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    invoke-static {v0}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->access$000(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    invoke-static {v0}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->access$000(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;->onResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    invoke-static {}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1$1;

    invoke-direct {v1, p0}, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1$1;-><init>(Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    nop

    .line 73
    return-void

    .line 66
    :catchall_0
    move-exception v0

    invoke-static {}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1$1;

    invoke-direct {v2, p0}, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1$1;-><init>(Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
