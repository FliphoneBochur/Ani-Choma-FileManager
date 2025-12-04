.class Lcom/jrdcom/filemanager/utils/PermissionUtil$2;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/utils/PermissionUtil;->popPermissionDialog(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/PermissionUtil$2;->val$className:Ljava/lang/String;

    iput-object p2, p0, Lcom/jrdcom/filemanager/utils/PermissionUtil$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/PermissionUtil$2;->val$className:Ljava/lang/String;

    iget-object p2, p0, Lcom/jrdcom/filemanager/utils/PermissionUtil$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/PermissionUtil$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 212
    :cond_0
    return-void
.end method
