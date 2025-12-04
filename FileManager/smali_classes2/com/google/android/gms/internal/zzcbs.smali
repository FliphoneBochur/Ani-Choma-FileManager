.class public final Lcom/google/android/gms/internal/zzcbs;
.super Lcom/google/android/gms/internal/zzcds;


# static fields
.field private static zzipf:[Ljava/lang/String;

.field private static zzipg:[Ljava/lang/String;

.field private static zziph:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zzikc:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzcbs;->zzipf:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zzike:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzcbs;->zzipg:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zzikj:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzcbs;->zziph:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method

.method private static zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzbh(Z)V

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbp;->zzbh(Z)V

    :goto_2
    array-length v0, p1

    if-ge v3, v0, :cond_4

    aget-object v0, p1, v3

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzcfu;->zzau(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-enter p3

    :try_start_0
    aget-object p0, p3, v3

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, v3

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v3

    :cond_2
    aget-object p0, p3, v3

    monitor-exit p3

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzcfx;)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/google/android/gms/internal/zzcfx;->zzixq:Ljava/lang/Boolean;

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p3, Lcom/google/android/gms/internal/zzcfx;->zzixr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcbs;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_name"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p3, Lcom/google/android/gms/internal/zzcfx;->zzixo:Lcom/google/android/gms/internal/zzcga;

    const-string v2, "}\n"

    if-eqz v1, :cond_4

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "string_filter"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "UNKNOWN_MATCH_TYPE"

    goto :goto_0

    :pswitch_0
    const-string v3, "IN_LIST"

    goto :goto_0

    :pswitch_1
    const-string v3, "EXACT"

    goto :goto_0

    :pswitch_2
    const-string v3, "PARTIAL"

    goto :goto_0

    :pswitch_3
    const-string v3, "ENDS_WITH"

    goto :goto_0

    :pswitch_4
    const-string v3, "BEGINS_WITH"

    goto :goto_0

    :pswitch_5
    const-string v3, "REGEXP"

    :goto_0
    const-string v4, "match_type"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    const-string v4, "expression"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "expression_list {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    add-int/lit8 v6, v0, 0x2

    invoke-static {p1, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object p3, p3, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    const-string v1, "number_filter"

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcfy;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcfy;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcom/google/android/gms/internal/zzcfy;->zzixs:Ljava/lang/Integer;

    if-eqz p3, :cond_5

    iget-object p3, p4, Lcom/google/android/gms/internal/zzcfy;->zzixs:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const-string p3, "UNKNOWN_COMPARISON_TYPE"

    goto :goto_0

    :cond_1
    const-string p3, "BETWEEN"

    goto :goto_0

    :cond_2
    const-string p3, "EQUAL"

    goto :goto_0

    :cond_3
    const-string p3, "GREATER_THAN"

    goto :goto_0

    :cond_4
    const-string p3, "LESS_THAN"

    :goto_0
    const-string v0, "comparison_type"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object p3, p4, Lcom/google/android/gms/internal/zzcfy;->zzixt:Ljava/lang/Boolean;

    const-string v0, "match_as_float"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p4, Lcom/google/android/gms/internal/zzcfy;->zzixu:Ljava/lang/String;

    const-string v0, "comparison_value"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p4, Lcom/google/android/gms/internal/zzcfy;->zzixv:Ljava/lang/String;

    const-string v0, "min_comparison_value"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p4, Lcom/google/android/gms/internal/zzcfy;->zzixw:Ljava/lang/String;

    const-string p4, "max_comparison_value"

    invoke-static {p1, p2, p4, p3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcgj;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    const-string v0, ", "

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    add-int/lit8 p2, p1, 0x1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    array-length v3, p2

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-wide v6, p2, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p2, p3, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    if-eqz p2, :cond_6

    add-int/lit8 p2, p1, 0x1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    array-length p3, p2

    move v3, v2

    :goto_1
    if-ge v2, p3, :cond_5

    aget-wide v4, p2, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcge;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "audience_membership {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcge;->zzixe:Ljava/lang/Integer;

    const-string v4, "audience_id"

    invoke-static {p1, v2, v4, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcge;->zziyq:Ljava/lang/Boolean;

    const-string v4, "new_audience"

    invoke-static {p1, v2, v4, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcge;->zziyo:Lcom/google/android/gms/internal/zzcgj;

    const-string v4, "current_data"

    invoke-static {p1, v2, v4, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcgj;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcge;->zziyp:Lcom/google/android/gms/internal/zzcgj;

    const-string v3, "previous_data"

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcgj;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "}\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcgf;)V
    .locals 12

    if-nez p3, :cond_0

    return-void

    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_4

    aget-object v2, p3, v1

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string v4, "event {\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-static {p1, v3, v5, v4}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcgf;->zziyt:Ljava/lang/Long;

    const-string v6, "timestamp_millis"

    invoke-static {p1, v3, v6, v4}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcgf;->zziyu:Ljava/lang/Long;

    const-string v6, "previous_timestamp_millis"

    invoke-static {p1, v3, v6, v4}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcgf;->count:Ljava/lang/Integer;

    const-string v6, "count"

    invoke-static {p1, v3, v6, v4}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    const-string v4, "}\n"

    if-eqz v2, :cond_2

    array-length v6, v2

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v2, v7

    if-eqz v8, :cond_1

    const/4 v9, 0x3

    invoke-static {p1, v9}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string v10, "param {\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/zzcbs;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v9, v5, v10}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v8, Lcom/google/android/gms/internal/zzcgg;->zzfwi:Ljava/lang/String;

    const-string v11, "string_value"

    invoke-static {p1, v9, v11, v10}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v8, Lcom/google/android/gms/internal/zzcgg;->zziyw:Ljava/lang/Long;

    const-string v11, "int_value"

    invoke-static {p1, v9, v11, v10}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgg;->zziwx:Ljava/lang/Double;

    const-string v10, "double_value"

    invoke-static {p1, v9, v10, v8}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v9}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcgk;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "user_property {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgk;->zzjad:Ljava/lang/Long;

    const-string v4, "set_timestamp_millis"

    invoke-static {p1, v2, v4, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-static {p1, v2, v4, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgk;->zzfwi:Ljava/lang/String;

    const-string v4, "string_value"

    invoke-static {p1, v2, v4, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgk;->zziyw:Ljava/lang/Long;

    const-string v4, "int_value"

    invoke-static {p1, v2, v4, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgk;->zziwx:Ljava/lang/Double;

    const-string v3, "double_value"

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "}\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final zzayb()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbs;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbu;->zzad(I)Z

    move-result v0

    return v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzcbf;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcbs;->zzayb()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbf;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbf;->zzaxy()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcbs;->zzw(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcbd;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcbs;->zzayb()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbd;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{appId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcbd;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcbd;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcbd;->zzinc:Lcom/google/android/gms/internal/zzcbf;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcbs;->zzb(Lcom/google/android/gms/internal/zzcbf;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcfw;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfw;->zzixi:Ljava/lang/Integer;

    const/4 v2, 0x0

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfw;->zzixj:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfw;->zzixm:Lcom/google/android/gms/internal/zzcfy;

    const/4 v3, 0x1

    const-string v4, "event_count_filter"

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcfy;)V

    const-string v1, "  filters {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcfw;->zzixk:[Lcom/google/android/gms/internal/zzcfx;

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    const/4 v5, 0x2

    invoke-direct {p0, v0, v5, v4}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzcfx;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcfz;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfz;->zzixi:Ljava/lang/Integer;

    const/4 v2, 0x0

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfz;->zzixy:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcfz;->zzixz:Lcom/google/android/gms/internal/zzcfx;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzcfx;)V

    const-string p1, "}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcgh;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    const-string v2, "}\n"

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    const-string v6, "bundle {\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zziyz:Ljava/lang/Integer;

    const-string v7, "protocol_version"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizh:Ljava/lang/String;

    const-string v7, "platform"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizl:Ljava/lang/Long;

    const-string v7, "gmp_version"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizm:Ljava/lang/Long;

    const-string v7, "uploading_gmp_version"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizx:Ljava/lang/Long;

    const-string v7, "config_version"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zziln:Ljava/lang/String;

    const-string v7, "gmp_app_id"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    const-string v7, "app_id"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzhtl:Ljava/lang/String;

    const-string v7, "app_version"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizu:Ljava/lang/Integer;

    const-string v7, "app_version_major"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzilv:Ljava/lang/String;

    const-string v7, "firebase_instance_id"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizq:Ljava/lang/Long;

    const-string v7, "dev_cert_hash"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzilo:Ljava/lang/String;

    const-string v7, "app_store"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizc:Ljava/lang/Long;

    const-string v7, "upload_timestamp_millis"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizd:Ljava/lang/Long;

    const-string v7, "start_timestamp_millis"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzize:Ljava/lang/Long;

    const-string v7, "end_timestamp_millis"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizf:Ljava/lang/Long;

    const-string v7, "previous_bundle_start_timestamp_millis"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizg:Ljava/lang/Long;

    const-string v7, "previous_bundle_end_timestamp_millis"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizp:Ljava/lang/String;

    const-string v7, "app_instance_id"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizn:Ljava/lang/String;

    const-string v7, "resettable_device_id"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizo:Ljava/lang/Boolean;

    const-string v7, "limited_ad_tracking"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzcy:Ljava/lang/String;

    const-string v7, "os_version"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizi:Ljava/lang/String;

    const-string v7, "device_model"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizj:Ljava/lang/String;

    const-string v7, "user_default_language"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizk:Ljava/lang/Integer;

    const-string v7, "time_zone_offset_minutes"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizr:Ljava/lang/Integer;

    const-string v7, "bundle_sequential_index"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizs:Ljava/lang/Boolean;

    const-string v7, "service_upload"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzilr:Ljava/lang/String;

    const-string v7, "health_monitor"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizy:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizy:Ljava/lang/Long;

    const-string v7, "android_id"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizb:[Lcom/google/android/gms/internal/zzcgk;

    invoke-direct {p0, v0, v5, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcgk;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgi;->zzizt:[Lcom/google/android/gms/internal/zzcge;

    invoke-direct {p0, v0, v5, v6}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcge;)V

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    invoke-direct {p0, v0, v5, v4}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcgf;)V

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzatt()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatt()V

    return-void
.end method

.method public final bridge synthetic zzatu()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatu()V

    return-void
.end method

.method public final bridge synthetic zzatv()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatv()V

    return-void
.end method

.method public final bridge synthetic zzatw()Lcom/google/android/gms/internal/zzcal;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatw()Lcom/google/android/gms/internal/zzcal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzatx()Lcom/google/android/gms/internal/zzcas;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatx()Lcom/google/android/gms/internal/zzcas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaty()Lcom/google/android/gms/internal/zzcdu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaty()Lcom/google/android/gms/internal/zzcdu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzatz()Lcom/google/android/gms/internal/zzcbp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaua()Lcom/google/android/gms/internal/zzcbc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaub()Lcom/google/android/gms/internal/zzcem;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauc()Lcom/google/android/gms/internal/zzcei;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaud()Lcom/google/android/gms/internal/zzcbq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaud()Lcom/google/android/gms/internal/zzcbq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaue()Lcom/google/android/gms/internal/zzcaw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauf()Lcom/google/android/gms/internal/zzcbs;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaug()Lcom/google/android/gms/internal/zzcfu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauh()Lcom/google/android/gms/internal/zzcco;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaui()Lcom/google/android/gms/internal/zzcfj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaui()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauj()Lcom/google/android/gms/internal/zzccp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauk()Lcom/google/android/gms/internal/zzcbu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaul()Lcom/google/android/gms/internal/zzccf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaum()Lcom/google/android/gms/internal/zzcav;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaum()Lcom/google/android/gms/internal/zzcav;

    move-result-object v0

    return-object v0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzcbi;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcbs;->zzayb()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbi;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcbi;->zzilz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcbs;->zzb(Lcom/google/android/gms/internal/zzcbf;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzjc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcbs;->zzayb()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zzikd:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zzikc:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzcbs;->zzipf:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzjd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcbs;->zzayb()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zzikf:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zzike:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzcbs;->zzipg:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzje(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcbs;->zzayb()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const-string v0, "_exp_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "experiment_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zzikk:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zzikj:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzcbs;->zziph:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzcbs;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzug()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzug()V

    return-void
.end method

.method protected final zzuh()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzvu()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected final zzw(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcbs;->zzayb()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ", "

    goto :goto_1

    :cond_2
    const-string v3, "Bundle[{"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzcbs;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p1, "}]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
