.class public final Lcom/google/android/gms/internal/zzcgj;
.super Lcom/google/android/gms/internal/zzegt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzegt<",
        "Lcom/google/android/gms/internal/zzcgj;",
        ">;"
    }
.end annotation


# instance fields
.field public zzjaa:[J

.field public zzjab:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegt;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzehc;->zznec:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    sget-object v0, Lcom/google/android/gms/internal/zzehc;->zznec:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgj;->zzndn:Lcom/google/android/gms/internal/zzegv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcgj;->zzndw:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzcgj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzcgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegx;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegx;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzndn:Lcom/google/android/gms/internal/zzegv;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegv;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgj;->zzndn:Lcom/google/android/gms/internal/zzegv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgj;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegv;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgj;->zzndn:Lcom/google/android/gms/internal/zzegv;

    if-eqz v1, :cond_7

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgj;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegv;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegx;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegx;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzndn:Lcom/google/android/gms/internal/zzegv;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegv;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegv;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzegq;)Lcom/google/android/gms/internal/zzegz;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbv()I

    move-result v0

    if-eqz v0, :cond_13

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzegt;->zza(Lcom/google/android/gms/internal/zzegq;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzccd()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegq;->zzgm(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->getPosition()I

    move-result v1

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzceb()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdy()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzegq;->zzha(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    new-array v4, v3, [J

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    if-ge v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdy()J

    move-result-wide v5

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iput-object v4, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    goto/16 :goto_9

    :cond_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzehc;->zzb(Lcom/google/android/gms/internal/zzegq;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    array-length v1, v1

    :goto_4
    add-int/2addr v0, v1

    new-array v3, v0, [J

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_5
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdy()J

    move-result-wide v4

    if-ge v1, v2, :cond_9

    aput-wide v4, v3, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbv()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    aput-wide v4, v3, v1

    iput-object v3, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzccd()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegq;->zzgm(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->getPosition()I

    move-result v1

    move v3, v2

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzceb()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdy()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzegq;->zzha(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_7

    :cond_c
    array-length v1, v1

    :goto_7
    add-int/2addr v3, v1

    new-array v4, v3, [J

    if-eqz v1, :cond_d

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_8
    if-ge v1, v3, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdy()J

    move-result-wide v5

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    iput-object v4, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    :goto_9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegq;->zzgn(I)V

    goto/16 :goto_0

    :cond_f
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzehc;->zzb(Lcom/google/android/gms/internal/zzegq;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_a

    :cond_10
    array-length v1, v1

    :goto_a
    add-int/2addr v0, v1

    new-array v3, v0, [J

    if-eqz v1, :cond_11

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_b
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdy()J

    move-result-wide v4

    if-ge v1, v2, :cond_12

    aput-wide v4, v3, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbv()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    aput-wide v4, v3, v1

    iput-object v3, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    goto/16 :goto_0

    :cond_13
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegr;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-wide v2, v2, v0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/android/gms/internal/zzegr;->zza(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    array-length v2, v0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    aget-wide v3, v0, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzegr;->zza(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzegt;->zza(Lcom/google/android/gms/internal/zzegr;)V

    return-void
.end method

.method protected final zzn()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzegt;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v2

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzegr;->zzcp(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzegr;->zzcp(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v1

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
