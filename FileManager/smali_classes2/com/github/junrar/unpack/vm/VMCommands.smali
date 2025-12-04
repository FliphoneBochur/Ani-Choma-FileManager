.class public final enum Lcom/github/junrar/unpack/vm/VMCommands;
.super Ljava/lang/Enum;
.source "VMCommands.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/junrar/unpack/vm/VMCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADC:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADDB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADDD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_AND:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CALL:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMP:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMPB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMPD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DEC:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DECB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DECD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DIV:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INC:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INCB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INCD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JA:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JAE:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JBE:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JMP:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JNS:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JNZ:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JS:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JZ:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOV:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVSX:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVZX:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MUL:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEG:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEGB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEGD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NOT:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_OR:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POP:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POPA:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POPF:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PRINT:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSH:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSHA:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSHF:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SAR:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SBB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SHL:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SHR:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_STANDARD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUBB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUBD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_TEST:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_XCHG:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_XOR:Lcom/github/junrar/unpack/vm/VMCommands;


# instance fields
.field private vmCommand:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_MOV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_CMP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_ADD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_SUB"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JZ"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JNZ"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_INC"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_DEC"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 28
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JMP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_XOR"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_AND"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_OR"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_TEST"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JS"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 29
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JNS"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JB"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JBE"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JA"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JAE"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_PUSH"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 30
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_POP"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_CALL"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_RET"

    const/16 v15, 0x16

    const/16 v14, 0x16

    invoke-direct {v0, v1, v15, v14}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_NOT"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_SHL"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_SHR"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 31
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_SAR"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_NEG"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_PUSHA"

    const/16 v14, 0x1c

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_POPA"

    const/16 v14, 0x1d

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_PUSHF"

    const/16 v14, 0x1e

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_POPF"

    const/16 v14, 0x1f

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 32
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_MOVZX"

    const/16 v14, 0x20

    const/16 v15, 0x20

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_MOVSX"

    const/16 v14, 0x21

    const/16 v15, 0x21

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_XCHG"

    const/16 v14, 0x22

    const/16 v15, 0x22

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_MUL"

    const/16 v14, 0x23

    const/16 v15, 0x23

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_DIV"

    const/16 v14, 0x24

    const/16 v15, 0x24

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_ADC"

    const/16 v14, 0x25

    const/16 v15, 0x25

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 33
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_SBB"

    const/16 v14, 0x26

    const/16 v15, 0x26

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_PRINT"

    const/16 v14, 0x27

    const/16 v15, 0x27

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 36
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_MOVB"

    const/16 v14, 0x28

    const/16 v15, 0x28

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_MOVD"

    const/16 v14, 0x29

    const/16 v15, 0x29

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_CMPB"

    const/16 v14, 0x2a

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_CMPD"

    const/16 v14, 0x2b

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 38
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_ADDB"

    const/16 v14, 0x2c

    const/16 v15, 0x2c

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_ADDD"

    const/16 v14, 0x2d

    const/16 v15, 0x2d

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_SUBB"

    const/16 v14, 0x2e

    const/16 v15, 0x2e

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_SUBD"

    const/16 v14, 0x2f

    const/16 v15, 0x2f

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_INCB"

    const/16 v14, 0x30

    const/16 v15, 0x30

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_INCD"

    const/16 v14, 0x31

    const/16 v15, 0x31

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_DECB"

    const/16 v14, 0x32

    const/16 v15, 0x32

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 39
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_DECD"

    const/16 v14, 0x33

    const/16 v15, 0x33

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_NEGB"

    const/16 v14, 0x34

    const/16 v15, 0x34

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_NEGD"

    const/16 v14, 0x35

    const/16 v15, 0x35

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 42
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_STANDARD"

    const/16 v14, 0x36

    const/16 v15, 0x36

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 26
    const/16 v1, 0x37

    new-array v1, v1, [Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v14, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v14, v1, v2

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v4

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v5

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v6

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v7

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v8

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v9

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v10

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v11

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v12

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/github/junrar/unpack/vm/VMCommands;

    aput-object v2, v1, v13

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x30

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x31

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x32

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x33

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x34

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v3, 0x35

    aput-object v2, v1, v3

    const/16 v2, 0x36

    aput-object v0, v1, v2

    sput-object v1, Lcom/github/junrar/unpack/vm/VMCommands;->$VALUES:[Lcom/github/junrar/unpack/vm/VMCommands;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "vmCommand"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/github/junrar/unpack/vm/VMCommands;->vmCommand:I

    .line 48
    return-void
.end method

.method public static findVMCommand(I)Lcom/github/junrar/unpack/vm/VMCommands;
    .locals 1
    .param p0, "vmCommand"    # I

    .line 59
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 65
    :cond_1
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 68
    :cond_2
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 71
    :cond_3
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 74
    :cond_4
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 77
    :cond_5
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 78
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 80
    :cond_6
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 83
    :cond_7
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 84
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 86
    :cond_8
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 87
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 89
    :cond_9
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 90
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 92
    :cond_a
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 95
    :cond_b
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 96
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 98
    :cond_c
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 101
    :cond_d
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 102
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 104
    :cond_e
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 105
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 107
    :cond_f
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 108
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 110
    :cond_10
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 111
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 113
    :cond_11
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 114
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 116
    :cond_12
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 117
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 119
    :cond_13
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 120
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 122
    :cond_14
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 123
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 125
    :cond_15
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 126
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 128
    :cond_16
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 129
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 131
    :cond_17
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 132
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 134
    :cond_18
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 135
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 137
    :cond_19
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 138
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 140
    :cond_1a
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 141
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 143
    :cond_1b
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 144
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 146
    :cond_1c
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 147
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 149
    :cond_1d
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 150
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 152
    :cond_1e
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 153
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 155
    :cond_1f
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 156
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 158
    :cond_20
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 159
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 161
    :cond_21
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 162
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 164
    :cond_22
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 165
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 167
    :cond_23
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 168
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 170
    :cond_24
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 171
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 173
    :cond_25
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 174
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 176
    :cond_26
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 177
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 179
    :cond_27
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 180
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 182
    :cond_28
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 183
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 185
    :cond_29
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 186
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 188
    :cond_2a
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 189
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 191
    :cond_2b
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 192
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 194
    :cond_2c
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 195
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 197
    :cond_2d
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 198
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 200
    :cond_2e
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 201
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 203
    :cond_2f
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 204
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 206
    :cond_30
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 207
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 209
    :cond_31
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 210
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 212
    :cond_32
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 213
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 215
    :cond_33
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 216
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 218
    :cond_34
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 219
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 221
    :cond_35
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 222
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0

    .line 224
    :cond_36
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/junrar/unpack/vm/VMCommands;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0
.end method

.method public static values()[Lcom/github/junrar/unpack/vm/VMCommands;
    .locals 1

    .line 26
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->$VALUES:[Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0}, [Lcom/github/junrar/unpack/vm/VMCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .param p1, "vmCommand"    # I

    .line 55
    iget v0, p0, Lcom/github/junrar/unpack/vm/VMCommands;->vmCommand:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVMCommand()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/github/junrar/unpack/vm/VMCommands;->vmCommand:I

    return v0
.end method
