.class final Lcom/google/android/gms/internal/zzccv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzitu:Lcom/google/android/gms/internal/zzccu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccv;->zzitu:Lcom/google/android/gms/internal/zzccu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccv;->zzitu:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->start()V

    return-void
.end method
