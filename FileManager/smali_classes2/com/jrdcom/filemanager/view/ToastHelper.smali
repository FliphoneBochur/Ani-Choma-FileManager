.class public Lcom/jrdcom/filemanager/view/ToastHelper;
.super Ljava/lang/Object;
.source "ToastHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/ToastHelper;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public showToast(I)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/ToastHelper;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/ToastHelper;->mToast:Landroid/widget/Toast;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/ToastHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/view/ToastHelper;->mToast:Landroid/widget/Toast;

    .line 65
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 67
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/ToastHelper;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/ToastHelper;->mToast:Landroid/widget/Toast;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/ToastHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/view/ToastHelper;->mToast:Landroid/widget/Toast;

    .line 43
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 45
    return-void
.end method
