.class public final Lcom/github/junrar/io/RandomAccessStream;
.super Ljava/io/InputStream;
.source "RandomAccessStream.java"


# static fields
.field private static final BLOCK_MASK:I = 0x1ff

.field private static final BLOCK_SHIFT:I = 0x9

.field private static final BLOCK_SIZE:I = 0x200


# instance fields
.field private data:Ljava/util/Vector;

.field private foundEOS:Z

.field private length:I

.field private pointer:J

.field private ras:Ljava/io/RandomAccessFile;

.field private src:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputstream"    # Ljava/io/InputStream;

    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/io/RandomAccessStream;->data:Ljava/util/Vector;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/io/RandomAccessStream;->length:I

    .line 37
    iput-boolean v0, p0, Lcom/github/junrar/io/RandomAccessStream;->foundEOS:Z

    .line 38
    iput-object p1, p0, Lcom/github/junrar/io/RandomAccessStream;->src:Ljava/io/InputStream;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0
    .param p1, "ras"    # Ljava/io/RandomAccessFile;

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/github/junrar/io/RandomAccessStream;->ras:Ljava/io/RandomAccessFile;

    .line 44
    return-void
.end method

.method private readUntil(J)J
    .locals 9
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget v0, p0, Lcom/github/junrar/io/RandomAccessStream;->length:I

    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 113
    return-wide p1

    .line 114
    :cond_0
    iget-boolean v1, p0, Lcom/github/junrar/io/RandomAccessStream;->foundEOS:Z

    if-eqz v1, :cond_1

    .line 115
    int-to-long v0, v0

    return-wide v0

    .line 116
    :cond_1
    const/16 v1, 0x9

    shr-long v2, p1, v1

    long-to-int v2, v2

    .line 117
    .local v2, "i":I
    shr-int/2addr v0, v1

    .line 118
    .local v0, "j":I
    move v1, v0

    .local v1, "k":I
    :goto_0
    if-gt v1, v2, :cond_4

    .line 119
    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 120
    .local v3, "abyte0":[B
    iget-object v4, p0, Lcom/github/junrar/io/RandomAccessStream;->data:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 121
    const/16 v4, 0x200

    .line 122
    .local v4, "i1":I
    const/4 v5, 0x0

    .line 123
    .local v5, "j1":I
    :goto_1
    if-lez v4, :cond_3

    .line 124
    iget-object v6, p0, Lcom/github/junrar/io/RandomAccessStream;->src:Ljava/io/InputStream;

    invoke-virtual {v6, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 125
    .local v6, "k1":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 126
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/github/junrar/io/RandomAccessStream;->foundEOS:Z

    .line 127
    iget v7, p0, Lcom/github/junrar/io/RandomAccessStream;->length:I

    int-to-long v7, v7

    return-wide v7

    .line 129
    :cond_2
    add-int/2addr v5, v6

    .line 130
    sub-int/2addr v4, v6

    .line 131
    iget v7, p0, Lcom/github/junrar/io/RandomAccessStream;->length:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/github/junrar/io/RandomAccessStream;->length:I

    .line 132
    .end local v6    # "k1":I
    goto :goto_1

    .line 118
    .end local v3    # "abyte0":[B
    .end local v4    # "i1":I
    .end local v5    # "j1":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "k":I
    :cond_4
    iget v1, p0, Lcom/github/junrar/io/RandomAccessStream;->length:I

    int-to-long v3, v1

    return-wide v3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/github/junrar/io/RandomAccessStream;->ras:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/io/RandomAccessStream;->data:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 199
    iget-object v0, p0, Lcom/github/junrar/io/RandomAccessStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 201
    :goto_0
    return-void
.end method

.method public getFilePointer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/github/junrar/io/RandomAccessStream;->ras:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 50
    :cond_0
    iget-wide v0, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    long-to-int v0, v0

    return v0
.end method

.method public getLongFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/github/junrar/io/RandomAccessStream;->ras:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    .line 57
    :cond_0
    iget-wide v0, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    return-wide v0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/github/junrar/io/RandomAccessStream;->ras:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0

    .line 63
    :cond_0
    iget-wide v0, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 64
    .local v0, "l":J
    invoke-direct {p0, v0, v1}, Lcom/github/junrar/io/RandomAccessStream;->readUntil(J)J

    move-result-wide v4

    .line 65
    .local v4, "l1":J
    cmp-long v6, v4, v0

    if-ltz v6, :cond_1

    .line 66
    iget-object v6, p0, Lcom/github/junrar/io/RandomAccessStream;->data:Ljava/util/Vector;

    iget-wide v7, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    const/16 v9, 0x9

    shr-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    check-cast v6, [B

    .line 68
    .local v6, "abyte0":[B
    iget-wide v7, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    const-wide/16 v2, 0x1ff

    and-long/2addr v2, v7

    long-to-int v2, v2

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 70
    .end local v6    # "abyte0":[B
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public read([BII)I
    .locals 9
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    if-eqz p1, :cond_4

    .line 76
    iget-object v0, p0, Lcom/github/junrar/io/RandomAccessStream;->ras:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0

    .line 78
    :cond_0
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 80
    if-nez p3, :cond_1

    .line 81
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_1
    iget-wide v0, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/github/junrar/io/RandomAccessStream;->readUntil(J)J

    move-result-wide v0

    .line 83
    .local v0, "l":J
    iget-wide v2, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 84
    const/4 v2, -0x1

    return v2

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/github/junrar/io/RandomAccessStream;->data:Ljava/util/Vector;

    const/16 v5, 0x9

    shr-long/2addr v2, v5

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    .line 88
    .local v2, "abyte1":[B
    iget-wide v3, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    const-wide/16 v5, 0x1ff

    and-long/2addr v3, v5

    long-to-int v3, v3

    rsub-int v3, v3, 0x200

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 89
    .local v3, "k":I
    iget-wide v7, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    and-long v4, v7, v5

    long-to-int v4, v4

    invoke-static {v2, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-wide v4, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    .line 92
    return v3

    .line 79
    .end local v0    # "l":J
    .end local v2    # "abyte1":[B
    .end local v3    # "k":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 75
    :cond_4
    const/4 v0, 0x0

    throw v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/github/junrar/io/RandomAccessStream;->readFully([BI)V

    .line 98
    return-void
.end method

.method public final readFully([BI)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "read":I
    :cond_0
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/junrar/io/RandomAccessStream;->read([BII)I

    move-result v1

    .line 104
    .local v1, "l":I
    if-gez v1, :cond_1

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    add-int/2addr v0, v1

    .line 107
    .end local v1    # "l":I
    if-lt v0, p2, :cond_0

    .line 108
    :goto_0
    return-void
.end method

.method public final readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessStream;->read()I

    move-result v0

    .line 164
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessStream;->read()I

    move-result v1

    .line 165
    .local v1, "j":I
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessStream;->read()I

    move-result v2

    .line 166
    .local v2, "k":I
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessStream;->read()I

    move-result v3

    .line 167
    .local v3, "l":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    .line 170
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    return v4

    .line 168
    :cond_0
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
.end method

.method public final readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessStream;->read()I

    move-result v0

    .line 183
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessStream;->read()I

    move-result v1

    .line 184
    .local v1, "j":I
    or-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 187
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-short v2, v2

    return v2

    .line 185
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public seek(I)V
    .locals 5
    .param p1, "loc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 152
    .local v0, "lloc":J
    iget-object v2, p0, Lcom/github/junrar/io/RandomAccessStream;->ras:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    return-void

    .line 156
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 157
    iput-wide v2, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    goto :goto_0

    .line 159
    :cond_1
    iput-wide v0, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    .line 160
    :goto_0
    return-void
.end method

.method public seek(J)V
    .locals 3
    .param p1, "loc"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/github/junrar/io/RandomAccessStream;->ras:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 142
    return-void

    .line 144
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 145
    iput-wide v0, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    goto :goto_0

    .line 147
    :cond_1
    iput-wide p1, p0, Lcom/github/junrar/io/RandomAccessStream;->pointer:J

    .line 148
    :goto_0
    return-void
.end method
