.class final Lcom/google/android/gms/internal/zzcec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zziab:Ljava/lang/String;

.field private synthetic zziud:Ljava/lang/String;

.field private synthetic zziup:Lcom/google/android/gms/internal/zzcdu;

.field private synthetic zziuu:J

.field private synthetic zziuv:Landroid/os/Bundle;

.field private synthetic zziuw:Z

.field private synthetic zziux:Z

.field private synthetic zziuy:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcdu;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcec;->zziup:Lcom/google/android/gms/internal/zzcdu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcec;->zziud:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcec;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcec;->zziuu:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcec;->zziuv:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzcec;->zziuw:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzcec;->zziux:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzcec;->zziuy:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/zzcec;->zziab:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcec;->zziup:Lcom/google/android/gms/internal/zzcdu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcec;->zziud:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcec;->val$name:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcec;->zziuu:J

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcec;->zziuv:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzcec;->zziuw:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzcec;->zziux:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/zzcec;->zziuy:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/zzcec;->zziab:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/zzcdu;->zza(Lcom/google/android/gms/internal/zzcdu;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
