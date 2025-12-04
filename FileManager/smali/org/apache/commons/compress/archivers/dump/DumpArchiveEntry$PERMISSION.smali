.class public final enum Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;
.super Ljava/lang/Enum;
.source "DumpArchiveEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PERMISSION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum GROUP_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum GROUP_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum GROUP_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum SETGUI:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum SETUID:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum STICKY:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum USER_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum USER_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum USER_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum WORLD_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum WORLD_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum WORLD_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 806
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "SETUID"

    const/4 v2, 0x0

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->SETUID:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 807
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "SETGUI"

    const/4 v3, 0x1

    const/16 v4, 0x400

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->SETGUI:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 808
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "STICKY"

    const/4 v4, 0x2

    const/16 v5, 0x200

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->STICKY:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 809
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "USER_READ"

    const/4 v5, 0x3

    const/16 v6, 0x100

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->USER_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 810
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "USER_WRITE"

    const/4 v6, 0x4

    const/16 v7, 0x80

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->USER_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 811
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "USER_EXEC"

    const/4 v7, 0x5

    const/16 v8, 0x40

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->USER_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 812
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "GROUP_READ"

    const/4 v8, 0x6

    const/16 v9, 0x20

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->GROUP_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 813
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "GROUP_WRITE"

    const/4 v9, 0x7

    const/16 v10, 0x10

    invoke-direct {v0, v1, v9, v10}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->GROUP_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 814
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "GROUP_EXEC"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->GROUP_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 815
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "WORLD_READ"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v6}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->WORLD_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 816
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "WORLD_WRITE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->WORLD_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 817
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "WORLD_EXEC"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->WORLD_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 805
    const/16 v1, 0xc

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    sget-object v14, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->SETUID:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v14, v1, v2

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->SETGUI:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->STICKY:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->USER_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->USER_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->USER_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->GROUP_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->GROUP_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->GROUP_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->WORLD_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->WORLD_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->$VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 821
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 822
    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->code:I

    .line 823
    return-void
.end method

.method public static find(I)Ljava/util/Set;
    .locals 7
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;",
            ">;"
        }
    .end annotation

    .line 826
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 828
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;>;"
    invoke-static {}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 829
    .local v4, "p":Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;
    iget v5, v4, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->code:I

    and-int v6, p0, v5

    if-ne v6, v5, :cond_0

    .line 830
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v4    # "p":Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 834
    .end local v1    # "arr$":[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 838
    :cond_2
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 805
    const-class v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;
    .locals 1

    .line 805
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->$VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    return-object v0
.end method
