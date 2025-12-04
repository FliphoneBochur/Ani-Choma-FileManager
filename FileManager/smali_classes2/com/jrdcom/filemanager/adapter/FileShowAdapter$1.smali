.class Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;
.super Ljava/lang/Object;
.source "FileShowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->onBindViewHolder(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

.field final synthetic val$filePathTemp:Ljava/lang/String;

.field final synthetic val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Ljava/lang/String;Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;->val$filePathTemp:Ljava/lang/String;

    iput-object p3, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;->val$filePathTemp:Ljava/lang/String;

    const-string v1, "/storage/emulated/0/Locker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    sget-object v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multi window mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$000(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$000(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$000(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00c0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 336
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.privatefolder"

    const-string v3, "com.android.privatefolder.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 342
    goto :goto_0

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->getLayoutPosition()I

    move-result p1

    .line 345
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$100(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 348
    :goto_0
    return-void
.end method
