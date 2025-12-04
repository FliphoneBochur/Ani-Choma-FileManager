.class Lorg/apache/commons/compress/changes/Change;
.super Ljava/lang/Object;
.source "Change.java"


# static fields
.field static final TYPE_ADD:I = 0x2

.field static final TYPE_DELETE:I = 0x1

.field static final TYPE_DELETE_DIR:I = 0x4

.field static final TYPE_MOVE:I = 0x3


# instance fields
.field private final entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

.field private final input:Ljava/io/InputStream;

.field private final replaceMode:Z

.field private final targetFile:Ljava/lang/String;

.field private final type:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pFilename"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    .line 54
    iput p2, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    .line 55
    iput-object v0, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    .line 56
    iput-object v0, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    .line 58
    return-void

    .line 51
    :cond_0
    throw v0
.end method

.method constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "pEntry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .param p2, "pInput"    # Ljava/io/InputStream;
    .param p3, "replace"    # Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 70
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 71
    iput-object p2, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    .line 72
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    .line 73
    iput-object v0, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    .line 74
    iput-boolean p3, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    .line 75
    return-void

    .line 68
    :cond_0
    throw v0
.end method


# virtual methods
.method getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-object v0
.end method

.method getInput()Ljava/io/InputStream;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method isReplaceMode()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return v0
.end method

.method targetFile()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    return-object v0
.end method

.method type()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    return v0
.end method
