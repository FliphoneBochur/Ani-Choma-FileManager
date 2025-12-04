.class Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;
.super Ljava/lang/Object;
.source "Simple8BitZipEncoding.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    }
.end annotation


# instance fields
.field private final highChars:[C

.field private final reverseMapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([C)V
    .locals 8
    .param p1, "highChars"    # [C

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;>;"
    const/16 v1, 0x7f

    .line 112
    .local v1, "code":B
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    .local v2, "arr$":[C
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-char v5, v2, v4

    .line 113
    .local v5, "highChar":C
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    add-int/lit8 v7, v1, 0x1

    int-to-byte v1, v7

    invoke-direct {v6, v1, v5}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;-><init>(BC)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v5    # "highChar":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "arr$":[C
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    .line 118
    return-void
.end method

.method private encodeHighChar(C)Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    .locals 5
    .param p1, "c"    # C

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "i0":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 186
    .local v1, "i1":I
    :goto_0
    if-le v1, v0, :cond_2

    .line 188
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    .line 190
    .local v2, "i":I
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 192
    .local v3, "m":Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    iget-char v4, v3, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ne v4, p1, :cond_0

    .line 193
    return-object v3

    .line 196
    :cond_0
    iget-char v4, v3, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ge v4, p1, :cond_1

    .line 197
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 199
    :cond_1
    move v1, v2

    .line 201
    .end local v2    # "i":I
    .end local v3    # "m":Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    :goto_1
    goto :goto_0

    .line 203
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 204
    return-object v3

    .line 207
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 209
    .local v2, "r":Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    iget-char v4, v2, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-eq v4, p1, :cond_4

    .line 210
    return-object v3

    .line 213
    :cond_4
    return-object v2
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 227
    .local v1, "c":C
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->canEncodeChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    const/4 v2, 0x0

    return v2

    .line 223
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public canEncodeChar(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 142
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 143
    return v0

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->encodeHighChar(C)Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    move-result-object v1

    .line 147
    .local v1, "r":Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public decode([B)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    array-length v0, p1

    new-array v0, v0, [C

    .line 271
    .local v0, "ret":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 272
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->decodeByte(B)C

    move-result v2

    aput-char v2, v0, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public decodeByte(B)C
    .locals 2
    .param p1, "b"    # B

    .line 128
    if-ltz p1, :cond_0

    .line 129
    int-to-char v0, p1

    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    add-int/lit16 v1, p1, 0x80

    aget-char v0, v0, v1

    return v0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 244
    .local v0, "out":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 246
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 248
    .local v3, "c":C
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 249
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 252
    :cond_0
    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->pushEncodedChar(Ljava/nio/ByteBuffer;C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    invoke-static {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->appendSurrogate(Ljava/nio/ByteBuffer;C)V

    .line 244
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 259
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 260
    return-object v0
.end method

.method public pushEncodedChar(Ljava/nio/ByteBuffer;C)Z
    .locals 3
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "c"    # C

    .line 161
    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    .line 162
    int-to-byte v1, p2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 163
    return v0

    .line 166
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->encodeHighChar(C)Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    move-result-object v1

    .line 167
    .local v1, "r":Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    if-nez v1, :cond_1

    .line 168
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_1
    iget-byte v2, v1, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 171
    return v0
.end method
