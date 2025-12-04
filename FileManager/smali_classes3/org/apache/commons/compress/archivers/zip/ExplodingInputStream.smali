.class Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;
.super Ljava/io/InputStream;
.source "ExplodingInputStream.java"


# instance fields
.field private bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

.field private final buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

.field private final dictionarySize:I

.field private distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private final in:Ljava/io/InputStream;

.field private lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private final minimumMatchLength:I

.field private final numberOfTrees:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 2
    .param p1, "dictionarySize"    # I
    .param p2, "numberOfTrees"    # I
    .param p3, "in"    # Ljava/io/InputStream;

    .line 73
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 63
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    const v1, 0x8000

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 74
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dictionary size must be 4096 or 8192"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of trees must be 2 or 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    :goto_1
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->dictionarySize:I

    .line 81
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->numberOfTrees:I

    .line 82
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->minimumMatchLength:I

    .line 83
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    .line 84
    return-void
.end method

.method private fillBuffer()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->init()V

    .line 120
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBit()I

    move-result v0

    .line 121
    .local v0, "bit":I
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 124
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    if-eqz v2, :cond_0

    .line 125
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    move-result v2

    .local v2, "literal":I
    goto :goto_0

    .line 127
    .end local v2    # "literal":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextByte()I

    move-result v2

    .line 130
    .restart local v2    # "literal":I
    :goto_0
    if-ne v2, v1, :cond_1

    .line 132
    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->put(I)V

    .end local v2    # "literal":I
    goto :goto_2

    .line 137
    :cond_2
    if-nez v0, :cond_6

    .line 139
    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->dictionarySize:I

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_3

    const/4 v2, 0x6

    goto :goto_1

    :cond_3
    const/4 v2, 0x7

    .line 140
    .local v2, "distanceLowSize":I
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBits(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 141
    .local v3, "distanceLow":I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    move-result v4

    .line 142
    .local v4, "distanceHigh":I
    if-ne v4, v1, :cond_4

    if-gtz v3, :cond_4

    .line 144
    return-void

    .line 146
    :cond_4
    shl-int v1, v4, v2

    or-int/2addr v1, v3

    .line 148
    .local v1, "distance":I
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v5, v6}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    move-result v5

    .line 149
    .local v5, "length":I
    const/16 v6, 0x3f

    if-ne v5, v6, :cond_5

    .line 150
    int-to-long v6, v5

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBits(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v5, v6

    .line 152
    :cond_5
    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->minimumMatchLength:I

    add-int/2addr v5, v6

    .line 154
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7, v5}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->copy(II)V

    goto :goto_3

    .line 137
    .end local v1    # "distance":I
    .end local v2    # "distanceLowSize":I
    .end local v3    # "distanceLow":I
    .end local v4    # "distanceHigh":I
    .end local v5    # "length":I
    :cond_6
    :goto_2
    nop

    .line 156
    :goto_3
    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    if-nez v0, :cond_1

    .line 93
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->numberOfTrees:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 98
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 100
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/BitStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BitStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 102
    :cond_1
    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->available()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->fillBuffer()V

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->get()I

    move-result v0

    return v0
.end method
