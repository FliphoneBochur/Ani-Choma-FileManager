.class public interface abstract Lcom/jrdcom/filemanager/listener/OperationEventListener;
.super Ljava/lang/Object;
.source "OperationEventListener.java"


# static fields
.field public static final ERROR_CODE_ADD_WAITING_TASK:I = -0x17

.field public static final ERROR_CODE_BUSY:I = -0x64

.field public static final ERROR_CODE_COPY_NO_PERMISSION:I = -0xa

.field public static final ERROR_CODE_CUT_SAME_PATH:I = -0xc

.field public static final ERROR_CODE_DECRYPT_SUCCESS:I = 0x1

.field public static final ERROR_CODE_DELETE_FAILS:I = -0x6

.field public static final ERROR_CODE_DELETE_NO_PERMISSION:I = -0xf

.field public static final ERROR_CODE_DELETE_UNSUCCESS:I = -0xd

.field public static final ERROR_CODE_ENCRYPT_UNSUCCESS:I = -0x11

.field public static final ERROR_CODE_EXCEEDED_MAX_TASK:I = -0x16

.field public static final ERROR_CODE_EXTRACT_FAIL_TASK:I = -0x18

.field public static final ERROR_CODE_FAVORITE_UNSUCESS:I = -0x10

.field public static final ERROR_CODE_FILE_EXIST:I = -0x4

.field public static final ERROR_CODE_MKDIR_UNSUCCESS:I = -0xb

.field public static final ERROR_CODE_NAME_EMPTY:I = -0x2

.field public static final ERROR_CODE_NAME_TOO_LONG:I = -0x3

.field public static final ERROR_CODE_NAME_VALID:I = 0x64

.field public static final ERROR_CODE_NOT_ENOUGH_SPACE:I = -0x5

.field public static final ERROR_CODE_OPERATION_FAILS:I = -0x19

.field public static final ERROR_CODE_PASTE_TO_SUB:I = -0x8

.field public static final ERROR_CODE_PASTE_UNSUCCESS:I = -0xe

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_UNKOWN:I = -0x9

.field public static final ERROR_CODE_UNSUCCESS:I = -0x1

.field public static final ERROR_CODE_USER_CANCEL:I = -0x7

.field public static final ERROR_COMPRESS_FILE_NAME_TOO_LONG:I = -0x15

.field public static final ERROR_INVALID_CHAR:I = -0x14

.field public static final ERROR_SAFE_DRM_LIMTED:I = -0x13

.field public static final ERROR_SAFE_SIZE_LIMTED:I = -0x12

.field public static final ERROR_SET_PRIVATE_FAILS:I = -0x1a


# virtual methods
.method public abstract onTaskPrepare()V
.end method

.method public abstract onTaskProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;)V
.end method

.method public abstract onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
.end method
