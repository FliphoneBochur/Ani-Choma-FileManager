.class public final Lcom/google/android/gms/internal/zzcbq;
.super Lcom/google/android/gms/internal/zzcds;


# instance fields
.field private final zzipc:Lcom/google/android/gms/internal/zzcbr;

.field private zzipd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcbr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawi()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/zzcbr;-><init>(Lcom/google/android/gms/internal/zzcbq;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcbq;->zzipc:Lcom/google/android/gms/internal/zzcbr;

    return-void
.end method

.method private final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcbq;->zzipd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbq;->zzipc:Lcom/google/android/gms/internal/zzcbr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcbq;->zzipd:Z

    return-object v1

    :cond_1
    return-object v0
.end method

.method private final zzb(I[B)Z
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Error writing entry to local database"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/zzcbq;->zzipd:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "type"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v5, p2

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaws()I

    const/4 v5, 0x5

    move v6, v3

    move v7, v5

    :goto_0
    if-ge v6, v5, :cond_e

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcbq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v10, :cond_2

    :try_start_1
    iput-boolean v9, v1, Lcom/google/android/gms/internal/zzcbq;->zzipd:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    return v3

    :catch_0
    move-exception v0

    move-object v13, v8

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_2
    :try_start_2
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v11, 0x0

    const-string v0, "select count(1) from messages"

    invoke-virtual {v10, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v13, :cond_3

    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v8, v13

    goto/16 :goto_6

    :cond_3
    :goto_1
    const-wide/32 v14, 0x186a0

    cmp-long v0, v11, v14

    const-string v5, "messages"

    if-ltz v0, :cond_4

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v8, "Data loss, local db full"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    sub-long/2addr v14, v11

    const-wide/16 v11, 0x1

    add-long/2addr v14, v11

    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v8, v9, [Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v3

    invoke-virtual {v10, v5, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v11, v0

    cmp-long v0, v11, v14

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v8, "Different delete count than expected in local db. expected, received, difference"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sub-long/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v8, v3, v9, v11}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v10, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    const/4 v1, 0x1

    return v1

    :catchall_1
    move-exception v0

    move-object v3, v8

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v3, v8

    move-object v13, v3

    :goto_2
    move-object v8, v10

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v3, v8

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v8

    move-object v10, v8

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v3, v8

    move-object v13, v8

    :goto_3
    :try_start_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_7

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v3, :cond_7

    int-to-long v9, v7

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v7, v7, 0x14

    goto :goto_4

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/internal/zzcbq;->zzipd:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_4
    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v10, v8

    :goto_5
    move-object v8, v13

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v3, v8

    move-object v10, v8

    :goto_6
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/internal/zzcbq;->zzipd:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :goto_8
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_d
    throw v0

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Failed to write entry to local database"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcbi;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcbi;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/zzcbq;->zzb(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcfr;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcfr;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzcbq;->zzb(I[B)Z

    move-result p1

    return p1
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

.method public final zzc(Lcom/google/android/gms/internal/zzcat;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcfu;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzcbq;->zzb(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzdv(I)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbcc;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Error reading entries from local database"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/zzcbq;->zzipd:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    const/4 v5, 0x5

    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_13

    const/4 v9, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcbq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v15, :cond_3

    :try_start_1
    iput-boolean v9, v1, Lcom/google/android/gms/internal/zzcbq;->zzipd:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return-object v3

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_3
    :try_start_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v11, "messages"

    const-string v0, "rowid"

    const-string v10, "type"

    const-string v12, "entry"

    filled-new-array {v0, v10, v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const-string v17, "rowid asc"

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v10, v15

    move-object v5, v15

    move-object v15, v0

    :try_start_3
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const-wide/16 v11, -0x1

    :cond_4
    :goto_1
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v13, 0x2

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    if-nez v0, :cond_5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    array-length v0, v14

    invoke-virtual {v13, v14, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v13, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzcbi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcbi;
    :try_end_5
    .catch Lcom/google/android/gms/internal/zzbce; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_4

    :goto_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v14, "Failed to load event from local database"

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :goto_3
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_5
    const-string v15, "Failed to load user property from local database"

    if-ne v0, v9, :cond_6

    :try_start_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    array-length v0, v14

    invoke-virtual {v13, v14, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v13, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzcfr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcfr;
    :try_end_a
    .catch Lcom/google/android/gms/internal/zzbce; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_4

    goto :goto_2

    :goto_5
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_6
    if-ne v0, v13, :cond_7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_d} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    array-length v0, v14

    invoke-virtual {v13, v14, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v13, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzcat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcat;
    :try_end_e
    .catch Lcom/google/android/gms/internal/zzbce; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f .. :try_end_f} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    move-object v0, v3

    :goto_6
    if-eqz v0, :cond_4

    goto :goto_2

    :goto_7
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v13, "Unknown record type in local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "messages"

    const-string v13, "rowid <= ?"

    new-array v14, v9, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v6

    invoke-virtual {v5, v0, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v11, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    return-object v4

    :catchall_3
    move-exception v0

    move-object v3, v10

    goto/16 :goto_12

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    goto/16 :goto_12

    :catch_7
    move-exception v0

    move-object v10, v3

    :goto_8
    move-object v15, v5

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v10, v3

    :goto_9
    move-object v15, v5

    goto :goto_f

    :catchall_5
    move-exception v0

    goto/16 :goto_11

    :catch_9
    move-exception v0

    move-object v5, v15

    :goto_a
    move-object v10, v3

    goto :goto_c

    :catch_a
    move-exception v0

    move-object v5, v15

    :goto_b
    move-object v10, v3

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v5, v3

    goto :goto_12

    :catch_b
    move-exception v0

    move-object v10, v3

    move-object v15, v10

    :goto_c
    :try_start_12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v5, v11, :cond_c

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v5, :cond_c

    int-to-long v11, v8

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v8, v8, 0x14

    goto :goto_d

    :cond_c
    if-eqz v15, :cond_d

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v1, Lcom/google/android/gms/internal/zzcbq;->zzipd:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :goto_d
    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v15, :cond_10

    :goto_e
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_10

    :catch_c
    move-exception v0

    move-object v10, v3

    move-object v15, v10

    :goto_f
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v1, Lcom/google/android/gms/internal/zzcbq;->zzipd:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v10, :cond_f

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v15, :cond_10

    goto :goto_e

    :cond_10
    :goto_10
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x5

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    move-object v3, v10

    :goto_11
    move-object v5, v15

    :goto_12
    if-eqz v3, :cond_11

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12
    throw v0

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-object v3
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
