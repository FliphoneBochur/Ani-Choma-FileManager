.class final Lcom/google/android/gms/internal/zzcft;
.super Ljava/lang/Object;


# instance fields
.field final mAppId:Ljava/lang/String;

.field final mName:Ljava/lang/String;

.field final mOrigin:Ljava/lang/String;

.field final mValue:Ljava/lang/Object;

.field final zziwy:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcft;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcft;->mOrigin:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcft;->zziwy:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    return-void
.end method
