.class final Lcom/google/android/gms/internal/zzcfb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Landroid/content/ComponentName;

.field private synthetic zziwg:Lcom/google/android/gms/internal/zzcez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcez;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfb;->zziwg:Lcom/google/android/gms/internal/zzcez;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfb;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfb;->zziwg:Lcom/google/android/gms/internal/zzcez;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcez;->zzivw:Lcom/google/android/gms/internal/zzcem;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfb;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcem;->zza(Lcom/google/android/gms/internal/zzcem;Landroid/content/ComponentName;)V

    return-void
.end method
