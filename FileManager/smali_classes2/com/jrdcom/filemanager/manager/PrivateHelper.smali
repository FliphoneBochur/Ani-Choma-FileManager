.class public Lcom/jrdcom/filemanager/manager/PrivateHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PrivateHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "msb.db"

.field public static final FILE_FIELD_CD:Ljava/lang/String; = "cd"

.field public static final FILE_FIELD_CT:Ljava/lang/String; = "ct"

.field public static final FILE_FIELD_CU:Ljava/lang/String; = "cu"

.field public static final FILE_FIELD_DN:Ljava/lang/String; = "dn"

.field public static final FILE_FIELD_DP:Ljava/lang/String; = "dp"

.field public static final FILE_FIELD_DS:Ljava/lang/String; = "ds"

.field public static final FILE_FIELD_FS:Ljava/lang/String; = "fs"

.field public static final FILE_FIELD_FT:Ljava/lang/String; = "ft"

.field public static final FILE_FIELD_LM:Ljava/lang/String; = "lm"

.field public static final FILE_FIELD_PT:Ljava/lang/String; = "pt"

.field public static final FILE_FIELD_SP:Ljava/lang/String; = "sp"

.field public static final FILE_FIELD_SS:Ljava/lang/String; = "ss"

.field public static final FILE_FIELD_TP:Ljava/lang/String; = "tp"

.field public static final FILE_FIELD_UT:Ljava/lang/String; = "ut"

.field public static final FILE_FIELD_WT:Ljava/lang/String; = "wt"

.field public static final FILE_TABLE_NAME:Ljava/lang/String; = "ff"

.field public static final USER_FIELD_AL:Ljava/lang/String; = "al"

.field public static final USER_FIELD_CD:Ljava/lang/String; = "cd"

.field public static final USER_FIELD_CP:Ljava/lang/String; = "cp"

.field public static final USER_FIELD_CT:Ljava/lang/String; = "ct"

.field public static final USER_FIELD_OP:Ljava/lang/String; = "op"

.field public static final USER_FIELD_QD:Ljava/lang/String; = "qd"

.field public static final USER_FIELD_ST:Ljava/lang/String; = "st"

.field public static final USER_FIELD_UT:Ljava/lang/String; = "ut"

.field public static final USER_FIELD_WT:Ljava/lang/String; = "wt"

.field public static final USER_FIELD_WT1:Ljava/lang/String; = "wf1"

.field public static final USER_FIELD_WT2:Ljava/lang/String; = "wf2"

.field public static final USER_FIELD_WT3:Ljava/lang/String; = "wf3"

.field public static final USER_TABLE_NAME:Ljava/lang/String; = "mf"

.field private static version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/jrdcom/filemanager/manager/PrivateHelper;->version:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "msb.db"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/jrdcom/filemanager/manager/PrivateHelper;->version:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 53
    const-string v0, "CREATE TABLE IF NOT EXISTS mf (_id integer primary key autoincrement, wt integer not null, wf1 text, wf2 text, wf3 text, qd integer not null, st text, ct integer not null, cp text, cd text, op integer not null, al text, ut text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "CREATE TABLE IF NOT EXISTS ff (_id integer primary key autoincrement, ft integer not null, wt integer not null, sp text, dp text, dn text, ss integer not null, ds integer not null, tp text, pt integer not null, fs integer not null, ct integer not null, lm integer not null, ut text, cu text, cd text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 91
    return-void
.end method
