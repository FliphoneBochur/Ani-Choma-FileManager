.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$3;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;->checkCreatePermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iput-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$3;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 533
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->permissionMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$3;->val$className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->permissionMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$3;->val$className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 536
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$3;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->checkAndRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 539
    :cond_0
    return-void
.end method
