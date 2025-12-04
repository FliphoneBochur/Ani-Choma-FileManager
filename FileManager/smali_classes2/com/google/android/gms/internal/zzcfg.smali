.class final Lcom/google/android/gms/internal/zzcfg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziri:Lcom/google/android/gms/internal/zzccu;

.field final synthetic zzirl:Lcom/google/android/gms/internal/zzcbu;

.field final synthetic zziwj:Ljava/lang/Integer;

.field final synthetic zziwk:Landroid/app/job/JobParameters;

.field final synthetic zziwl:Lcom/google/android/gms/internal/zzcff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcff;Lcom/google/android/gms/internal/zzccu;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzcbu;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfg;->zziwl:Lcom/google/android/gms/internal/zzcff;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfg;->zziri:Lcom/google/android/gms/internal/zzccu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcfg;->zziwj:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcfg;->zzirl:Lcom/google/android/gms/internal/zzcbu;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcfg;->zziwk:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfg;->zziri:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzazj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfg;->zziri:Lcom/google/android/gms/internal/zzccu;

    new-instance v1, Lcom/google/android/gms/internal/zzcfh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcfh;-><init>(Lcom/google/android/gms/internal/zzcfg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccu;->zzi(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfg;->zziri:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzazf()V

    return-void
.end method
