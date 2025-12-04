.class public final Lcom/google/android/gms/internal/zzcgc;
.super Lcom/google/android/gms/internal/zzegt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzegt<",
        "Lcom/google/android/gms/internal/zzcgc;",
        ">;"
    }
.end annotation


# instance fields
.field public zziln:Ljava/lang/String;

.field public zziyh:Ljava/lang/Long;

.field private zziyi:Ljava/lang/Integer;

.field public zziyj:[Lcom/google/android/gms/internal/zzcgd;

.field public zziyk:[Lcom/google/android/gms/internal/zzcgb;

.field public zziyl:[Lcom/google/android/gms/internal/zzcfv;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegt;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziln:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyi:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/zzcgd;->zzbad()[Lcom/google/android/gms/internal/zzcgd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    invoke-static {}, Lcom/google/android/gms/internal/zzcgb;->zzbac()[Lcom/google/android/gms/internal/zzcgb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    invoke-static {}, Lcom/google/android/gms/internal/zzcfv;->zzazy()[Lcom/google/android/gms/internal/zzcfv;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zzndn:Lcom/google/android/gms/internal/zzegv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcgc;->zzndw:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzcgc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzcgc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziln:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgc;->zziln:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgc;->zziln:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyi:Ljava/lang/Integer;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgc;->zziyi:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgc;->zziyi:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegx;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegx;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegx;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zzndn:Lcom/google/android/gms/internal/zzegv;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegv;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zzndn:Lcom/google/android/gms/internal/zzegv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgc;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegv;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgc;->zzndn:Lcom/google/android/gms/internal/zzegv;

    if-eqz v1, :cond_e

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgc;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegv;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_1

    :cond_d
    return v2

    :cond_e
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziln:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyi:Ljava/lang/Integer;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegx;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegx;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegx;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zzndn:Lcom/google/android/gms/internal/zzegv;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegv;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegv;->hashCode()I

    move-result v2

    :cond_4
    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzegq;)Lcom/google/android/gms/internal/zzegz;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbv()I

    move-result v0

    if-eqz v0, :cond_10

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    const/16 v1, 0x12

    if-eq v0, v1, :cond_e

    const/16 v1, 0x18

    if-eq v0, v1, :cond_d

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzegt;->zza(Lcom/google/android/gms/internal/zzegq;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzehc;->zzb(Lcom/google/android/gms/internal/zzegq;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/google/android/gms/internal/zzcfv;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/zzcfv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcfv;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzegq;->zza(Lcom/google/android/gms/internal/zzegz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbv()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzcfv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcfv;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegq;->zza(Lcom/google/android/gms/internal/zzegz;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzehc;->zzb(Lcom/google/android/gms/internal/zzegq;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/google/android/gms/internal/zzcgb;

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/zzcgb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcgb;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzegq;->zza(Lcom/google/android/gms/internal/zzegz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbv()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/zzcgb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcgb;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegq;->zza(Lcom/google/android/gms/internal/zzegz;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    goto/16 :goto_0

    :cond_9
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzehc;->zzb(Lcom/google/android/gms/internal/zzegq;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_5

    :cond_a
    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/google/android/gms/internal/zzcgd;

    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/zzcgd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcgd;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzegq;->zza(Lcom/google/android/gms/internal/zzegz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbv()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/zzcgd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcgd;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegq;->zza(Lcom/google/android/gms/internal/zzegz;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzccd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyi:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziln:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_10
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzegr;->zzb(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziln:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyi:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzegr;->zzu(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzegr;->zza(ILcom/google/android/gms/internal/zzegz;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzegr;->zza(ILcom/google/android/gms/internal/zzegz;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    array-length v2, v0

    if-ge v1, v2, :cond_8

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzegr;->zza(ILcom/google/android/gms/internal/zzegz;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzegt;->zza(Lcom/google/android/gms/internal/zzegr;)V

    return-void
.end method

.method protected final zzn()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzegt;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzegr;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziln:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzegr;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyi:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzegr;->zzv(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzegr;->zzb(ILcom/google/android/gms/internal/zzegz;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzegr;->zzb(ILcom/google/android/gms/internal/zzegz;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    array-length v3, v1

    if-ge v2, v3, :cond_8

    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzegr;->zzb(ILcom/google/android/gms/internal/zzegz;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return v0
.end method
