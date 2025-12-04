.class Ltct/util/privacymode/TctPrivacyModeHelperImpl$1$1;
.super Ljava/lang/Object;
.source "TctPrivacyModeHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;->onResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;


# direct methods
.method constructor <init>(Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;

    .line 66
    iput-object p1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1$1;->this$1:Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 69
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1$1;->this$1:Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;

    iget-object v0, v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;->this$0:Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    invoke-static {v0}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->access$100(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)V

    .line 70
    return-void
.end method
