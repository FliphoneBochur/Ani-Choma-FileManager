.class final Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
.super Ljava/lang/Object;
.source "BZip2CompressorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Data"
.end annotation


# instance fields
.field final base:[[I

.field final cftab:[I

.field final getAndMoveToFrontDecode_yy:[C

.field final inUse:[Z

.field final limit:[[I

.field ll8:[B

.field final minLens:[I

.field final perm:[[I

.field final recvDecodingTables_pos:[B

.field final selector:[B

.field final selectorMtf:[B

.field final seqToUnseq:[B

.field final temp_charArray2d:[[C

.field tt:[I

.field final unzftab:[I


# direct methods
.method constructor <init>(I)V
    .locals 4
    .param p1, "blockSize100k"    # I

    .line 952
    const-class v0, I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    const/16 v1, 0x100

    new-array v2, v1, [Z

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 922
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 923
    const/16 v2, 0x4652

    new-array v3, v2, [B

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 924
    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    .line 930
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 932
    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 933
    new-array v3, v2, [I

    fill-array-data v3, :array_1

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 934
    new-array v3, v2, [I

    fill-array-data v3, :array_2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 935
    const/4 v0, 0x6

    new-array v3, v0, [I

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 937
    const/16 v3, 0x101

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 938
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 939
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    const-class v2, C

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 941
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 953
    const v0, 0x186a0

    mul-int/2addr v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 954
    return-void

    :array_0
    .array-data 4
        0x6
        0x102
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x102
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x102
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x102
    .end array-data
.end method


# virtual methods
.method initTT(I)[I
    .locals 2
    .param p1, "length"    # I

    .line 964
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 970
    .local v0, "ttShadow":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 971
    :cond_0
    new-array v1, p1, [I

    move-object v0, v1

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 974
    :cond_1
    return-object v0
.end method
