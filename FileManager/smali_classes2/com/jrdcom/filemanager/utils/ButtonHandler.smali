.class public Lcom/jrdcom/filemanager/utils/ButtonHandler;
.super Landroid/os/Handler;
.source "ButtonHandler.java"


# instance fields
.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 19
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/jrdcom/filemanager/utils/ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface;

    iget p1, p1, Landroid/os/Message;->what:I

    .line 28
    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 32
    :goto_0
    return-void
.end method
