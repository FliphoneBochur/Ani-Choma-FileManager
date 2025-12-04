.class final Lcom/google/firebase/iid/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/zzp;


# instance fields
.field private intent:Landroid/content/Intent;

.field private final zzmjl:Landroid/os/ConditionVariable;

.field private zzmjm:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzo;->zzmjl:Landroid/os/ConditionVariable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/zzm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/iid/zzo;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzo;->zzmjm:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/firebase/iid/zzo;->zzmjl:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public final zzbyo()Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/zzo;->zzmjl:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/zzo;->zzmjm:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/zzo;->intent:Landroid/content/Intent;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/google/firebase/iid/zzo;->zzmjm:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "InstanceID/Rpc"

    const-string v1, "No response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzq(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzo;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/firebase/iid/zzo;->zzmjl:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
