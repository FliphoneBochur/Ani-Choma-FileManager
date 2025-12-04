.class public final enum Lcom/github/junrar/unpack/decode/CodeType;
.super Ljava/lang/Enum;
.source "CodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/junrar/unpack/decode/CodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/junrar/unpack/decode/CodeType;

.field public static final enum CODE_CACHELZ:Lcom/github/junrar/unpack/decode/CodeType;

.field public static final enum CODE_ENDFILE:Lcom/github/junrar/unpack/decode/CodeType;

.field public static final enum CODE_HUFFMAN:Lcom/github/junrar/unpack/decode/CodeType;

.field public static final enum CODE_LZ:Lcom/github/junrar/unpack/decode/CodeType;

.field public static final enum CODE_LZ2:Lcom/github/junrar/unpack/decode/CodeType;

.field public static final enum CODE_REPEATLZ:Lcom/github/junrar/unpack/decode/CodeType;

.field public static final enum CODE_STARTFILE:Lcom/github/junrar/unpack/decode/CodeType;

.field public static final enum CODE_VM:Lcom/github/junrar/unpack/decode/CodeType;

.field public static final enum CODE_VMDATA:Lcom/github/junrar/unpack/decode/CodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 27
    new-instance v0, Lcom/github/junrar/unpack/decode/CodeType;

    const-string v1, "CODE_HUFFMAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/CodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/CodeType;->CODE_HUFFMAN:Lcom/github/junrar/unpack/decode/CodeType;

    new-instance v0, Lcom/github/junrar/unpack/decode/CodeType;

    const-string v1, "CODE_LZ"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/junrar/unpack/decode/CodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/CodeType;->CODE_LZ:Lcom/github/junrar/unpack/decode/CodeType;

    new-instance v0, Lcom/github/junrar/unpack/decode/CodeType;

    const-string v1, "CODE_LZ2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/junrar/unpack/decode/CodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/CodeType;->CODE_LZ2:Lcom/github/junrar/unpack/decode/CodeType;

    new-instance v0, Lcom/github/junrar/unpack/decode/CodeType;

    const-string v1, "CODE_REPEATLZ"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/github/junrar/unpack/decode/CodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/CodeType;->CODE_REPEATLZ:Lcom/github/junrar/unpack/decode/CodeType;

    new-instance v0, Lcom/github/junrar/unpack/decode/CodeType;

    const-string v1, "CODE_CACHELZ"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/github/junrar/unpack/decode/CodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/CodeType;->CODE_CACHELZ:Lcom/github/junrar/unpack/decode/CodeType;

    .line 28
    new-instance v0, Lcom/github/junrar/unpack/decode/CodeType;

    const-string v1, "CODE_STARTFILE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/github/junrar/unpack/decode/CodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/CodeType;->CODE_STARTFILE:Lcom/github/junrar/unpack/decode/CodeType;

    new-instance v0, Lcom/github/junrar/unpack/decode/CodeType;

    const-string v1, "CODE_ENDFILE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/github/junrar/unpack/decode/CodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/CodeType;->CODE_ENDFILE:Lcom/github/junrar/unpack/decode/CodeType;

    new-instance v0, Lcom/github/junrar/unpack/decode/CodeType;

    const-string v1, "CODE_VM"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/github/junrar/unpack/decode/CodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/CodeType;->CODE_VM:Lcom/github/junrar/unpack/decode/CodeType;

    new-instance v0, Lcom/github/junrar/unpack/decode/CodeType;

    const-string v1, "CODE_VMDATA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/github/junrar/unpack/decode/CodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/CodeType;->CODE_VMDATA:Lcom/github/junrar/unpack/decode/CodeType;

    .line 26
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/github/junrar/unpack/decode/CodeType;

    sget-object v11, Lcom/github/junrar/unpack/decode/CodeType;->CODE_HUFFMAN:Lcom/github/junrar/unpack/decode/CodeType;

    aput-object v11, v1, v2

    sget-object v2, Lcom/github/junrar/unpack/decode/CodeType;->CODE_LZ:Lcom/github/junrar/unpack/decode/CodeType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/decode/CodeType;->CODE_LZ2:Lcom/github/junrar/unpack/decode/CodeType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/github/junrar/unpack/decode/CodeType;->CODE_REPEATLZ:Lcom/github/junrar/unpack/decode/CodeType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/github/junrar/unpack/decode/CodeType;->CODE_CACHELZ:Lcom/github/junrar/unpack/decode/CodeType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/github/junrar/unpack/decode/CodeType;->CODE_STARTFILE:Lcom/github/junrar/unpack/decode/CodeType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/github/junrar/unpack/decode/CodeType;->CODE_ENDFILE:Lcom/github/junrar/unpack/decode/CodeType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/github/junrar/unpack/decode/CodeType;->CODE_VM:Lcom/github/junrar/unpack/decode/CodeType;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/github/junrar/unpack/decode/CodeType;->$VALUES:[Lcom/github/junrar/unpack/decode/CodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/junrar/unpack/decode/CodeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/github/junrar/unpack/decode/CodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/junrar/unpack/decode/CodeType;

    return-object v0
.end method

.method public static values()[Lcom/github/junrar/unpack/decode/CodeType;
    .locals 1

    .line 26
    sget-object v0, Lcom/github/junrar/unpack/decode/CodeType;->$VALUES:[Lcom/github/junrar/unpack/decode/CodeType;

    invoke-virtual {v0}, [Lcom/github/junrar/unpack/decode/CodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/junrar/unpack/decode/CodeType;

    return-object v0
.end method
